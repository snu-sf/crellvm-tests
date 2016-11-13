; ModuleID = './gxpcmap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32)*, {}*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
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
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.1 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.1 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_pattern_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_pattern_trans_s* }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct._pat = type { %struct.gx_color_tile_s* }

@gs_clist_device_procs = external constant %struct.gx_device_procs_s, align 8
@st_device_pattern_accum = internal constant %struct.gs_memory_struct_type_s { i32 1776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @pattern_accum_reloc to i8*) }, align 8
@gx_pattern_accum_alloc.buf_procs = private unnamed_addr constant %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @dummy_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @dummy_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @dummy_setup_buf_device, void (%struct.gx_device_s*)* @dummy_destroy_buf_device }, align 8
@.str = private unnamed_addr constant [14 x i8] c"pattern-clist\00", align 1
@st_pattern_trans = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern_trans_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"new_pattern_trans_buff\00", align 1
@st_pattern_cache = internal constant %struct.gs_memory_struct_type_s { i32 56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern_cache_reloc to i8*) }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"gx_pattern_alloc_cache(struct)\00", align 1
@st_color_tile_element = internal constant %struct.gs_memory_struct_type_s { i32 232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @color_tile_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @color_tile_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"gx_pattern_alloc_cache(tiles)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"gx_pattern_cache_free\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gx_pattern_load\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"./base/gxpcmap.c\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Pattern cache lookup failed after insertion!\0A\00", align 1
@gx_dc_pattern = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pure_masked = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_binary_masked = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_colored_masked = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_devn_masked = external constant %struct.gx_device_color_type_s, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"pattern accumulator\00", align 1
@pattern_accum_reloc = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @pattern_accum_enum, i32 0, i32 0) }, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@pattern_accum_enum = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1744 }, %struct.gc_ptr_element_s { i16 0, i16 1752 }, %struct.gc_ptr_element_s { i16 0, i16 1760 }, %struct.gc_ptr_element_s { i16 0, i16 1768 }], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_pattern_accum_device = internal constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, %struct.gx_device_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_pattern_trans_s* } { i32 1776, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @pattern_accum_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* @pattern_accum_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @pattern_accum_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @pattern_accum_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @pattern_accum_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_get_largest_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @pattern_accum_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @pattern_accum_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @pattern_accum_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @gx_default_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gs_memory_s* null, %struct.gs_pattern1_instance_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_pattern_trans_s* null }, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"pattern_accum_close(mask)\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"pattern_accum_close(transbuff)\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"gx_pattern_accum_finalize_cw\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"pattern_accum_open(trans)\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"pattern_accum_open(mask)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"pattern_accum_open(bits)\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"gx_pattern_trans\00", align 1
@pattern_trans_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @pattern_trans_enum_ptrs, i32 0, i32 0) }, align 8
@pattern_trans_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.17 = private unnamed_addr constant [17 x i8] c"gx_pattern_cache\00", align 1
@pattern_cache_reloc = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pattern_cache_enum, i32 0, i32 0) }, align 8
@pattern_cache_enum = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.18 = private unnamed_addr constant [16 x i8] c"gx_color_tile[]\00", align 1
@st_color_tile = internal constant %struct.gs_memory_struct_type_s { i32 232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @color_tile_reloc_ptrs to i8*) }, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"gx_color_tile\00", align 1
@color_tile_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @color_tile_enum_ptrs, i32 0, i32 0) }, align 8
@color_tile_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 96 }, %struct.gc_ptr_element_s { i16 0, i16 144 }, %struct.gc_ptr_element_s { i16 0, i16 200 }, %struct.gc_ptr_element_s { i16 0, i16 192 }], align 16
@.str.20 = private unnamed_addr constant [36 x i8] c"free_pattern_cache_entry(mask data)\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"free_pattern_cache_entry(bits data)\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"gx_pattern_cache_free_entry\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"free_pattern_cache_entry(transbytes)\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"free_pattern_cache_entry(fill_trans_buffer)\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"free_pattern_cache_entry(ttrans)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_pat_cache_default_tiles() #0 {
entry:
  ret i32 50
}

; Function Attrs: nounwind uwtable
define i64 @gx_pat_cache_default_bits() #0 {
entry:
  ret i64 100000
}

; Function Attrs: nounwind uwtable
define i32 @pattern_clist_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** bitcast (%struct.gx_device_procs_s* @gs_clist_device_procs to i32 (%struct.gx_device_s*)**), align 8, !tbaa !5
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %0(%struct.gx_device_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_is_pattern_accum(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %open_device1 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %1 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device1, align 8, !tbaa !7
  %cmp = icmp eq i32 (%struct.gx_device_s*)* %1, @pattern_accum_open
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_open(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %mask = alloca %struct.gx_device_memory_s*, align 8
  %bits = alloca %struct.gx_device_memory_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %code = alloca i32, align 4
  %mask_open = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %planes = alloca [64 x %struct.gx_render_plane_s], align 16
  %num_comp = alloca i32, align 4
  %i = alloca i32, align 4
  %depth95 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %instance = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %4, i32 0, i32 45
  %5 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %instance, align 8, !tbaa !20
  store %struct.gs_pattern1_instance_s* %5, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %7, i32 0, i32 44
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !22
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_memory_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %12, i32 0, i32 43
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %cmp = icmp eq %struct.gx_device_s* %13, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %14, i32 0, i32 2
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !24
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %15) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %16, i32 0, i32 43
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target2, align 8, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ %call, %cond.true ], [ %17, %cond.false ]
  store %struct.gx_device_s* %cond, %struct.gx_device_s** %target, align 8, !tbaa !1
  %18 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %19, i32 0, i32 12
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !34
  store i32 %20, i32* %width, align 4, !tbaa !35
  %21 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %22, i32 0, i32 12
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size3, i32 0, i32 1
  %23 = load i32, i32* %y, align 4, !tbaa !36
  store i32 %23, i32* %height, align 4, !tbaa !35
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %code, align 4, !tbaa !35
  %25 = bitcast i32* %mask_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %mask_open, align 4, !tbaa !35
  %26 = load i32, i32* %width, align 4, !tbaa !35
  %27 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %27, i32 0, i32 13
  store i32 %26, i32* %width4, align 4, !tbaa !37
  %28 = load i32, i32* %height, align 4, !tbaa !35
  %29 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %29, i32 0, i32 14
  store i32 %28, i32* %height5, align 4, !tbaa !38
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %31 = load float, float* %arrayidx, align 4, !tbaa !39
  %32 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %32, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 0
  store float %31, float* %arrayidx7, align 4, !tbaa !39
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 1
  %34 = load float, float* %arrayidx9, align 4, !tbaa !39
  %35 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %HWResolution10 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %35, i32 0, i32 22
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution10, i32 0, i64 1
  store float %34, float* %arrayidx11, align 4, !tbaa !39
  %36 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %36, i32 0, i32 11
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 11
  %38 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %39 = bitcast %struct.gx_device_color_info_s* %color_info12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 720, i32 8, i1 false), !tbaa.struct !40
  %40 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %40, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %41 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp13 = icmp eq i32 %41, 2
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %42 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info14 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %42, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info14, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 0
  store i32 1, i32* %text_bits, align 4, !tbaa !45
  %43 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info15 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %43, i32 0, i32 11
  %anti_alias16 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info15, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias16, i32 0, i32 1
  store i32 1, i32* %graphics_bits, align 4, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %44 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat17 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %44, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat17, i32 0, i32 6
  %45 = load i32, i32* %uses_transparency, align 4, !tbaa !47
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %47 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call19 = call i8* %47(%struct.gs_memory_s* %48, %struct.gs_memory_struct_type_s* @st_pattern_trans, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #4
  %49 = bitcast i8* %call19 to %struct.gx_pattern_trans_s*
  %50 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %50, i32 0, i32 48
  store %struct.gx_pattern_trans_s* %49, %struct.gx_pattern_trans_s** %transbuff, align 8, !tbaa !51
  %51 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff20 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %51, i32 0, i32 48
  %52 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff20, align 8, !tbaa !51
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %52, i32 0, i32 1
  store i8* null, i8** %transbytes, align 8, !tbaa !52
  %53 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff21 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %53, i32 0, i32 48
  %54 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff21, align 8, !tbaa !51
  %mem22 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %54, i32 0, i32 2
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %mem22, align 8, !tbaa !55
  %55 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff23 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %55, i32 0, i32 48
  %56 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff23, align 8, !tbaa !51
  %pdev14 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %56, i32 0, i32 0
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev14, align 8, !tbaa !56
  %57 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff24 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %57, i32 0, i32 48
  %58 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff24, align 8, !tbaa !51
  %fill_trans_buffer = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %58, i32 0, i32 3
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %fill_trans_buffer, align 8, !tbaa !57
  %59 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff25 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %59, i32 0, i32 48
  %60 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff25, align 8, !tbaa !51
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %60, i32 0, i32 7
  store i32 0, i32* %n_chan, align 4, !tbaa !58
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %61 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff26 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %61, i32 0, i32 48
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %transbuff26, align 8, !tbaa !51
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.18
  %62 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %uses_mask = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %62, i32 0, i32 10
  %63 = load i32, i32* %uses_mask, align 4, !tbaa !59
  %tobool28 = icmp ne i32 %63, 0
  br i1 %tobool28, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %if.end.27
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %alloc_struct31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 8
  %65 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct31, align 8, !tbaa !48
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call32 = call i8* %65(%struct.gs_memory_s* %66, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0)) #4
  %67 = bitcast i8* %call32 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %67, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.gx_device_memory_s* %68, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.29
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %69, %struct.gs_memory_s* %70, %struct.gx_device_s* null) #4
  %71 = load i32, i32* %width, align 4, !tbaa !35
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %width36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 13
  store i32 %71, i32* %width36, align 4, !tbaa !60
  %73 = load i32, i32* %height, align 4, !tbaa !35
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %height37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 14
  store i32 %73, i32* %height37, align 4, !tbaa !69
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 22
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution38, i32 0, i64 0
  %76 = load float, float* %arrayidx39, align 4, !tbaa !39
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %HWResolution40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 22
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution40, i32 0, i64 0
  store float %76, float* %arrayidx41, align 4, !tbaa !39
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 22
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution42, i32 0, i64 1
  %79 = load float, float* %arrayidx43, align 4, !tbaa !39
  %80 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %HWResolution44 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %80, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 1
  store float %79, float* %arrayidx45, align 4, !tbaa !39
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %82 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %bitmap_memory46 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %82, i32 0, i32 46
  store %struct.gs_memory_s* %81, %struct.gs_memory_s** %bitmap_memory46, align 8, !tbaa !70
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 45
  store i8* null, i8** %base, align 8, !tbaa !71
  %84 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %84, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs47, i32 0, i32 0
  %open_device48 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %85 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device48, align 8, !tbaa !72
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_memory_s* %86 to %struct.gx_device_s*
  %call49 = call i32 %85(%struct.gx_device_s* %87) #4
  store i32 %call49, i32* %code, align 4, !tbaa !35
  %88 = load i32, i32* %code, align 4, !tbaa !35
  %cmp50 = icmp sge i32 %88, 0
  br i1 %cmp50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.35
  store i32 1, i32* %mask_open, align 4, !tbaa !35
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %base52 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %89, i32 0, i32 45
  %90 = load i8*, i8** %base52, align 8, !tbaa !71
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 44
  %92 = load i32, i32* %raster, align 4, !tbaa !73
  %93 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %height53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %93, i32 0, i32 14
  %94 = load i32, i32* %height53, align 4, !tbaa !69
  %mul = mul i32 %92, %94
  %conv = zext i32 %mul to i64
  %call54 = call i8* @memset(i8* %90, i32 0, i64 %conv) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.35
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.27
  %95 = load i32, i32* %code, align 4, !tbaa !35
  %cmp57 = icmp sge i32 %95, 0
  br i1 %cmp57, label %if.then.59, label %if.end.123

if.then.59:                                       ; preds = %if.end.56
  %96 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat60 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %96, i32 0, i32 4
  %uses_transparency61 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat60, i32 0, i32 6
  %97 = load i32, i32* %uses_transparency61, align 4, !tbaa !47
  %tobool62 = icmp ne i32 %97, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.59
  %98 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %99 = bitcast %struct.gx_device_pattern_accum_s* %98 to %struct.gx_device_forward_s*
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %99, %struct.gx_device_s* %100) #4
  br label %if.end.122

if.else.64:                                       ; preds = %if.then.59
  %101 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat65 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %101, i32 0, i32 4
  %PaintType66 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat65, i32 0, i32 4
  %102 = load i32, i32* %PaintType66, align 4, !tbaa !44
  switch i32 %102, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %if.else.64
  %103 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %104 = bitcast %struct.gx_device_pattern_accum_s* %103 to %struct.gx_device_forward_s*
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %104, %struct.gx_device_s* %105) #4
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.else.64
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %106, i32 0, i32 1
  %alloc_struct69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 8
  %107 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct69, align 8, !tbaa !48
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call70 = call i8* %107(%struct.gs_memory_s* %108, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #4
  %109 = bitcast i8* %call70 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %109, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %110 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %cmp71 = icmp eq %struct.gx_device_memory_s* %110, null
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %sw.bb.67
  store i32 -25, i32* %code, align 4, !tbaa !35
  br label %if.end.121

if.else.74:                                       ; preds = %sw.bb.67
  %111 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %112 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info75 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %112, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info75, i32 0, i32 3
  %113 = load i16, i16* %depth, align 2, !tbaa !74
  %conv76 = zext i16 %113 to i32
  %call77 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %conv76) #4
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %111, %struct.gx_device_memory_s* %call77, %struct.gs_memory_s* %114, i32 -1, %struct.gx_device_s* %115) #4
  %116 = load i32, i32* %width, align 4, !tbaa !35
  %117 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %width78 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %117, i32 0, i32 13
  store i32 %116, i32* %width78, align 4, !tbaa !60
  %118 = load i32, i32* %height, align 4, !tbaa !35
  %119 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %height79 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %119, i32 0, i32 14
  store i32 %118, i32* %height79, align 4, !tbaa !69
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 22
  %arrayidx81 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution80, i32 0, i64 0
  %121 = load float, float* %arrayidx81, align 4, !tbaa !39
  %122 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %HWResolution82 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %122, i32 0, i32 22
  %arrayidx83 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution82, i32 0, i64 0
  store float %121, float* %arrayidx83, align 4, !tbaa !39
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %HWResolution84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 22
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution84, i32 0, i64 1
  %124 = load float, float* %arrayidx85, align 4, !tbaa !39
  %125 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %HWResolution86 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %125, i32 0, i32 22
  %arrayidx87 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution86, i32 0, i64 1
  store float %124, float* %arrayidx87, align 4, !tbaa !39
  %126 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %color_info88 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %126, i32 0, i32 11
  %127 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info89 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %127, i32 0, i32 11
  %128 = bitcast %struct.gx_device_color_info_s* %color_info88 to i8*
  %129 = bitcast %struct.gx_device_color_info_s* %color_info89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 720, i32 8, i1 false), !tbaa.struct !40
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %131 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %bitmap_memory90 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %131, i32 0, i32 46
  store %struct.gs_memory_s* %130, %struct.gs_memory_s** %bitmap_memory90, align 8, !tbaa !70
  %132 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %132, i32 0, i32 17
  %133 = load i32, i32* %is_planar, align 4, !tbaa !75
  %cmp91 = icmp sgt i32 %133, 0
  br i1 %cmp91, label %if.then.93, label %if.end.112

if.then.93:                                       ; preds = %if.else.74
  %134 = bitcast [64 x %struct.gx_render_plane_s]* %planes to i8*
  call void @llvm.lifetime.start(i64 768, i8* %134) #1
  %135 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %color_info94 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %136, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info94, i32 0, i32 1
  %137 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %137, i32* %num_comp, align 4, !tbaa !35
  %138 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  %139 = bitcast i32* %depth95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %color_info96 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %140, i32 0, i32 11
  %depth97 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info96, i32 0, i32 3
  %141 = load i16, i16* %depth97, align 2, !tbaa !77
  %conv98 = zext i16 %141 to i32
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %color_info99 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 11
  %num_components100 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info99, i32 0, i32 1
  %143 = load i32, i32* %num_components100, align 4, !tbaa !78
  %div = sdiv i32 %conv98, %143
  store i32 %div, i32* %depth95, align 4, !tbaa !35
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.93
  %144 = load i32, i32* %i, align 4, !tbaa !35
  %145 = load i32, i32* %num_comp, align 4, !tbaa !35
  %cmp101 = icmp slt i32 %144, %145
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = load i32, i32* %depth95, align 4, !tbaa !35
  %147 = load i32, i32* %num_comp, align 4, !tbaa !35
  %sub = sub nsw i32 %147, 1
  %148 = load i32, i32* %i, align 4, !tbaa !35
  %sub103 = sub nsw i32 %sub, %148
  %mul104 = mul nsw i32 %146, %sub103
  %149 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom = sext i32 %149 to i64
  %arrayidx105 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx105, i32 0, i32 1
  store i32 %mul104, i32* %shift, align 4, !tbaa !79
  %150 = load i32, i32* %depth95, align 4, !tbaa !35
  %151 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom106 = sext i32 %151 to i64
  %arrayidx107 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom106
  %depth108 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx107, i32 0, i32 0
  store i32 %150, i32* %depth108, align 4, !tbaa !81
  %152 = load i32, i32* %i, align 4, !tbaa !35
  %153 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom109 = sext i32 %153 to i64
  %arrayidx110 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom109
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx110, i32 0, i32 2
  store i32 %152, i32* %index, align 4, !tbaa !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %154 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add nsw i32 %154, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %156 = load i32, i32* %num_comp, align 4, !tbaa !35
  %arraydecay = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i32 0
  %call111 = call i32 @gdev_mem_set_planar(%struct.gx_device_memory_s* %155, i32 %156, %struct.gx_render_plane_s* %arraydecay) #4
  store i32 %call111, i32* %code, align 4, !tbaa !35
  %157 = bitcast i32* %depth95 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast [64 x %struct.gx_render_plane_s]* %planes to i8*
  call void @llvm.lifetime.end(i64 768, i8* %160) #1
  br label %if.end.112

