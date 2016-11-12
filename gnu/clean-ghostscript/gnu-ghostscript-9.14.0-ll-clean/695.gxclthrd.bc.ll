; ModuleID = './gxclthrd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.4 }
%union.anon.4 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.clist_render_thread_control_s = type { i32, %struct.gs_memory_s*, %struct.gx_semaphore_s*, %struct.gx_semaphore_s*, %struct.gx_device_s*, %struct.gx_device_s*, i32, i8*, %struct.gx_process_page_options_s*, i8* }
%struct.gs_memory_locked_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gx_monitor_s* }

@.str = private unnamed_addr constant [36 x i8] c"chunk_wrap returned error code: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Error getting device params, code=%d. Rendering threads not started.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"setup_device_and_mem_for_thread\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"teardown_render_thread\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clist_teardown_render_threads\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@gs_debug = external global [128 x i8], align 16
@.str.7 = private unnamed_addr constant [36 x i8] c"%% %d rendering threads requested.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"clist_setup_render_threads\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c" VMerror prevented threads from starting.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"clist_render_setup_threads\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"clist_setup_render_threads(locked allocator)\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Rendering threads not started, code=%d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%% Using %d rendering threads\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @setup_device_and_mem_for_thread(%struct.gs_memory_s* %chunk_base_mem, %struct.gx_device_s* %dev, i32 %bg_print, %struct.gsicc_link_cache_s** %cachep) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %chunk_base_mem.addr = alloca %struct.gs_memory_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bg_print.addr = alloca i32, align 4
  %cachep.addr = alloca %struct.gsicc_link_cache_s**, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %fmode = alloca [4 x i8], align 1
  %thread_mem = alloca %struct.gs_memory_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %ndev = alloca %struct.gx_device_s*, align 8
  %ncldev = alloca %union.gx_device_clist_s*, align 8
  %ncdev = alloca %struct.gx_device_clist_common_s*, align 8
  %npdev = alloca %struct.gx_device_printer_s*, align 8
  %protodev = alloca %struct.gx_device_s*, align 8
  %paramlist = alloca %struct.gs_c_param_list_s, align 8
  %pclist_devn_params = alloca %struct.gs_devn_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %ncrdev = alloca %struct.gx_device_clist_reader_s*, align 8
  store %struct.gs_memory_s* %chunk_base_mem, %struct.gs_memory_s** %chunk_base_mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %bg_print, i32* %bg_print.addr, align 4, !tbaa !5
  store %struct.gsicc_link_cache_s** %cachep, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_memory_s** %thread_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %6, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %9, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %12 = bitcast %union.gx_device_clist_s* %11 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %12, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %union.gx_device_clist_s** %ncldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.gx_device_clist_common_s** %ncdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gx_device_printer_s** %npdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.gx_device_s** %protodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.start(i64 56, i8* %18) #1
  %19 = bitcast %struct.gs_devn_params_s** %pclist_devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_memory_chunk_wrap(%struct.gs_memory_s** %thread_mem, %struct.gs_memory_s* %20) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call1 = call i8* @gs_program_name() #4
  %call2 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %22, i8* %call1, i64 %call2) #4
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %25) #4
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %call5 = call %struct.gx_device_s* @gs_getdevice(i32 %26) #4
  store %struct.gx_device_s* %call5, %struct.gx_device_s** %protodev, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gx_device_s* %call5, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %protodev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 2
  %30 = load i8*, i8** %dname, align 8, !tbaa !20
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 2
  %32 = load i8*, i8** %dname7, align 8, !tbaa !20
  %call8 = call i32 @strcmp(i8* %30, i8* %32) #5
  store i32 %call8, i32* %tmp, !tbaa !5
  %33 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %tmp, !tbaa !5
  %cmp9 = icmp eq i32 %35, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %protodev, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gx_device_s* %37, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %protodev, align 8, !tbaa !1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %call13 = call i32 @gs_copydevice(%struct.gx_device_s** %ndev, %struct.gx_device_s* %38, %struct.gs_memory_s* %39) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %for.end
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %40) #4
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

if.end.16:                                        ; preds = %lor.lhs.false
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_s* %41 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %42, %union.gx_device_clist_s** %ncldev, align 8, !tbaa !1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %44, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_s* %45 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %46, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %47) #4
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %49 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %49, i32 0, i32 45
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !21
  %50 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %50, i32 0, i32 3
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %memory17, align 8, !tbaa !27
  %51 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_clist_common_s* %51 to %struct.gx_device_printer_s*
  %buffer_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 55
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !28
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 26
  %54 = load i64, i64* %PageCount, align 8, !tbaa !32
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %PageCount18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 26
  store i64 %54, i64* %PageCount18, align 8, !tbaa !32
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !33
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %file19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 52
  store %struct._IO_FILE* %57, %struct._IO_FILE** %file19, align 8, !tbaa !33
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %fname20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 45
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname20, i32 0, i32 0
  %call22 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay21) #5
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 11
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 11
  %63 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %64 = bitcast %struct.gx_device_color_info_s* %color_info23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 720, i32 8, i1 false), !tbaa.struct !34
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 15
  %66 = load i32, i32* %pad, align 4, !tbaa !38
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %pad24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 15
  store i32 %66, i32* %pad24, align 4, !tbaa !38
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 16
  %69 = load i32, i32* %log2_align_mod, align 4, !tbaa !39
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %log2_align_mod25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 16
  store i32 %69, i32* %log2_align_mod25, align 4, !tbaa !39
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 17
  %72 = load i32, i32* %is_planar, align 4, !tbaa !40
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %is_planar26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 17
  store i32 %72, i32* %is_planar26, align 4, !tbaa !40
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !7
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %paramlist, %struct.gs_memory_s* %75) #4
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %call28 = call i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %76, %struct.gs_param_list_s* %77, i32 0) #4
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.16
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !7
  %call32 = call i8* @gs_program_name() #4
  %call33 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %79, i8* %call32, i64 %call33) #4
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !7
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %call35 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %81, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i32 0, i32 0), i32 %82) #4
  br label %out_cleanup

if.end.36:                                        ; preds = %if.end.16
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %paramlist) #4
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %84 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %call37 = call i32 @gs_putdeviceparams(%struct.gx_device_s* %83, %struct.gs_param_list_s* %84) #4
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  br label %out_cleanup

if.end.40:                                        ; preds = %if.end.36
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %paramlist) #4
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %86 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !41
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call41 = call %struct.gs_devn_params_s* %86(%struct.gx_device_s* %87) #4
  store %struct.gs_devn_params_s* %call41, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %88 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pclist_devn_params, align 8, !tbaa !1
  %cmp42 = icmp ne %struct.gs_devn_params_s* %88, null
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.40
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %call44 = call i32 @devn_copy_params(%struct.gx_device_s* %89, %struct.gx_device_s* %90) #4
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %91, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.43
  br label %out_cleanup

if.end.47:                                        ; preds = %if.then.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.40
  %92 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %92, i32 0, i32 39
  %93 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !42
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %93, i32 0, i32 9
  %94 = load i32, i32* %supports_devn, align 4, !tbaa !43
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %icc_struct49 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 39
  %96 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct49, align 8, !tbaa !45
  %supports_devn50 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %96, i32 0, i32 9
  store i32 %94, i32* %supports_devn50, align 4, !tbaa !43
  %97 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %97, i32 0, i32 37
  %98 = load i32, i32* %page_uses_transparency, align 4, !tbaa !46
  %99 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_uses_transparency51 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %99, i32 0, i32 37
  store i32 %98, i32* %page_uses_transparency51, align 4, !tbaa !46
  br label %do.body

do.body:                                          ; preds = %if.end.48
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %100 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %is_planar52 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %100, i32 0, i32 17
  %101 = load i32, i32* %is_planar52, align 4, !tbaa !47
  %102 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %is_planar53 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %102, i32 0, i32 17
  store i32 %101, i32* %is_planar53, align 4, !tbaa !47
  %tobool = icmp ne i32 %101, 0
  br i1 %tobool, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %do.end
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %call55 = call i32 @gdev_prn_set_procs_planar(%struct.gx_device_s* %103) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %do.end
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 13
  %106 = load i32, i32* %width, align 4, !tbaa !48
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 14
  %108 = load i32, i32* %height, align 4, !tbaa !49
  %call57 = call i32 @gdev_prn_allocate_memory(%struct.gx_device_s* %104, %struct.gdev_space_params_s* null, i32 %106, i32 %108) #4
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  br label %out_cleanup

if.end.60:                                        ; preds = %if.end.56
  %109 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %109, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %110 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !50
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %110, i32 0, i32 1
  %111 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !51
  %112 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info61 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %112, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info61, i32 0, i32 1
  %113 = load i8*, i8** %cfile, align 8, !tbaa !53
  %114 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info62 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %114, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info62, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call64 = call i32 %111(i8* %113, i8* %arraydecay63, i32 1) #4
  %115 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info65 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %115, i32 0, i32 58
  %io_procs66 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info65, i32 0, i32 4
  %116 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs66, align 8, !tbaa !50
  %fclose67 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %116, i32 0, i32 1
  %117 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose67, align 8, !tbaa !51
  %118 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info68 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %118, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info68, i32 0, i32 3
  %119 = load i8*, i8** %bfile, align 8, !tbaa !54
  %120 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info69 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %120, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info69, i32 0, i32 2
  %arraydecay70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call71 = call i32 %117(i8* %119, i8* %arraydecay70, i32 1) #4
  %121 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info72 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %121, i32 0, i32 58
  %bfile73 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info72, i32 0, i32 3
  store i8* null, i8** %bfile73, align 8, !tbaa !54
  %122 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info74 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %122, i32 0, i32 58
  %cfile75 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info74, i32 0, i32 1
  store i8* null, i8** %cfile75, align 8, !tbaa !53
  %arraydecay76 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call77 = call i8* @strcpy(i8* %arraydecay76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5
  %arraydecay78 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call79 = call i8* @strncat(i8* %arraydecay78, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0), i64 1) #5
  %123 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info80 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %123, i32 0, i32 58
  %io_procs81 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info80, i32 0, i32 4
  %124 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs81, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %124, i32 0, i32 0
  %125 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !55
  %126 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info82 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %126, i32 0, i32 58
  %cfname83 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info82, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname83, i32 0, i32 0
  %arraydecay85 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %127 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info86 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %127, i32 0, i32 58
  %cfile87 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info86, i32 0, i32 1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %call88 = call i32 %125(i8* %arraydecay84, i8* %arraydecay85, i8** %cfile87, %struct.gs_memory_s* %128, %struct.gs_memory_s* %129, i32 1) #4
  store i32 %call88, i32* %code, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then.102, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.end.60
  %130 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info91 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %130, i32 0, i32 58
  %io_procs92 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info91, i32 0, i32 4
  %131 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs92, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN93 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %131, i32 0, i32 0
  %132 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN93, align 8, !tbaa !55
  %133 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info94 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %133, i32 0, i32 58
  %bfname95 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info94, i32 0, i32 2
  %arraydecay96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname95, i32 0, i32 0
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %134 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info98 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %134, i32 0, i32 58
  %bfile99 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info98, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %call100 = call i32 %132(i8* %arraydecay96, i8* %arraydecay97, i8** %bfile99, %struct.gs_memory_s* %135, %struct.gs_memory_s* %136, i32 0) #4
  store i32 %call100, i32* %code, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %lor.lhs.false.90, %if.end.60
  br label %out_cleanup

if.end.103:                                       ; preds = %lor.lhs.false.90
  %137 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info104 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %137, i32 0, i32 58
  %cfname105 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info104, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname105, i32 0, i32 0
  %138 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info107 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %138, i32 0, i32 58
  %cfname108 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info107, i32 0, i32 0
  %arraydecay109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname108, i32 0, i32 0
  %call110 = call i8* @strcpy(i8* %arraydecay106, i8* %arraydecay109) #5
  %139 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info111 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %139, i32 0, i32 58
  %bfname112 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info111, i32 0, i32 2
  %arraydecay113 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname112, i32 0, i32 0
  %140 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info114 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %140, i32 0, i32 58
  %bfname115 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info114, i32 0, i32 2
  %arraydecay116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname115, i32 0, i32 0
  %call117 = call i8* @strcpy(i8* %arraydecay113, i8* %arraydecay116) #5
  %141 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %ncldev, align 8, !tbaa !1
  %call118 = call i32 @clist_render_init(%union.gx_device_clist_s* %141) #4
  %142 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info119 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %142, i32 0, i32 58
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info119, i32 0, i32 7
  %143 = load i64, i64* %bfile_end_pos, align 8, !tbaa !56
  %144 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info120 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %144, i32 0, i32 58
  %bfile_end_pos121 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info120, i32 0, i32 7
  store i64 %143, i64* %bfile_end_pos121, align 8, !tbaa !56
  %145 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %cmp122 = icmp ne %struct.gsicc_link_cache_s** %145, null
  br i1 %cmp122, label %if.then.123, label %if.else

if.then.123:                                      ; preds = %if.end.103
  %146 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %147 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %146, align 8, !tbaa !1
  %cmp124 = icmp eq %struct.gsicc_link_cache_s* %147, null
  br i1 %cmp124, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.then.123
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 4
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !57
  %call126 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %149) #4
  %150 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  store %struct.gsicc_link_cache_s* %call126, %struct.gsicc_link_cache_s** %150, align 8, !tbaa !1
  %cmp127 = icmp eq %struct.gsicc_link_cache_s* %call126, null
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.125
  br label %out_cleanup

if.end.129:                                       ; preds = %if.then.125
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.123
  br label %do.body.131

do.body.131:                                      ; preds = %if.end.130
  %151 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %152 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %151, align 8, !tbaa !1
  %tobool132 = icmp ne %struct.gsicc_link_cache_s* %152, null
  br i1 %tobool132, label %if.then.133, label %if.end.141

if.then.133:                                      ; preds = %do.body.131
  br label %do.body.134

do.body.134:                                      ; preds = %if.then.133
  %153 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %154 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %153, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %154, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %155 = load i64, i64* %ref_count, align 8, !tbaa !60
  %inc135 = add nsw i64 %155, 1
  store i64 %inc135, i64* %ref_count, align 8, !tbaa !60
  br label %do.body.136

do.body.136:                                      ; preds = %do.body.134
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %do.body.131
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  %156 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %cachep.addr, align 8, !tbaa !1
  %157 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %156, align 8, !tbaa !1
  %158 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %158, i32 0, i32 62
  store %struct.gsicc_link_cache_s* %157, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !62
  br label %if.end.149

if.else:                                          ; preds = %if.end.103
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %call144 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %159) #4
  %160 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %icc_cache_cl145 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %160, i32 0, i32 62
  store %struct.gsicc_link_cache_s* %call144, %struct.gsicc_link_cache_s** %icc_cache_cl145, align 8, !tbaa !62
  %cmp146 = icmp eq %struct.gsicc_link_cache_s* %call144, null
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.else
  br label %out_cleanup

if.end.148:                                       ; preds = %if.else
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %do.end.143
  %161 = load i32, i32* %bg_print.addr, align 4, !tbaa !5
  %tobool150 = icmp ne i32 %161, 0
  br i1 %tobool150, label %if.then.151, label %if.else.168