if.end.112:                                       ; preds = %for.end, %if.else.74
  %161 = load i32, i32* %code, align 4, !tbaa !35
  %cmp113 = icmp sge i32 %161, 0
  br i1 %cmp113, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %if.end.112
  %162 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %procs116 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %162, i32 0, i32 42
  %open_device117 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 0
  %open_device118 = bitcast {}** %open_device117 to i32 (%struct.gx_device_s*)**
  %163 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device118, align 8, !tbaa !72
  %164 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %165 = bitcast %struct.gx_device_memory_s* %164 to %struct.gx_device_s*
  %call119 = call i32 %163(%struct.gx_device_s* %165) #4
  store i32 %call119, i32* %code, align 4, !tbaa !35
  %166 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %167 = bitcast %struct.gx_device_pattern_accum_s* %166 to %struct.gx_device_forward_s*
  %168 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %169 = bitcast %struct.gx_device_memory_s* %168 to %struct.gx_device_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %167, %struct.gx_device_s* %169) #4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.115, %if.end.112
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.121, %if.else.64, %sw.bb
  br label %if.end.122

if.end.122:                                       ; preds = %sw.epilog, %if.then.63
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.56
  %170 = load i32, i32* %code, align 4, !tbaa !35
  %cmp124 = icmp slt i32 %170, 0
  br i1 %cmp124, label %if.then.126, label %if.end.144

if.then.126:                                      ; preds = %if.end.123
  %171 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %cmp127 = icmp ne %struct.gx_device_memory_s* %171, null
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.then.126
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs130 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs130, i32 0, i32 2
  %173 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %175 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %176 = bitcast %struct.gx_device_memory_s* %175 to i8*
  call void %173(%struct.gs_memory_s* %174, i8* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.then.126
  %177 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %cmp132 = icmp ne %struct.gx_device_memory_s* %177, null
  br i1 %cmp132, label %if.then.134, label %if.end.143

if.then.134:                                      ; preds = %if.end.131
  %178 = load i32, i32* %mask_open, align 4, !tbaa !35
  %tobool135 = icmp ne i32 %178, 0
  br i1 %tobool135, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %if.then.134
  %179 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %procs137 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %179, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs137, i32 0, i32 4
  %close_device138 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %180 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device138, align 8, !tbaa !84
  %181 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %182 = bitcast %struct.gx_device_memory_s* %181 to %struct.gx_device_s*
  %call139 = call i32 %180(%struct.gx_device_s* %182) #4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.136, %if.then.134
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %183, i32 0, i32 1
  %free_object142 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs141, i32 0, i32 2
  %184 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object142, align 8, !tbaa !83
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %186 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %187 = bitcast %struct.gx_device_memory_s* %186 to i8*
  call void %184(%struct.gs_memory_s* %185, i8* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.140, %if.end.131
  %188 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.144:                                       ; preds = %if.end.123
  %189 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %190 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask145 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %190, i32 0, i32 47
  store %struct.gx_device_memory_s* %189, %struct.gx_device_memory_s** %mask145, align 8, !tbaa !85
  %191 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !1
  %192 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits146 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %192, i32 0, i32 46
  store %struct.gx_device_memory_s* %191, %struct.gx_device_memory_s** %bits146, align 8, !tbaa !86
  %193 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %193, i32 1) #4
  %194 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.144, %if.end.143, %if.then.34
  %195 = bitcast i32* %mask_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast %struct.gx_device_memory_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = load i32, i32* %retval
  ret i32 %205
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_is_pattern_clist(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %open_device1 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %1 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device1, align 8, !tbaa !7
  %cmp = icmp eq i32 (%struct.gx_device_s*)* %1, @pattern_clist_open_device
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s* %mem, %struct.gs_memory_s* %storage_memory, %struct.gs_pattern1_instance_s* %pinst, i8* %cname) #0 {
entry:
  %retval = alloca %struct.gx_device_forward_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %storage_memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %cname.addr = alloca i8*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %has_tags = alloca i32, align 4
  %size = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %force_no_clist = alloca i32, align 4
  %max_pattern_bitmap = alloca i32, align 4
  %adev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  %buf_procs = alloca %struct.gx_device_buf_procs_s, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %cwdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %data_size = alloca i32, align 4
  %band_params = alloca %struct.gx_band_params_s, align 8
  %data = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %storage_memory, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %1, i32 0, i32 2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !24
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 78
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !87
  store %struct.gx_device_s* %3, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %4 = bitcast i32* %has_tags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 40
  %6 = load i32, i32* %graphics_type_tag, align 4, !tbaa !98
  %and = and i32 %6, 128
  store i32 %and, i32* %has_tags, align 4, !tbaa !35
  %7 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %9 = load i32, i32* %has_tags, align 4, !tbaa !35
  %call = call i32 @gx_pattern_size_estimate(%struct.gs_pattern1_instance_s* %8, i32 %9) #4
  store i32 %call, i32* %size, align 4, !tbaa !35
  %10 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %force_no_clist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %force_no_clist, align 4, !tbaa !35
  %12 = bitcast i32* %max_pattern_bitmap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %MaxPatternBitmap = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 36
  %14 = load i32, i32* %MaxPatternBitmap, align 4, !tbaa !99
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %MaxPatternBitmap1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 36
  %16 = load i32, i32* %MaxPatternBitmap1, align 4, !tbaa !99
  %conv = sext i32 %16 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 10000000, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i64 %cond to i32
  store i32 %conv2, i32* %max_pattern_bitmap, align 4, !tbaa !35
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 17
  %18 = load i32, i32* %is_planar, align 4, !tbaa !75
  %19 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %is_planar3 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %19, i32 0, i32 9
  store i32 %18, i32* %is_planar3, align 4, !tbaa !100
  %20 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved4 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %20, i32 0, i32 2
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %saved4, align 8, !tbaa !24
  %have_pattern_streams = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 31
  %22 = load i32, i32* %have_pattern_streams, align 4, !tbaa !101
  %cmp5 = icmp eq i32 %22, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %23 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved7 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %23, i32 0, i32 2
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %saved7, align 8, !tbaa !24
  %device8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 78
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %device8, align 8, !tbaa !87
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %26 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !102
  %27 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved9 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %27, i32 0, i32 2
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %saved9, align 8, !tbaa !24
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 78
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !87
  %30 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gs_pattern1_instance_s* %30 to i8*
  %call11 = call i32 %26(%struct.gx_device_s* %29, i32 0, i8* %31, i32 0) #4
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %force_no_clist, align 4, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %32 = load i32, i32* %force_no_clist, align 4, !tbaa !35
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %33 = load i32, i32* %size, align 4, !tbaa !35
  %34 = load i32, i32* %max_pattern_bitmap, align 4, !tbaa !35
  %cmp14 = icmp slt i32 %33, %34
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false.18

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %35 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %35, i32 0, i32 11
  %36 = load i32, i32* %is_clist, align 4, !tbaa !103
  %tobool17 = icmp ne i32 %36, 0
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.21

lor.lhs.false.18:                                 ; preds = %land.lhs.true.16, %lor.lhs.false
  %37 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %37, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %38 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp19 = icmp ne i32 %38, 1
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false.18, %land.lhs.true.16, %if.end
  %39 = bitcast %struct.gx_device_pattern_accum_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 8
  %41 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call23 = call i8* %41(%struct.gs_memory_s* %42, %struct.gs_memory_struct_type_s* @st_device_pattern_accum, i8* %43) #4
  %44 = bitcast i8* %call23 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %44, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %45 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gx_device_pattern_accum_s* %45, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.21
  store %struct.gx_device_forward_s* null, %struct.gx_device_forward_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.21
  %46 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %is_clist28 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %46, i32 0, i32 11
  store i32 0, i32* %is_clist28, align 4, !tbaa !103
  %47 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_pattern_accum_s* %47 to %struct.gx_device_s*
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %48, %struct.gx_device_s* bitcast ({ i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, %struct.gx_device_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_pattern_trans_s* }* @gs_pattern_accum_device to %struct.gx_device_s*), %struct.gs_memory_s* %49, i32 1) #4
  %50 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %instance = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %51, i32 0, i32 45
  store %struct.gs_pattern1_instance_s* %50, %struct.gs_pattern1_instance_s** %instance, align 8, !tbaa !20
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  %53 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %53, i32 0, i32 44
  store %struct.gs_memory_s* %52, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !22
  %54 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %adev, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_pattern_accum_s* %54 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %55, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %56 = bitcast %struct.gx_device_pattern_accum_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.58

if.else:                                          ; preds = %lor.lhs.false.18
  %57 = bitcast %struct.gx_device_buf_procs_s* %buf_procs to i8*
  call void @llvm.lifetime.start(i64 32, i8* %57) #1
  %58 = bitcast %struct.gx_device_buf_procs_s* %buf_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.gx_device_buf_procs_s* @gx_pattern_accum_alloc.buf_procs to i8*), i64 32, i32 8, i1 false)
  %59 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 32768, i32* %data_size, align 4, !tbaa !35
  %62 = bitcast %struct.gx_band_params_s* %band_params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %62) #1
  %63 = bitcast %struct.gx_band_params_s* %band_params to i8*
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 16, i32 8, i1 false)
  %64 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !104
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 7
  %67 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !105
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  %non_gc_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory30, align 8, !tbaa !104
  %70 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call31 = call i8* %67(%struct.gs_memory_s* %69, i32 32768, i8* %70) #4
  store i8* %call31, i8** %data, align 8, !tbaa !1
  %71 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %71, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store %struct.gx_device_forward_s* null, %struct.gx_device_forward_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.35:                                        ; preds = %if.else
  %72 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %is_clist36 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %72, i32 0, i32 11
  store i32 1, i32* %is_clist36, align 4, !tbaa !103
  %73 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size37 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %73, i32 0, i32 12
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size37, i32 0, i32 0
  %74 = load i32, i32* %x, align 4, !tbaa !34
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 0
  store i32 %74, i32* %BandWidth, align 4, !tbaa !106
  %75 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size38 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %75, i32 0, i32 12
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size38, i32 0, i32 1
  %76 = load i32, i32* %y, align 4, !tbaa !36
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  store i32 %76, i32* %BandHeight, align 4, !tbaa !107
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 2
  store i64 0, i64* %BandBufferSpace, align 8, !tbaa !108
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %78 = load i8*, i8** %data, align 8, !tbaa !1
  %79 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat39 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %79, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat39, i32 0, i32 6
  %80 = load i32, i32* %uses_transparency, align 4, !tbaa !47
  %81 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %call40 = call %union.gx_device_clist_s* @clist_make_accum_device(%struct.gx_device_s* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %78, i32 32768, %struct.gx_device_buf_procs_s* %buf_procs, %struct.gx_band_params_s* %band_params, i32 1, i32 %80, %struct.gs_pattern1_instance_s* %81) #4
  store %union.gx_device_clist_s* %call40, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %82 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %cmp41 = icmp eq %union.gx_device_clist_s* %82, null
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.35
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  %non_gc_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory44, align 8, !tbaa !104
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %85 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory.addr, align 8, !tbaa !1
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !104
  %88 = load i8*, i8** %data, align 8, !tbaa !1
  %89 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %85(%struct.gs_memory_s* %87, i8* %88, i8* %89) #4
  store %struct.gx_device_forward_s* null, %struct.gx_device_forward_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.47:                                        ; preds = %if.end.35
  %90 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %91 = bitcast %union.gx_device_clist_s* %90 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %91, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %92 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %finalize = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %92, i32 0, i32 6
  store void (%struct.gx_device_s*)* @gx_pattern_accum_finalize_cw, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !109
  %93 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %93, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 0
  %open_device49 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  store i32 (%struct.gx_device_s*)* @pattern_clist_open_device, i32 (%struct.gx_device_s*)** %open_device49, align 8, !tbaa !120
  %94 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %95 = bitcast %union.gx_device_clist_s* %94 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %95, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %if.end.47, %if.then.43, %if.then.34
  %96 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.gx_band_params_s* %band_params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %97) #1
  %98 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast %struct.gx_device_buf_procs_s* %buf_procs to i8*
  call void @llvm.lifetime.end(i64 32, i8* %101) #1
  %cleanup.dest.56 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.56, label %cleanup.63 [
    i32 0, label %cleanup.cont.57
  ]

cleanup.cont.57:                                  ; preds = %cleanup.50
  br label %if.end.58

if.end.58:                                        ; preds = %cleanup.cont.57, %cleanup.cont
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %102, i32 0, i32 16
  %103 = load i32, i32* %log2_align_mod, align 4, !tbaa !121
  %104 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %log2_align_mod59 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %104, i32 0, i32 16
  store i32 %103, i32* %log2_align_mod59, align 4, !tbaa !122
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 15
  %106 = load i32, i32* %pad, align 4, !tbaa !124
  %107 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %pad60 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %107, i32 0, i32 15
  store i32 %106, i32* %pad60, align 4, !tbaa !125
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_planar61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 17
  %109 = load i32, i32* %is_planar61, align 4, !tbaa !75
  %110 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %is_planar62 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %110, i32 0, i32 17
  store i32 %109, i32* %is_planar62, align 4, !tbaa !126
  %111 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %112 = bitcast %struct.gx_device_forward_s* %111 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %112) #4
  %113 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %113) #4
  %114 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  store %struct.gx_device_forward_s* %114, %struct.gx_device_forward_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %if.end.58, %cleanup.50, %cleanup
  %115 = bitcast i32* %max_pattern_bitmap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %force_no_clist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %has_tags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %retval
  ret %struct.gx_device_forward_s* %121
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_pattern_size_estimate(%struct.gs_pattern1_instance_s* %pinst, i32 %has_tags) #0 {
entry:
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %has_tags.addr = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %depth = alloca i32, align 4
  %raster = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  store i32 %has_tags, i32* %has_tags.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %1, i32 0, i32 2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !24
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 78
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !87
  store %struct.gx_device_s* %3, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %4 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %5, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %6 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %8 = load i16, i16* %depth1, align 2, !tbaa !77
  %conv = zext i16 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %depth, align 4, !tbaa !35
  %9 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat2 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %11, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat2, i32 0, i32 6
  %12 = load i32, i32* %uses_transparency, align 4, !tbaa !47
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %13, i32 0, i32 12
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size3, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !34
  %15 = load i32, i32* %depth, align 4, !tbaa !35
  %div = sdiv i32 %15, 8
  %add = add nsw i32 %div, 1
  %16 = load i32, i32* %has_tags.addr, align 4, !tbaa !35
  %add4 = add nsw i32 %add, %16
  %mul = mul nsw i32 %14, %add4
  %conv5 = sext i32 %mul to i64
  store i64 %conv5, i64* %raster, align 8, !tbaa !43
  %17 = load i64, i64* %raster, align 8, !tbaa !43
  %18 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %18, i32 0, i32 12
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size6, i32 0, i32 1
  %19 = load i32, i32* %y, align 4, !tbaa !36
  %div7 = sdiv i32 2147483647, %19
  %conv8 = sext i32 %div7 to i64
  %cmp9 = icmp sgt i64 %17, %conv8
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then
  br label %cond.end.17

cond.false.12:                                    ; preds = %if.then
  %20 = load i64, i64* %raster, align 8, !tbaa !43
  %21 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %21, i32 0, i32 12
  %y14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size13, i32 0, i32 1
  %22 = load i32, i32* %y14, align 4, !tbaa !36
  %conv15 = sext i32 %22 to i64
  %mul16 = mul nsw i64 %20, %conv15
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.12, %cond.true.11
  %cond18 = phi i64 [ 2147418112, %cond.true.11 ], [ %mul16, %cond.false.12 ]
  store i64 %cond18, i64* %size, align 8, !tbaa !43
  br label %if.end

if.else:                                          ; preds = %cond.end
  %23 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size19 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %23, i32 0, i32 12
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size19, i32 0, i32 0
  %24 = load i32, i32* %x20, align 4, !tbaa !34
  %25 = load i32, i32* %depth, align 4, !tbaa !35
  %mul21 = mul nsw i32 %24, %25
  %add22 = add nsw i32 %mul21, 7
  %div23 = sdiv i32 %add22, 8
  %conv24 = sext i32 %div23 to i64
  store i64 %conv24, i64* %raster, align 8, !tbaa !43
  %26 = load i64, i64* %raster, align 8, !tbaa !43
  %27 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size25 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %27, i32 0, i32 12
  %y26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size25, i32 0, i32 1
  %28 = load i32, i32* %y26, align 4, !tbaa !36
  %conv27 = sext i32 %28 to i64
  %mul28 = mul nsw i64 %26, %conv27
  store i64 %mul28, i64* %size, align 8, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.17
  %29 = load i64, i64* %size, align 8, !tbaa !43
  %cmp29 = icmp sgt i64 %29, 2147483647
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  store i64 2147483647, i64* %size, align 8, !tbaa !43
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  %30 = load i64, i64* %size, align 8, !tbaa !43
  %conv33 = trunc i64 %30 to i32
  %31 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret i32 %conv33
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @dummy_create_buf_device(%struct.gx_device_s** %pbdev, %struct.gx_device_s* %target, i32 %y, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %mem, %struct.gx_colors_usage_s* %color_usage) #0 {
entry:
  %pbdev.addr = alloca %struct.gx_device_s**, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s** %pbdev, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %1, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %3, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !77
  %conv = zext i16 %6 to i32
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %conv) #4
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %4, %struct.gx_device_memory_s* %call, %struct.gs_memory_s* %7, i32 0, %struct.gx_device_s* %8) #4
  %9 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @dummy_size_buf_device(%struct.gx_device_buf_space_s* %space, %struct.gx_device_s* %target, %struct.gx_render_plane_s* %render_plane, i32 %height, i32 %for_band) #0 {
entry:
  %space.addr = alloca %struct.gx_device_buf_space_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %for_band.addr = alloca i32, align 4
  store %struct.gx_device_buf_space_s* %space, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !35
  store i32 %for_band, i32* %for_band.addr, align 4, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @dummy_setup_buf_device(%struct.gx_device_s* %bdev, i8* %buffer, i32 %bytes_per_line, i8** %line_ptrs, i32 %y, i32 %setup_height, i32 %full_height) #0 {
entry:
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %bytes_per_line.addr = alloca i32, align 4
  %line_ptrs.addr = alloca i8**, align 8
  %y.addr = alloca i32, align 4
  %setup_height.addr = alloca i32, align 4
  %full_height.addr = alloca i32, align 4
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %bytes_per_line, i32* %bytes_per_line.addr, align 4, !tbaa !35
  store i8** %line_ptrs, i8*** %line_ptrs.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store i32 %setup_height, i32* %setup_height.addr, align 4, !tbaa !35
  store i32 %full_height, i32* %full_height.addr, align 4, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @dummy_destroy_buf_device(%struct.gx_device_s* %bdev) #0 {
entry:
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %union.gx_device_clist_s* @clist_make_accum_device(%struct.gx_device_s*, i8*, i8*, i32, %struct.gx_device_buf_procs_s*, %struct.gx_band_params_s*, i32, i32, %struct.gs_pattern1_instance_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gx_pattern_accum_finalize_cw(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cwdev = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %2, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 43
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !127
  %tobool = icmp ne %struct.gx_device_s* %4, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target3, align 8, !tbaa !127
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !128
  %add = add nsw i64 %7, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !128
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target6, align 8, !tbaa !127
  %rc7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 7
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %10 = load i64, i64* %ref_count8, align 8, !tbaa !128
  %tobool9 = icmp ne i64 %10, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target15 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 43
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target15, align 8, !tbaa !127
  %rc16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !129
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 43
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target17, align 8, !tbaa !127
  %rc18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !130
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 43
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %target19, align 8, !tbaa !127
  %19 = bitcast %struct.gx_device_s* %18 to i8*
  call void %13(%struct.gs_memory_s* %16, i8* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %20 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret void
}

declare void @check_device_separable(%struct.gx_device_s*) #2

declare void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gx_pattern_trans_s* @new_pattern_trans_buff(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gx_pattern_trans_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_pattern_trans_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_pattern_trans, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gx_pattern_trans_s*
  store %struct.gx_pattern_trans_s* %4, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %5 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %5, i32 0, i32 1
  store i8* null, i8** %transbytes, align 8, !tbaa !52
  %6 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %pdev14 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %6, i32 0, i32 0
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev14, align 8, !tbaa !56
  %7 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %mem1 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %7, i32 0, i32 2
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %mem1, align 8, !tbaa !55
  %8 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %fill_trans_buffer = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %8, i32 0, i32 3
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %fill_trans_buffer, align 8, !tbaa !57
  %9 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %result, align 8, !tbaa !1
  %10 = bitcast %struct.gx_pattern_trans_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret %struct.gx_pattern_trans_s* %9
}

; Function Attrs: nounwind uwtable
define %struct.gx_pattern_cache_s* @gx_pattern_alloc_cache(%struct.gs_memory_s* %mem, i32 %num_tiles, i64 %max_bits) #0 {
entry:
  %retval = alloca %struct.gx_pattern_cache_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_tiles.addr = alloca i32, align 4
  %max_bits.addr = alloca i64, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %tiles = alloca %struct.gx_color_tile_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_tiles, i32* %num_tiles.addr, align 4, !tbaa !35
  store i64 %max_bits, i64* %max_bits.addr, align 8, !tbaa !43
  %0 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_pattern_cache, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gx_pattern_cache_s*
  store %struct.gx_pattern_cache_s* %4, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %5 = bitcast %struct.gx_color_tile_s** %tiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 12
  %7 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !131
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i32, i32* %num_tiles.addr, align 4, !tbaa !35
  %call2 = call i8* %7(%struct.gs_memory_s* %8, i32 %9, %struct.gs_memory_struct_type_s* @st_color_tile_element, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #4
  %10 = bitcast i8* %call2 to %struct.gx_color_tile_s*
  store %struct.gx_color_tile_s* %10, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_pattern_cache_s* %12, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_color_tile_s* %13, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %18 = bitcast %struct.gx_color_tile_s* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #4
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !83
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %23 = bitcast %struct.gx_pattern_cache_s* %22 to i8*
  call void %20(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #4
  store %struct.gx_pattern_cache_s* null, %struct.gx_pattern_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %25, i32 0, i32 0
  store %struct.gs_memory_s* %24, %struct.gs_memory_s** %memory, align 8, !tbaa !132
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %27 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles7 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %27, i32 0, i32 1
  store %struct.gx_color_tile_s* %26, %struct.gx_color_tile_s** %tiles7, align 8, !tbaa !134
  %28 = load i32, i32* %num_tiles.addr, align 4, !tbaa !35
  %29 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles8 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %29, i32 0, i32 2
  store i32 %28, i32* %num_tiles8, align 4, !tbaa !135
  %30 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %30, i32 0, i32 3
  store i32 0, i32* %tiles_used, align 4, !tbaa !136
  %31 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %31, i32 0, i32 4
  store i32 0, i32* %next, align 4, !tbaa !137
  %32 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %32, i32 0, i32 5
  store i64 0, i64* %bits_used, align 8, !tbaa !138
  %33 = load i64, i64* %max_bits.addr, align 8, !tbaa !43
  %34 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %max_bits9 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %34, i32 0, i32 6
  store i64 %33, i64* %max_bits9, align 8, !tbaa !139
  %35 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %free_all = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %35, i32 0, i32 7
  store void (%struct.gx_pattern_cache_s*)* @pattern_cache_free_all, void (%struct.gx_pattern_cache_s*)** %free_all, align 8, !tbaa !140
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i32, i32* %i, align 4, !tbaa !35
  %37 = load i32, i32* %num_tiles.addr, align 4, !tbaa !35
  %cmp10 = icmp ult i32 %36, %37
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %38, i32 0, i32 0
  store i64 0, i64* %id, align 8, !tbaa !141
  %39 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %39, i32 0, i32 2
  %id11 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id11, align 8, !tbaa !143
  %40 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %uid12 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %40, i32 0, i32 2
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid12, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !144
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %bits_used13 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %41, i32 0, i32 3
  store i32 0, i32* %bits_used13, align 4, !tbaa !145
  %42 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %42, i32 0, i32 7
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !146
  %43 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %43, i32 0, i32 8
  %data14 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  store i8* null, i8** %data14, align 8, !tbaa !147
  %44 = load i32, i32* %i, align 4, !tbaa !35
  %45 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %45, i32 0, i32 15
  store i32 %44, i32* %index, align 4, !tbaa !148
  %46 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %46, i32 0, i32 10
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %cdev, align 8, !tbaa !149
  %47 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %47, i32 0, i32 9
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !150
  %48 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %48, i32 0, i32 17
  store i32 0, i32* %is_planar, align 4, !tbaa !151
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %49, i32 1
  store %struct.gx_color_tile_s* %incdec.ptr, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  store %struct.gx_pattern_cache_s* %51, %struct.gx_pattern_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gx_color_tile_s** %tiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %retval
  ret %struct.gx_pattern_cache_s* %55
}

; Function Attrs: nounwind uwtable
define internal void @pattern_cache_free_all(%struct.gx_pattern_cache_s* %pcache) #0 {
entry:
  %pcache.addr = alloca %struct.gx_pattern_cache_s*, align 8
  store %struct.gx_pattern_cache_s* %pcache, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %0 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  call void @gx_pattern_cache_winnow(%struct.gx_pattern_cache_s* %0, i32 (%struct.gx_color_tile_s*, i8*)* @pattern_cache_choose_all, i8* null) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_pattern_cache_free(%struct.gx_pattern_cache_s* %pcache) #0 {
entry:
  %pcache.addr = alloca %struct.gx_pattern_cache_s*, align 8
  store %struct.gx_pattern_cache_s* %pcache, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %0 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  call void @pattern_cache_free_all(%struct.gx_pattern_cache_s* %0) #4
  %1 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !132
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %4 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !132
  %6 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %6, i32 0, i32 1
  %7 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %8 = bitcast %struct.gx_color_tile_s* %7 to i8*
  call void %3(%struct.gs_memory_s* %5, i8* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  %9 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %tiles2 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %9, i32 0, i32 1
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %tiles2, align 8, !tbaa !134
  %10 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !132
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !83
  %13 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !132
  %15 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_pattern_cache_s* %15 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gx_pattern_cache_s* @gstate_pattern_cache(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 51
  %1 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !152
  ret %struct.gx_pattern_cache_s* %1
}

; Function Attrs: nounwind uwtable
define void @gstate_set_pattern_cache(%struct.gs_state_s* %pgs, %struct.gx_pattern_cache_s* %pcache) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcache.addr = alloca %struct.gx_pattern_cache_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_pattern_cache_s* %pcache, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %0 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %0, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !152
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_pattern_cache_ensure_space(%struct.gs_imager_state_s* %pis, i32 %needed) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %needed.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %needed, i32* %needed.addr, align 4, !tbaa !35
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %2 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 51
  %5 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  store %struct.gx_pattern_cache_s* %5, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %6, i32 0, i32 5
  %7 = load i64, i64* %bits_used, align 8, !tbaa !138
  %8 = load i32, i32* %needed.addr, align 4, !tbaa !35
  %conv = sext i32 %8 to i64
  %add = add i64 %7, %conv
  %9 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %max_bits = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %9, i32 0, i32 6
  %10 = load i64, i64* %max_bits, align 8, !tbaa !139
  %cmp1 = icmp ugt i64 %add, %10
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %bits_used3 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %11, i32 0, i32 5
  %12 = load i64, i64* %bits_used3, align 8, !tbaa !138
  %cmp4 = icmp ne i64 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %14, i32 0, i32 4
  %15 = load i32, i32* %next, align 4, !tbaa !137
  %add6 = add i32 %15, 1
  %16 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %16, i32 0, i32 2
  %17 = load i32, i32* %num_tiles, align 4, !tbaa !135
  %rem = urem i32 %add6, %17
  %18 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %18, i32 0, i32 4
  store i32 %rem, i32* %next7, align 4, !tbaa !137
  %19 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %20 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %20, i32 0, i32 4
  %21 = load i32, i32* %next8, align 4, !tbaa !137
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %22, i32 0, i32 1
  %23 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %23, i64 %idxprom
  call void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %19, %struct.gx_color_tile_s* %arrayidx) #4
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %24 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
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
define internal i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 51
  %1 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  %cmp = icmp eq %struct.gx_pattern_cache_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !154
  %call = call i32 @gx_pat_cache_default_tiles() #4
  %call1 = call i64 @gx_pat_cache_default_bits() #4
  %call2 = call %struct.gx_pattern_cache_s* @gx_pattern_alloc_cache(%struct.gs_memory_s* %4, i32 %call, i64 %call1) #4
  store %struct.gx_pattern_cache_s* %call2, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %5 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_pattern_cache_s* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %6, %struct.gx_pattern_cache_s** %pattern_cache5, align 8, !tbaa !153
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %8 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %cleanup
  %9 = load i32, i32* %retval
  ret i32 %9

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %pcache, %struct.gx_color_tile_s* %ctile) #0 {
entry:
  %pcache.addr = alloca %struct.gx_pattern_cache_s*, align 8
  %ctile.addr = alloca %struct.gx_color_tile_s*, align 8
  %temp_device = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_pattern_cache_s* %pcache, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %ctile, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %temp_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %1, i32 0, i32 0
  %2 = load i64, i64* %id, align 8, !tbaa !141
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.174

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %is_dummy = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %3, i32 0, i32 13
  %4 = load i8, i8* %is_dummy, align 1, !tbaa !155
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end.174, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !132
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %8, i32 0, i32 8
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !147
  %cmp1 = icmp ne i8* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tmask3 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %13, i32 0, i32 8
  %data4 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask3, i32 0, i32 0
  %14 = load i8*, i8** %data4, align 8, !tbaa !147
  call void %11(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0)) #4
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tmask5 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %15, i32 0, i32 8
  %data6 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask5, i32 0, i32 0
  store i8* null, i8** %data6, align 8, !tbaa !147
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %16 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %16, i32 0, i32 7
  %data7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 0
  %17 = load i8*, i8** %data7, align 8, !tbaa !146
  %cmp8 = icmp ne i8* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !83
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tbits12 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %21, i32 0, i32 7
  %data13 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits12, i32 0, i32 0
  %22 = load i8*, i8** %data13, align 8, !tbaa !146
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0)) #4
  %23 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %tbits14 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %23, i32 0, i32 7
  %data15 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits14, i32 0, i32 0
  store i8* null, i8** %data15, align 8, !tbaa !146
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %if.end
  %24 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %24, i32 0, i32 10
  %25 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !149
  %cmp17 = icmp ne %union.gx_device_clist_s* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.87

if.then.18:                                       ; preds = %if.end.16
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev19 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %26, i32 0, i32 10
  %27 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev19, align 8, !tbaa !149
  %common = bitcast %union.gx_device_clist_s* %27 to %struct.gx_device_clist_common_s*
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 49
  store i32 0, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !156
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev20 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %28, i32 0, i32 10
  %29 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev20, align 8, !tbaa !149
  %common21 = bitcast %union.gx_device_clist_s* %29 to %struct.gx_device_clist_common_s*
  %procs22 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common21, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs22, i32 0, i32 4
  %close_device23 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %30 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device23, align 8, !tbaa !158
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i32 0, i32 10
  %32 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev24, align 8, !tbaa !149
  %common25 = bitcast %union.gx_device_clist_s* %32 to %struct.gx_device_clist_common_s*
  %33 = bitcast %struct.gx_device_clist_common_s* %common25 to %struct.gx_device_s*
  %call = call i32 %30(%struct.gx_device_s* %33) #4
  %34 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev26 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %34, i32 0, i32 10
  %35 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev26, align 8, !tbaa !149
  %common27 = bitcast %union.gx_device_clist_s* %35 to %struct.gx_device_clist_common_s*
  %icc_table = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common27, i32 0, i32 61
  %36 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !159
  %37 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev28 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %37, i32 0, i32 10
  %38 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev28, align 8, !tbaa !149
  %common29 = bitcast %union.gx_device_clist_s* %38 to %struct.gx_device_clist_common_s*
  %memory30 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common29, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !160
  %call31 = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %36, %struct.gs_memory_s* %39) #4
  %40 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev32 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %40, i32 0, i32 10
  %41 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev32, align 8, !tbaa !149
  %common33 = bitcast %union.gx_device_clist_s* %41 to %struct.gx_device_clist_common_s*
  %icc_table34 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common33, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table34, align 8, !tbaa !159
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %42 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev35 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %42, i32 0, i32 10
  %43 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev35, align 8, !tbaa !149
  %common36 = bitcast %union.gx_device_clist_s* %43 to %struct.gx_device_clist_common_s*
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common36, i32 0, i32 62
  %44 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !161
  %tobool37 = icmp ne %struct.gsicc_link_cache_s* %44, null
  br i1 %tobool37, label %if.then.38, label %if.end.78

if.then.38:                                       ; preds = %do.body
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.body.39
  br label %do.cond

do.cond:                                          ; preds = %do.body.40
  br label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev41 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %45, i32 0, i32 10
  %46 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev41, align 8, !tbaa !149
  %common42 = bitcast %union.gx_device_clist_s* %46 to %struct.gx_device_clist_common_s*
  %icc_cache_cl43 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common42, i32 0, i32 62
  %47 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl43, align 8, !tbaa !161
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %47, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %48 = load i64, i64* %ref_count, align 8, !tbaa !162
  %add = add nsw i64 %48, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !162
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.end
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  %49 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev46 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %49, i32 0, i32 10
  %50 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev46, align 8, !tbaa !149
  %common47 = bitcast %union.gx_device_clist_s* %50 to %struct.gx_device_clist_common_s*
  %icc_cache_cl48 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common47, i32 0, i32 62
  %51 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl48, align 8, !tbaa !161
  %rc49 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %51, i32 0, i32 2
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %52 = load i64, i64* %ref_count50, align 8, !tbaa !162
  %tobool51 = icmp ne i64 %52, 0
  br i1 %tobool51, label %if.else, label %if.then.52