if.then.151:                                      ; preds = %if.end.149
  %162 = bitcast %struct.gx_device_clist_reader_s** %ncrdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  %163 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %164 = bitcast %struct.gx_device_clist_common_s* %163 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %164, %struct.gx_device_clist_reader_s** %ncrdev, align 8, !tbaa !1
  %165 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %165, i32 0, i32 61
  %166 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !63
  %cmp153 = icmp ne %struct.clist_icctable_s* %166, null
  br i1 %cmp153, label %if.then.154, label %if.end.163

if.then.154:                                      ; preds = %if.then.151
  %167 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %icc_table155 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %167, i32 0, i32 61
  %168 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table155, align 8, !tbaa !63
  %169 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %memory156 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory156, align 8, !tbaa !27
  %call157 = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %168, %struct.gs_memory_s* %170) #4
  %171 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %icc_table158 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %171, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table158, align 8, !tbaa !63
  %172 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %173 = bitcast %struct.gx_device_clist_common_s* %172 to %struct.gx_device_clist_reader_s*
  %call159 = call i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %173) #4
  store i32 %call159, i32* %code, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.154
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.then.154
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.151
  %174 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %ncrdev, align 8, !tbaa !1
  %call164 = call i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s* %174) #4
  store i32 %call164, i32* %code, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %if.end.163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.166, %if.then.161, %if.end.167
  %175 = bitcast %struct.gx_device_clist_reader_s** %ncrdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.207 [
    i32 0, label %cleanup.cont
    i32 5, label %out_cleanup
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.172

if.else.168:                                      ; preds = %if.end.149
  %176 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %icc_table169 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %176, i32 0, i32 61
  %177 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table169, align 8, !tbaa !63
  %178 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %icc_table170 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %178, i32 0, i32 61
  store %struct.clist_icctable_s* %177, %struct.clist_icctable_s** %icc_table170, align 8, !tbaa !63
  %179 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %180 = bitcast %struct.gx_device_clist_common_s* %179 to %struct.gx_device_clist_reader_s*
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %180, i32 0, i32 67
  %181 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !64
  %182 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %183 = bitcast %struct.gx_device_clist_common_s* %182 to %struct.gx_device_clist_reader_s*
  %color_usage_array171 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %183, i32 0, i32 67
  store %struct.gx_colors_usage_s* %181, %struct.gx_colors_usage_s** %color_usage_array171, align 8, !tbaa !64
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.168, %cleanup.cont
  %184 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %trans_dev_icc_hash = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %184, i32 0, i32 60
  %185 = load i64, i64* %trans_dev_icc_hash, align 8, !tbaa !67
  %186 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %trans_dev_icc_hash173 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %186, i32 0, i32 60
  store i64 %185, i64* %trans_dev_icc_hash173, align 8, !tbaa !67
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  store %struct.gx_device_s* %187, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

out_cleanup:                                      ; preds = %cleanup, %if.then.147, %if.then.128, %if.then.102, %if.then.59, %if.then.46, %if.then.39, %if.then.30
  %188 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info174 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %188, i32 0, i32 58
  %bfile175 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info174, i32 0, i32 3
  %189 = load i8*, i8** %bfile175, align 8, !tbaa !54
  %cmp176 = icmp ne i8* %189, null
  br i1 %cmp176, label %if.then.177, label %if.end.187

if.then.177:                                      ; preds = %out_cleanup
  %190 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info178 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %190, i32 0, i32 58
  %io_procs179 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info178, i32 0, i32 4
  %191 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs179, align 8, !tbaa !50
  %fclose180 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %191, i32 0, i32 1
  %192 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose180, align 8, !tbaa !51
  %193 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info181 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %193, i32 0, i32 58
  %bfile182 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info181, i32 0, i32 3
  %194 = load i8*, i8** %bfile182, align 8, !tbaa !54
  %195 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info183 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %195, i32 0, i32 58
  %bfname184 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info183, i32 0, i32 2
  %arraydecay185 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname184, i32 0, i32 0
  %call186 = call i32 %192(i8* %194, i8* %arraydecay185, i32 0) #4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.177, %out_cleanup
  %196 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info188 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %196, i32 0, i32 58
  %cfile189 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info188, i32 0, i32 1
  %197 = load i8*, i8** %cfile189, align 8, !tbaa !53
  %cmp190 = icmp ne i8* %197, null
  br i1 %cmp190, label %if.then.191, label %if.end.201

if.then.191:                                      ; preds = %if.end.187
  %198 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info192 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %198, i32 0, i32 58
  %io_procs193 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info192, i32 0, i32 4
  %199 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs193, align 8, !tbaa !50
  %fclose194 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %199, i32 0, i32 1
  %200 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose194, align 8, !tbaa !51
  %201 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info195 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %201, i32 0, i32 58
  %cfile196 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info195, i32 0, i32 1
  %202 = load i8*, i8** %cfile196, align 8, !tbaa !53
  %203 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %page_info197 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %203, i32 0, i32 58
  %cfname198 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info197, i32 0, i32 0
  %arraydecay199 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname198, i32 0, i32 0
  %call200 = call i32 %200(i8* %202, i8* %arraydecay199, i32 0) #4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.191, %if.end.187
  %204 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %ncdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %204, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !68
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %cmp202 = icmp ne %struct.gx_device_s* %205, null
  br i1 %cmp202, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %if.end.201
  %206 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %call204 = call i32 @gdev_prn_free_memory(%struct.gx_device_s* %206) #4
  %207 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %procs205 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %207, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs205, i32 0, i32 2
  %208 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %211 = bitcast %struct.gx_device_s* %210 to i8*
  call void %208(%struct.gs_memory_s* %209, i8* %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.203, %if.end.201
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_mem, align 8, !tbaa !1
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %212) #4
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

cleanup.207:                                      ; preds = %if.end.206, %if.end.172, %cleanup, %if.then.15, %if.then
  %213 = bitcast %struct.gs_devn_params_s** %pclist_devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.end(i64 56, i8* %214) #1
  %215 = bitcast %struct.gx_device_s** %protodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast %struct.gx_device_printer_s** %npdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast %struct.gx_device_clist_common_s** %ncdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast %union.gx_device_clist_s** %ncldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast %struct.gs_memory_s** %thread_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %227
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_memory_chunk_wrap(%struct.gs_memory_s**, %struct.gs_memory_s*) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare %struct.gx_device_s* @gs_getdevice(i32) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gs_memory_chunk_release(%struct.gs_memory_s*) #2

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #2

declare i32 @gs_get_device_or_hw_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i32) #2

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #2

declare i32 @gs_putdeviceparams(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #2

declare i32 @devn_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #2

declare i32 @gdev_prn_set_procs_planar(%struct.gx_device_s*) #2

declare i32 @gdev_prn_allocate_memory(%struct.gx_device_s*, %struct.gdev_space_params_s*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

declare i32 @clist_render_init(%union.gx_device_clist_s*) #2

declare %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s*) #2

declare i32 @clist_free_icc_table(%struct.clist_icctable_s*, %struct.gs_memory_s*) #2

declare i32 @clist_read_icctable(%struct.gx_device_clist_reader_s*) #2

declare i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s*) #2

declare i32 @gdev_prn_free_memory(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define void @teardown_device_and_mem_for_thread(%struct.gx_device_s* %dev, i8* %thread_id, i32 %bg_print) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %thread_id.addr = alloca i8*, align 8
  %bg_print.addr = alloca i32, align 4
  %thread_cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %thread_crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %thread_memory = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %thread_id, i8** %thread_id.addr, align 8, !tbaa !1
  store i32 %bg_print, i32* %bg_print.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %2, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %thread_crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %5, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %thread_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %thread_memory, align 8, !tbaa !1
  %9 = load i8*, i8** %thread_id.addr, align 8, !tbaa !1
  call void @gp_thread_finish(i8* %9) #4
  %10 = load i32, i32* %bg_print.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @clist_teardown_render_threads(%struct.gx_device_s* %11) #4
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %12, i32 0, i32 61
  %13 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !70
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_memory, align 8, !tbaa !1
  %call = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %13, %struct.gs_memory_s* %14) #4
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_table1 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table1, align 8, !tbaa !70
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_clist_common_s* %16 to %struct.gx_device_clist_reader_s*
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %17, i32 0, i32 67
  store %struct.gx_colors_usage_s* null, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 62
  %19 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !71
  %tobool2 = icmp ne %struct.gsicc_link_cache_s* %19, null
  br i1 %tobool2, label %if.then.3, label %if.end.32

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 62
  %21 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl6, align 8, !tbaa !71
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %21, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %22 = load i64, i64* %ref_count, align 8, !tbaa !60
  %add = add nsw i64 %22, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !60
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl9 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 62
  %24 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl9, align 8, !tbaa !71
  %rc10 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %24, i32 0, i32 2
  %ref_count11 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc10, i32 0, i32 0
  %25 = load i64, i64* %ref_count11, align 8, !tbaa !60
  %tobool12 = icmp ne i64 %25, 0
  br i1 %tobool12, label %if.else.27, label %if.then.13

if.then.13:                                       ; preds = %do.end.8
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %26 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl18 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %26, i32 0, i32 62
  %27 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl18, align 8, !tbaa !71
  %rc19 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %27, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !72
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl20 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 62
  %30 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl20, align 8, !tbaa !71
  %rc21 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %30, i32 0, i32 2
  %memory22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !73
  %32 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl23 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %32, i32 0, i32 62
  %33 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl23, align 8, !tbaa !71
  %34 = bitcast %struct.gsicc_link_cache_s* %33 to i8*
  call void %28(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end.17
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl26 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %35, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl26, align 8, !tbaa !71
  br label %if.end.31

if.else.27:                                       ; preds = %do.end.8
  br label %do.body.28

do.body.28:                                       ; preds = %if.else.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.end.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %do.body
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %36 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %thread_crdev, align 8, !tbaa !1
  %icc_cache_cl35 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %36, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl35, align 8, !tbaa !71
  %37 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %37, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %38 = load i8*, i8** %cfile, align 8, !tbaa !53
  %cmp = icmp ne i8* %38, null
  br i1 %cmp, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %do.end.34
  %39 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info37 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %39, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info37, i32 0, i32 4
  %40 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !50
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %40, i32 0, i32 1
  %41 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !51
  %42 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info38 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %42, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info38, i32 0, i32 3
  %43 = load i8*, i8** %bfile, align 8, !tbaa !54
  %44 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info39 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %44, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %45 = load i32, i32* %bg_print.addr, align 4, !tbaa !5
  %call40 = call i32 %41(i8* %43, i8* %arraydecay, i32 %45) #4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %do.end.34
  %46 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info42 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %46, i32 0, i32 58
  %bfile43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info42, i32 0, i32 3
  %47 = load i8*, i8** %bfile43, align 8, !tbaa !54
  %cmp44 = icmp ne i8* %47, null
  br i1 %cmp44, label %if.then.45, label %if.end.54

if.then.45:                                       ; preds = %if.end.41
  %48 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info46 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %48, i32 0, i32 58
  %io_procs47 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info46, i32 0, i32 4
  %49 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs47, align 8, !tbaa !50
  %fclose48 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %49, i32 0, i32 1
  %50 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose48, align 8, !tbaa !51
  %51 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info49 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %51, i32 0, i32 58
  %cfile50 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info49, i32 0, i32 1
  %52 = load i8*, i8** %cfile50, align 8, !tbaa !53
  %53 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info51 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %53, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info51, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %54 = load i32, i32* %bg_print.addr, align 4, !tbaa !5
  %call53 = call i32 %50(i8* %52, i8* %arraydecay52, i32 %54) #4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.45, %if.end.41
  %55 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %55, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !68
  %56 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_clist_common_s* %56 to %struct.gx_device_s*
  %call55 = call i32 @gdev_prn_free_memory(%struct.gx_device_s* %57) #4
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_memory, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_memory, align 8, !tbaa !1
  %61 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_clist_common_s* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #4
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_memory, align 8, !tbaa !1
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %63) #4
  %64 = bitcast %struct.gs_memory_s** %thread_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gx_device_clist_reader_s** %thread_crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret void
}

declare void @gp_thread_finish(i8*) #2