if.then.52:                                       ; preds = %do.end.45
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %53 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev57 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %53, i32 0, i32 10
  %54 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev57, align 8, !tbaa !149
  %common58 = bitcast %union.gx_device_clist_s* %54 to %struct.gx_device_clist_common_s*
  %icc_cache_cl59 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common58, i32 0, i32 62
  %55 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl59, align 8, !tbaa !161
  %rc60 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %55, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc60, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !164
  %57 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev61 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %57, i32 0, i32 10
  %58 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev61, align 8, !tbaa !149
  %common62 = bitcast %union.gx_device_clist_s* %58 to %struct.gx_device_clist_common_s*
  %icc_cache_cl63 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common62, i32 0, i32 62
  %59 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl63, align 8, !tbaa !161
  %rc64 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %59, i32 0, i32 2
  %memory65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 1
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !165
  %61 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev66 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %61, i32 0, i32 10
  %62 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev66, align 8, !tbaa !149
  %common67 = bitcast %union.gx_device_clist_s* %62 to %struct.gx_device_clist_common_s*
  %icc_cache_cl68 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common67, i32 0, i32 62
  %63 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl68, align 8, !tbaa !161
  %64 = bitcast %struct.gsicc_link_cache_s* %63 to i8*
  call void %56(%struct.gs_memory_s* %60, i8* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)) #4
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.end.56
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  %65 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev71 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %65, i32 0, i32 10
  %66 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev71, align 8, !tbaa !149
  %common72 = bitcast %union.gx_device_clist_s* %66 to %struct.gx_device_clist_common_s*
  %icc_cache_cl73 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common72, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl73, align 8, !tbaa !161
  br label %if.end.77

if.else:                                          ; preds = %do.end.45
  br label %do.body.74

do.body.74:                                       ; preds = %if.else
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.body.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.end.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %do.body
  br label %do.cond.79

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  %67 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev81 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %67, i32 0, i32 10
  %68 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev81, align 8, !tbaa !149
  %common82 = bitcast %union.gx_device_clist_s* %68 to %struct.gx_device_clist_common_s*
  %icc_cache_cl83 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common82, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl83, align 8, !tbaa !161
  %69 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev84 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %69, i32 0, i32 10
  %70 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev84, align 8, !tbaa !149
  %writer = bitcast %union.gx_device_clist_s* %70 to %struct.gx_device_clist_writer_s*
  %pinst = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 100
  store %struct.gs_pattern1_instance_s* null, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !166
  %71 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev85 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %71, i32 0, i32 10
  %72 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev85, align 8, !tbaa !149
  %73 = bitcast %union.gx_device_clist_s* %72 to %struct.gx_device_s*
  store %struct.gx_device_s* %73, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %74, i32 0) #4
  %75 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %cdev86 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %75, i32 0, i32 10
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %cdev86, align 8, !tbaa !149
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.80, %if.end.16
  %76 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %76, i32 0, i32 9
  %77 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !150
  %cmp88 = icmp ne %struct.gx_pattern_trans_s* %77, null
  br i1 %cmp88, label %if.then.89, label %if.end.171

if.then.89:                                       ; preds = %if.end.87
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.body.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %78 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans93 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %78, i32 0, i32 9
  %79 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans93, align 8, !tbaa !150
  %pdev14 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %79, i32 0, i32 0
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev14, align 8, !tbaa !56
  %cmp94 = icmp eq %struct.gx_device_s* %80, null
  br i1 %cmp94, label %if.then.95, label %if.else.115

if.then.95:                                       ; preds = %do.end.92
  %81 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans96 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %81, i32 0, i32 9
  %82 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans96, align 8, !tbaa !150
  %mem97 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %82, i32 0, i32 2
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem97, align 8, !tbaa !55
  %cmp98 = icmp ne %struct.gs_memory_s* %83, null
  br i1 %cmp98, label %if.then.99, label %if.end.107

if.then.99:                                       ; preds = %if.then.95
  %84 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans100 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %84, i32 0, i32 9
  %85 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans100, align 8, !tbaa !150
  %mem101 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %85, i32 0, i32 2
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem101, align 8, !tbaa !55
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %free_object103 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %87 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object103, align 8, !tbaa !83
  %88 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans104 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %88, i32 0, i32 9
  %89 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans104, align 8, !tbaa !150
  %mem105 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %89, i32 0, i32 2
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem105, align 8, !tbaa !55
  %91 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans106 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %91, i32 0, i32 9
  %92 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans106, align 8, !tbaa !150
  %transbytes = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %92, i32 0, i32 1
  %93 = load i8*, i8** %transbytes, align 8, !tbaa !52
  call void %87(%struct.gs_memory_s* %90, i8* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.99, %if.then.95
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs108 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %free_object109 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs108, i32 0, i32 2
  %95 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object109, align 8, !tbaa !83
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %97 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans110 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %97, i32 0, i32 9
  %98 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans110, align 8, !tbaa !150
  %fill_trans_buffer = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %98, i32 0, i32 3
  %99 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %fill_trans_buffer, align 8, !tbaa !57
  %100 = bitcast %struct.gx_pattern_trans_s* %99 to i8*
  call void %95(%struct.gs_memory_s* %96, i8* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0)) #4
  %101 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans111 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %101, i32 0, i32 9
  %102 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans111, align 8, !tbaa !150
  %transbytes112 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %102, i32 0, i32 1
  store i8* null, i8** %transbytes112, align 8, !tbaa !52
  %103 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans113 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %103, i32 0, i32 9
  %104 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans113, align 8, !tbaa !150
  %fill_trans_buffer114 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %104, i32 0, i32 3
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %fill_trans_buffer114, align 8, !tbaa !57
  br label %if.end.166

if.else.115:                                      ; preds = %do.end.92
  %105 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans116 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %105, i32 0, i32 9
  %106 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans116, align 8, !tbaa !150
  %pdev14117 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %106, i32 0, i32 0
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev14117, align 8, !tbaa !56
  %procs118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 42
  %close_device119 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 4
  %close_device120 = bitcast {}** %close_device119 to i32 (%struct.gx_device_s*)**
  %108 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device120, align 8, !tbaa !167
  %109 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans121 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %109, i32 0, i32 9
  %110 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans121, align 8, !tbaa !150
  %pdev14122 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %110, i32 0, i32 0
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev14122, align 8, !tbaa !56
  %call123 = call i32 %108(%struct.gx_device_s* %111) #4
  %112 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans124 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %112, i32 0, i32 9
  %113 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans124, align 8, !tbaa !150
  %pdev14125 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %113, i32 0, i32 0
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev14125, align 8, !tbaa !56
  store %struct.gx_device_s* %114, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %115, i32 0) #4
  br label %do.body.126

do.body.126:                                      ; preds = %if.else.115
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %tobool127 = icmp ne %struct.gx_device_s* %116, null
  br i1 %tobool127, label %if.then.128, label %if.end.157

if.then.128:                                      ; preds = %do.body.126
  br label %do.body.129

do.body.129:                                      ; preds = %if.then.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.body.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %rc133 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 7
  %ref_count134 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc133, i32 0, i32 0
  %118 = load i64, i64* %ref_count134, align 8, !tbaa !128
  %add135 = add nsw i64 %118, -1
  store i64 %add135, i64* %ref_count134, align 8, !tbaa !128
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.end.132
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %rc138 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 7
  %ref_count139 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc138, i32 0, i32 0
  %120 = load i64, i64* %ref_count139, align 8, !tbaa !128
  %tobool140 = icmp ne i64 %120, 0
  br i1 %tobool140, label %if.else.152, label %if.then.141

if.then.141:                                      ; preds = %do.end.137
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  br label %do.body.143

do.body.143:                                      ; preds = %do.body.142
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %rc146 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 7
  %free147 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc146, i32 0, i32 2
  %122 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free147, align 8, !tbaa !129
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %rc148 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 7
  %memory149 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc148, i32 0, i32 1
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory149, align 8, !tbaa !130
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  %126 = bitcast %struct.gx_device_s* %125 to i8*
  call void %122(%struct.gs_memory_s* %124, i8* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)) #4
  br label %do.cond.150

do.cond.150:                                      ; preds = %do.end.145
  br label %do.end.151

do.end.151:                                       ; preds = %do.cond.150
  store %struct.gx_device_s* null, %struct.gx_device_s** %temp_device, align 8, !tbaa !1
  br label %if.end.156

if.else.152:                                      ; preds = %do.end.137
  br label %do.body.153

do.body.153:                                      ; preds = %if.else.152
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.body.153
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.155, %do.end.151
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %do.body.126
  br label %do.cond.158

do.cond.158:                                      ; preds = %if.end.157
  br label %do.end.159

do.end.159:                                       ; preds = %do.cond.158
  %127 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans160 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %127, i32 0, i32 9
  %128 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans160, align 8, !tbaa !150
  %pdev14161 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %128, i32 0, i32 0
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev14161, align 8, !tbaa !56
  %129 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans162 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %129, i32 0, i32 9
  %130 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans162, align 8, !tbaa !150
  %transbytes163 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %130, i32 0, i32 1
  store i8* null, i8** %transbytes163, align 8, !tbaa !52
  %131 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans164 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %131, i32 0, i32 9
  %132 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans164, align 8, !tbaa !150
  %fill_trans_buffer165 = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %132, i32 0, i32 3
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %fill_trans_buffer165, align 8, !tbaa !57
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.159, %if.end.107
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 1
  %free_object168 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs167, i32 0, i32 2
  %134 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object168, align 8, !tbaa !83
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %136 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans169 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %136, i32 0, i32 9
  %137 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %ttrans169, align 8, !tbaa !150
  %138 = bitcast %struct.gx_pattern_trans_s* %137 to i8*
  call void %134(%struct.gs_memory_s* %135, i8* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0)) #4
  %139 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %ttrans170 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %139, i32 0, i32 9
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %ttrans170, align 8, !tbaa !150
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.166, %if.end.87
  %140 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %tiles_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %140, i32 0, i32 3
  %141 = load i32, i32* %tiles_used, align 4, !tbaa !136
  %dec = add i32 %141, -1
  store i32 %dec, i32* %tiles_used, align 4, !tbaa !136
  %142 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %142, i32 0, i32 3
  %143 = load i32, i32* %bits_used, align 4, !tbaa !145
  %conv = sext i32 %143 to i64
  %144 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %bits_used172 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %144, i32 0, i32 5
  %145 = load i64, i64* %bits_used172, align 8, !tbaa !138
  %sub = sub i64 %145, %conv
  store i64 %sub, i64* %bits_used172, align 8, !tbaa !138
  %146 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  %id173 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %146, i32 0, i32 0
  store i64 0, i64* %id173, align 8, !tbaa !141
  %147 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.171, %land.lhs.true, %entry
  %148 = bitcast %struct.gx_device_s** %temp_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_pattern_cache_update_used(%struct.gs_imager_state_s* %pis, i64 %used) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %used.addr = alloca i64, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i64 %used, i64* %used.addr, align 8, !tbaa !43
  %0 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 51
  %2 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  store %struct.gx_pattern_cache_s* %2, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %3 = load i64, i64* %used.addr, align 8, !tbaa !43
  %4 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %4, i32 0, i32 5
  %5 = load i64, i64* %bits_used, align 8, !tbaa !138
  %add = add i64 %5, %3
  store i64 %add, i64* %bits_used, align 8, !tbaa !138
  %6 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %6, i32 0, i32 3
  %7 = load i32, i32* %tiles_used, align 4, !tbaa !136
  %inc = add i32 %7, 1
  store i32 %inc, i32* %tiles_used, align 4, !tbaa !136
  %8 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_cache_add_entry(%struct.gs_imager_state_s* %pis, %struct.gx_device_forward_s* %fdev, %struct.gx_color_tile_s** %pctile) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %fdev.addr = alloca %struct.gx_device_forward_s*, align 8
  %pctile.addr = alloca %struct.gx_color_tile_s**, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %used = alloca i64, align 8
  %mask_used = alloca i64, align 8
  %trans_used = alloca i64, align 8
  %id = alloca i64, align 8
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %code = alloca i32, align 4
  %mmask = alloca %struct.gx_device_memory_s*, align 8
  %mbits = alloca %struct.gx_device_memory_s*, align 8
  %trans = alloca %struct.gx_pattern_trans_s*, align 8
  %size_b = alloca i32, align 4
  %size_c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %y = alloca i32, align 4
  %row = alloca i8*, align 8
  %w = alloca i32, align 4
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %cldev = alloca %struct.gx_device_clist_writer_s*, align 8
  %cdev108 = alloca %union.gx_device_clist_s*, align 8
  %cwdev = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_forward_s* %fdev, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s** %pctile, %struct.gx_color_tile_s*** %pctile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %used, align 8, !tbaa !43
  %3 = bitcast i64* %mask_used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %mask_used, align 8, !tbaa !43
  %4 = bitcast i64* %trans_used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %trans_used, align 8, !tbaa !43
  %5 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %9 = bitcast %struct.gx_device_memory_s** %mmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_memory_s** %mbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %11 = bitcast %struct.gx_pattern_trans_s** %trans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %12 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 51
  %17 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  store %struct.gx_pattern_cache_s* %17, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %18 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %18, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %open_device1 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %19 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device1, align 8, !tbaa !168
  %cmp2 = icmp ne i32 (%struct.gx_device_s*)* %19, @pattern_clist_open_device
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %20 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_forward_s* %21 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %22, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %23 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %23, i32 0, i32 46
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  store %struct.gx_device_memory_s* %24, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %25 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %25, i32 0, i32 47
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  store %struct.gx_device_memory_s* %26, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %27 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %instance = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %27, i32 0, i32 45
  %28 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %instance, align 8, !tbaa !20
  store %struct.gs_pattern1_instance_s* %28, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %29 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %29, i32 0, i32 48
  %30 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff, align 8, !tbaa !51
  store %struct.gx_pattern_trans_s* %30, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_device_memory_s* %31, null
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %if.then.3
  %32 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %y, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.then.5
  %33 = load i32, i32* %y, align 4, !tbaa !35
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height, align 4, !tbaa !69
  %cmp6 = icmp slt i32 %33, %35
  br i1 %cmp6, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %36 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %y, align 4, !tbaa !35
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 52
  %39 = load i8**, i8*** %line_ptrs, align 8, !tbaa !169
  %arrayidx = getelementptr inbounds i8*, i8** %39, i64 %idxprom
  %40 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %40, i8** %row, align 8, !tbaa !1
  %41 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 13
  %43 = load i32, i32* %width, align 4, !tbaa !60
  store i32 %43, i32* %w, align 4, !tbaa !35
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %44 = load i32, i32* %w, align 4, !tbaa !35
  %cmp8 = icmp sgt i32 %44, 8
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %row, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !41
  %conv = zext i8 %46 to i32
  %cmp10 = icmp ne i32 %conv, 255
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.9
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %47 = load i32, i32* %w, align 4, !tbaa !35
  %sub = sub nsw i32 %47, 8
  store i32 %sub, i32* %w, align 4, !tbaa !35
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %48 = load i8*, i8** %row, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !41
  %conv14 = zext i8 %49 to i32
  %50 = load i32, i32* %w, align 4, !tbaa !35
  %shr = ashr i32 255, %50
  %or = or i32 %conv14, %shr
  %cmp15 = icmp ne i32 %or, 255
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.17, %if.then.12, %if.end.18
  %51 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %keep
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.20

for.inc.20:                                       ; preds = %cleanup.cont
  %53 = load i32, i32* %y, align 4, !tbaa !35
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %y, align 4, !tbaa !35
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  br label %keep

keep:                                             ; preds = %for.end.21, %cleanup
  %54 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %if.end.22

if.end.22:                                        ; preds = %keep, %if.then.3
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.gx_device_memory_s* %55, null
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %width26 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 13
  %58 = load i32, i32* %width26, align 4, !tbaa !60
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 14
  %60 = load i32, i32* %height27, align 4, !tbaa !69
  %call28 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %56, i32 %58, i32 %60, i64* %used) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.22
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %cmp30 = icmp ne %struct.gx_device_memory_s* %61, null
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.29
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %width33 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 13
  %64 = load i32, i32* %width33, align 4, !tbaa !60
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %height34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height34, align 4, !tbaa !69
  %call35 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %62, i32 %64, i32 %66, i64* %mask_used) #4
  %67 = load i64, i64* %mask_used, align 8, !tbaa !43
  %68 = load i64, i64* %used, align 8, !tbaa !43
  %add = add i64 %68, %67
  store i64 %add, i64* %used, align 8, !tbaa !43
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.29
  %69 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.gx_pattern_trans_s* %69, null
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.36
  %70 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %70, i32 0, i32 6
  %71 = load i32, i32* %planestride, align 4, !tbaa !170
  %72 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %n_chan = getelementptr inbounds %struct.gx_pattern_trans_s, %struct.gx_pattern_trans_s* %72, i32 0, i32 7
  %73 = load i32, i32* %n_chan, align 4, !tbaa !58
  %mul = mul nsw i32 %71, %73
  %conv40 = sext i32 %mul to i64
  store i64 %conv40, i64* %trans_used, align 8, !tbaa !43
  %74 = load i64, i64* %trans_used, align 8, !tbaa !43
  %75 = load i64, i64* %used, align 8, !tbaa !43
  %add41 = add i64 %75, %74
  store i64 %add41, i64* %used, align 8, !tbaa !43
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.36
  %76 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %if.end.65