; Function Attrs: nounwind uwtable
define void @clist_teardown_render_threads(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %thread = alloca %struct.clist_render_thread_control_s*, align 8
  %thread_cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %fmode = alloca [4 x i8], align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %5, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %7 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %9, i32 0, i32 45
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !21
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %12, i32 0, i32 71
  %13 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !74
  %cmp = icmp ne %struct.clist_render_thread_control_s* %13, null
  br i1 %cmp, label %if.then, label %if.end.70

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 70
  %15 = load i32, i32* %num_render_threads, align 4, !tbaa !75
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %16, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %19, i32 0, i32 71
  %20 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads2, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %20, i64 %idxprom
  store %struct.clist_render_thread_control_s* %arrayidx, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %cdev3 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %22, i32 0, i32 4
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev3, align 8, !tbaa !76
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %24, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %25 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %25, i32 0, i32 0
  %26 = load i32, i32* %status, align 4, !tbaa !78
  %cmp4 = icmp eq i32 %26, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %27 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_this = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %27, i32 0, i32 2
  %28 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this, align 8, !tbaa !79
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %28, i32 0, i32 1
  %call = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native) #4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  %29 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_group = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %29, i32 0, i32 3
  %30 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_group, align 8, !tbaa !80
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %30) #4
  %31 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_this6 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %31, i32 0, i32 2
  %32 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this6, align 8, !tbaa !79
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %32) #4
  %33 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %33, i32 0, i32 44
  %destroy_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 3
  %34 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device, align 8, !tbaa !81
  %35 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %bdev = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %35, i32 0, i32 5
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !82
  call void %34(%struct.gx_device_s* %36) #4
  %37 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %37, i32 0, i32 8
  %38 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options, align 8, !tbaa !83
  %tobool = icmp ne %struct.gx_process_page_options_s* %38, null
  br i1 %tobool, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end
  %39 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options8 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %39, i32 0, i32 8
  %40 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options8, align 8, !tbaa !83
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %40, i32 0, i32 1
  %41 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !84
  %tobool9 = icmp ne void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* %41, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.7
  %42 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %42, i32 0, i32 9
  %43 = load i8*, i8** %buffer, align 8, !tbaa !86
  %tobool10 = icmp ne i8* %43, null
  br i1 %tobool10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true
  %44 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options12 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %44, i32 0, i32 8
  %45 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options12, align 8, !tbaa !83
  %free_buffer_fn13 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %45, i32 0, i32 1
  %46 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn13, align 8, !tbaa !84
  %47 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options14 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %47, i32 0, i32 8
  %48 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options14, align 8, !tbaa !83
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %48, i32 0, i32 4
  %49 = load i8*, i8** %arg, align 8, !tbaa !87
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %51, i32 0, i32 1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %53 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer15 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %53, i32 0, i32 9
  %54 = load i8*, i8** %buffer15, align 8, !tbaa !86
  call void %46(i8* %49, %struct.gx_device_s* %50, %struct.gs_memory_s* %52, i8* %54) #4
  %55 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer16 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %55, i32 0, i32 9
  store i8* null, i8** %buffer16, align 8, !tbaa !86
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.7
  %56 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options18 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %56, i32 0, i32 8
  store %struct.gx_process_page_options_s* null, %struct.gx_process_page_options_s** %options18, align 8, !tbaa !83
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %if.end
  %57 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %57, i32 0, i32 46
  %58 = load i8*, i8** %data, align 8, !tbaa !89
  %59 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %main_thread_data = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %59, i32 0, i32 72
  %60 = load i8*, i8** %main_thread_data, align 8, !tbaa !90
  %cmp20 = icmp eq i8* %58, %60
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.19
  %61 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %61, i32 0, i32 46
  %62 = load i8*, i8** %data22, align 8, !tbaa !89
  %63 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %63, i32 0, i32 46
  store i8* %62, i8** %data23, align 8, !tbaa !89
  %64 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %main_thread_data24 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %64, i32 0, i32 72
  %65 = load i8*, i8** %main_thread_data24, align 8, !tbaa !90
  %66 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %data25 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %66, i32 0, i32 46
  store i8* %65, i8** %data25, align 8, !tbaa !89
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.19
  %67 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_clist_common_s* %67 to %struct.gx_device_s*
  %69 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %thread27 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %69, i32 0, i32 7
  %70 = load i8*, i8** %thread27, align 8, !tbaa !91
  call void @teardown_device_and_mem_for_thread(%struct.gx_device_s* %68, i8* %70, i32 0) #4
  %71 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %75 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %77 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads28 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %77, i32 0, i32 71
  %78 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads28, align 8, !tbaa !74
  %79 = bitcast %struct.clist_render_thread_control_s* %78 to i8*
  call void %75(%struct.gs_memory_s* %76, i8* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #4
  %80 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads29 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %80, i32 0, i32 71
  store %struct.clist_render_thread_control_s* null, %struct.clist_render_thread_control_s** %render_threads29, align 8, !tbaa !74
  %81 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %81, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %82 = load i8*, i8** %cfile, align 8, !tbaa !53
  %cmp30 = icmp eq i8* %82, null
  br i1 %cmp30, label %if.then.31, label %if.end.69

if.then.31:                                       ; preds = %for.end
  %83 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call32 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #5
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call34 = call i8* @strncat(i8* %arraydecay33, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0), i64 1) #5
  %84 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info35 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %84, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info35, i32 0, i32 4
  %85 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %85, i32 0, i32 0
  %86 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !55
  %87 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info36 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %87, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info36, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %88 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info39 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %88, i32 0, i32 58
  %cfile40 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info39, i32 0, i32 1
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %90 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory41 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %90, i32 0, i32 45
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory41, align 8, !tbaa !21
  %call42 = call i32 %86(i8* %arraydecay37, i8* %arraydecay38, i8** %cfile40, %struct.gs_memory_s* %89, %struct.gs_memory_s* %91, i32 1) #4
  %92 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info43 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %92, i32 0, i32 58
  %io_procs44 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info43, i32 0, i32 4
  %93 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs44, align 8, !tbaa !50
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %93, i32 0, i32 9
  %94 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !92
  %95 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info45 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %95, i32 0, i32 58
  %cfile46 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info45, i32 0, i32 1
  %96 = load i8*, i8** %cfile46, align 8, !tbaa !53
  %97 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info47 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %97, i32 0, i32 58
  %cfname48 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info47, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname48, i32 0, i32 0
  %call50 = call i32 %94(i8* %96, i64 0, i32 0, i8* %arraydecay49) #4
  %98 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info51 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %98, i32 0, i32 58
  %io_procs52 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info51, i32 0, i32 4
  %99 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs52, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN53 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %99, i32 0, i32 0
  %100 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN53, align 8, !tbaa !55
  %101 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info54 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %101, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info54, i32 0, i32 2
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %102 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info57 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %102, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info57, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %104 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory58 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %104, i32 0, i32 45
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory58, align 8, !tbaa !21
  %call59 = call i32 %100(i8* %arraydecay55, i8* %arraydecay56, i8** %bfile, %struct.gs_memory_s* %103, %struct.gs_memory_s* %105, i32 0) #4
  %106 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info60 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %106, i32 0, i32 58
  %io_procs61 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info60, i32 0, i32 4
  %107 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs61, align 8, !tbaa !50
  %fseek62 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %107, i32 0, i32 9
  %108 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek62, align 8, !tbaa !92
  %109 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info63 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %109, i32 0, i32 58
  %bfile64 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info63, i32 0, i32 3
  %110 = load i8*, i8** %bfile64, align 8, !tbaa !54
  %111 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info65 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %111, i32 0, i32 58
  %bfname66 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info65, i32 0, i32 2
  %arraydecay67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname66, i32 0, i32 0
  %call68 = call i32 %108(i8* %110, i64 0, i32 0, i8* %arraydecay67) #4
  %112 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.31, %for.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %entry
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  ret void
}

declare i32 @gp_semaphore_wait(%union.gp_semaphore*) #2

declare void @gx_semaphore_free(%struct.gx_semaphore_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_process_page(%struct.gx_device_s* %dev, %struct.gx_process_page_options_s* %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %y = alloca i32, align 4
  %line_count = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band_rect = alloca %struct.gs_int_rect_s, align 4
  %lines_rasterized = alloca i32, align 4
  %bdev = alloca %struct.gx_device_s*, align 8
  %render_plane = alloca %struct.gx_render_plane_s, align 4
  %my = alloca i32, align 4
  %code = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %7, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %11, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %12 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %12, i32* %band_height, align 4, !tbaa !5
  %13 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.start(i64 12, i8* %16) #1
  %17 = bitcast i32* %my to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8* null, i8** %buffer, align 8, !tbaa !1
  %20 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %20) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sgt i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %22, i32 0, i32 0
  %23 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !94
  %tobool = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* %23, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %24 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn2 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %24, i32 0, i32 0
  %25 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn2, align 8, !tbaa !94
  %26 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %26, i32 0, i32 4
  %27 = load i8*, i8** %arg, align 8, !tbaa !87
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width, align 4, !tbaa !48
  %33 = load i32, i32* %band_height, align 4, !tbaa !5
  %call3 = call i32 %25(i8* %27, %struct.gx_device_s* %28, %struct.gs_memory_s* %30, i32 %32, i32 %33, i8** %buffer) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %34, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.1
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %render_plane, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !95
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %36 = load i32, i32* %y, align 4, !tbaa !5
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height, align 4, !tbaa !49
  %cmp8 = icmp slt i32 %36, %38
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %band_height, align 4, !tbaa !5
  store i32 %39, i32* %line_count, align 4, !tbaa !5
  %40 = load i32, i32* %line_count, align 4, !tbaa !5
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 14
  %42 = load i32, i32* %height9, align 4, !tbaa !49
  %43 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %42, %43
  %cmp10 = icmp sgt i32 %40, %sub
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %for.body
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 14
  %45 = load i32, i32* %height12, align 4, !tbaa !49
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %sub13 = sub nsw i32 %45, %46
  store i32 %sub13, i32* %line_count, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %for.body
  %47 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %47, i32 0, i32 44
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  %48 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !96
  %49 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %49, i32 0, i32 43
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !97
  %51 = load i32, i32* %y, align 4, !tbaa !5
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %55 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %54, %55
  %idxprom = sext i32 %div to i64
  %56 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %56, i32 0, i32 67
  %57 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %57, i64 %idxprom
  %call16 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %48, %struct.gx_device_s** %bdev, %struct.gx_device_s* %50, i32 %51, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %53, %struct.gx_colors_usage_s* %arrayidx) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %58, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.14
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %61 = load i32, i32* %y, align 4, !tbaa !5
  %62 = load i32, i32* %line_count, align 4, !tbaa !5
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call20 = call i32 @clist_rasterize_lines(%struct.gx_device_s* %60, i32 %61, i32 %62, %struct.gx_device_s* %63, %struct.gx_render_plane_s* %render_plane, i32* %my) #4
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %64, 0
  br i1 %cmp21, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.end.19
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %65, %66
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %67 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.22
  %68 = load i32, i32* %line_count, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ %68, %cond.false ]
  store i32 %cond, i32* %lines_rasterized, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !98
  %69 = load i32, i32* %y, align 4, !tbaa !5
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 1
  store i32 %69, i32* %y25, align 4, !tbaa !101
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 13
  %71 = load i32, i32* %width26, align 4, !tbaa !48
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %71, i32* %x27, align 4, !tbaa !102
  %72 = load i32, i32* %y, align 4, !tbaa !5
  %73 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %add = add nsw i32 %72, %73
  %q28 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q28, i32 0, i32 1
  store i32 %add, i32* %y29, align 4, !tbaa !103
  %74 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %74, i32 0, i32 2
  %75 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !104
  %tobool30 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* %75, null
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %cond.end
  %76 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %process_fn32 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %76, i32 0, i32 2
  %77 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn32, align 8, !tbaa !104
  %78 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg33 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %78, i32 0, i32 4
  %79 = load i8*, i8** %arg33, align 8, !tbaa !87
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %82 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call34 = call i32 %77(i8* %79, %struct.gx_device_s* %80, %struct.gx_device_s* %81, %struct.gs_int_rect_s* %band_rect, i8* %82) #4
  store i32 %call34, i32* %code, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %cond.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.19
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp sge i32 %83, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.36
  %84 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %84, i32 0, i32 3
  %85 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !105
  %tobool38 = icmp ne i32 (i8*, %struct.gx_device_s*, i8*)* %85, null
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %land.lhs.true
  %86 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn40 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %86, i32 0, i32 3
  %87 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn40, align 8, !tbaa !105
  %88 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg41 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %88, i32 0, i32 4
  %89 = load i8*, i8** %arg41, align 8, !tbaa !87
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call42 = call i32 %87(i8* %89, %struct.gx_device_s* %90, i8* %91) #4
  store i32 %call42, i32* %code, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.36
  %92 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs44 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %92, i32 0, i32 44
  %destroy_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs44, i32 0, i32 3
  %93 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device, align 8, !tbaa !81
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  call void %93(%struct.gx_device_s* %94) #4
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %95, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %for.end

if.end.47:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %96 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %97 = load i32, i32* %y, align 4, !tbaa !5
  %add48 = add nsw i32 %97, %96
  store i32 %add48, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.46, %for.cond
  %98 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %98, i32 0, i32 1
  %99 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !84
  %tobool49 = icmp ne void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* %99, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %for.end
  %100 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn51 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %100, i32 0, i32 1
  %101 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn51, align 8, !tbaa !84
  %102 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg52 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %102, i32 0, i32 4
  %103 = load i8*, i8** %arg52, align 8, !tbaa !87
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !7
  %107 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %101(i8* %103, %struct.gx_device_s* %104, %struct.gs_memory_s* %106, i8* %107) #4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %for.end
  %108 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.18, %if.then.5, %if.then
  %109 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %my to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.end(i64 12, i8* %112) #1
  %113 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #1
  %116 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s*) #2

declare i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, %struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #2

declare i32 @clist_rasterize_lines(%struct.gx_device_s*, i32, i32, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_enable_multi_thread_render(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %thread = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 -1, i32* %code, align 4, !tbaa !5
  %1 = bitcast i8** %thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %3 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !106
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %3, @clist_get_bits_rect_mt
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @gp_thread_start(void (i8*)* @test_threads, i8* null, i8** %thread) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %thread, align 8, !tbaa !1
  call void @gp_thread_finish(i8* %5) #4
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_bits_rectangle5 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @clist_get_bits_rect_mt, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle5, align 8, !tbaa !106
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %process_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 72
  store i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* @clist_process_page_mt, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)** %process_page, align 8, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %8 = bitcast i8** %thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_get_bits_rect_mt(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %options = alloca i64, align 8
  %y = alloca i32, align 4
  %end_y = alloca i32, align 4
  %line_count = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band = alloca i32, align 4
  %band_rect = alloca %struct.gs_int_rect_s, align 4
  %lines_rasterized = alloca i32, align 4
  %bdev = alloca %struct.gx_device_s*, align 8
  %mdata = alloca i8*, align 8
  %raster = alloca i32, align 4
  %my = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %band_params103 = alloca %struct.gs_get_bits_params_s, align 8
  %raster104 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %5, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %8, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %12, i32 0, i32 45
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !21
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %15, i32 0, i32 0
  %16 = load i64, i64* %options1, align 8, !tbaa !108
  store i64 %16, i64* %options, align 8, !tbaa !37
  %17 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %18, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %19 = load i32, i32* %y2, align 4, !tbaa !101
  store i32 %19, i32* %y, align 4, !tbaa !5
  %20 = bitcast i32* %end_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %21, i32 0, i32 1
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %22 = load i32, i32* %y3, align 4, !tbaa !103
  store i32 %22, i32* %end_y, align 4, !tbaa !5
  %23 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %end_y, align 4, !tbaa !5
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %25
  store i32 %sub, i32* %line_count, align 4, !tbaa !5
  %26 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %28 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %28, i32* %band_height, align 4, !tbaa !5
  %29 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %y, align 4, !tbaa !5
  %31 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %30, %31
  store i32 %div, i32* %band, align 4, !tbaa !5
  %32 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %37, i32 1) #4
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %38 = bitcast i32* %my to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 64
  %41 = load i32, i32* %num_render_threads_requested, align 4, !tbaa !110
  %cmp = icmp slt i32 %41, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %42 = load i64, i64* %options, align 8, !tbaa !37
  %and = and i64 %42, 524288
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %45 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %46 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call4 = call i32 @clist_get_bits_rectangle(%struct.gx_device_s* %43, %struct.gs_int_rect_s* %44, %struct.gs_get_bits_params_s* %45, %struct.gs_int_rect_s** %46) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end:                                           ; preds = %lor.lhs.false
  %47 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %47, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 0
  %48 = load i32, i32* %x, align 4, !tbaa !98
  %cmp6 = icmp slt i32 %48, 0
  br i1 %cmp6, label %if.then.15, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %49 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %49, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q8, i32 0, i32 0
  %50 = load i32, i32* %x9, align 4, !tbaa !102
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 13
  %52 = load i32, i32* %width, align 4, !tbaa !48
  %cmp10 = icmp sgt i32 %50, %52
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %53 = load i32, i32* %y, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %53, 0
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %54 = load i32, i32* %end_y, align 4, !tbaa !5
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 14
  %56 = load i32, i32* %height, align 4, !tbaa !49
  %cmp14 = icmp sgt i32 %54, %56
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false.7, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.16:                                        ; preds = %lor.lhs.false.13
  %57 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %57, 0
  br i1 %cmp17, label %if.then.24, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.16
  %58 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p19 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %58, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p19, i32 0, i32 0
  %59 = load i32, i32* %x20, align 4, !tbaa !98
  %60 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %60, i32 0, i32 1
  %x22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q21, i32 0, i32 0
  %61 = load i32, i32* %x22, align 4, !tbaa !102
  %cmp23 = icmp sge i32 %59, %61
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.18, %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.25:                                        ; preds = %lor.lhs.false.18
  %62 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %62, i32 0, i32 56
  %63 = load i32, i32* %ymin, align 4, !tbaa !111
  %cmp26 = icmp slt i32 %63, 0
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.25
  %64 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call28 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %64) #4
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.25
  %66 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin33 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %66, i32 0, i32 56
  %67 = load i32, i32* %ymin33, align 4, !tbaa !111
  %cmp34 = icmp eq i32 %67, 0
  br i1 %cmp34, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.32
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 57
  %69 = load i32, i32* %ymax, align 4, !tbaa !112
  %cmp35 = icmp eq i32 %69, 0
  br i1 %cmp35, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %70 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %70, i32 0, i32 71
  %71 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !74
  %cmp37 = icmp eq %struct.clist_render_thread_control_s* %71, null
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true.36
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %73 = load i32, i32* %y, align 4, !tbaa !5
  %call39 = call i32 @clist_setup_render_threads(%struct.gx_device_s* %72, i32 %73, %struct.gx_process_page_options_s* null) #4
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.38
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %75 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %76 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %77 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call42 = call i32 @clist_get_bits_rectangle(%struct.gx_device_s* %74, %struct.gs_int_rect_s* %75, %struct.gs_get_bits_params_s* %76, %struct.gs_int_rect_s** %77) #4
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.43:                                        ; preds = %if.then.38
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true.36, %land.lhs.true, %if.end.32
  %78 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads44 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %78, i32 0, i32 71
  %79 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads44, align 8, !tbaa !74
  %cmp45 = icmp eq %struct.clist_render_thread_control_s* %79, null
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.else
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %81 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %82 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %83 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call47 = call i32 @clist_get_bits_rectangle(%struct.gx_device_s* %80, %struct.gs_int_rect_s* %81, %struct.gs_get_bits_params_s* %82, %struct.gs_int_rect_s** %83) #4
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.48:                                        ; preds = %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.43
  %84 = load i32, i32* %y, align 4, !tbaa !5
  %85 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin50 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %85, i32 0, i32 56
  %86 = load i32, i32* %ymin50, align 4, !tbaa !111
  %cmp51 = icmp slt i32 %84, %86
  br i1 %cmp51, label %if.then.55, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.49
  %87 = load i32, i32* %end_y, align 4, !tbaa !5
  %88 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax53 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %88, i32 0, i32 57
  %89 = load i32, i32* %ymax53, align 4, !tbaa !112
  %cmp54 = icmp sgt i32 %87, %89
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %lor.lhs.false.52, %if.end.49
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = load i32, i32* %band, align 4, !tbaa !5
  %call56 = call i32 @clist_get_band_from_thread(%struct.gx_device_s* %90, i32 %91, %struct.gx_process_page_options_s* null) #4
  store i32 %call56, i32* %code, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %lor.lhs.false.52
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %92, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  br label %free_thread_out