if.else:                                          ; preds = %if.end
  %77 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gx_device_forward_s* %78 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %79, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_clist_writer_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %82 = bitcast %union.gx_device_clist_s* %81 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %82, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !1
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !1
  %call43 = call i32 @clist_end_page(%struct.gx_device_clist_writer_s* %83) #4
  store i32 %call43, i32* %code, align 4, !tbaa !35
  %84 = load i32, i32* %code, align 4, !tbaa !35
  %cmp44 = icmp slt i32 %84, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else
  %85 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.47:                                        ; preds = %if.else
  %86 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %86 to %struct.gx_device_clist_writer_s*
  %pinst48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 100
  %87 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst48, align 8, !tbaa !166
  store %struct.gs_pattern1_instance_s* %87, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %88 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %call49 = call i32 @clist_data_size(%union.gx_device_clist_s* %88, i32 0) #4
  store i32 %call49, i32* %size_b, align 4, !tbaa !35
  %89 = load i32, i32* %size_b, align 4, !tbaa !35
  %cmp50 = icmp slt i32 %89, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.53:                                        ; preds = %if.end.47
  %90 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %call54 = call i32 @clist_data_size(%union.gx_device_clist_s* %90, i32 1) #4
  store i32 %call54, i32* %size_c, align 4, !tbaa !35
  %91 = load i32, i32* %size_c, align 4, !tbaa !35
  %cmp55 = icmp slt i32 %91, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.58:                                        ; preds = %if.end.53
  %92 = load i32, i32* %size_b, align 4, !tbaa !35
  %93 = load i32, i32* %size_c, align 4, !tbaa !35
  %add59 = add nsw i32 %92, %93
  %conv60 = sext i32 %add59 to i64
  store i64 %conv60, i64* %used, align 8, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %if.end.58, %if.then.57, %if.then.52, %if.then.46
  %94 = bitcast %struct.gx_device_clist_writer_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.126 [
    i32 0, label %cleanup.cont.64
  ]

cleanup.cont.64:                                  ; preds = %cleanup.61
  br label %if.end.65

if.end.65:                                        ; preds = %cleanup.cont.64, %if.end.42
  %96 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %id66 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %96, i32 0, i32 13
  %97 = load i64, i64* %id66, align 8, !tbaa !171
  store i64 %97, i64* %id, align 8, !tbaa !43
  %98 = load i64, i64* %id, align 8, !tbaa !43
  %99 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %99, i32 0, i32 2
  %100 = load i32, i32* %num_tiles, align 4, !tbaa !135
  %conv67 = zext i32 %100 to i64
  %rem = urem i64 %98, %conv67
  %101 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %101, i32 0, i32 1
  %102 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %arrayidx68 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %102, i64 %rem
  store %struct.gx_color_tile_s* %arrayidx68, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %103 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %104 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  call void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %103, %struct.gx_color_tile_s* %104) #4
  %105 = load i64, i64* %id, align 8, !tbaa !43
  %106 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %id69 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %106, i32 0, i32 0
  store i64 %105, i64* %id69, align 8, !tbaa !141
  %107 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %107, i32 0, i32 9
  %108 = load i32, i32* %is_planar, align 4, !tbaa !100
  %109 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_planar70 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %109, i32 0, i32 17
  store i32 %108, i32* %is_planar70, align 4, !tbaa !151
  %110 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %110, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %111 = load i16, i16* %depth, align 2, !tbaa !172
  %conv71 = zext i16 %111 to i32
  %112 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %depth72 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %112, i32 0, i32 1
  store i32 %conv71, i32* %depth72, align 4, !tbaa !173
  %113 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %113, i32 0, i32 2
  %114 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %114, i32 0, i32 4
  %uid73 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 2
  %115 = bitcast %struct.gs_uid_s* %uid to i8*
  %116 = bitcast %struct.gs_uid_s* %uid73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 16, i32 8, i1 false), !tbaa.struct !174
  %117 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat74 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %117, i32 0, i32 4
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat74, i32 0, i32 5
  %118 = load i32, i32* %TilingType, align 4, !tbaa !175
  %119 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %119, i32 0, i32 4
  store i32 %118, i32* %tiling_type, align 4, !tbaa !176
  %120 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %120, i32 0, i32 5
  %121 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %step_matrix75 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %121, i32 0, i32 5
  %122 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %123 = bitcast %struct.gs_matrix_s* %step_matrix75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 24, i32 4, i1 false), !tbaa.struct !177
  %124 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %124, i32 0, i32 6
  %125 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %bbox76 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %125, i32 0, i32 6
  %126 = bitcast %struct.gs_rect_s* %bbox to i8*
  %127 = bitcast %struct.gs_rect_s* %bbox76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 32, i32 8, i1 false), !tbaa.struct !178
  %128 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %128, i32 0, i32 7
  %129 = load i32, i32* %is_simple, align 4, !tbaa !180
  %conv77 = trunc i32 %129 to i8
  %130 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_simple78 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %130, i32 0, i32 11
  store i8 %conv77, i8* %is_simple78, align 1, !tbaa !181
  %131 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %131, i32 0, i32 8
  %132 = load i32, i32* %has_overlap, align 4, !tbaa !182
  %conv79 = trunc i32 %132 to i8
  %133 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %has_overlap80 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %133, i32 0, i32 12
  store i8 %conv79, i8* %has_overlap80, align 1, !tbaa !183
  %134 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_dummy = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %134, i32 0, i32 13
  store i8 0, i8* %is_dummy, align 1, !tbaa !155
  %135 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %135, i32 0, i32 42
  %open_device82 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs81, i32 0, i32 0
  %open_device83 = bitcast {}** %open_device82 to i32 (%struct.gx_device_s*)**
  %136 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device83, align 8, !tbaa !168
  %cmp84 = icmp ne i32 (%struct.gx_device_s*)* %136, @pattern_clist_open_device
  br i1 %cmp84, label %if.then.86, label %if.else.107

if.then.86:                                       ; preds = %if.end.65
  %137 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %cmp87 = icmp ne %struct.gx_device_memory_s* %137, null
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.then.86
  %138 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %138, i32 0, i32 7
  %139 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %140 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %140, i32 0, i32 1
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !154
  %call90 = call i64 @gs_next_ids(%struct.gs_memory_s* %141, i32 1) #4
  call void @make_bitmap(%struct.gx_strip_bitmap_s* %tbits, %struct.gx_device_memory_s* %139, i64 %call90) #4
  %142 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mbits, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %142, i32 0, i32 46
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !70
  br label %if.end.93

if.else.91:                                       ; preds = %if.then.86
  %143 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits92 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %143, i32 0, i32 7
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits92, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !146
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  %144 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %cmp94 = icmp ne %struct.gx_device_memory_s* %144, null
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %if.end.93
  %145 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %145, i32 0, i32 8
  %146 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %147 = load i64, i64* %id, align 8, !tbaa !43
  call void @make_bitmap(%struct.gx_strip_bitmap_s* %tmask, %struct.gx_device_memory_s* %146, i64 %147) #4
  %148 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mmask, align 8, !tbaa !1
  %bitmap_memory97 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %148, i32 0, i32 46
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %bitmap_memory97, align 8, !tbaa !70
  br label %if.end.101

if.else.98:                                       ; preds = %if.end.93
  %149 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask99 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %149, i32 0, i32 8
  %data100 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask99, i32 0, i32 0
  store i8* null, i8** %data100, align 8, !tbaa !147
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.96
  %150 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %cmp102 = icmp ne %struct.gx_pattern_trans_s* %150, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  br label %do.body

do.body:                                          ; preds = %if.then.104
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %151 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %trans, align 8, !tbaa !1
  %152 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %152, i32 0, i32 9
  store %struct.gx_pattern_trans_s* %151, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !150
  br label %if.end.105

if.end.105:                                       ; preds = %do.end, %if.end.101
  %153 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %cdev106 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %153, i32 0, i32 10
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %cdev106, align 8, !tbaa !149
  br label %if.end.124

if.else.107:                                      ; preds = %if.end.65
  %154 = bitcast %union.gx_device_clist_s** %cdev108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %156 = bitcast %struct.gx_device_forward_s* %155 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %156, %union.gx_device_clist_s** %cdev108, align 8, !tbaa !1
  %157 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %159 = bitcast %struct.gx_device_forward_s* %158 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %159, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %160 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits109 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %160, i32 0, i32 7
  %data110 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits109, i32 0, i32 0
  store i8* null, i8** %data110, align 8, !tbaa !146
  %161 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits111 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %161, i32 0, i32 7
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits111, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !184
  %162 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits112 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %162, i32 0, i32 7
  %size113 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits112, i32 0, i32 2
  %y114 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size113, i32 0, i32 1
  store i32 0, i32* %y114, align 4, !tbaa !185
  %163 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask115 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %163, i32 0, i32 8
  %data116 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask115, i32 0, i32 0
  store i8* null, i8** %data116, align 8, !tbaa !147
  %164 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask117 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %164, i32 0, i32 8
  %size118 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask117, i32 0, i32 2
  %x119 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size118, i32 0, i32 0
  store i32 0, i32* %x119, align 4, !tbaa !186
  %165 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask120 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %165, i32 0, i32 8
  %size121 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask120, i32 0, i32 2
  %y122 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size121, i32 0, i32 1
  store i32 0, i32* %y122, align 4, !tbaa !187
  %166 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev108, align 8, !tbaa !1
  %167 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %cdev123 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %167, i32 0, i32 10
  store %union.gx_device_clist_s* %166, %union.gx_device_clist_s** %cdev123, align 8, !tbaa !149
  %168 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %168, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !188
  %169 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast %union.gx_device_clist_s** %cdev108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.107, %if.end.105
  %171 = load i64, i64* %used, align 8, !tbaa !43
  %conv125 = trunc i64 %171 to i32
  %172 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %172, i32 0, i32 3
  store i32 %conv125, i32* %bits_used, align 4, !tbaa !145
  %173 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %174 = load i64, i64* %used, align 8, !tbaa !43
  call void @gx_pattern_cache_update_used(%struct.gs_imager_state_s* %173, i64 %174) #4
  %175 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %176 = load %struct.gx_color_tile_s**, %struct.gx_color_tile_s*** %pctile.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %175, %struct.gx_color_tile_s** %176, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126

cleanup.126:                                      ; preds = %if.end.124, %cleanup.61, %if.then
  %177 = bitcast i32* %size_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %size_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast %struct.gx_pattern_trans_s** %trans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.gx_device_memory_s** %mbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gx_device_memory_s** %mmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i64* %trans_used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i64* %mask_used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i64* %used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = load i32, i32* %retval
  ret i32 %190

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #2

declare i32 @clist_end_page(%struct.gx_device_clist_writer_s*) #2

declare i32 @clist_data_size(%union.gx_device_clist_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @make_bitmap(%struct.gx_strip_bitmap_s* %pbm, %struct.gx_device_memory_s* %mdev, i64 %id) #0 {
entry:
  %pbm.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %id.addr = alloca i64, align 8
  store %struct.gx_strip_bitmap_s* %pbm, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !43
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i32 0, i32 45
  %1 = load i8*, i8** %base, align 8, !tbaa !71
  %2 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %2, i32 0, i32 0
  store i8* %1, i8** %data, align 8, !tbaa !189
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 44
  %4 = load i32, i32* %raster, align 4, !tbaa !73
  %5 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %raster1 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %5, i32 0, i32 1
  store i32 %4, i32* %raster1, align 4, !tbaa !190
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4, !tbaa !60
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %8, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %7, i32* %x, align 4, !tbaa !191
  %conv = trunc i32 %7 to i16
  %9 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %9, i32 0, i32 4
  store i16 %conv, i16* %rep_width, align 2, !tbaa !192
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 14
  %11 = load i32, i32* %height, align 4, !tbaa !69
  %12 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %12, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size2, i32 0, i32 1
  store i32 %11, i32* %y, align 4, !tbaa !193
  %conv3 = trunc i32 %11 to i16
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 5
  store i16 %conv3, i16* %rep_height, align 2, !tbaa !194
  %14 = load i64, i64* %id.addr, align 8, !tbaa !43
  %15 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %id4 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %15, i32 0, i32 3
  store i64 %14, i64* %id4, align 8, !tbaa !195
  %16 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %16, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !196
  %17 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %17, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !197
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 17
  %19 = load i32, i32* %is_planar, align 4, !tbaa !198
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %21 = load i32, i32* %num_components, align 4, !tbaa !199
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 1, %cond.false ]
  %22 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %pbm.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %22, i32 0, i32 8
  store i32 %cond, i32* %num_planes, align 4, !tbaa !200
  ret void
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_cache_get_entry(%struct.gs_imager_state_s* %pis, i64 %id, %struct.gx_color_tile_s** %pctile) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %id.addr = alloca i64, align 8
  %pctile.addr = alloca %struct.gx_color_tile_s**, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !43
  store %struct.gx_color_tile_s** %pctile, %struct.gx_color_tile_s*** %pctile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %4 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 51
  %7 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  store %struct.gx_pattern_cache_s* %7, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %8 = load i64, i64* %id.addr, align 8, !tbaa !43
  %9 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %9, i32 0, i32 2
  %10 = load i32, i32* %num_tiles, align 4, !tbaa !135
  %conv = zext i32 %10 to i64
  %rem = urem i64 %8, %conv
  %11 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %11, i32 0, i32 1
  %12 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %12, i64 %rem
  store %struct.gx_color_tile_s* %arrayidx, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 51
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache1, align 8, !tbaa !153
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  call void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %14, %struct.gx_color_tile_s* %15) #4
  %16 = load i64, i64* %id.addr, align 8, !tbaa !43
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %id2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 0
  store i64 %16, i64* %id2, align 8, !tbaa !141
  %18 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %19 = load %struct.gx_color_tile_s**, %struct.gx_color_tile_s*** %pctile.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %18, %struct.gx_color_tile_s** %19, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_tile_is_clist(%struct.gx_color_tile_s* %ptile) #0 {
entry:
  %ptile.addr = alloca %struct.gx_color_tile_s*, align 8
  store %struct.gx_color_tile_s* %ptile, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %0 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_color_tile_s* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ptile.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %1, i32 0, i32 10
  %2 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !149
  %cmp1 = icmp ne %union.gx_device_clist_s* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_cache_add_dummy_entry(%struct.gs_imager_state_s* %pis, %struct.gs_pattern1_instance_s* %pinst, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %depth.addr = alloca i32, align 4
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %id = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %3, i32 0, i32 13
  %4 = load i64, i64* %id1, align 8, !tbaa !171
  store i64 %4, i64* %id, align 8, !tbaa !43
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %7 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 51
  %10 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  store %struct.gx_pattern_cache_s* %10, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %11 = load i64, i64* %id, align 8, !tbaa !43
  %12 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %12, i32 0, i32 2
  %13 = load i32, i32* %num_tiles, align 4, !tbaa !135
  %conv = zext i32 %13 to i64
  %rem = urem i64 %11, %conv
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %14, i32 0, i32 1
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %15, i64 %rem
  store %struct.gx_color_tile_s* %arrayidx, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %16 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  call void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %16, %struct.gx_color_tile_s* %17) #4
  %18 = load i64, i64* %id, align 8, !tbaa !43
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %id2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %19, i32 0, i32 0
  store i64 %18, i64* %id2, align 8, !tbaa !141
  %20 = load i32, i32* %depth.addr, align 4, !tbaa !35
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %depth3 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %21, i32 0, i32 1
  store i32 %20, i32* %depth3, align 4, !tbaa !173
  %22 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %22, i32 0, i32 2
  %23 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %23, i32 0, i32 4
  %uid4 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 2
  %24 = bitcast %struct.gs_uid_s* %uid to i8*
  %25 = bitcast %struct.gs_uid_s* %uid4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false), !tbaa.struct !174
  %26 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat5 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %26, i32 0, i32 4
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat5, i32 0, i32 5
  %27 = load i32, i32* %TilingType, align 4, !tbaa !175
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %28, i32 0, i32 4
  store i32 %27, i32* %tiling_type, align 4, !tbaa !176
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 5
  %30 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix6 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %30, i32 0, i32 5
  %31 = bitcast %struct.gs_matrix_s* %step_matrix to i8*
  %32 = bitcast %struct.gs_matrix_s* %step_matrix6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 24, i32 4, i1 false), !tbaa.struct !177
  %33 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %33, i32 0, i32 6
  %34 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %34, i32 0, i32 6
  %35 = bitcast %struct.gs_rect_s* %bbox to i8*
  %36 = bitcast %struct.gs_rect_s* %bbox7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false), !tbaa.struct !178
  %37 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %is_simple = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %37, i32 0, i32 7
  %38 = load i32, i32* %is_simple, align 4, !tbaa !180
  %conv8 = trunc i32 %38 to i8
  %39 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_simple9 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %39, i32 0, i32 11
  store i8 %conv8, i8* %is_simple9, align 1, !tbaa !181
  %40 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %has_overlap = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %40, i32 0, i32 8
  %41 = load i32, i32* %has_overlap, align 4, !tbaa !182
  %conv10 = trunc i32 %41 to i8
  %42 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %has_overlap11 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %42, i32 0, i32 12
  store i8 %conv10, i8* %has_overlap11, align 1, !tbaa !183
  %43 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %is_dummy = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %43, i32 0, i32 13
  store i8 1, i8* %is_dummy, align 1, !tbaa !155
  %44 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %44, i32 0, i32 7
  %45 = bitcast %struct.gx_strip_bitmap_s* %tbits to i8*
  %call12 = call i8* @memset(i8* %45, i32 0, i64 48) #5
  %46 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits13 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %46, i32 0, i32 7
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits13, i32 0, i32 2
  %47 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %47, i32 0, i32 12
  %48 = bitcast %struct.gs_int_point_s* %size to i8*
  %49 = bitcast %struct.gs_int_point_s* %size14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 4, i1 false), !tbaa.struct !201
  %50 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tbits15 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %50, i32 0, i32 7
  %id16 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits15, i32 0, i32 3
  store i64 0, i64* %id16, align 8, !tbaa !202
  %51 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %51, i32 0, i32 8
  %52 = bitcast %struct.gx_strip_bitmap_s* %tmask to i8*
  %call17 = call i8* @memset(i8* %52, i32 0, i64 48) #5
  %53 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %53, i32 0, i32 10
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %cdev, align 8, !tbaa !149
  %54 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %ttrans = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %54, i32 0, i32 9
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %ttrans, align 8, !tbaa !150
  %55 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %bits_used = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %55, i32 0, i32 3
  store i32 0, i32* %bits_used, align 4, !tbaa !145
  %56 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %tiles_used = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %56, i32 0, i32 3
  %57 = load i32, i32* %tiles_used, align 4, !tbaa !136
  %inc = add i32 %57, 1
  store i32 %inc, i32* %tiles_used, align 4, !tbaa !136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define void @gx_pattern_cache_winnow(%struct.gx_pattern_cache_s* %pcache, i32 (%struct.gx_color_tile_s*, i8*)* %proc, i8* %proc_data) #0 {