if.end.60:                                        ; preds = %if.end.57
  %93 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %93, i32 0, i32 46
  %94 = load i8*, i8** %data, align 8, !tbaa !113
  %95 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info61 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %95, i32 0, i32 58
  %tile_cache_size = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info61, i32 0, i32 5
  %96 = load i32, i32* %tile_cache_size, align 4, !tbaa !114
  %idx.ext = zext i32 %96 to i64
  %add.ptr = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  store i8* %add.ptr, i8** %mdata, align 8, !tbaa !1
  %97 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %97, i32 0, i32 44
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  %98 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !96
  %99 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %99, i32 0, i32 43
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !97
  %101 = load i32, i32* %y, align 4, !tbaa !5
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %103 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom = sext i32 %103 to i64
  %104 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %104, i32 0, i32 67
  %105 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %105, i64 %idxprom
  %call62 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %98, %struct.gx_device_s** %bdev, %struct.gx_device_s* %100, i32 %101, %struct.gx_render_plane_s* null, %struct.gs_memory_s* %102, %struct.gx_colors_usage_s* %arrayidx) #4
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.73, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.end.60
  %106 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %buf_procs65 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %106, i32 0, i32 44
  %setup_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs65, i32 0, i32 2
  %107 = load i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)** %setup_buf_device, align 8, !tbaa !115
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %109 = load i8*, i8** %mdata, align 8, !tbaa !1
  %110 = load i32, i32* %raster, align 4, !tbaa !5
  %111 = load i32, i32* %y, align 4, !tbaa !5
  %112 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin66 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %112, i32 0, i32 56
  %113 = load i32, i32* %ymin66, align 4, !tbaa !111
  %sub67 = sub nsw i32 %111, %113
  %114 = load i32, i32* %line_count, align 4, !tbaa !5
  %115 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax68 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %115, i32 0, i32 57
  %116 = load i32, i32* %ymax68, align 4, !tbaa !112
  %117 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin69 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %117, i32 0, i32 56
  %118 = load i32, i32* %ymin69, align 4, !tbaa !111
  %sub70 = sub nsw i32 %116, %118
  %call71 = call i32 %107(%struct.gx_device_s* %108, i8* %109, i32 %110, i8** null, i32 %sub67, i32 %114, i32 %sub70) #4
  store i32 %call71, i32* %code, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.64, %if.end.60
  br label %free_thread_out

if.end.74:                                        ; preds = %lor.lhs.false.64
  %119 = load i32, i32* %band_height, align 4, !tbaa !5
  %120 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %119, %120
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.74
  %121 = load i32, i32* %band_height, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.74
  %122 = load i32, i32* %line_count, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %121, %cond.true ], [ %122, %cond.false ]
  store i32 %cond, i32* %lines_rasterized, align 4, !tbaa !5
  %123 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %124 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  %125 = bitcast %struct.gs_int_rect_s* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 16, i32 4, i1 false), !tbaa.struct !116
  %p76 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y77 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p76, i32 0, i32 1
  store i32 0, i32* %y77, align 4, !tbaa !101
  %126 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %q78 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q78, i32 0, i32 1
  store i32 %126, i32* %y79, align 4, !tbaa !103
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %128 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !106
  %129 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %130 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %131 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call80 = call i32 %128(%struct.gx_device_s* %129, %struct.gs_int_rect_s* %band_rect, %struct.gs_get_bits_params_s* %130, %struct.gs_int_rect_s** %131) #4
  store i32 %call80, i32* %code, align 4, !tbaa !5
  %132 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs81 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %132, i32 0, i32 44
  %destroy_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs81, i32 0, i32 3
  %133 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device, align 8, !tbaa !81
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  call void %133(%struct.gx_device_s* %134) #4
  %135 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %135, 0
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %cond.end
  br label %free_thread_out

if.end.84:                                        ; preds = %cond.end
  %136 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %137 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %136, %137
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.84
  %138 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.87:                                        ; preds = %if.end.84
  %139 = load i64, i64* %options, align 8, !tbaa !37
  %and88 = and i64 %139, 1048576
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %lor.lhs.false.90, label %if.then.92

lor.lhs.false.90:                                 ; preds = %if.end.87
  %140 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp sgt i32 %140, 0
  br i1 %cmp91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %lor.lhs.false.90, %if.end.87
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %142 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %143 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %144 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call93 = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %141, %struct.gs_int_rect_s* %142, %struct.gs_get_bits_params_s* %143, %struct.gs_int_rect_s** %144) #4
  store i32 %call93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.94:                                        ; preds = %lor.lhs.false.90
  %145 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options95 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %145, i32 0, i32 0
  %146 = load i64, i64* %options95, align 8, !tbaa !108
  store i64 %146, i64* %options, align 8, !tbaa !37
  %147 = load i64, i64* %options, align 8, !tbaa !37
  %and96 = and i64 %147, 1048576
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.end.102, label %if.then.98

if.then.98:                                       ; preds = %if.end.94
  %148 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options99 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %148, i32 0, i32 0
  %149 = load i64, i64* %options99, align 8, !tbaa !108
  %and100 = and i64 %149, -3145729
  %or = or i64 %and100, 1048576
  store i64 %or, i64* %options, align 8, !tbaa !37
  %150 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options101 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %150, i32 0, i32 0
  store i64 %or, i64* %options101, align 8, !tbaa !108
  store i32 0, i32* %lines_rasterized, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %if.end.94
  %151 = bitcast %struct.gs_get_bits_params_s* %band_params103 to i8*
  call void @llvm.lifetime.start(i64 536, i8* %151) #1
  %152 = bitcast i32* %raster104 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call105 = call i32 @gx_device_raster(%struct.gx_device_s* %153, i32 1) #4
  store i32 %call105, i32* %raster104, align 4, !tbaa !5
  %154 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs106 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %154, i32 0, i32 44
  %create_buf_device107 = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs106, i32 0, i32 0
  %155 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device107, align 8, !tbaa !96
  %156 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %target108 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %156, i32 0, i32 43
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %target108, align 8, !tbaa !97
  %158 = load i32, i32* %y, align 4, !tbaa !5
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %160 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom109 = sext i32 %160 to i64
  %161 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array110 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %161, i32 0, i32 67
  %162 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array110, align 8, !tbaa !64
  %arrayidx111 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %162, i64 %idxprom109
  %call112 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %155, %struct.gx_device_s** %bdev, %struct.gx_device_s* %157, i32 %158, %struct.gx_render_plane_s* null, %struct.gs_memory_s* %159, %struct.gx_colors_usage_s* %arrayidx111) #4
  store i32 %call112, i32* %code, align 4, !tbaa !5
  %163 = load i32, i32* %code, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %163, 0
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.102
  %164 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.end.102
  %165 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %166 = bitcast %struct.gs_get_bits_params_s* %band_params103 to i8*
  %167 = bitcast %struct.gs_get_bits_params_s* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 536, i32 8, i1 false), !tbaa.struct !117
  br label %while.cond

while.cond:                                       ; preds = %if.end.146, %if.end.115
  %168 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %169 = load i32, i32* %y, align 4, !tbaa !5
  %add = add nsw i32 %169, %168
  store i32 %add, i32* %y, align 4, !tbaa !5
  %170 = load i32, i32* %end_y, align 4, !tbaa !5
  %cmp116 = icmp slt i32 %add, %170
  br i1 %cmp116, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %171 = load i32, i32* %raster104, align 4, !tbaa !5
  %172 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %mul = mul i32 %171, %172
  %data117 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %band_params103, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data117, i32 0, i64 0
  %173 = load i8*, i8** %arrayidx118, align 8, !tbaa !1
  %idx.ext119 = zext i32 %mul to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %173, i64 %idx.ext119
  store i8* %add.ptr120, i8** %arrayidx118, align 8, !tbaa !1
  %174 = load i32, i32* %end_y, align 4, !tbaa !5
  %175 = load i32, i32* %y, align 4, !tbaa !5
  %sub121 = sub nsw i32 %174, %175
  store i32 %sub121, i32* %line_count, align 4, !tbaa !5
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %177 = load i32, i32* %y, align 4, !tbaa !5
  %178 = load i32, i32* %line_count, align 4, !tbaa !5
  %179 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call122 = call i32 @clist_rasterize_lines(%struct.gx_device_s* %176, i32 %177, i32 %178, %struct.gx_device_s* %179, %struct.gx_render_plane_s* null, i32* %my) #4
  store i32 %call122, i32* %code, align 4, !tbaa !5
  %180 = load i32, i32* %code, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %180, 0
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %while.body
  br label %while.end

if.end.125:                                       ; preds = %while.body
  %181 = load i32, i32* %code, align 4, !tbaa !5
  %182 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %181, %182
  br i1 %cmp126, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %if.end.125
  %183 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.129

cond.false.128:                                   ; preds = %if.end.125
  %184 = load i32, i32* %line_count, align 4, !tbaa !5
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %183, %cond.true.127 ], [ %184, %cond.false.128 ]
  store i32 %cond130, i32* %lines_rasterized, align 4, !tbaa !5
  %185 = load i32, i32* %my, align 4, !tbaa !5
  %p131 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y132 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p131, i32 0, i32 1
  store i32 %185, i32* %y132, align 4, !tbaa !101
  %186 = load i32, i32* %my, align 4, !tbaa !5
  %187 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %add133 = add nsw i32 %186, %187
  %q134 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y135 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q134, i32 0, i32 1
  store i32 %add133, i32* %y135, align 4, !tbaa !103
  %188 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %procs136 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %188, i32 0, i32 42
  %get_bits_rectangle137 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs136, i32 0, i32 38
  %189 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle137, align 8, !tbaa !106
  %190 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %191 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call138 = call i32 %189(%struct.gx_device_s* %190, %struct.gs_int_rect_s* %band_rect, %struct.gs_get_bits_params_s* %band_params103, %struct.gs_int_rect_s** %191) #4
  store i32 %call138, i32* %code, align 4, !tbaa !5
  %192 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %192, 0
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %cond.end.129
  br label %while.end

if.end.141:                                       ; preds = %cond.end.129
  %options142 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %band_params103, i32 0, i32 0
  %193 = load i64, i64* %options142, align 8, !tbaa !108
  store i64 %193, i64* %options, align 8, !tbaa !37
  %194 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options143 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %194, i32 0, i32 0
  store i64 %193, i64* %options143, align 8, !tbaa !108
  %195 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %196 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %195, %196
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.141
  br label %while.end

if.end.146:                                       ; preds = %if.end.141
  br label %while.cond

while.end:                                        ; preds = %if.then.145, %if.then.140, %if.then.124, %while.cond
  %197 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs147 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %197, i32 0, i32 44
  %destroy_buf_device148 = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs147, i32 0, i32 3
  %198 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device148, align 8, !tbaa !81
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  call void %198(%struct.gx_device_s* %199) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.114
  %200 = bitcast i32* %raster104 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast %struct.gs_get_bits_params_s* %band_params103 to i8*
  call void @llvm.lifetime.end(i64 536, i8* %201) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.150 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %202 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

free_thread_out:                                  ; preds = %if.then.83, %if.then.73, %if.then.59
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @clist_teardown_render_threads(%struct.gx_device_s* %203) #4
  %204 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %204, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %free_thread_out, %cleanup.cont, %cleanup, %if.then.92, %if.then.86, %if.then.46, %if.then.41, %if.then.30, %if.then.24, %if.then.15, %if.then
  %205 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %my to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %211) #1
  %212 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %end_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = load i32, i32* %retval
  ret i32 %223
}

declare i32 @gp_thread_start(void (i8*)*, i8*, i8**) #2