entry:
  %pcache.addr = alloca %struct.gx_pattern_cache_s*, align 8
  %proc.addr = alloca i32 (%struct.gx_color_tile_s*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  store %struct.gx_pattern_cache_s* %pcache, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  store i32 (%struct.gx_color_tile_s*, i8*)* %proc, i32 (%struct.gx_color_tile_s*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_pattern_cache_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !35
  %3 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %num_tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %3, i32 0, i32 2
  %4 = load i32, i32* %num_tiles, align 4, !tbaa !135
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %7, i32 0, i32 1
  %8 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tiles, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %8, i64 %idxprom
  store %struct.gx_color_tile_s* %arrayidx, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %9 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %9, i32 0, i32 0
  %10 = load i64, i64* %id, align 8, !tbaa !141
  %cmp2 = icmp ne i64 %10, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32 (%struct.gx_color_tile_s*, i8*)*, i32 (%struct.gx_color_tile_s*, i8*)** %proc.addr, align 8, !tbaa !1
  %12 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  %13 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_color_tile_s* %12, i8* %13) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache.addr, align 8, !tbaa !1
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %ctile, align 8, !tbaa !1
  call void @gx_pattern_cache_free_entry(%struct.gx_pattern_cache_s* %14, %struct.gx_color_tile_s* %15) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %for.body
  %16 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %17 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
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
define i32 @gx_erase_colored_pattern(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rect = alloca %struct.gs_rect_s, align 8
  %mask = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_pattern_accum_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #4
  %3 = bitcast %struct.gx_device_s* %call to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %3, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_gsave(%struct.gs_state_s* %4) #4
  store i32 %call1, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_setgray(%struct.gs_state_s* %6, double 1.000000e+00) #4
  store i32 %call2, i32* %code, align 4, !tbaa !35
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.19

if.then.4:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 10
  store i32 252, i32* %log_op, align 4, !tbaa !203
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !204
  %p5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p5, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !205
  %10 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !37
  %conv = sitofp i32 %11 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv, double* %x6, align 8, !tbaa !206
  %12 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height, align 4, !tbaa !38
  %conv7 = sitofp i32 %13 to double
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 1
  store double %conv7, double* %y9, align 8, !tbaa !207
  %14 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %mask10 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %14, i32 0, i32 47
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask10, align 8, !tbaa !85
  store %struct.gx_device_memory_s* %15, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %16 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %mask11 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %16, i32 0, i32 47
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mask11, align 8, !tbaa !85
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_rectfill(%struct.gs_state_s* %17, %struct.gs_rect_s* %rect, i32 1) #4
  store i32 %call12, i32* %code, align 4, !tbaa !35
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %19 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %mask13 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %19, i32 0, i32 47
  store %struct.gx_device_memory_s* %18, %struct.gx_device_memory_s** %mask13, align 8, !tbaa !85
  %20 = load i32, i32* %code, align 4, !tbaa !35
  %cmp14 = icmp slt i32 %20, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.4
  %21 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16
  %22 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.end
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call20 = call i32 @gs_grestore_only(%struct.gs_state_s* %24) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.19, %cleanup, %if.then
  %25 = bitcast %struct.gx_device_pattern_accum_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setgray(%struct.gs_state_s*, double) #2

declare i32 @gs_rectfill(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #2

declare i32 @gs_grestore_only(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_pattern_load(%struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %adev = alloca %struct.gx_device_forward_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %has_tags = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cdev = alloca %union.gx_device_clist_s*, align 8
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gx_device_forward_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gx_device_forward_s* null, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !208
  %4 = bitcast %struct.gs_pattern_instance_s* %3 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %4, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %5 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !154
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast i32* %has_tags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 40
  %12 = load i32, i32* %graphics_type_tag, align 4, !tbaa !98
  %and = and i32 %12, 128
  store i32 %and, i32* %has_tags, align 4, !tbaa !35
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 51
  %15 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !153
  %cmp = icmp eq %struct.gx_pattern_cache_s* %15, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @ensure_pattern_cache(%struct.gs_imager_state_s* %16) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i32, i32* %select.addr, align 4, !tbaa !41
  %call4 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %18, %struct.gs_imager_state_s* %19, %struct.gx_device_s* %20, i32 %21) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %23 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %24 = load i32, i32* %has_tags, align 4, !tbaa !35
  %call7 = call i32 @gx_pattern_size_estimate(%struct.gs_pattern1_instance_s* %23, i32 %24) #4
  call void @gx_pattern_cache_ensure_space(%struct.gs_imager_state_s* %22, i32 %call7) #4
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 51
  %27 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache8, align 8, !tbaa !153
  %memory9 = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %27, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !132
  %29 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %call10 = call %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s* %25, %struct.gs_memory_s* %28, %struct.gs_pattern1_instance_s* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #4
  store %struct.gx_device_forward_s* %call10, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %30 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gx_device_forward_s* %30, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.6
  %31 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %31, %struct.gx_device_s* %32) #4
  %33 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %33, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %open_device14 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %34 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device14, align 8, !tbaa !168
  %35 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_forward_s* %35 to %struct.gx_device_s*
  %call15 = call i32 %34(%struct.gx_device_s* %36) #4
  store i32 %call15, i32* %code, align 4, !tbaa !35
  %37 = load i32, i32* %code, align 4, !tbaa !35
  %cmp16 = icmp slt i32 %37, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  br label %fail

if.end.18:                                        ; preds = %if.end.13
  %38 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %saved19 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %38, i32 0, i32 2
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %saved19, align 8, !tbaa !24
  %call20 = call %struct.gs_state_s* @gs_gstate(%struct.gs_state_s* %39) #4
  store %struct.gs_state_s* %call20, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.gs_state_s* %40, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -25, i32* %code, align 4, !tbaa !35
  br label %fail

if.end.23:                                        ; preds = %if.end.18
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %pattern_cache24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 51
  %42 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache24, align 8, !tbaa !152
  %cmp25 = icmp eq %struct.gx_pattern_cache_s* %42, null
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pattern_cache27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 51
  %44 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache27, align 8, !tbaa !153
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %pattern_cache28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %44, %struct.gx_pattern_cache_s** %pattern_cache28, align 8, !tbaa !152
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.23
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %47 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_forward_s* %47 to %struct.gx_device_s*
  %call30 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %46, %struct.gx_device_s* %48) #4
  %49 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %49, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 6
  %50 = load i32, i32* %uses_transparency, align 4, !tbaa !47
  %tobool31 = icmp ne i32 %50, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.29
  br label %do.body

do.body:                                          ; preds = %if.then.32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call33 = call i32 @gs_push_pdf14trans_device(%struct.gs_state_s* %51, i32 1) #4
  store i32 %call33, i32* %code, align 4, !tbaa !35
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.end
  %52 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %do.end
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 78
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !87
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !214
  br label %if.end.46

if.else:                                          ; preds = %if.end.29
  %55 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat37 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %55, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat37, i32 0, i32 4
  %56 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp38 = icmp eq i32 %56, 1
  br i1 %cmp38, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.else
  %57 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %57, i32 0, i32 11
  %58 = load i32, i32* %is_clist, align 4, !tbaa !103
  %tobool39 = icmp ne i32 %58, 0
  br i1 %tobool39, label %if.end.45, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call41 = call i32 @gx_erase_colored_pattern(%struct.gs_state_s* %59) #4
  store i32 %call41, i32* %code, align 4, !tbaa !35
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %60 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.36
  %61 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat47 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %61, i32 0, i32 4
  %PaintProc = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat47, i32 0, i32 10
  %62 = load i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)** %PaintProc, align 8, !tbaa !215
  %63 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor48 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %63, i32 0, i32 4
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call49 = call i32 %62(%struct.gs_client_color_s* %ccolor48, %struct.gs_state_s* %64) #4
  store i32 %call49, i32* %code, align 4, !tbaa !35
  %65 = load i32, i32* %code, align 4, !tbaa !35
  %cmp50 = icmp slt i32 %65, 0
  br i1 %cmp50, label %if.then.51, label %if.end.74

if.then.51:                                       ; preds = %if.end.46
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %device52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 78
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %device52, align 8, !tbaa !87
  call void @gx_device_retain(%struct.gx_device_s* %67, i32 0) #4
  %68 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat53 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %68, i32 0, i32 4
  %uses_transparency54 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat53, i32 0, i32 6
  %69 = load i32, i32* %uses_transparency54, align 4, !tbaa !47
  %tobool55 = icmp ne i32 %69, 0
  br i1 %tobool55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.then.51
  %70 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_clist57 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %70, i32 0, i32 11
  %71 = load i32, i32* %is_clist57, align 4, !tbaa !103
  %cmp58 = icmp eq i32 %71, 0
  br i1 %cmp58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.then.56
  %72 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %73 = bitcast %struct.gx_device_forward_s* %72 to %struct.gx_device_pattern_accum_s*
  %bitmap_memory = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %73, i32 0, i32 44
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !22
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 2
  %75 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %76 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_forward_s* %76 to %struct.gx_device_pattern_accum_s*
  %bitmap_memory61 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %77, i32 0, i32 44
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory61, align 8, !tbaa !22
  %79 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_forward_s* %79 to %struct.gx_device_pattern_accum_s*
  %transbuff = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %80, i32 0, i32 48
  %81 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff, align 8, !tbaa !51
  %82 = bitcast %struct.gx_pattern_trans_s* %81 to i8*
  call void %75(%struct.gs_memory_s* %78, i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.then.56
  %83 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %procs63 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %83, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs63, i32 0, i32 4
  %close_device64 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %84 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device64, align 8, !tbaa !216
  %85 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %86 = bitcast %struct.gx_device_forward_s* %85 to %struct.gx_device_s*
  %call65 = call i32 %84(%struct.gx_device_s* %86) #4
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.62, %if.then.51
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %device67 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 78
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %device67, align 8, !tbaa !87
  %procs68 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 42
  %close_device69 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs68, i32 0, i32 4
  %close_device70 = bitcast {}** %close_device69 to i32 (%struct.gx_device_s*)**
  %89 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device70, align 8, !tbaa !167
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %device71 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 78
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %device71, align 8, !tbaa !87
  %call72 = call i32 %89(%struct.gx_device_s* %91) #4
  %92 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call73 = call i32 @gs_state_free(%struct.gs_state_s* %92) #4
  %93 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.end.46
  %94 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat75 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %94, i32 0, i32 4
  %uses_transparency76 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat75, i32 0, i32 6
  %95 = load i32, i32* %uses_transparency76, align 4, !tbaa !47
  %tobool77 = icmp ne i32 %95, 0
  br i1 %tobool77, label %if.then.78, label %if.end.98

if.then.78:                                       ; preds = %if.end.74
  %96 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_clist79 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %96, i32 0, i32 11
  %97 = load i32, i32* %is_clist79, align 4, !tbaa !103
  %tobool80 = icmp ne i32 %97, 0
  br i1 %tobool80, label %if.then.81, label %if.else.88

if.then.81:                                       ; preds = %if.then.78
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call82 = call i32 @gs_pop_pdf14trans_device(%struct.gs_state_s* %98, i32 1) #4
  %cmp83 = icmp slt i32 %call82, 0
  %conv = zext i1 %cmp83 to i32
  store i32 %conv, i32* %code, align 4, !tbaa !35
  %99 = load i32, i32* %code, align 4, !tbaa !35
  %cmp84 = icmp slt i32 %99, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.81
  %100 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.then.81
  br label %if.end.97

if.else.88:                                       ; preds = %if.then.78
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %device89 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 78
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %device89, align 8, !tbaa !87
  %103 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %104 = bitcast %struct.gx_device_forward_s* %103 to %struct.gx_device_pattern_accum_s*
  %transbuff90 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %104, i32 0, i32 48
  %105 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff90, align 8, !tbaa !51
  %106 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %106, i32 0, i32 1
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !217
  %call92 = call i32 @pdf14_get_buffer_information(%struct.gx_device_s* %102, %struct.gx_pattern_trans_s* %105, %struct.gs_memory_s* %107, i32 1) #4
  store i32 %call92, i32* %code, align 4, !tbaa !35
  %108 = load i32, i32* %code, align 4, !tbaa !35
  %cmp93 = icmp slt i32 %108, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.88
  %109 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.else.88
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.87
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.74
  %110 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %111 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %call99 = call i32 @gx_pattern_cache_add_entry(%struct.gs_imager_state_s* %110, %struct.gx_device_forward_s* %111, %struct.gx_color_tile_s** %ctile) #4
  store i32 %call99, i32* %code, align 4, !tbaa !35
  %112 = load i32, i32* %code, align 4, !tbaa !35
  %cmp100 = icmp sge i32 %112, 0
  br i1 %cmp100, label %if.then.102, label %if.end.110

if.then.102:                                      ; preds = %if.end.98
  %113 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %114 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %116 = load i32, i32* %select.addr, align 4, !tbaa !41
  %call103 = call i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s* %113, %struct.gs_imager_state_s* %114, %struct.gx_device_s* %115, i32 %116) #4
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.109, label %if.then.105

if.then.105:                                      ; preds = %if.then.102
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call106 = call i8* @gs_program_name() #4
  %call107 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %117, i8* %call106, i64 %call107) #4
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @mlprintf_file_and_line(%struct.gs_memory_s* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1337) #4
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call108 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -100, i32* %code, align 4, !tbaa !35
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.105, %if.then.102
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.98
  %120 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %procs111 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %120, i32 0, i32 42
  %close_device112 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs111, i32 0, i32 4
  %close_device113 = bitcast {}** %close_device112 to i32 (%struct.gx_device_s*)**
  %121 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device113, align 8, !tbaa !216
  %122 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %123 = bitcast %struct.gx_device_forward_s* %122 to %struct.gx_device_s*
  %call114 = call i32 %121(%struct.gx_device_s* %123) #4
  %124 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call115 = call i32 @gs_state_free_chain(%struct.gs_state_s* %124) #4
  %125 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.22, %if.then.17
  %126 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %procs116 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %126, i32 0, i32 42
  %open_device117 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 0
  %open_device118 = bitcast {}** %open_device117 to i32 (%struct.gx_device_s*)**
  %127 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device118, align 8, !tbaa !168
  %cmp119 = icmp eq i32 (%struct.gx_device_s*)* %127, @pattern_clist_open_device
  br i1 %cmp119, label %if.then.121, label %if.end.128