; Function Attrs: nounwind uwtable
define internal void @test_threads(i8* %dummy) #0 {
entry:
  %dummy.addr = alloca i8*, align 8
  store i8* %dummy, i8** %dummy.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_process_page_mt(%struct.gx_device_s* %dev, %struct.gx_process_page_options_s* %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %band_height = alloca i32, align 4
  %band = alloca i32, align 4
  %num_bands = alloca i32, align 4
  %code = alloca i32, align 4
  %reverse = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %5, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %7 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %8 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %9, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %10 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %10, i32* %band_height, align 4, !tbaa !5
  %11 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %num_bands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 14
  %14 = load i32, i32* %height, align 4, !tbaa !49
  %15 = load i32, i32* %band_height, align 4, !tbaa !5
  %add = add nsw i32 %14, %15
  %sub = sub nsw i32 %add, 1
  %16 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %sub, %16
  store i32 %div, i32* %num_bands, align 4, !tbaa !5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %19, i32 0, i32 5
  %20 = load i32, i32* %options1, align 4, !tbaa !118
  %and = and i32 %20, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  store i32 %lnot.ext, i32* %reverse, align 4, !tbaa !5
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 64
  %22 = load i32, i32* %num_render_threads_requested, align 4, !tbaa !110
  %cmp = icmp slt i32 %22, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %call = call i32 @clist_process_page(%struct.gx_device_s* %23, %struct.gx_process_page_options_s* %24) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call3 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %25) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %28 = load i32, i32* %reverse, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %28, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height8, align 4, !tbaa !49
  %sub9 = sub nsw i32 %30, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ 0, %cond.false ]
  %31 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %call10 = call i32 @clist_setup_render_threads(%struct.gx_device_s* %27, i32 %cond, %struct.gx_process_page_options_s* %31) #4
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %cond.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %call13 = call i32 @clist_process_page(%struct.gx_device_s* %32, %struct.gx_process_page_options_s* %33) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %cond.end
  %34 = load i32, i32* %reverse, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %34, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %35 = load i32, i32* %num_bands, align 4, !tbaa !5
  %sub17 = sub nsw i32 %35, 1
  store i32 %sub17, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %36 = load i32, i32* %band, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %36, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load i32, i32* %band, align 4, !tbaa !5
  %39 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %call19 = call i32 @clist_get_band_from_thread(%struct.gx_device_s* %37, i32 %38, %struct.gx_process_page_options_s* %39) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %40, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  br label %free_thread_out

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %41 = load i32, i32* %band, align 4, !tbaa !5
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.else:                                          ; preds = %if.end.14
  store i32 0, i32* %band, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %if.else
  %42 = load i32, i32* %band, align 4, !tbaa !5
  %43 = load i32, i32* %num_bands, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %42, %43
  br i1 %cmp24, label %for.body.25, label %for.end.31

for.body.25:                                      ; preds = %for.cond.23
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %45 = load i32, i32* %band, align 4, !tbaa !5
  %46 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %call26 = call i32 @clist_get_band_from_thread(%struct.gx_device_s* %44, i32 %45, %struct.gx_process_page_options_s* %46) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %47, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.25
  br label %free_thread_out

if.end.29:                                        ; preds = %for.body.25
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %48 = load i32, i32* %band, align 4, !tbaa !5
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %band, align 4, !tbaa !5
  br label %for.cond.23

for.end.31:                                       ; preds = %for.cond.23
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %for.end
  br label %free_thread_out

free_thread_out:                                  ; preds = %if.end.32, %if.then.28, %if.then.21
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @clist_teardown_render_threads(%struct.gx_device_s* %49) #4
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %free_thread_out, %if.then.12, %if.then.5, %if.then
  %51 = bitcast i32* %reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %num_bands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

declare i32 @clist_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_setup_render_threads(%struct.gx_device_s* %dev, i32 %y, %struct.gx_process_page_options_s* %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %chunk_base_mem = alloca %struct.gs_memory_s*, align 8
  %mem_status = alloca %struct.gs_memory_status_s, align 8
  %i = alloca i32, align 4
  %band = alloca i32, align 4
  %code = alloca i32, align 4
  %band_count = alloca i32, align 4
  %band_height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %old = alloca i8*, align 8
  %ndev = alloca %struct.gx_device_s*, align 8
  %thread = alloca %struct.clist_render_thread_control_s*, align 8
  %thread_cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %fmode = alloca [4 x i8], align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %5, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %8 = bitcast %union.gx_device_clist_s* %7 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %8, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %12, i32 0, i32 45
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !21
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = bitcast %struct.gs_memory_s** %chunk_base_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 4
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !57
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %17 = bitcast %struct.gs_memory_status_s* %mem_status to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %21 = bitcast i32* %band_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %22, i32 0, i32 59
  %23 = load i32, i32* %nbands, align 4, !tbaa !119
  store i32 %23, i32* %band_count, align 4, !tbaa !5
  %24 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %26 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %26, i32* %band_height, align 4, !tbaa !5
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 64
  %28 = load i32, i32* %num_render_threads_requested, align 4, !tbaa !110
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 70
  store i32 %28, i32* %num_render_threads, align 4, !tbaa !75
  %30 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !35
  %conv = sext i8 %30 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %num_render_threads_requested2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 64
  %33 = load i32, i32* %num_render_threads_requested2, align 4, !tbaa !110
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i32 %33) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %34, i32 0, i32 70
  %35 = load i32, i32* %num_render_threads3, align 4, !tbaa !75
  %36 = load i32, i32* %band_count, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %35, %36
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %37 = load i32, i32* %band_count, align 4, !tbaa !5
  %38 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads7 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %38, i32 0, i32 70
  store i32 %37, i32* %num_render_threads7, align 4, !tbaa !75
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %40 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !120
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %42 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads9 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %42, i32 0, i32 70
  %43 = load i32, i32* %num_render_threads9, align 4, !tbaa !75
  %call10 = call i8* %40(%struct.gs_memory_s* %41, i32 %43, i32 80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #4
  %44 = bitcast i8* %call10 to %struct.clist_render_thread_control_s*
  %45 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %45, i32 0, i32 71
  store %struct.clist_render_thread_control_s* %44, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !74
  %46 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads11 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %46, i32 0, i32 71
  %47 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads11, align 8, !tbaa !74
  %cmp12 = icmp eq %struct.clist_render_thread_control_s* %47, null
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.8
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call15 = call i8* @gs_program_name() #4
  %call16 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %48, i8* %call15, i64 %call16) #4
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end.18:                                        ; preds = %if.end.8
  %50 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads19 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %50, i32 0, i32 71
  %51 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads19, align 8, !tbaa !74
  %52 = bitcast %struct.clist_render_thread_control_s* %51 to i8*
  %53 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads20 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %53, i32 0, i32 70
  %54 = load i32, i32* %num_render_threads20, align 4, !tbaa !75
  %conv21 = sext i32 %54 to i64
  %mul = mul i64 %conv21, 80
  %call22 = call i8* @memset(i8* %52, i32 0, i64 %mul) #5
  %55 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %55, i32 0, i32 46
  %56 = load i8*, i8** %data, align 8, !tbaa !89
  %57 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %main_thread_data = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %57, i32 0, i32 72
  store i8* %56, i8** %main_thread_data, align 8, !tbaa !90
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %59 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %59, i32 0, i32 14
  %60 = load i32, i32* %height, align 4, !tbaa !121
  %sub = sub nsw i32 %60, 1
  %cmp23 = icmp slt i32 %58, %sub
  %cond = select i1 %cmp23, i32 1, i32 -1
  %61 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %61, i32 0, i32 74
  store i32 %cond, i32* %thread_lookahead_direction, align 4, !tbaa !122
  %62 = load i32, i32* %y.addr, align 4, !tbaa !5
  %63 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %62, %63
  store i32 %div, i32* %band, align 4, !tbaa !5
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 4
  %65 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !123
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  call void %65(%struct.gs_memory_s* %66, %struct.gs_memory_status_s* %mem_status) #4
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mem_status, i32 0, i32 2
  %67 = load i32, i32* %is_thread_safe, align 4, !tbaa !124
  %cmp26 = icmp eq i32 %67, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end.29:                                        ; preds = %if.end.18
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads30 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 70
  %69 = load i32, i32* %num_render_threads30, align 4, !tbaa !75
  %70 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %70, i32 0, i32 63
  %71 = load i32, i32* %icc_cache_list_len, align 4, !tbaa !126
  %cmp31 = icmp sgt i32 %69, %71
  br i1 %cmp31, label %if.then.33, label %if.end.68

if.then.33:                                       ; preds = %if.end.29
  %72 = bitcast i8** %old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %73, i32 0, i32 64
  %74 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list, align 8, !tbaa !127
  %75 = bitcast %struct.gsicc_link_cache_s** %74 to i8*
  store i8* %75, i8** %old, align 8, !tbaa !1
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %thread_safe_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 4
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory34, align 8, !tbaa !57
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %alloc_byte_array36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 10
  %78 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array36, align 8, !tbaa !120
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %thread_safe_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 4
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory37, align 8, !tbaa !57
  %81 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads38 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %81, i32 0, i32 70
  %82 = load i32, i32* %num_render_threads38, align 4, !tbaa !75
  %call39 = call i8* %78(%struct.gs_memory_s* %80, i32 %82, i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #4
  %83 = bitcast i8* %call39 to %struct.gsicc_link_cache_s**
  %84 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list40 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %84, i32 0, i32 64
  store %struct.gsicc_link_cache_s** %83, %struct.gsicc_link_cache_s*** %icc_cache_list40, align 8, !tbaa !127
  %85 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list41 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %85, i32 0, i32 64
  %86 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list41, align 8, !tbaa !127
  %cmp42 = icmp eq %struct.gsicc_link_cache_s** %86, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.33
  %87 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list45 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %87, i32 0, i32 64
  store %struct.gsicc_link_cache_s** null, %struct.gsicc_link_cache_s*** %icc_cache_list45, align 8, !tbaa !127
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.then.33
  %88 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len47 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %88, i32 0, i32 63
  %89 = load i32, i32* %icc_cache_list_len47, align 4, !tbaa !126
  %cmp48 = icmp sgt i32 %89, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.46
  %90 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list51 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %90, i32 0, i32 64
  %91 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list51, align 8, !tbaa !127
  %92 = bitcast %struct.gsicc_link_cache_s** %91 to i8*
  %93 = load i8*, i8** %old, align 8, !tbaa !1
  %94 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len52 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %94, i32 0, i32 63
  %95 = load i32, i32* %icc_cache_list_len52, align 4, !tbaa !126
  %conv53 = sext i32 %95 to i64
  %mul54 = mul i64 8, %conv53
  %call55 = call i8* @memcpy(i8* %92, i8* %93, i64 %mul54) #5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.46
  %96 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len57 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %96, i32 0, i32 63
  %97 = load i32, i32* %icc_cache_list_len57, align 4, !tbaa !126
  %idxprom = sext i32 %97 to i64
  %98 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list58 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %98, i32 0, i32 64
  %99 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list58, align 8, !tbaa !127
  %arrayidx = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %99, i64 %idxprom
  %100 = bitcast %struct.gsicc_link_cache_s** %arrayidx to i8*
  %101 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads59 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %101, i32 0, i32 70
  %102 = load i32, i32* %num_render_threads59, align 4, !tbaa !75
  %103 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len60 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %103, i32 0, i32 63
  %104 = load i32, i32* %icc_cache_list_len60, align 4, !tbaa !126
  %sub61 = sub nsw i32 %102, %104
  %conv62 = sext i32 %sub61 to i64
  %mul63 = mul i64 %conv62, 8
  %call64 = call i8* @memset(i8* %100, i32 0, i64 %mul63) #5
  %105 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads65 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %105, i32 0, i32 70
  %106 = load i32, i32* %num_render_threads65, align 4, !tbaa !75
  %107 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list_len66 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %107, i32 0, i32 63
  store i32 %106, i32* %icc_cache_list_len66, align 4, !tbaa !126
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 2
  %109 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %111 = load i8*, i8** %old, align 8, !tbaa !1
  call void %109(%struct.gs_memory_s* %110, i8* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.44
  %112 = bitcast i8** %old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.320 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont, %if.end.29
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %114 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads69 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %114, i32 0, i32 70
  %115 = load i32, i32* %num_render_threads69, align 4, !tbaa !75
  %cmp70 = icmp slt i32 %113, %115
  br i1 %cmp70, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %116 = load i32, i32* %band, align 4, !tbaa !5
  %cmp72 = icmp sge i32 %116, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %117 = load i32, i32* %band, align 4, !tbaa !5
  %118 = load i32, i32* %band_count, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %117, %118
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %119 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp74, %land.rhs ]
  br i1 %119, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %120 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %122 to i64
  %123 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads77 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %123, i32 0, i32 71
  %124 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads77, align 8, !tbaa !74
  %arrayidx78 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %124, i64 %idxprom76
  store %struct.clist_render_thread_control_s* %arrayidx78, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %127 to i64
  %128 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_list80 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %128, i32 0, i32 64
  %129 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list80, align 8, !tbaa !127
  %arrayidx81 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %129, i64 %idxprom79
  %call82 = call %struct.gx_device_s* @setup_device_and_mem_for_thread(%struct.gs_memory_s* %125, %struct.gx_device_s* %126, i32 0, %struct.gsicc_link_cache_s** %arrayidx81) #4
  store %struct.gx_device_s* %call82, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %cmp83 = icmp eq %struct.gx_device_s* %130, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.86:                                        ; preds = %for.body
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %132 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %cdev87 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %132, i32 0, i32 4
  store %struct.gx_device_s* %131, %struct.gx_device_s** %cdev87, align 8, !tbaa !76
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %135 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %135, i32 0, i32 1
  store %struct.gs_memory_s* %134, %struct.gs_memory_s** %memory88, align 8, !tbaa !88
  %136 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %band89 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %136, i32 0, i32 6
  store i32 -1, i32* %band89, align 4, !tbaa !128
  %137 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %138 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options90 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %138, i32 0, i32 8
  store %struct.gx_process_page_options_s* %137, %struct.gx_process_page_options_s** %options90, align 8, !tbaa !83
  %139 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %139, i32 0, i32 9
  store i8* null, i8** %buffer, align 8, !tbaa !86
  %140 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_process_page_options_s* %140, null
  br i1 %tobool, label %land.lhs.true.91, label %if.end.102

land.lhs.true.91:                                 ; preds = %if.end.86
  %141 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %141, i32 0, i32 0
  %142 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !94
  %tobool92 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* %142, null
  br i1 %tobool92, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %land.lhs.true.91
  %143 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn94 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %143, i32 0, i32 0
  %144 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn94, align 8, !tbaa !94
  %145 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %145, i32 0, i32 4
  %146 = load i8*, i8** %arg, align 8, !tbaa !87
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %148 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %148, i32 0, i32 1
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !88
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %150, i32 0, i32 13
  %151 = load i32, i32* %width, align 4, !tbaa !48
  %152 = load i32, i32* %band_height, align 4, !tbaa !5
  %153 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer96 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %153, i32 0, i32 9
  %call97 = call i32 %144(i8* %146, %struct.gx_device_s* %147, %struct.gs_memory_s* %149, i32 %151, i32 %152, i8** %buffer96) #4
  store i32 %call97, i32* %code, align 4, !tbaa !5
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %154, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.93
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.101:                                       ; preds = %if.then.93
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.91, %if.end.86
  %155 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %155, i32 0, i32 44
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  %156 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !96
  %157 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %bdev = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %157, i32 0, i32 5
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %159 = load i32, i32* %band, align 4, !tbaa !5
  %160 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info103 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %160, i32 0, i32 58
  %band_params104 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info103, i32 0, i32 8
  %BandHeight105 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params104, i32 0, i32 1
  %161 = load i32, i32* %BandHeight105, align 4, !tbaa !93
  %mul106 = mul nsw i32 %159, %161
  %162 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %162, i32 0, i32 1
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !88
  %164 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %164, i32 0, i32 67
  %165 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !64
  %arrayidx108 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %165, i64 0
  %call109 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %156, %struct.gx_device_s** %bdev, %struct.gx_device_s* %158, i32 %mul106, %struct.gx_render_plane_s* null, %struct.gs_memory_s* %163, %struct.gx_colors_usage_s* %arrayidx108) #4
  %cmp110 = icmp slt i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  store i32 %conv111, i32* %code, align 4, !tbaa !5
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.102
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.113:                                       ; preds = %if.end.102
  %166 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory114 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %166, i32 0, i32 1
  %167 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !88
  %call115 = call %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %167) #4
  %168 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_this = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %168, i32 0, i32 2
  store %struct.gx_semaphore_s* %call115, %struct.gx_semaphore_s** %sema_this, align 8, !tbaa !79
  %cmp116 = icmp eq %struct.gx_semaphore_s* %call115, null
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.113
  %169 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %169, i32 0, i32 1
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !88
  %call119 = call %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %170) #4
  %171 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_group = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %171, i32 0, i32 3
  store %struct.gx_semaphore_s* %call119, %struct.gx_semaphore_s** %sema_group, align 8, !tbaa !80
  %cmp120 = icmp eq %struct.gx_semaphore_s* %call119, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %lor.lhs.false, %if.end.113
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.123:                                       ; preds = %lor.lhs.false
  %172 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %174 = load i32, i32* %band, align 4, !tbaa !5
  %call124 = call i32 @clist_start_render_thread(%struct.gx_device_s* %172, i32 %173, i32 %174) #4
  store i32 %call124, i32* %code, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.123
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.128:                                       ; preds = %if.end.123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.128, %if.then.127, %if.then.122, %if.then.112, %if.then.100, %if.then.85
  %175 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.131, label %unreachable [
    i32 0, label %cleanup.cont.132
    i32 2, label %for.end
  ]

cleanup.cont.132:                                 ; preds = %cleanup.129
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.132
  %177 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %177, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %178 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction133 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %178, i32 0, i32 74
  %179 = load i32, i32* %thread_lookahead_direction133, align 4, !tbaa !122
  %180 = load i32, i32* %band, align 4, !tbaa !5
  %add = add nsw i32 %180, %179
  store i32 %add, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup.129, %land.end
  %181 = load i32, i32* %code, align 4, !tbaa !5
  %cmp134 = icmp slt i32 %181, 0
  br i1 %cmp134, label %if.then.136, label %if.end.237

if.then.136:                                      ; preds = %for.end
  %182 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction137 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %182, i32 0, i32 74
  %183 = load i32, i32* %thread_lookahead_direction137, align 4, !tbaa !122
  %184 = load i32, i32* %band, align 4, !tbaa !5
  %sub138 = sub nsw i32 %184, %183
  store i32 %sub138, i32* %band, align 4, !tbaa !5
  %185 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %185 to i64
  %186 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads140 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %186, i32 0, i32 71
  %187 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads140, align 8, !tbaa !74
  %arrayidx141 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %187, i64 %idxprom139
  %sema_group142 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx141, i32 0, i32 3
  %188 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_group142, align 8, !tbaa !80
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %188) #4
  %189 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom143 = sext i32 %189 to i64
  %190 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads144 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %190, i32 0, i32 71
  %191 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads144, align 8, !tbaa !74
  %arrayidx145 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %191, i64 %idxprom143
  %sema_this146 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx145, i32 0, i32 2
  %192 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this146, align 8, !tbaa !79
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %192) #4
  %193 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom147 = sext i32 %193 to i64
  %194 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads148 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %194, i32 0, i32 71
  %195 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads148, align 8, !tbaa !74
  %arrayidx149 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %195, i64 %idxprom147
  %bdev150 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx149, i32 0, i32 5
  %196 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev150, align 8, !tbaa !82
  %cmp151 = icmp ne %struct.gx_device_s* %196, null
  br i1 %cmp151, label %if.then.153, label %if.end.159

if.then.153:                                      ; preds = %if.then.136
  %197 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs154 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %197, i32 0, i32 44
  %destroy_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs154, i32 0, i32 3
  %198 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device, align 8, !tbaa !81
  %199 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom155 = sext i32 %199 to i64
  %200 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads156 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %200, i32 0, i32 71
  %201 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads156, align 8, !tbaa !74
  %arrayidx157 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %201, i64 %idxprom155
  %bdev158 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx157, i32 0, i32 5
  %202 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev158, align 8, !tbaa !82
  call void %198(%struct.gx_device_s* %202) #4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.153, %if.then.136
  %203 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %203 to i64
  %204 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads161 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %204, i32 0, i32 71
  %205 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads161, align 8, !tbaa !74
  %arrayidx162 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %205, i64 %idxprom160
  %cdev163 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx162, i32 0, i32 4
  %206 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev163, align 8, !tbaa !76
  %cmp164 = icmp ne %struct.gx_device_s* %206, null
  br i1 %cmp164, label %if.then.166, label %if.end.193

if.then.166:                                      ; preds = %if.end.159
  %207 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  %208 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom167 = sext i32 %208 to i64
  %209 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads168 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %209, i32 0, i32 71
  %210 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads168, align 8, !tbaa !74
  %arrayidx169 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %210, i64 %idxprom167
  %cdev170 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx169, i32 0, i32 4
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev170, align 8, !tbaa !76
  %212 = bitcast %struct.gx_device_s* %211 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %212, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %213 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info171 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %213, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info171, i32 0, i32 4
  %214 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !50
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %214, i32 0, i32 1
  %215 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !51
  %216 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info172 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %216, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info172, i32 0, i32 3
  %217 = load i8*, i8** %bfile, align 8, !tbaa !54
  %218 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info173 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %218, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info173, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call174 = call i32 %215(i8* %217, i8* %arraydecay, i32 0) #4
  %219 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info175 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %219, i32 0, i32 58
  %io_procs176 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info175, i32 0, i32 4
  %220 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs176, align 8, !tbaa !50
  %fclose177 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %220, i32 0, i32 1
  %221 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose177, align 8, !tbaa !51
  %222 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info178 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %222, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info178, i32 0, i32 1
  %223 = load i8*, i8** %cfile, align 8, !tbaa !53
  %224 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %page_info179 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %224, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info179, i32 0, i32 0
  %arraydecay180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call181 = call i32 %221(i8* %223, i8* %arraydecay180, i32 0) #4
  %225 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %225, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !68
  %226 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %227 = bitcast %struct.gx_device_clist_common_s* %226 to %struct.gx_device_s*
  %call182 = call i32 @gdev_prn_free_memory(%struct.gx_device_s* %227) #4
  %228 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom183 = sext i32 %228 to i64
  %229 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads184 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %229, i32 0, i32 71
  %230 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads184, align 8, !tbaa !74
  %arrayidx185 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %230, i64 %idxprom183
  %memory186 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx185, i32 0, i32 1
  %231 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory186, align 8, !tbaa !88
  %procs187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %231, i32 0, i32 1
  %free_object188 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs187, i32 0, i32 2
  %232 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object188, align 8, !tbaa !69
  %233 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom189 = sext i32 %233 to i64
  %234 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads190 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %234, i32 0, i32 71
  %235 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads190, align 8, !tbaa !74
  %arrayidx191 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %235, i64 %idxprom189
  %memory192 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx191, i32 0, i32 1
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory192, align 8, !tbaa !88
  %237 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %238 = bitcast %struct.gx_device_clist_common_s* %237 to i8*
  call void %232(%struct.gs_memory_s* %236, i8* %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #4
  %239 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.166, %if.end.159
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom194 = sext i32 %240 to i64
  %241 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads195 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %241, i32 0, i32 71
  %242 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads195, align 8, !tbaa !74
  %arrayidx196 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %242, i64 %idxprom194
  %buffer197 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx196, i32 0, i32 9
  %243 = load i8*, i8** %buffer197, align 8, !tbaa !86
  %cmp198 = icmp ne i8* %243, null
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.220

land.lhs.true.200:                                ; preds = %if.end.193
  %244 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %tobool201 = icmp ne %struct.gx_process_page_options_s* %244, null
  br i1 %tobool201, label %land.lhs.true.202, label %if.end.220

land.lhs.true.202:                                ; preds = %land.lhs.true.200
  %245 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %245, i32 0, i32 1
  %246 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !84
  %cmp203 = icmp ne void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* %246, null
  br i1 %cmp203, label %if.then.205, label %if.end.220

if.then.205:                                      ; preds = %land.lhs.true.202
  %247 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn206 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %247, i32 0, i32 1
  %248 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn206, align 8, !tbaa !84
  %249 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg207 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %249, i32 0, i32 4
  %250 = load i8*, i8** %arg207, align 8, !tbaa !87
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %252 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom208 = sext i32 %252 to i64
  %253 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads209 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %253, i32 0, i32 71
  %254 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads209, align 8, !tbaa !74
  %arrayidx210 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %254, i64 %idxprom208
  %memory211 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx210, i32 0, i32 1
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory211, align 8, !tbaa !88
  %256 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom212 = sext i32 %256 to i64
  %257 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads213 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %257, i32 0, i32 71
  %258 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads213, align 8, !tbaa !74
  %arrayidx214 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %258, i64 %idxprom212
  %buffer215 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx214, i32 0, i32 9
  %259 = load i8*, i8** %buffer215, align 8, !tbaa !86
  call void %248(i8* %250, %struct.gx_device_s* %251, %struct.gs_memory_s* %255, i8* %259) #4
  %260 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom216 = sext i32 %260 to i64
  %261 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads217 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %261, i32 0, i32 71
  %262 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads217, align 8, !tbaa !74
  %arrayidx218 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %262, i64 %idxprom216
  %buffer219 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx218, i32 0, i32 9
  store i8* null, i8** %buffer219, align 8, !tbaa !86
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.205, %land.lhs.true.202, %land.lhs.true.200, %if.end.193
  %263 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom221 = sext i32 %263 to i64
  %264 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads222 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %264, i32 0, i32 71
  %265 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads222, align 8, !tbaa !74
  %arrayidx223 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %265, i64 %idxprom221
  %memory224 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx223, i32 0, i32 1
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory224, align 8, !tbaa !88
  %cmp225 = icmp ne %struct.gs_memory_s* %266, null
  br i1 %cmp225, label %if.then.227, label %if.end.236

if.then.227:                                      ; preds = %if.end.220
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom228 = sext i32 %267 to i64
  %268 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads229 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %268, i32 0, i32 71
  %269 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads229, align 8, !tbaa !74
  %arrayidx230 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %269, i64 %idxprom228
  %memory231 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx230, i32 0, i32 1
  %270 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !88
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %270) #4
  %271 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom232 = sext i32 %271 to i64
  %272 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads233 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %272, i32 0, i32 71
  %273 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads233, align 8, !tbaa !74
  %arrayidx234 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %273, i64 %idxprom232
  %memory235 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx234, i32 0, i32 1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory235, align 8, !tbaa !88
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.227, %if.end.220
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %for.end
  %274 = load i32, i32* %i, align 4, !tbaa !5
  %cmp238 = icmp eq i32 %274, 0
  br i1 %cmp238, label %if.then.240, label %if.end.312

if.then.240:                                      ; preds = %if.end.237
  %275 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads241 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %275, i32 0, i32 71
  %276 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads241, align 8, !tbaa !74
  %arrayidx242 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %276, i64 0
  %memory243 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx242, i32 0, i32 1
  %277 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory243, align 8, !tbaa !88
  %cmp244 = icmp ne %struct.gs_memory_s* %277, null
  br i1 %cmp244, label %if.then.246, label %if.end.256

if.then.246:                                      ; preds = %if.then.240
  %278 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads247 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %278, i32 0, i32 71
  %279 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads247, align 8, !tbaa !74
  %arrayidx248 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %279, i64 0
  %memory249 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx248, i32 0, i32 1
  %280 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory249, align 8, !tbaa !88
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %280) #4
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %282 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %cmp250 = icmp ne %struct.gs_memory_s* %281, %282
  br i1 %cmp250, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %if.then.246
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %284 = bitcast %struct.gs_memory_s* %283 to %struct.gs_memory_locked_s*
  call void @gs_memory_locked_release(%struct.gs_memory_locked_s* %284) #4
  %285 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs253 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %285, i32 0, i32 1
  %free_object254 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs253, i32 0, i32 2
  %286 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object254, align 8, !tbaa !69
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %chunk_base_mem, align 8, !tbaa !1
  %289 = bitcast %struct.gs_memory_s* %288 to i8*
  call void %286(%struct.gs_memory_s* %287, i8* %289, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.252, %if.then.246
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.240
  %290 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs257 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %290, i32 0, i32 1
  %free_object258 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs257, i32 0, i32 2
  %291 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object258, align 8, !tbaa !69
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %293 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads259 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %293, i32 0, i32 71
  %294 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads259, align 8, !tbaa !74
  %295 = bitcast %struct.clist_render_thread_control_s* %294 to i8*
  call void %291(%struct.gs_memory_s* %292, i8* %295, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #4
  %296 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads260 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %296, i32 0, i32 71
  store %struct.clist_render_thread_control_s* null, %struct.clist_render_thread_control_s** %render_threads260, align 8, !tbaa !74
  %297 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info261 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %297, i32 0, i32 58
  %cfile262 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info261, i32 0, i32 1
  %298 = load i8*, i8** %cfile262, align 8, !tbaa !53
  %cmp263 = icmp eq i8* %298, null
  br i1 %cmp263, label %if.then.265, label %if.end.308

if.then.265:                                      ; preds = %if.end.256
  %299 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %299) #1
  %arraydecay266 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call267 = call i8* @strcpy(i8* %arraydecay266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #5
  %arraydecay268 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call269 = call i8* @strncat(i8* %arraydecay268, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0), i64 1) #5
  %300 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info270 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %300, i32 0, i32 58
  %io_procs271 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info270, i32 0, i32 4
  %301 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs271, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %301, i32 0, i32 0
  %302 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !55
  %303 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info272 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %303, i32 0, i32 58
  %cfname273 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info272, i32 0, i32 0
  %arraydecay274 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname273, i32 0, i32 0
  %arraydecay275 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %304 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info276 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %304, i32 0, i32 58
  %cfile277 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info276, i32 0, i32 1
  %305 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %306 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory278 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %306, i32 0, i32 45
  %307 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory278, align 8, !tbaa !21
  %call279 = call i32 %302(i8* %arraydecay274, i8* %arraydecay275, i8** %cfile277, %struct.gs_memory_s* %305, %struct.gs_memory_s* %307, i32 1) #4
  %308 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info280 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %308, i32 0, i32 58
  %io_procs281 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info280, i32 0, i32 4
  %309 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs281, align 8, !tbaa !50
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %309, i32 0, i32 9
  %310 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !92
  %311 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info282 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %311, i32 0, i32 58
  %cfile283 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info282, i32 0, i32 1
  %312 = load i8*, i8** %cfile283, align 8, !tbaa !53
  %313 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info284 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %313, i32 0, i32 58
  %cfname285 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info284, i32 0, i32 0
  %arraydecay286 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname285, i32 0, i32 0
  %call287 = call i32 %310(i8* %312, i64 0, i32 0, i8* %arraydecay286) #4
  %314 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info288 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %314, i32 0, i32 58
  %io_procs289 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info288, i32 0, i32 4
  %315 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs289, align 8, !tbaa !50
  %DO_NOT_USE_FOPEN290 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %315, i32 0, i32 0
  %316 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN290, align 8, !tbaa !55
  %317 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info291 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %317, i32 0, i32 58
  %bfname292 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info291, i32 0, i32 2
  %arraydecay293 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname292, i32 0, i32 0
  %arraydecay294 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %318 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info295 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %318, i32 0, i32 58
  %bfile296 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info295, i32 0, i32 3
  %319 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %320 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %bandlist_memory297 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %320, i32 0, i32 45
  %321 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory297, align 8, !tbaa !21
  %call298 = call i32 %316(i8* %arraydecay293, i8* %arraydecay294, i8** %bfile296, %struct.gs_memory_s* %319, %struct.gs_memory_s* %321, i32 0) #4
  %322 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info299 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %322, i32 0, i32 58
  %io_procs300 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info299, i32 0, i32 4
  %323 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs300, align 8, !tbaa !50
  %fseek301 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %323, i32 0, i32 9
  %324 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek301, align 8, !tbaa !92
  %325 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info302 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %325, i32 0, i32 58
  %bfile303 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info302, i32 0, i32 3
  %326 = load i8*, i8** %bfile303, align 8, !tbaa !54
  %327 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info304 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %327, i32 0, i32 58
  %bfname305 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info304, i32 0, i32 2
  %arraydecay306 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname305, i32 0, i32 0
  %call307 = call i32 %324(i8* %326, i64 0, i32 0, i8* %arraydecay306) #4
  %328 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.265, %if.end.256
  %329 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call309 = call i8* @gs_program_name() #4
  %call310 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %329, i8* %call309, i64 %call310) #4
  %330 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %331 = load i32, i32* %code, align 4, !tbaa !5
  %call311 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %330, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 %331) #4
  %332 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %332, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end.312:                                       ; preds = %if.end.237
  %333 = load i32, i32* %i, align 4, !tbaa !5
  %334 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads313 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %334, i32 0, i32 70
  store i32 %333, i32* %num_render_threads313, align 4, !tbaa !75
  %335 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %335, i32 0, i32 73
  store i32 0, i32* %curr_render_thread, align 4, !tbaa !129
  %336 = load i32, i32* %band, align 4, !tbaa !5
  %337 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %337, i32 0, i32 75
  store i32 %336, i32* %next_band, align 4, !tbaa !130
  %338 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !35
  %conv314 = sext i8 %338 to i32
  %cmp315 = icmp ne i32 %conv314, 0
  br i1 %cmp315, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %if.end.312
  %339 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %340 = load i32, i32* %i, align 4, !tbaa !5
  %call318 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %339, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i32 %340) #4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %if.end.312
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