if.then.121:                                      ; preds = %fail
  %128 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  %129 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_forward_s* %129 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %130, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %131 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %131 to %struct.gx_device_clist_writer_s*
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 45
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !218
  %procs122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 1
  %free_object123 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs122, i32 0, i32 2
  %133 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object123, align 8, !tbaa !83
  %134 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer124 = bitcast %union.gx_device_clist_s* %134 to %struct.gx_device_clist_writer_s*
  %bandlist_memory125 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer124, i32 0, i32 45
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory125, align 8, !tbaa !218
  %136 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %136 to %struct.gx_device_clist_common_s*
  %data = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 46
  %137 = load i8*, i8** %data, align 8, !tbaa !219
  call void %133(%struct.gs_memory_s* %135, i8* %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #4
  %138 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common126 = bitcast %union.gx_device_clist_s* %138 to %struct.gx_device_clist_common_s*
  %data127 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common126, i32 0, i32 46
  store i8* null, i8** %data127, align 8, !tbaa !219
  %139 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.121, %fail
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 1
  %free_object130 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 2
  %141 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object130, align 8, !tbaa !83
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %143 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %adev, align 8, !tbaa !1
  %144 = bitcast %struct.gx_device_forward_s* %143 to i8*
  call void %141(%struct.gs_memory_s* %142, i8* %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #4
  %145 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.128, %if.end.110, %if.then.95, %if.then.86, %if.end.66, %if.then.43, %if.then.35, %if.then.12, %if.then.5, %if.then.2
  %146 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %has_tags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.gx_device_forward_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

declare i32 @gx_pattern_cache_lookup(%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #2

declare %struct.gs_state_s* @gs_gstate(%struct.gs_state_s*) #2

declare i32 @gs_setdevice_no_init(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gs_push_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

declare i32 @gs_state_free(%struct.gs_state_s*) #2

declare i32 @gs_pop_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare i32 @pdf14_get_buffer_information(%struct.gx_device_s*, %struct.gx_pattern_trans_s*, %struct.gs_memory_s*, i32) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @mlprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @gs_state_free_chain(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_pattern1_remap_color(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !220
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %3, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 4
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %8 = bitcast %struct.gs_client_color_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 264, i32 8, i1 false), !tbaa.struct !221
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !222
  %10 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_pattern1_instance_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !223
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask1, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !224
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 1
  %pattern2 = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern2, i32 0, i32 0
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !225
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type, align 8, !tbaa !227
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %15, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %16 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp3 = icmp eq i32 %16, 2
  br i1 %cmp3, label %if.then.4, label %if.else.33

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 3
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !228
  %type5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type5, align 8, !tbaa !230
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 10
  %20 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !231
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 3
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space6, align 8, !tbaa !228
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %select.addr, align 4, !tbaa !41
  %call = call i32 %20(%struct.gs_client_color_s* %21, %struct.gs_color_space_s* %23, %struct.gx_device_color_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_s* %26, i32 %27) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %28 = load i32, i32* %code, align 4, !tbaa !35
  %cmp7 = icmp slt i32 %28, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  %29 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.4
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %30, i32 0, i32 0
  %31 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !227
  %cmp11 = icmp eq %struct.gx_device_color_type_s* %31, @gx_dc_type_data_pure
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %32, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pure_masked, %struct.gx_device_color_type_s** %type13, align 8, !tbaa !227
  br label %if.end.32

if.else:                                          ; preds = %if.end.9
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 0
  %34 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type14, align 8, !tbaa !227
  %cmp15 = icmp eq %struct.gx_device_color_type_s* %34, @gx_dc_type_data_ht_binary
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_binary_masked, %struct.gx_device_color_type_s** %type17, align 8, !tbaa !227
  br label %if.end.31

if.else.18:                                       ; preds = %if.else
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %36, i32 0, i32 0
  %37 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type19, align 8, !tbaa !227
  %cmp20 = icmp eq %struct.gx_device_color_type_s* %37, @gx_dc_type_data_ht_colored
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type22 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_colored_masked, %struct.gx_device_color_type_s** %type22, align 8, !tbaa !227
  br label %if.end.30

if.else.23:                                       ; preds = %if.else.18
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type24, align 8, !tbaa !227
  %cmp25 = icmp eq %struct.gx_device_color_type_s* %40, @gx_dc_type_data_devn
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type27 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_devn_masked, %struct.gx_device_color_type_s** %type27, align 8, !tbaa !227
  br label %if.end.29

if.else.28:                                       ; preds = %if.else.23
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.16
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  br label %if.end.42

if.else.33:                                       ; preds = %if.end
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask34 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 5
  %id35 = getelementptr inbounds %struct._mask, %struct._mask* %mask34, i32 0, i32 1
  store i64 0, i64* %id35, align 8, !tbaa !223
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask36 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 5
  %m_tile37 = getelementptr inbounds %struct._mask, %struct._mask* %mask36, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile37, align 8, !tbaa !224
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors38 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pattern39 = bitcast %union._c* %colors38 to %struct._pat*
  %p_tile40 = getelementptr inbounds %struct._pat, %struct._pat* %pattern39, i32 0, i32 0
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %p_tile40, align 8, !tbaa !225
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type41 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type41, align 8, !tbaa !227
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.33, %if.end.32
  %46 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %id43 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %46, i32 0, i32 13
  %47 = load i64, i64* %id43, align 8, !tbaa !171
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask44 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %48, i32 0, i32 5
  %id45 = getelementptr inbounds %struct._mask, %struct._mask* %mask44, i32 0, i32 1
  store i64 %47, i64* %id45, align 8, !tbaa !223
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask46 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %49, i32 0, i32 5
  %m_tile47 = getelementptr inbounds %struct._mask, %struct._mask* %mask46, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile47, align 8, !tbaa !224
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %53 = load i32, i32* %select.addr, align 4, !tbaa !41
  %call48 = call i32 @gx_pattern_load(%struct.gx_device_color_s* %50, %struct.gs_imager_state_s* %51, %struct.gx_device_s* %52, i32 %53) #4
  store i32 %call48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.else.28, %if.then.8, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #2

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_close(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %4, i32 0, i32 44
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !22
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_pattern_accum_s* %6 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %7, %struct.gx_device_s* null) #4
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 46
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %9 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %9, i32 0, i32 47
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %cmp = icmp ne %struct.gx_device_memory_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %11, i32 0, i32 47
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask1, align 8, !tbaa !85
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %close_device2 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %13 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device2, align 8, !tbaa !84
  %14 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask3 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %14, i32 0, i32 47
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask3, align 8, !tbaa !85
  %16 = bitcast %struct.gx_device_memory_s* %15 to %struct.gx_device_s*
  %call = call i32 %13(%struct.gx_device_s* %16) #4
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %20 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask5 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %20, i32 0, i32 47
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask5, align 8, !tbaa !85
  %22 = bitcast %struct.gx_device_memory_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #4
  %23 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask6 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %23, i32 0, i32 47
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mask6, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %24, i32 0, i32 48
  %25 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff, align 8, !tbaa !51
  %cmp7 = icmp ne %struct.gx_pattern_trans_s* %25, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object10, align 8, !tbaa !83
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %29 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %29, i32 0, i32 43
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %31 = bitcast %struct.gx_device_s* %30 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #4
  %32 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff11 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %32, i32 0, i32 48
  store %struct.gx_pattern_trans_s* null, %struct.gx_pattern_trans_s** %transbuff11, align 8, !tbaa !51
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %33, i32 0) #4
  %34 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !35
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store i32 %w, i32* %w.addr, align 4, !tbaa !35
  store i32 %h, i32* %h.addr, align 4, !tbaa !35
  store i64 %color, i64* %color.addr, align 8, !tbaa !43
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %3, i32 0, i32 46
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %7 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !233
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %10 = load i32, i32* %x.addr, align 4, !tbaa !35
  %11 = load i32, i32* %y.addr, align 4, !tbaa !35
  %12 = load i32, i32* %w.addr, align 4, !tbaa !35
  %13 = load i32, i32* %h.addr, align 4, !tbaa !35
  %14 = load i64, i64* %color.addr, align 8, !tbaa !43
  %call = call i32 %7(%struct.gx_device_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %15, i32 0, i32 47
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %tobool2 = icmp ne %struct.gx_device_memory_s* %16, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %17 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %17, i32 0, i32 47
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask4, align 8, !tbaa !85
  %procs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 42
  %fill_rectangle6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 7
  %19 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle6, align 8, !tbaa !234
  %20 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %20, i32 0, i32 47
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask7, align 8, !tbaa !85
  %22 = bitcast %struct.gx_device_memory_s* %21 to %struct.gx_device_s*
  %23 = load i32, i32* %x.addr, align 4, !tbaa !35
  %24 = load i32, i32* %y.addr, align 4, !tbaa !35
  %25 = load i32, i32* %w.addr, align 4, !tbaa !35
  %26 = load i32, i32* %h.addr, align 4, !tbaa !35
  %call8 = call i32 %19(%struct.gx_device_s* %22, i32 %23, i32 %24, i32 %25, i32 %26, i64 1) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.3
  %27 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !35
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !35
  store i64 %id, i64* %id.addr, align 8, !tbaa !43
  store i32 %x, i32* %x.addr, align 4, !tbaa !35
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store i32 %w, i32* %w.addr, align 4, !tbaa !35
  store i32 %h, i32* %h.addr, align 4, !tbaa !35
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !43
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !43
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = load i64, i64* %color0.addr, align 8, !tbaa !43
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %color1.addr, align 8, !tbaa !43
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %5, i32 0, i32 46
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %7, i32 0, i32 43
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !235
  %10 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target3 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %10, i32 0, i32 43
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target3, align 8, !tbaa !23
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_x.addr, align 4, !tbaa !35
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !35
  %15 = load i64, i64* %id.addr, align 8, !tbaa !43
  %16 = load i32, i32* %x.addr, align 4, !tbaa !35
  %17 = load i32, i32* %y.addr, align 4, !tbaa !35
  %18 = load i32, i32* %w.addr, align 4, !tbaa !35
  %19 = load i32, i32* %h.addr, align 4, !tbaa !35
  %20 = load i64, i64* %color0.addr, align 8, !tbaa !43
  %21 = load i64, i64* %color1.addr, align 8, !tbaa !43
  %call = call i32 %9(%struct.gx_device_s* %11, i8* %12, i32 %13, i32 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i64 %20, i64 %21) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %22 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %22, i32 0, i32 47
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %tobool5 = icmp ne %struct.gx_device_memory_s* %23, null
  br i1 %tobool5, label %if.then.6, label %if.else.26

if.then.6:                                        ; preds = %if.end.4
  %24 = load i64, i64* %color0.addr, align 8, !tbaa !43
  %cmp7 = icmp ne i64 %24, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  store i64 1, i64* %color0.addr, align 8, !tbaa !43
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %25 = load i64, i64* %color1.addr, align 8, !tbaa !43
  %cmp10 = icmp ne i64 %25, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i64 1, i64* %color1.addr, align 8, !tbaa !43
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %26 = load i64, i64* %color0.addr, align 8, !tbaa !43
  %cmp13 = icmp eq i64 %26, 1
  br i1 %cmp13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.end.12
  %27 = load i64, i64* %color1.addr, align 8, !tbaa !43
  %cmp15 = icmp eq i64 %27, 1
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.14
  %28 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask17 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %28, i32 0, i32 47
  %29 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask17, align 8, !tbaa !85
  %procs18 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %29, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 7
  %30 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !234
  %31 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %31, i32 0, i32 47
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask19, align 8, !tbaa !85
  %33 = bitcast %struct.gx_device_memory_s* %32 to %struct.gx_device_s*
  %34 = load i32, i32* %x.addr, align 4, !tbaa !35
  %35 = load i32, i32* %y.addr, align 4, !tbaa !35
  %36 = load i32, i32* %w.addr, align 4, !tbaa !35
  %37 = load i32, i32* %h.addr, align 4, !tbaa !35
  %call20 = call i32 %30(%struct.gx_device_s* %33, i32 %34, i32 %35, i32 %36, i32 %37, i64 1) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.14, %if.end.12
  %38 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask21 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %38, i32 0, i32 47
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask21, align 8, !tbaa !85
  %procs22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 42
  %copy_mono23 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs22, i32 0, i32 9
  %40 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono23, align 8, !tbaa !236
  %41 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask24 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %41, i32 0, i32 47
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask24, align 8, !tbaa !85
  %43 = bitcast %struct.gx_device_memory_s* %42 to %struct.gx_device_s*
  %44 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %45 = load i32, i32* %data_x.addr, align 4, !tbaa !35
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !35
  %47 = load i64, i64* %id.addr, align 8, !tbaa !43
  %48 = load i32, i32* %x.addr, align 4, !tbaa !35
  %49 = load i32, i32* %y.addr, align 4, !tbaa !35
  %50 = load i32, i32* %w.addr, align 4, !tbaa !35
  %51 = load i32, i32* %h.addr, align 4, !tbaa !35
  %52 = load i64, i64* %color0.addr, align 8, !tbaa !43
  %53 = load i64, i64* %color1.addr, align 8, !tbaa !43
  %call25 = call i32 %40(%struct.gx_device_s* %43, i8* %44, i32 %45, i32 %46, i64 %47, i32 %48, i32 %49, i32 %50, i32 %51, i64 %52, i64 %53) #4
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.26, %if.else, %if.then.16, %if.then
  %54 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !35
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !35
  store i64 %id, i64* %id.addr, align 8, !tbaa !43
  store i32 %x, i32* %x.addr, align 4, !tbaa !35
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store i32 %w, i32* %w.addr, align 4, !tbaa !35
  store i32 %h, i32* %h.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %3, i32 0, i32 46
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !237
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !35
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !35
  %13 = load i64, i64* %id.addr, align 8, !tbaa !43
  %14 = load i32, i32* %x.addr, align 4, !tbaa !35
  %15 = load i32, i32* %y.addr, align 4, !tbaa !35
  %16 = load i32, i32* %w.addr, align 4, !tbaa !35
  %17 = load i32, i32* %h.addr, align 4, !tbaa !35
  %call = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %18, i32 0, i32 47
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %tobool2 = icmp ne %struct.gx_device_memory_s* %19, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %20 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %20, i32 0, i32 47
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask4, align 8, !tbaa !85
  %procs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 7
  %22 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !234
  %23 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask6 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %23, i32 0, i32 47
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask6, align 8, !tbaa !85
  %25 = bitcast %struct.gx_device_memory_s* %24 to %struct.gx_device_s*
  %26 = load i32, i32* %x.addr, align 4, !tbaa !35
  %27 = load i32, i32* %y.addr, align 4, !tbaa !35
  %28 = load i32, i32* %w.addr, align 4, !tbaa !35
  %29 = load i32, i32* %h.addr, align 4, !tbaa !35
  %call7 = call i32 %22(%struct.gx_device_s* %25, i32 %26, i32 %27, i32 %28, i32 %29, i64 1) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.3
  %30 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #2

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #2

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #2

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #2

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #2

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare void @gx_get_largest_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %instance = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %4, i32 0, i32 45
  %5 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %instance, align 8, !tbaa !20
  store %struct.gs_pattern1_instance_s* %5, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %6 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %6, i32 0, i32 46
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !238
  %11 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %11, i32 0, i32 43
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %13 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %14 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %15 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gx_device_s* %12, %struct.gs_int_rect_s* %13, %struct.gs_get_bits_params_s* %14, %struct.gs_int_rect_s** %15) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %16, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %17 = load i32, i32* %PaintType, align 4, !tbaa !44
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.2, %if.then
  %18 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %3, i32 0, i32 46
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %7 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !239
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %10 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_s* %9, %struct.gs_fixed_rect_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_color_s* %12, %struct.gx_clip_path_s* %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %14, i32 0, i32 47
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %tobool2 = icmp ne %struct.gx_device_memory_s* %15, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %16 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %20, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %21 = load i32, i32* %x4, align 4, !tbaa !240
  %shr = ashr i32 %21, 8
  store i32 %shr, i32* %x, align 4, !tbaa !35
  %22 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %22, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p5, i32 0, i32 1
  %23 = load i32, i32* %y6, align 4, !tbaa !242
  %shr7 = ashr i32 %23, 8
  store i32 %shr7, i32* %y, align 4, !tbaa !35
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %25 = load i32, i32* %x8, align 4, !tbaa !243
  %shr9 = ashr i32 %25, 8
  %26 = load i32, i32* %x, align 4, !tbaa !35
  %sub = sub nsw i32 %shr9, %26
  store i32 %sub, i32* %w, align 4, !tbaa !35
  %27 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %27, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q10, i32 0, i32 1
  %28 = load i32, i32* %y11, align 4, !tbaa !244
  %shr12 = ashr i32 %28, 8
  %29 = load i32, i32* %y, align 4, !tbaa !35
  %sub13 = sub nsw i32 %shr12, %29
  store i32 %sub13, i32* %h, align 4, !tbaa !35
  %30 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask14 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %30, i32 0, i32 47
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask14, align 8, !tbaa !85
  %procs15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 7
  %32 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !234
  %33 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask16 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %33, i32 0, i32 47
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask16, align 8, !tbaa !85
  %35 = bitcast %struct.gx_device_memory_s* %34 to %struct.gx_device_s*
  %36 = load i32, i32* %x, align 4, !tbaa !35
  %37 = load i32, i32* %y, align 4, !tbaa !35
  %38 = load i32, i32* %w, align 4, !tbaa !35
  %39 = load i32, i32* %h, align 4, !tbaa !35
  %call17 = call i32 %32(%struct.gx_device_s* %35, i32 %36, i32 %37, i32 %38, i32 %39, i64 1) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %40 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.3
  %44 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %plane_height.addr = alloca i32, align 4
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !35
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !35
  store i64 %id, i64* %id.addr, align 8, !tbaa !43
  store i32 %x, i32* %x.addr, align 4, !tbaa !35
  store i32 %y, i32* %y.addr, align 4, !tbaa !35
  store i32 %w, i32* %w.addr, align 4, !tbaa !35
  store i32 %h, i32* %h.addr, align 4, !tbaa !35
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %2, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %3, i32 0, i32 46
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bits, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_memory_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !245
  %8 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !23
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !35
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !35
  %13 = load i64, i64* %id.addr, align 8, !tbaa !43
  %14 = load i32, i32* %x.addr, align 4, !tbaa !35
  %15 = load i32, i32* %y.addr, align 4, !tbaa !35
  %16 = load i32, i32* %w.addr, align 4, !tbaa !35
  %17 = load i32, i32* %h.addr, align 4, !tbaa !35
  %18 = load i32, i32* %plane_height.addr, align 4, !tbaa !35
  %call = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %19, i32 0, i32 47
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !85
  %tobool2 = icmp ne %struct.gx_device_memory_s* %20, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %21 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %21, i32 0, i32 47
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask4, align 8, !tbaa !85
  %procs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 7
  %23 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !234
  %24 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %mask6 = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %24, i32 0, i32 47
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask6, align 8, !tbaa !85
  %26 = bitcast %struct.gx_device_memory_s* %25 to %struct.gx_device_s*
  %27 = load i32, i32* %x.addr, align 4, !tbaa !35
  %28 = load i32, i32* %y.addr, align 4, !tbaa !35
  %29 = load i32, i32* %w.addr, align 4, !tbaa !35
  %30 = load i32, i32* %h.addr, align 4, !tbaa !35
  %call7 = call i32 %23(%struct.gx_device_s* %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 1) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.3
  %31 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gx_default_strip_copy_rop2(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #2

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare i32 @gdev_mem_set_planar(%struct.gx_device_memory_s*, i32, %struct.gx_render_plane_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @color_tile_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store i32 %index, i32* %index.addr, align 4, !tbaa !35
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !35
  %div = udiv i32 %1, 232
  store i32 %div, i32* %count, align 4, !tbaa !35
  %2 = load i32, i32* %count, align 4, !tbaa !35
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_color_tile, i32 0, i32 4), align 8, !tbaa !246
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !35
  %7 = load i32, i32* %count, align 4, !tbaa !35
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 232
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !35
  %9 = load i32, i32* %count, align 4, !tbaa !35
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 232, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_color_tile, %struct.gc_state_s* %11) #4
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
define internal void @color_tile_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !35
  %div = udiv i32 %1, 232
  store i32 %div, i32* %count, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !35
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_color_tile, i32 0, i32 5), align 8, !tbaa !248
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 232, %struct.gs_memory_struct_type_s* @st_color_tile, %struct.gc_state_s* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !35
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !35
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 232
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_cache_choose_all(%struct.gx_color_tile_s* %ctile, i8* %proc_data) #0 {
entry:
  %ctile.addr = alloca %struct.gx_color_tile_s*, align 8
  %proc_data.addr = alloca i8*, align 8
  store %struct.gx_color_tile_s* %ctile, %struct.gx_color_tile_s** %ctile.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  ret i32 1
}

declare i32 @clist_free_icc_table(%struct.clist_icctable_s*, %struct.gs_memory_s*) #2

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
!5 = !{!6, !2, i64 0}
!6 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!7 = !{!8, !2, i64 1144}
!8 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144}
!9 = !{!"int", !3, i64 0}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !9, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!15 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !18, i64 16, !9, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !11, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!21, !2, i64 1744}
!21 = !{!"gx_device_pattern_accum_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144, !2, i64 1728, !2, i64 1736, !2, i64 1744, !2, i64 1752, !2, i64 1760, !2, i64 1768}
!22 = !{!21, !2, i64 1736}
!23 = !{!21, !2, i64 1728}
!24 = !{!25, !2, i64 32}
!25 = !{!"gs_pattern1_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40, !26, i64 48, !32, i64 152, !28, i64 176, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !33, i64 228, !11, i64 240}
!26 = !{!"gs_pattern1_template_s", !2, i64 0, !9, i64 8, !27, i64 16, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !28, i64 56, !31, i64 88, !31, i64 92, !2, i64 96}
!27 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!28 = !{!"gs_rect_s", !29, i64 0, !29, i64 16}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !3, i64 0}
!31 = !{!"float", !3, i64 0}
!32 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!33 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!34 = !{!25, !9, i64 228}
!35 = !{!9, !9, i64 0}
!36 = !{!25, !9, i64 232}
!37 = !{!21, !9, i64 832}
!38 = !{!21, !9, i64 836}
!39 = !{!31, !31, i64 0}
!40 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !41, i64 12, i64 2, !42, i64 14, i64 1, !41, i64 16, i64 4, !35, i64 20, i64 4, !35, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 4, !35, i64 36, i64 4, !35, i64 40, i64 4, !41, i64 44, i64 64, !41, i64 108, i64 64, !41, i64 176, i64 512, !41, i64 688, i64 8, !1, i64 696, i64 4, !41, i64 704, i64 8, !43, i64 712, i64 4, !35}
!41 = !{!3, !3, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{!11, !11, i64 0}
!44 = !{!25, !9, i64 88}
!45 = !{!21, !9, i64 128}
!46 = !{!21, !9, i64 132}
!47 = !{!25, !9, i64 96}
!48 = !{!49, !2, i64 72}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{!21, !2, i64 1768}
!52 = !{!53, !2, i64 8}
!53 = !{!"gx_pattern_trans_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !54, i64 32, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !2, i64 72, !9, i64 80, !3, i64 84, !2, i64 88, !2, i64 96, !2, i64 104}
!54 = !{!"gs_int_rect_s", !33, i64 0, !33, i64 8}
!55 = !{!53, !2, i64 16}
!56 = !{!53, !2, i64 0}
!57 = !{!53, !2, i64 24}
!58 = !{!53, !9, i64 56}
!59 = !{!25, !9, i64 220}
!60 = !{!61, !9, i64 832}
!61 = !{!"gx_device_memory_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144, !2, i64 1728, !9, i64 1736, !2, i64 1744, !2, i64 1752, !9, i64 1760, !2, i64 1768, !9, i64 1776, !3, i64 1780, !32, i64 2548, !2, i64 2576, !62, i64 2584, !63, i64 2600, !64, i64 2624, !65, i64 2656, !66, i64 2680, !67, i64 2720, !68, i64 2736, !9, i64 2744, !9, i64 2748, !9, i64 2752, !9, i64 2756, !9, i64 2760, !11, i64 2768, !2, i64 2776, !9, i64 2784, !9, i64 2788}
!62 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!63 = !{!"_c24", !11, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!64 = !{!"_c40", !11, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!65 = !{!"_c48", !11, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!66 = !{!"_c56", !11, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!67 = !{!"_c64", !11, i64 0, !9, i64 8, !9, i64 12}
!68 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!69 = !{!61, !9, i64 836}
!70 = !{!61, !2, i64 1752}
!71 = !{!61, !2, i64 1744}
!72 = !{!61, !2, i64 1144}
!73 = !{!61, !9, i64 1736}
!74 = !{!21, !13, i64 108}
!75 = !{!8, !9, i64 848}
!76 = !{!21, !9, i64 100}
!77 = !{!8, !13, i64 108}
!78 = !{!8, !9, i64 100}
!79 = !{!80, !9, i64 4}
!80 = !{!"gx_render_plane_s", !9, i64 0, !9, i64 4, !9, i64 8}
!81 = !{!80, !9, i64 0}
!82 = !{!80, !9, i64 8}
!83 = !{!49, !2, i64 24}
!84 = !{!61, !2, i64 1176}
!85 = !{!21, !2, i64 1760}
!86 = !{!21, !2, i64 1752}
!87 = !{!88, !2, i64 1872}
!88 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !89, i64 24, !9, i64 128, !91, i64 132, !9, i64 168, !29, i64 176, !29, i64 192, !9, i64 208, !9, i64 212, !13, i64 216, !3, i64 220, !92, i64 224, !92, i64 228, !93, i64 232, !11, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !31, i64 296, !94, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !31, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !95, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !96, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !96, i64 1336, !2, i64 1616, !32, i64 1624, !9, i64 1648, !32, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !91, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !97, i64 1888}
!89 = !{!"gx_line_params_s", !31, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !9, i64 36, !32, i64 40, !90, i64 64}
!90 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !31, i64 12, !9, i64 16, !31, i64 20, !9, i64 24, !9, i64 28, !31, i64 32}
!91 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!92 = !{!"gs_transparency_source_s", !31, i64 0}
!93 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!94 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!95 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!96 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !11, i64 16, !3, i64 24}
!97 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!98 = !{!8, !3, i64 1112}
!99 = !{!8, !9, i64 1052}
!100 = !{!25, !9, i64 216}
!101 = !{!88, !9, i64 316}
!102 = !{!8, !2, i64 1664}
!103 = !{!25, !9, i64 224}
!104 = !{!49, !2, i64 200}
!105 = !{!49, !2, i64 64}
!106 = !{!18, !9, i64 0}
!107 = !{!18, !9, i64 4}
!108 = !{!18, !11, i64 8}
!109 = !{!110, !2, i64 48}
!110 = !{!"gx_device_clist_writer_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144, !2, i64 1728, !111, i64 1736, !2, i64 1768, !2, i64 1776, !9, i64 1784, !18, i64 1792, !9, i64 1808, !9, i64 1812, !112, i64 1816, !113, i64 1840, !9, i64 1864, !9, i64 1868, !2, i64 1872, !9, i64 1880, !9, i64 1884, !114, i64 1888, !9, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !9, i64 10176, !2, i64 10184, !9, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !115, i64 10240, !9, i64 10256, !9, i64 10260, !9, i64 10264, !9, i64 10268, !116, i64 10272, !9, i64 10320, !9, i64 10324, !9, i64 10328, !117, i64 10336, !9, i64 11952, !9, i64 11956, !9, i64 11960, !9, i64 11964, !3, i64 11968, !2, i64 12016, !11, i64 12024, !118, i64 12032, !3, i64 12080, !11, i64 12112, !11, i64 12120, !11, i64 12128, !11, i64 12136, !9, i64 12144, !9, i64 12148, !9, i64 12152, !9, i64 12156, !2, i64 12160, !9, i64 12168, !2, i64 12176, !9, i64 12184, !9, i64 12188, !9, i64 12192, !9, i64 12196, !9, i64 12200, !9, i64 12204, !2, i64 12208, !11, i64 12216, !9, i64 12224, !9, i64 12228, !9, i64 12232, !9, i64 12236, !12, i64 12240}
!111 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!112 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20}
!113 = !{!"gx_bits_cache_s", !2, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!114 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !9, i64 8216, !11, i64 8224, !11, i64 8232, !18, i64 8240}
!115 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!116 = !{!"gx_strip_bitmap_s", !2, i64 0, !9, i64 8, !33, i64 12, !11, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38, !9, i64 40}
!117 = !{!"gs_imager_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !89, i64 24, !9, i64 128, !91, i64 132, !9, i64 168, !29, i64 176, !29, i64 192, !9, i64 208, !9, i64 212, !13, i64 216, !3, i64 220, !92, i64 224, !92, i64 228, !93, i64 232, !11, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !31, i64 296, !94, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !31, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !95, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !96, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !96, i64 1336}
!118 = !{!"clist_color_space_s", !3, i64 0, !11, i64 8, !119, i64 16, !2, i64 40}
!119 = !{!"clist_icc_color_s", !11, i64 0, !3, i64 8, !9, i64 12, !3, i64 16, !3, i64 20}
!120 = !{!110, !2, i64 1144}
!121 = !{!8, !9, i64 844}
!122 = !{!123, !9, i64 844}
!123 = !{!"gx_device_forward_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144, !2, i64 1728}
!124 = !{!8, !9, i64 840}
!125 = !{!123, !9, i64 840}
!126 = !{!123, !9, i64 848}
!127 = !{!110, !2, i64 1728}
!128 = !{!8, !11, i64 56}
!129 = !{!8, !2, i64 72}
!130 = !{!8, !2, i64 64}
!131 = !{!49, !2, i64 104}
!132 = !{!133, !2, i64 0}
!133 = !{!"gx_pattern_cache_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !11, i64 32, !11, i64 40, !2, i64 48}
!134 = !{!133, !2, i64 8}
!135 = !{!133, !9, i64 16}
!136 = !{!133, !9, i64 20}
!137 = !{!133, !9, i64 24}
!138 = !{!133, !11, i64 32}
!139 = !{!133, !11, i64 40}
!140 = !{!133, !2, i64 48}
!141 = !{!142, !11, i64 0}
!142 = !{!"gx_color_tile_s", !11, i64 0, !9, i64 8, !27, i64 16, !9, i64 32, !9, i64 36, !32, i64 40, !28, i64 64, !116, i64 96, !116, i64 144, !2, i64 192, !2, i64 200, !3, i64 208, !3, i64 209, !3, i64 210, !3, i64 211, !9, i64 216, !9, i64 220, !9, i64 224}
!143 = !{!27, !11, i64 0}
!144 = !{!27, !2, i64 8}
!145 = !{!142, !9, i64 32}
!146 = !{!142, !2, i64 96}
!147 = !{!142, !2, i64 144}
!148 = !{!142, !9, i64 216}
!149 = !{!142, !2, i64 200}
!150 = !{!142, !2, i64 192}
!151 = !{!142, !9, i64 224}
!152 = !{!88, !2, i64 1304}
!153 = !{!117, !2, i64 1304}
!154 = !{!117, !2, i64 8}
!155 = !{!142, !3, i64 210}
!156 = !{!157, !9, i64 1808}
!157 = !{!"gx_device_clist_common_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !15, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !9, i64 1052, !9, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !6, i64 1144, !2, i64 1728, !111, i64 1736, !2, i64 1768, !2, i64 1776, !9, i64 1784, !18, i64 1792, !9, i64 1808, !9, i64 1812, !112, i64 1816, !113, i64 1840, !9, i64 1864, !9, i64 1868, !2, i64 1872, !9, i64 1880, !9, i64 1884, !114, i64 1888, !9, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !9, i64 10176, !2, i64 10184}
!158 = !{!157, !2, i64 1176}
!159 = !{!157, !2, i64 10160}
!160 = !{!157, !2, i64 24}
!161 = !{!157, !2, i64 10168}
!162 = !{!163, !11, i64 16}
!163 = !{!"gsicc_link_cache_s", !2, i64 0, !9, i64 8, !10, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64}
!164 = !{!163, !2, i64 32}
!165 = !{!163, !2, i64 24}
!166 = !{!110, !2, i64 12176}
!167 = !{!8, !2, i64 1176}
!168 = !{!123, !2, i64 1144}
!169 = !{!61, !2, i64 2576}
!170 = !{!53, !9, i64 52}
!171 = !{!25, !11, i64 240}
!172 = !{!123, !13, i64 108}
!173 = !{!142, !9, i64 8}
!174 = !{i64 0, i64 8, !43, i64 8, i64 8, !1}
!175 = !{!25, !9, i64 92}
!176 = !{!142, !9, i64 36}
!177 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 12, i64 4, !39, i64 16, i64 4, !39, i64 20, i64 4, !39}
!178 = !{i64 0, i64 8, !179, i64 8, i64 8, !179, i64 16, i64 8, !179, i64 24, i64 8, !179}
!179 = !{!30, !30, i64 0}
!180 = !{!25, !9, i64 208}
!181 = !{!142, !3, i64 208}
!182 = !{!25, !9, i64 212}
!183 = !{!142, !3, i64 209}
!184 = !{!142, !9, i64 108}
!185 = !{!142, !9, i64 112}
!186 = !{!142, !9, i64 156}
!187 = !{!142, !9, i64 160}
!188 = !{!110, !9, i64 1808}
!189 = !{!116, !2, i64 0}
!190 = !{!116, !9, i64 8}
!191 = !{!116, !9, i64 12}
!192 = !{!116, !13, i64 32}
!193 = !{!116, !9, i64 16}
!194 = !{!116, !13, i64 34}
!195 = !{!116, !11, i64 24}
!196 = !{!116, !13, i64 38}
!197 = !{!116, !13, i64 36}
!198 = !{!61, !9, i64 848}
!199 = !{!61, !9, i64 100}
!200 = !{!116, !9, i64 40}
!201 = !{i64 0, i64 4, !35, i64 4, i64 4, !35}
!202 = !{!142, !11, i64 120}
!203 = !{!88, !9, i64 212}
!204 = !{!28, !30, i64 0}
!205 = !{!28, !30, i64 8}
!206 = !{!28, !30, i64 16}
!207 = !{!28, !30, i64 24}
!208 = !{!209, !2, i64 368}
!209 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !33, i64 352, !9, i64 360, !210, i64 368, !212, i64 632}
!210 = !{!"gs_client_color_s", !2, i64 0, !211, i64 8}
!211 = !{!"gs_paint_color_s", !3, i64 0}
!212 = !{!"_mask", !213, i64 0, !11, i64 8, !2, i64 16}
!213 = !{!"mp_", !9, i64 0, !9, i64 4}
!214 = !{!8, !9, i64 84}
!215 = !{!25, !2, i64 144}
!216 = !{!123, !2, i64 1176}
!217 = !{!88, !2, i64 8}
!218 = !{!110, !2, i64 1768}
!219 = !{!157, !2, i64 1776}
!220 = !{!210, !2, i64 0}
!221 = !{i64 0, i64 8, !1, i64 8, i64 256, !41}
!222 = !{!209, !9, i64 360}
!223 = !{!209, !11, i64 640}
!224 = !{!209, !2, i64 648}
!225 = !{!226, !2, i64 0}
!226 = !{!"_pat", !2, i64 0}
!227 = !{!209, !2, i64 0}
!228 = !{!229, !2, i64 40}
!229 = !{!"gs_color_space_s", !2, i64 0, !10, i64 8, !11, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!230 = !{!229, !2, i64 0}
!231 = !{!232, !2, i64 72}
!232 = !{!"gs_color_space_type_s", !3, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!233 = !{!8, !2, i64 1200}
!234 = !{!61, !2, i64 1200}
!235 = !{!8, !2, i64 1216}
!236 = !{!61, !2, i64 1216}
!237 = !{!8, !2, i64 1224}
!238 = !{!8, !2, i64 1448}
!239 = !{!8, !2, i64 1576}
!240 = !{!241, !9, i64 0}
!241 = !{!"gs_fixed_rect_s", !94, i64 0, !94, i64 8}
!242 = !{!241, !9, i64 4}
!243 = !{!241, !9, i64 8}
!244 = !{!241, !9, i64 12}
!245 = !{!8, !2, i64 1672}
!246 = !{!247, !2, i64 32}
!247 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!248 = !{!247, !2, i64 40}