cleanup.320:                                      ; preds = %if.end.319, %if.end.308, %cleanup, %if.then.28, %if.then.14
  %341 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %band_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast %struct.gs_memory_status_s* %mem_status to i8*
  call void @llvm.lifetime.end(i64 24, i8* %346) #1
  %347 = bitcast %struct.gs_memory_s** %chunk_base_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #1
  %351 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #1
  %353 = load i32, i32* %retval
  ret i32 %353

unreachable:                                      ; preds = %cleanup.129
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_get_band_from_thread(%struct.gx_device_s* %dev, i32 %band_needed, %struct.gx_process_page_options_s* %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %band_needed.addr = alloca i32, align 4
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %thread_index = alloca i32, align 4
  %thread = alloca %struct.clist_render_thread_control_s*, align 8
  %thread_cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %band_height = alloca i32, align 4
  %band_count = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %band3 = alloca i32, align 4
  %thread6 = alloca %struct.clist_render_thread_control_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %band_needed, i32* %band_needed.addr, align 4, !tbaa !5
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %5, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %7 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %10 = bitcast i32* %thread_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %11, i32 0, i32 73
  %12 = load i32, i32* %curr_render_thread, align 4, !tbaa !129
  store i32 %12, i32* %thread_index, align 4, !tbaa !5
  %13 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %thread_index, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 71
  %16 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %16, i64 %idxprom
  store %struct.clist_render_thread_control_s* %arrayidx, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %cdev1 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %18, i32 0, i32 4
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev1, align 8, !tbaa !76
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %20, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %21 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %22, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %23 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %23, i32* %band_height, align 4, !tbaa !5
  %24 = bitcast i32* %band_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %25, i32 0, i32 59
  %26 = load i32, i32* %nbands, align 4, !tbaa !119
  store i32 %26, i32* %band_count, align 4, !tbaa !5
  %27 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %band = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %28, i32 0, i32 6
  %29 = load i32, i32* %band, align 4, !tbaa !128
  %30 = load i32, i32* %band_needed.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %29, %30
  br i1 %cmp, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %31 = bitcast i32* %band3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %band_needed.addr, align 4, !tbaa !5
  store i32 %32, i32* %band3, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %34, i32 0, i32 70
  %35 = load i32, i32* %num_render_threads, align 4, !tbaa !75
  %cmp4 = icmp slt i32 %33, %35
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = bitcast %struct.clist_render_thread_control_s** %thread6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %37 to i64
  %38 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads8 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %38, i32 0, i32 71
  %39 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads8, align 8, !tbaa !74
  %arrayidx9 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %39, i64 %idxprom7
  store %struct.clist_render_thread_control_s* %arrayidx9, %struct.clist_render_thread_control_s** %thread6, align 8, !tbaa !1
  %40 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread6, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %40, i32 0, i32 0
  %41 = load i32, i32* %status, align 4, !tbaa !78
  %cmp10 = icmp eq i32 %41, 2
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %42 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread6, align 8, !tbaa !1
  %sema_this = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %42, i32 0, i32 2
  %43 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this, align 8, !tbaa !79
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %43, i32 0, i32 1
  %call = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native) #4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  %44 = bitcast %struct.clist_render_thread_control_s** %thread6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %46, i32 0, i32 74
  %47 = load i32, i32* %thread_lookahead_direction, align 4, !tbaa !122
  %mul = mul nsw i32 %47, -1
  store i32 %mul, i32* %thread_lookahead_direction, align 4, !tbaa !122
  %48 = load i32, i32* %band_needed.addr, align 4, !tbaa !5
  %49 = load i32, i32* %band_count, align 4, !tbaa !5
  %sub = sub nsw i32 %49, 1
  %cmp12 = icmp eq i32 %48, %sub
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.end
  %50 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction14 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %50, i32 0, i32 74
  store i32 -1, i32* %thread_lookahead_direction14, align 4, !tbaa !122
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %for.end
  %51 = load i32, i32* %band_needed.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %51, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %52 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction18 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %52, i32 0, i32 74
  store i32 1, i32* %thread_lookahead_direction18, align 4, !tbaa !122
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.34, %if.end.19
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %54 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads21 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %54, i32 0, i32 70
  %55 = load i32, i32* %num_render_threads21, align 4, !tbaa !75
  %cmp22 = icmp slt i32 %53, %55
  br i1 %cmp22, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.20
  %56 = load i32, i32* %band3, align 4, !tbaa !5
  %cmp23 = icmp sge i32 %56, 0
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %57 = load i32, i32* %band3, align 4, !tbaa !5
  %58 = load i32, i32* %band_count, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %57, %58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.20
  %59 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.20 ], [ %cmp24, %land.rhs ]
  br i1 %59, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %land.end
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %60 to i64
  %61 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads27 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %61, i32 0, i32 71
  %62 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads27, align 8, !tbaa !74
  %arrayidx28 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %62, i64 %idxprom26
  store %struct.clist_render_thread_control_s* %arrayidx28, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %63 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %band29 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %63, i32 0, i32 6
  store i32 -1, i32* %band29, align 4, !tbaa !128
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %66 = load i32, i32* %band3, align 4, !tbaa !5
  %call30 = call i32 @clist_start_render_thread(%struct.gx_device_s* %64, i32 %65, i32 %66) #4
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.25
  br label %for.end.37

if.end.33:                                        ; preds = %for.body.25
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %67, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !5
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction36 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 74
  %69 = load i32, i32* %thread_lookahead_direction36, align 4, !tbaa !122
  %70 = load i32, i32* %band3, align 4, !tbaa !5
  %add = add nsw i32 %70, %69
  store i32 %add, i32* %band3, align 4, !tbaa !5
  br label %for.cond.20

for.end.37:                                       ; preds = %if.then.32, %land.end
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %72 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %72, i32 0, i32 75
  store i32 %71, i32* %next_band, align 4, !tbaa !130
  store i32 0, i32* %thread_index, align 4, !tbaa !5
  %73 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread38 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %73, i32 0, i32 73
  store i32 0, i32* %curr_render_thread38, align 4, !tbaa !129
  %74 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads39 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %74, i32 0, i32 71
  %75 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads39, align 8, !tbaa !74
  %arrayidx40 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %75, i64 0
  store %struct.clist_render_thread_control_s* %arrayidx40, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %76 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %cdev41 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %76, i32 0, i32 4
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev41, align 8, !tbaa !76
  %78 = bitcast %struct.gx_device_s* %77 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %78, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %79 = bitcast i32* %band3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.37, %entry
  %80 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_this43 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %80, i32 0, i32 2
  %81 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this43, align 8, !tbaa !79
  %native44 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %81, i32 0, i32 1
  %call45 = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native44) #4
  %82 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %thread46 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %82, i32 0, i32 7
  %83 = load i8*, i8** %thread46, align 8, !tbaa !91
  call void @gp_thread_finish(i8* %83) #4
  %84 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %thread47 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %84, i32 0, i32 7
  store i8* null, i8** %thread47, align 8, !tbaa !91
  %85 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %status48 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %85, i32 0, i32 0
  %86 = load i32, i32* %status48, align 4, !tbaa !78
  %cmp49 = icmp eq i32 %86, -1
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.42
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.42
  %87 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_process_page_options_s* %87, null
  br i1 %tobool, label %land.lhs.true.52, label %if.end.60

land.lhs.true.52:                                 ; preds = %if.end.51
  %88 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %88, i32 0, i32 3
  %89 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !105
  %tobool53 = icmp ne i32 (i8*, %struct.gx_device_s*, i8*)* %89, null
  br i1 %tobool53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %land.lhs.true.52
  %90 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn55 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %90, i32 0, i32 3
  %91 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn55, align 8, !tbaa !105
  %92 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %92, i32 0, i32 4
  %93 = load i8*, i8** %arg, align 8, !tbaa !87
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %95 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %95, i32 0, i32 9
  %96 = load i8*, i8** %buffer, align 8, !tbaa !86
  %call56 = call i32 %91(i8* %93, %struct.gx_device_s* %94, i8* %96) #4
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %97 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %97, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.54
  %98 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.54
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.52, %if.end.51
  %99 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %99, i32 0, i32 46
  %100 = load i8*, i8** %data, align 8, !tbaa !89
  store i8* %100, i8** %tmp, align 8, !tbaa !1
  %101 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %data61 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %101, i32 0, i32 46
  %102 = load i8*, i8** %data61, align 8, !tbaa !89
  %103 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %data62 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %103, i32 0, i32 46
  store i8* %102, i8** %data62, align 8, !tbaa !89
  %104 = load i8*, i8** %tmp, align 8, !tbaa !1
  %105 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %thread_cdev, align 8, !tbaa !1
  %data63 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %105, i32 0, i32 46
  store i8* %104, i8** %data63, align 8, !tbaa !89
  %106 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %status64 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %106, i32 0, i32 0
  store i32 0, i32* %status64, align 4, !tbaa !78
  %107 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %band65 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %107, i32 0, i32 6
  store i32 -1, i32* %band65, align 4, !tbaa !128
  %108 = load i32, i32* %band_needed.addr, align 4, !tbaa !5
  %109 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul66 = mul nsw i32 %108, %109
  %110 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %110, i32 0, i32 56
  store i32 %mul66, i32* %ymin, align 4, !tbaa !131
  %111 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %ymin67 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %111, i32 0, i32 56
  %112 = load i32, i32* %ymin67, align 4, !tbaa !131
  %113 = load i32, i32* %band_height, align 4, !tbaa !5
  %add68 = add nsw i32 %112, %113
  %114 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %114, i32 0, i32 57
  store i32 %add68, i32* %ymax, align 4, !tbaa !132
  %115 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %ymax69 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %115, i32 0, i32 57
  %116 = load i32, i32* %ymax69, align 4, !tbaa !132
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 14
  %118 = load i32, i32* %height, align 4, !tbaa !49
  %cmp70 = icmp sgt i32 %116, %118
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.60
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 14
  %120 = load i32, i32* %height72, align 4, !tbaa !49
  %121 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %ymax73 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %121, i32 0, i32 57
  store i32 %120, i32* %ymax73, align 4, !tbaa !132
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.60
  %122 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band75 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %122, i32 0, i32 75
  %123 = load i32, i32* %next_band75, align 4, !tbaa !130
  %cmp76 = icmp sge i32 %123, 0
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.86

land.lhs.true.77:                                 ; preds = %if.end.74
  %124 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band78 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %124, i32 0, i32 75
  %125 = load i32, i32* %next_band78, align 4, !tbaa !130
  %126 = load i32, i32* %band_count, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %125, %126
  br i1 %cmp79, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %land.lhs.true.77
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %128 = load i32, i32* %thread_index, align 4, !tbaa !5
  %129 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band81 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %129, i32 0, i32 75
  %130 = load i32, i32* %next_band81, align 4, !tbaa !130
  %call82 = call i32 @clist_start_render_thread(%struct.gx_device_s* %127, i32 %128, i32 %130) #4
  store i32 %call82, i32* %code, align 4, !tbaa !5
  %131 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %thread_lookahead_direction83 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %131, i32 0, i32 74
  %132 = load i32, i32* %thread_lookahead_direction83, align 4, !tbaa !122
  %133 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %next_band84 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %133, i32 0, i32 75
  %134 = load i32, i32* %next_band84, align 4, !tbaa !130
  %add85 = add nsw i32 %134, %132
  store i32 %add85, i32* %next_band84, align 4, !tbaa !130
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.end.74
  %135 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread87 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %135, i32 0, i32 73
  %136 = load i32, i32* %curr_render_thread87, align 4, !tbaa !129
  %137 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_render_threads88 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %137, i32 0, i32 70
  %138 = load i32, i32* %num_render_threads88, align 4, !tbaa !75
  %sub89 = sub nsw i32 %138, 1
  %cmp90 = icmp eq i32 %136, %sub89
  br i1 %cmp90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.86
  br label %cond.end

cond.false:                                       ; preds = %if.end.86
  %139 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread91 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %139, i32 0, i32 73
  %140 = load i32, i32* %curr_render_thread91, align 4, !tbaa !129
  %add92 = add nsw i32 %140, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add92, %cond.false ]
  %141 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %curr_render_thread93 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %141, i32 0, i32 73
  store i32 %cond, i32* %curr_render_thread93, align 4, !tbaa !129
  %142 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.58, %if.then.50
  %143 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %band_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast %struct.gx_device_clist_common_s** %thread_cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %thread_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = load i32, i32* %retval
  ret i32 %154
}

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_start_render_thread(%struct.gx_device_s* %dev, i32 %thread_index, i32 %band) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %thread_index.addr = alloca i32, align 4
  %band.addr = alloca i32, align 4
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %thread_index, i32* %thread_index.addr, align 4, !tbaa !5
  store i32 %band, i32* %band.addr, align 4, !tbaa !5
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %band.addr, align 4, !tbaa !5
  %7 = load i32, i32* %thread_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %8, i32 0, i32 71
  %9 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %9, i64 %idxprom
  %band1 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx, i32 0, i32 6
  store i32 %6, i32* %band1, align 4, !tbaa !128
  %10 = load i32, i32* %thread_index.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %11, i32 0, i32 71
  %12 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads3, align 8, !tbaa !74
  %arrayidx4 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %12, i64 %idxprom2
  %status = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx4, i32 0, i32 0
  store i32 2, i32* %status, align 4, !tbaa !78
  %13 = load i32, i32* %thread_index.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 71
  %15 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads6, align 8, !tbaa !74
  %arrayidx7 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %15, i64 %idxprom5
  %16 = bitcast %struct.clist_render_thread_control_s* %arrayidx7 to i8*
  %17 = load i32, i32* %thread_index.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads9 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 71
  %19 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %render_threads9, align 8, !tbaa !74
  %arrayidx10 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %19, i64 %idxprom8
  %thread = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %arrayidx10, i32 0, i32 7
  %call = call i32 @gp_thread_start(void (i8*)* @clist_render_thread, i8* %16, i8** %thread) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret i32 %20
}

declare void @gs_memory_locked_release(%struct.gs_memory_locked_s*) #2

; Function Attrs: nounwind uwtable
define internal void @clist_render_thread(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %thread = alloca %struct.clist_render_thread_control_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %bdev = alloca %struct.gx_device_s*, align 8
  %band_rect = alloca %struct.gs_int_rect_s, align 4
  %mdata = alloca i8*, align 8
  %mlines = alloca i8*, align 8
  %raster = alloca i32, align 4
  %code = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band = alloca i32, align 4
  %band_begin_line = alloca i32, align 4
  %band_end_line = alloca i32, align 4
  %band_num_lines = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.clist_render_thread_control_s*
  store %struct.clist_render_thread_control_s* %2, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %4, i32 0, i32 4
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !76
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %8, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %bdev1 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %12, i32 0, i32 5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev1, align 8, !tbaa !82
  store %struct.gx_device_s* %13, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %14 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %16, i32 0, i32 46
  %17 = load i8*, i8** %data2, align 8, !tbaa !113
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 58
  %tile_cache_size = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 5
  %19 = load i32, i32* %tile_cache_size, align 4, !tbaa !114
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %mdata, align 8, !tbaa !1
  %20 = bitcast i8** %mlines to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %21, i32 0, i32 58
  %line_ptrs_offset = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 6
  %22 = load i64, i64* %line_ptrs_offset, align 8, !tbaa !133
  %cmp = icmp eq i64 %22, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load i8*, i8** %mdata, align 8, !tbaa !1
  %24 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info4 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %24, i32 0, i32 58
  %line_ptrs_offset5 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 6
  %25 = load i64, i64* %line_ptrs_offset5, align 8, !tbaa !133
  %add.ptr6 = getelementptr inbounds i8, i8* %23, i64 %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %add.ptr6, %cond.false ]
  store i8* %cond, i8** %mlines, align 8, !tbaa !1
  %26 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 @gx_device_raster_plane(%struct.gx_device_s* %27, %struct.gx_render_plane_s* null) #4
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info7 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info7, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %31 = load i32, i32* %BandHeight, align 4, !tbaa !93
  store i32 %31, i32* %band_height, align 4, !tbaa !5
  %32 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %band8 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %33, i32 0, i32 6
  %34 = load i32, i32* %band8, align 4, !tbaa !128
  store i32 %34, i32* %band, align 4, !tbaa !5
  %35 = bitcast i32* %band_begin_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %band, align 4, !tbaa !5
  %37 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul = mul nsw i32 %36, %37
  store i32 %mul, i32* %band_begin_line, align 4, !tbaa !5
  %38 = bitcast i32* %band_end_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %40 = load i32, i32* %band_height, align 4, !tbaa !5
  %add = add nsw i32 %39, %40
  store i32 %add, i32* %band_end_line, align 4, !tbaa !5
  %41 = bitcast i32* %band_num_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 14
  %44 = load i32, i32* %height, align 4, !tbaa !49
  %cmp9 = icmp sgt i32 %42, %44
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 14
  %46 = load i32, i32* %height10, align 4, !tbaa !49
  store i32 %46, i32* %band_end_line, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %47 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %48 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %sub = sub nsw i32 %47, %48
  store i32 %sub, i32* %band_num_lines, align 4, !tbaa !5
  %49 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %49, i32 0, i32 44
  %setup_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 2
  %50 = load i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)** %setup_buf_device, align 8, !tbaa !115
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %52 = load i8*, i8** %mdata, align 8, !tbaa !1
  %53 = load i32, i32* %raster, align 4, !tbaa !5
  %54 = load i8*, i8** %mlines, align 8, !tbaa !1
  %55 = bitcast i8* %54 to i8**
  %56 = load i32, i32* %band_num_lines, align 4, !tbaa !5
  %57 = load i32, i32* %band_num_lines, align 4, !tbaa !5
  %call11 = call i32 %50(%struct.gx_device_s* %51, i8* %52, i32 %53, i8** %55, i32 0, i32 %56, i32 %57) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !98
  %58 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %p12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p12, i32 0, i32 1
  store i32 %58, i32* %y, align 4, !tbaa !101
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 13
  %60 = load i32, i32* %width, align 4, !tbaa !48
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %60, i32* %x13, align 4, !tbaa !102
  %61 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %q14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q14, i32 0, i32 1
  store i32 %61, i32* %y15, align 4, !tbaa !103
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %62, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end
  %63 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call18 = call i32 @clist_render_rectangle(%union.gx_device_clist_s* %63, %struct.gs_int_rect_s* %band_rect, %struct.gx_device_s* %64, %struct.gx_render_plane_s* null, i32 1) #4
  store i32 %call18, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %65, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.19
  %66 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %66, i32 0, i32 8
  %67 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options, align 8, !tbaa !83
  %tobool = icmp ne %struct.gx_process_page_options_s* %67, null
  br i1 %tobool, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %68 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options22 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %68, i32 0, i32 8
  %69 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options22, align 8, !tbaa !83
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %69, i32 0, i32 2
  %70 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !104
  %tobool23 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* %70, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %land.lhs.true.21
  %71 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options25 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %71, i32 0, i32 8
  %72 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options25, align 8, !tbaa !83
  %process_fn26 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %72, i32 0, i32 2
  %73 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn26, align 8, !tbaa !104
  %74 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %options27 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %74, i32 0, i32 8
  %75 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options27, align 8, !tbaa !83
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %75, i32 0, i32 4
  %76 = load i8*, i8** %arg, align 8, !tbaa !87
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %79 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %79, i32 0, i32 9
  %80 = load i8*, i8** %buffer, align 8, !tbaa !86
  %call28 = call i32 %73(i8* %76, %struct.gx_device_s* %77, %struct.gx_device_s* %78, %struct.gs_int_rect_s* %band_rect, i8* %80) #4
  store i32 %call28, i32* %code, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %land.lhs.true.21, %land.lhs.true, %if.end.19
  %81 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %82 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %82, i32 0, i32 56
  store i32 %81, i32* %ymin, align 4, !tbaa !111
  %83 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %84 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %84, i32 0, i32 57
  store i32 %83, i32* %ymax, align 4, !tbaa !112
  %85 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %85, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !134
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %86, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.29
  %87 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %87, i32 0, i32 0
  store i32 -1, i32* %status, align 4, !tbaa !78
  br label %if.end.33

if.else:                                          ; preds = %if.end.29
  %88 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %status32 = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %88, i32 0, i32 0
  store i32 1, i32* %status32, align 4, !tbaa !78
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  %89 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_group = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %89, i32 0, i32 3
  %90 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_group, align 8, !tbaa !80
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %90, i32 0, i32 1
  %call34 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native) #4
  %91 = load %struct.clist_render_thread_control_s*, %struct.clist_render_thread_control_s** %thread, align 8, !tbaa !1
  %sema_this = getelementptr inbounds %struct.clist_render_thread_control_s, %struct.clist_render_thread_control_s* %91, i32 0, i32 2
  %92 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema_this, align 8, !tbaa !79
  %native35 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %92, i32 0, i32 1
  %call36 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native35) #4
  %93 = bitcast i32* %band_num_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %band_end_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %band_begin_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i8** %mlines to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %102) #1
  %103 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.clist_render_thread_control_s** %thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  ret void
}

declare i32 @gx_device_raster_plane(%struct.gx_device_s*, %struct.gx_render_plane_s*) #2

declare i32 @clist_render_rectangle(%union.gx_device_clist_s*, %struct.gs_int_rect_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32) #2

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!8, !2, i64 16}
!21 = !{!22, !2, i64 1768}
!22 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !23, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !24, i64 1816, !25, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !26, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!25 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!26 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !10, i64 8224, !10, i64 8232, !17, i64 8240}
!27 = !{!22, !2, i64 24}
!28 = !{!29, !2, i64 17200}
!29 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !30, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !31, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!30 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!31 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!32 = !{!8, !10, i64 928}
!33 = !{!29, !2, i64 17176}
!34 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !35, i64 12, i64 2, !36, i64 14, i64 1, !35, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !35, i64 44, i64 64, !35, i64 108, i64 64, !35, i64 176, i64 512, !35, i64 688, i64 8, !1, i64 696, i64 4, !35, i64 704, i64 8, !37, i64 712, i64 4, !5}
!35 = !{!3, !3, i64 0}
!36 = !{!12, !12, i64 0}
!37 = !{!10, !10, i64 0}
!38 = !{!8, !6, i64 840}
!39 = !{!8, !6, i64 844}
!40 = !{!8, !6, i64 848}
!41 = !{!8, !2, i64 1624}
!42 = !{!22, !2, i64 1104}
!43 = !{!44, !6, i64 168}
!44 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !9, i64 200}
!45 = !{!8, !2, i64 1104}
!46 = !{!22, !6, i64 1056}
!47 = !{!22, !6, i64 848}
!48 = !{!8, !6, i64 832}
!49 = !{!8, !6, i64 836}
!50 = !{!22, !2, i64 10096}
!51 = !{!52, !2, i64 8}
!52 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!53 = !{!22, !2, i64 5984}
!54 = !{!22, !2, i64 10088}
!55 = !{!52, !2, i64 0}
!56 = !{!22, !10, i64 10120}
!57 = !{!58, !2, i64 208}
!58 = !{!"gs_memory_s", !2, i64 0, !59, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!59 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!60 = !{!61, !10, i64 16}
!61 = !{!"gsicc_link_cache_s", !2, i64 0, !6, i64 8, !9, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64}
!62 = !{!22, !2, i64 10168}
!63 = !{!22, !2, i64 10160}
!64 = !{!65, !2, i64 10216}
!65 = !{!"gx_device_clist_reader_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !23, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !24, i64 1816, !25, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !26, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !66, i64 10192, !2, i64 10208, !2, i64 10216, !6, i64 10224, !2, i64 10232, !6, i64 10240, !2, i64 10248, !2, i64 10256, !6, i64 10264, !6, i64 10268, !6, i64 10272}
!66 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!67 = !{!22, !10, i64 10152}
!68 = !{!22, !6, i64 1808}
!69 = !{!58, !2, i64 24}
!70 = !{!65, !2, i64 10160}
!71 = !{!65, !2, i64 10168}
!72 = !{!61, !2, i64 32}
!73 = !{!61, !2, i64 24}
!74 = !{!65, !2, i64 10248}
!75 = !{!65, !6, i64 10240}
!76 = !{!77, !2, i64 32}
!77 = !{!"clist_render_thread_control_s", !3, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!78 = !{!77, !3, i64 0}
!79 = !{!77, !2, i64 16}
!80 = !{!77, !2, i64 24}
!81 = !{!22, !2, i64 1760}
!82 = !{!77, !2, i64 40}
!83 = !{!77, !2, i64 64}
!84 = !{!85, !2, i64 8}
!85 = !{!"gx_process_page_options_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40}
!86 = !{!77, !2, i64 72}
!87 = !{!85, !2, i64 32}
!88 = !{!77, !2, i64 8}
!89 = !{!22, !2, i64 1776}
!90 = !{!65, !2, i64 10256}
!91 = !{!77, !2, i64 56}
!92 = !{!52, !2, i64 72}
!93 = !{!65, !6, i64 10132}
!94 = !{!85, !2, i64 0}
!95 = !{!66, !6, i64 8}
!96 = !{!22, !2, i64 1736}
!97 = !{!22, !2, i64 1728}
!98 = !{!99, !6, i64 0}
!99 = !{!"gs_int_rect_s", !100, i64 0, !100, i64 8}
!100 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!101 = !{!99, !6, i64 4}
!102 = !{!99, !6, i64 8}
!103 = !{!99, !6, i64 12}
!104 = !{!85, !2, i64 16}
!105 = !{!85, !2, i64 24}
!106 = !{!8, !2, i64 1448}
!107 = !{!8, !2, i64 1720}
!108 = !{!109, !10, i64 0}
!109 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!110 = !{!29, !6, i64 17288}
!111 = !{!65, !6, i64 1880}
!112 = !{!65, !6, i64 1884}
!113 = !{!65, !2, i64 1776}
!114 = !{!65, !6, i64 10104}
!115 = !{!65, !2, i64 1752}
!116 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!117 = !{i64 0, i64 8, !37, i64 8, i64 512, !35, i64 520, i64 4, !5, i64 524, i64 4, !5, i64 528, i64 4, !5}
!118 = !{!85, !6, i64 40}
!119 = !{!22, !6, i64 10144}
!120 = !{!58, !2, i64 88}
!121 = !{!22, !6, i64 836}
!122 = !{!65, !6, i64 10268}
!123 = !{!58, !2, i64 40}
!124 = !{!125, !6, i64 16}
!125 = !{!"gs_memory_status_s", !10, i64 0, !10, i64 8, !6, i64 16}
!126 = !{!65, !6, i64 10176}
!127 = !{!65, !2, i64 10184}
!128 = !{!77, !6, i64 48}
!129 = !{!65, !6, i64 10264}
!130 = !{!65, !6, i64 10272}
!131 = !{!22, !6, i64 1880}
!132 = !{!22, !6, i64 1884}
!133 = !{!65, !10, i64 10112}
!134 = !{!65, !2, i64 10232}
