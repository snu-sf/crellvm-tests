; ModuleID = './gdevplnx.bc'
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
%struct.gx_device_plane_extract_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gx_render_plane_s, i64, i32, i32, i32 }
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
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
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
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.tiling_state_s = type { %struct.gx_device_plane_extract_s*, i8*, i32, i32, i32, i32, i32, %struct.tsb_, %struct.gs_int_point_s, %struct.gs_int_point_s, i32 }
%struct.tsb_ = type { i8*, i32, i32, i32 }
%struct.crp_ = type { [2 x i64], i64*, %struct.tiling_state_s }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.plane_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gs_imager_state_s*, %struct.gs_imager_state_s* }
%struct.bits_plane_s = type { %union.bpd_, i32, i32, i32 }
%union.bpd_ = type { i8* }
%struct._bin = type { %struct.gx_device_halftone_s*, [2 x i64], i32, i32, %struct.gx_ht_tile_s* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gx_device_plane_extract\00", align 1
@st_device_plane_extract = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1784, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_plane_extract_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_plane_extract_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@gs_plane_extract_device = internal constant %struct.gx_device_plane_extract_s { i32 1784, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plane_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @plane_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @plane_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @plane_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @plane_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @plane_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @plane_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @plane_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @plane_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @plane_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @plane_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @plane_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @plane_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @plane_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_no_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_default_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_default_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_default_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_default_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_default_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_default_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @gx_default_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_render_plane_s zeroinitializer, i64 0, i32 0, i32 0, i32 1 }, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"plane_extract\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"begin_tiling\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"end_tiling\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"plane_image_begin_typed(info)\00", align 1
@plane_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @plane_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @plane_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"plane_image_begin_typed(pis_image)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"plane_image_enum_t\00", align 1
@plane_image_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @plane_image_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_plane_image_enum = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @plane_image_enum_reloc_ptrs to i8*) }, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@plane_image_enum_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 568 }, %struct.gc_ptr_element_s { i16 0, i16 576 }, %struct.gc_ptr_element_s { i16 0, i16 584 }], align 2
@plane_color_map_procs = internal constant %struct.gx_color_map_procs_s { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @plane_cmap_gray, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @plane_cmap_rgb, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)* @plane_cmap_cmyk, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @plane_cmap_rgb_alpha, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @plane_cmap_is_halftoned }, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"plane_image_end_image(pis_image)\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_plane_extract_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %10) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %11, i32 0, i32 43
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %call1 = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %12) #4
  %13 = bitcast %struct.gx_device_s* %call1 to i8*
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %13, i8** %ptr, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %15 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %16
}

; Function Attrs: nounwind uwtable
define internal void @device_plane_extract_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !25
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %6) #4
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %7, i32 0, i32 44
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !26
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %8, %struct.gc_state_s* %9) #4
  %10 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %10, i32 0, i32 44
  store %struct.gx_device_s* %call, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  %11 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @plane_device_init(%struct.gx_device_plane_extract_s* %edev, %struct.gx_device_s* %target, %struct.gx_device_s* %plane_dev, %struct.gx_render_plane_s* %render_plane, i32 %clear) #0 {
entry:
  %retval = alloca i32, align 4
  %edev.addr = alloca %struct.gx_device_plane_extract_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %plane_dev.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %clear.addr = alloca i32, align 4
  store %struct.gx_device_plane_extract_s* %edev, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %plane_dev, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32 %clear, i32* %clear.addr, align 4, !tbaa !5
  %0 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %0, i32 0, i32 0
  %1 = load i32, i32* %depth, align 4, !tbaa !27
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth1, align 2, !tbaa !28
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_plane_extract_s* %4 to %struct.gx_device_s*
  %6 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  call void @gx_device_init(%struct.gx_device_s* %5, %struct.gx_device_s* bitcast (%struct.gx_device_plane_extract_s* @gs_plane_extract_device to %struct.gx_device_s*), %struct.gs_memory_s* %7, i32 1) #4
  %8 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_plane_extract_s* %8 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %9) #4
  %10 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_plane_extract_s* %10 to %struct.gx_device_forward_s*
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %11) #4
  %12 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_plane_extract_s* %12 to %struct.gx_device_forward_s*
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %13, %struct.gx_device_s* %14) #4
  %15 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_plane_extract_s* %15 to %struct.gx_device_s*
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %16, %struct.gx_device_s* %17) #4
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_dev3 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %19, i32 0, i32 44
  store %struct.gx_device_s* %18, %struct.gx_device_s** %plane_dev3, align 8, !tbaa !26
  %20 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %20, i32 0, i32 45
  %21 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_render_plane_s* %plane to i8*
  %23 = bitcast %struct.gx_render_plane_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 12, i32 4, i1 false), !tbaa.struct !31
  %24 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_plane_extract_s* %24 to %struct.gx_device_s*
  %call = call i32 @plane_open_device(%struct.gx_device_s* %25) #4
  %26 = load i32, i32* %clear.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %28 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !32
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width, align 4, !tbaa !33
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 14
  %33 = load i32, i32* %height, align 4, !tbaa !34
  %34 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %34, i32 0, i32 46
  %35 = load i64, i64* %plane_white, align 8, !tbaa !35
  %call5 = call i32 %28(%struct.gx_device_s* %29, i32 0, i32 0, i32 %31, i32 %33, i64 %35) #4
  %36 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %36, i32 0, i32 49
  store i32 0, i32* %any_marks, align 4, !tbaa !36
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s*) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

declare void @gx_device_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @plane_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %plane_depth = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %8 = load i16, i16* %depth, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  store i32 %conv, i32* %plane_depth, align 4, !tbaa !5
  %9 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %10) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %call2 = call i64 @gx_device_white(%struct.gx_device_s* %11) #4
  %12 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %12, i32 0, i32 46
  store i64 %call2, i64* %plane_white, align 8, !tbaa !35
  %13 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %shl = shl i32 1, %13
  %sub = sub nsw i32 %shl, 1
  %14 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %14, i32 0, i32 47
  store i32 %sub, i32* %plane_mask, align 4, !tbaa !37
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_memory_s* %15, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %17 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !38
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 42
  %copy_color5 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 10
  %19 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color5, align 8, !tbaa !39
  %cmp6 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %17, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %20 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  %21 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev_is_memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %21, i32 0, i32 48
  store i32 %land.ext, i32* %plane_dev_is_memory, align 4, !tbaa !50
  %22 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s*, %struct.gc_state_s*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

declare i32 @gx_default_close_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %pixel = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !51
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !51
  %8 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %8, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %9 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %7, %sh_prom
  %10 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %10, i32 0, i32 47
  %11 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %11 to i64
  %and = and i64 %shr, %conv
  store i64 %and, i64* %pixel, align 8, !tbaa !51
  %12 = load i64, i64* %pixel, align 8, !tbaa !51
  %13 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %13, i32 0, i32 46
  %14 = load i64, i64* %plane_white, align 8, !tbaa !35
  %cmp = icmp ne i64 %12, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %15, i32 0, i32 49
  store i32 1, i32* %any_marks, align 4, !tbaa !36
  br label %if.end.5

if.else:                                          ; preds = %entry
  %16 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks3 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %16, i32 0, i32 49
  %17 = load i32, i32* %any_marks3, align 4, !tbaa !36
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %19 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !32
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %24 = load i32, i32* %h.addr, align 4, !tbaa !5
  %25 = load i64, i64* %pixel, align 8, !tbaa !51
  %call = call i32 %19(%struct.gx_device_s* %20, i32 %21, i32 %22, i32 %23, i32 %24, i64 %25) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %26 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
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
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %pixel0 = alloca i64, align 8
  %pixel1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !51
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !51
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !51
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %9 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %9, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %10 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %11 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %11, i32 0, i32 47
  %12 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %12 to i64
  %and = and i64 %shr, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %and, %cond.false ]
  store i64 %cond, i64* %pixel0, align 8, !tbaa !51
  %13 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i64, i64* %color1.addr, align 8, !tbaa !51
  %cmp2 = icmp eq i64 %14, -1
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.5:                                     ; preds = %cond.end
  %15 = load i64, i64* %color1.addr, align 8, !tbaa !51
  %16 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane6 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %16, i32 0, i32 45
  %shift7 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane6, i32 0, i32 1
  %17 = load i32, i32* %shift7, align 4, !tbaa !52
  %sh_prom8 = zext i32 %17 to i64
  %shr9 = lshr i64 %15, %sh_prom8
  %18 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask10 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %18, i32 0, i32 47
  %19 = load i32, i32* %plane_mask10, align 4, !tbaa !37
  %conv11 = zext i32 %19 to i64
  %and12 = and i64 %shr9, %conv11
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.5, %cond.true.4
  %cond14 = phi i64 [ -1, %cond.true.4 ], [ %and12, %cond.false.5 ]
  store i64 %cond14, i64* %pixel1, align 8, !tbaa !51
  %20 = load i64, i64* %pixel0, align 8, !tbaa !51
  %21 = load i64, i64* %pixel1, align 8, !tbaa !51
  %cmp15 = icmp eq i64 %20, %21
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.13
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %25 = load i32, i32* %w.addr, align 4, !tbaa !5
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %27 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %call = call i32 @plane_fill_rectangle(%struct.gx_device_s* %22, i32 %23, i32 %24, i32 %25, i32 %26, i64 %27) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.13
  %28 = load i64, i64* %pixel0, align 8, !tbaa !51
  %29 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %29, i32 0, i32 46
  %30 = load i64, i64* %plane_white, align 8, !tbaa !35
  %cmp17 = icmp eq i64 %28, %30
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i64, i64* %pixel0, align 8, !tbaa !51
  %cmp19 = icmp eq i64 %31, -1
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %32 = load i64, i64* %pixel1, align 8, !tbaa !51
  %33 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white21 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %33, i32 0, i32 46
  %34 = load i64, i64* %plane_white21, align 8, !tbaa !35
  %cmp22 = icmp eq i64 %32, %34
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true
  %35 = load i64, i64* %pixel1, align 8, !tbaa !51
  %cmp25 = icmp eq i64 %35, -1
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false.24, %land.lhs.true
  %36 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %36, i32 0, i32 49
  %37 = load i32, i32* %any_marks, align 4, !tbaa !36
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.27
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false
  %38 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks30 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %38, i32 0, i32 49
  store i32 1, i32* %any_marks30, align 4, !tbaa !36
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end.29
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %40 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !53
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %42 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %43 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %45 = load i64, i64* %id.addr, align 8, !tbaa !51
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %48 = load i32, i32* %w.addr, align 4, !tbaa !5
  %49 = load i32, i32* %h.addr, align 4, !tbaa !5
  %50 = load i64, i64* %pixel0, align 8, !tbaa !51
  %51 = load i64, i64* %pixel1, align 8, !tbaa !51
  %call32 = call i32 %40(%struct.gx_device_s* %41, i8* %42, i32 %43, i32 %44, i64 %45, i32 %46, i32 %47, i32 %48, i32 %49, i64 %50, i64 %51) #4
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.28, %if.then
  %52 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
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
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %state = alloca %struct.tiling_state_s, align 8
  %buf = alloca [12 x i64], align 16
  %code = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !51
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast %struct.tiling_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 88, i8* %6) #2
  %7 = bitcast [12 x i64]* %buf to i8*
  call void @llvm.lifetime.start(i64 96, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev_is_memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %9, i32 0, i32 48
  %10 = load i32, i32* %plane_dev_is_memory, align 4, !tbaa !50
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %11 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %13, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %14, %15
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %do.body.2
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %23, %22
  store i32 %add8, i32* %h.addr, align 4, !tbaa !5
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !51
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %do.body.2
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !54
  %30 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %29, %30
  %cmp12 = icmp sgt i32 %27, %sub11
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %31 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width14, align 4, !tbaa !54
  %33 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %32, %33
  store i32 %sub15, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !55
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %36, %37
  %cmp18 = icmp sgt i32 %34, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end
  %38 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height20, align 4, !tbaa !55
  %40 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %39, %40
  store i32 %sub21, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.end
  %41 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %41, 0
  br i1 %cmp23, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %42 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %42, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %43 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %44 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %45 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 52
  %51 = load i8**, i8*** %line_ptrs, align 8, !tbaa !56
  %arrayidx = getelementptr inbounds i8*, i8** %51, i64 %idxprom
  %52 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call = call i32 @begin_tiling(%struct.tiling_state_s* %state, %struct.gx_device_plane_extract_s* %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48, i8* %52, i32 -1, i32 0) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %53, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.end.28
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %do.end.28
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %dest_x = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 6
  store i32 %55, i32* %dest_x, align 4, !tbaa !57
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 44
  %57 = load i32, i32* %raster32, align 4, !tbaa !61
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 7
  %raster33 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 2
  store i32 %57, i32* %raster33, align 4, !tbaa !62
  %call34 = call i32 @extract_partial_tile(%struct.tiling_state_s* %state) #4
  call void @end_tiling(%struct.tiling_state_s* %state) #4
  %58 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %58, i32 0, i32 49
  store i32 1, i32* %any_marks, align 4, !tbaa !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then.25
  %59 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  br label %cleanup.61

if.end.35:                                        ; preds = %entry
  %60 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %61 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %62 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %63 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %buf, i32 0, i32 0
  %66 = bitcast i64* %arraydecay to i8*
  %call36 = call i32 @begin_tiling(%struct.tiling_state_s* %state, %struct.gx_device_plane_extract_s* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65, i8* %66, i32 96, i32 1) #4
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %67, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.39:                                        ; preds = %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %land.end, %if.end.39
  %call41 = call i32 @extract_partial_tile(%struct.tiling_state_s* %state) #4
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %70 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !38
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %buffer42 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 7
  %data43 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer42, i32 0, i32 0
  %72 = load i8*, i8** %data43, align 8, !tbaa !63
  %buffer44 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 7
  %raster45 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer44, i32 0, i32 2
  %73 = load i32, i32* %raster45, align 4, !tbaa !62
  %74 = load i32, i32* %x.addr, align 4, !tbaa !5
  %offset = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 8
  %x46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 0
  %75 = load i32, i32* %x46, align 4, !tbaa !64
  %add47 = add nsw i32 %74, %75
  %76 = load i32, i32* %y.addr, align 4, !tbaa !5
  %offset48 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 8
  %y49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset48, i32 0, i32 1
  %77 = load i32, i32* %y49, align 4, !tbaa !65
  %add50 = add nsw i32 %76, %77
  %size = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 9
  %x51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %78 = load i32, i32* %x51, align 4, !tbaa !66
  %size52 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 9
  %y53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size52, i32 0, i32 1
  %79 = load i32, i32* %y53, align 4, !tbaa !67
  %call54 = call i32 %70(%struct.gx_device_s* %71, i8* %72, i32 0, i32 %73, i64 0, i32 %add47, i32 %add50, i32 %78, i32 %79) #4
  store i32 %call54, i32* %code, align 4, !tbaa !5
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.40
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp sge i32 %80, 0
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.55
  %call57 = call i32 @next_tile(%struct.tiling_state_s* %state) #4
  %tobool58 = icmp ne i32 %call57, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.55
  %81 = phi i1 [ false, %do.cond.55 ], [ %tobool58, %land.rhs ]
  br i1 %81, label %do.body.40, label %do.end.59

do.end.59:                                        ; preds = %land.end
  call void @end_tiling(%struct.tiling_state_s* %state) #4
  %82 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks60 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %82, i32 0, i32 49
  store i32 1, i32* %any_marks60, align 4, !tbaa !36
  %83 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %do.end.59, %if.then.38, %cleanup
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast [12 x i64]* %buf to i8*
  call void @llvm.lifetime.end(i64 96, i8* %85) #2
  %86 = bitcast %struct.tiling_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 88, i8* %86) #2
  %87 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = load i32, i32* %retval
  ret i32 %89
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #0 {
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
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %pixel = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !51
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !51
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !51
  %8 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %8, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %9 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %7, %sh_prom
  %10 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %10, i32 0, i32 47
  %11 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %11 to i64
  %and = and i64 %shr, %conv
  store i64 %and, i64* %pixel, align 8, !tbaa !51
  %12 = load i64, i64* %pixel, align 8, !tbaa !51
  %13 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %13, i32 0, i32 46
  %14 = load i64, i64* %plane_white, align 8, !tbaa !35
  %cmp = icmp ne i64 %12, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %15, i32 0, i32 49
  store i32 1, i32* %any_marks, align 4, !tbaa !36
  br label %if.end.5

if.else:                                          ; preds = %entry
  %16 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks3 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %16, i32 0, i32 49
  %17 = load i32, i32* %any_marks3, align 4, !tbaa !36
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %19 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !68
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %24 = load i64, i64* %id.addr, align 8, !tbaa !51
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load i64, i64* %pixel, align 8, !tbaa !51
  %30 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 %19(%struct.gx_device_s* %20, i8* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, i64 %29, i32 %30) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %31 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %lop_orig = alloca i32, align 4
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %lopis = alloca %struct.gs_imager_state_s, align 8
  %pis_draw = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i32* %lop_orig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_imager_state_s* %7 to %struct.gs_state_s*
  %call = call i32 @gs_current_logical_op(%struct.gs_state_s* %8) #4
  store i32 %call, i32* %lop_orig, align 4, !tbaa !5
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %lop_orig, align 4, !tbaa !5
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call2 = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %12, %struct.gx_device_color_s* %13, i32* %lop) #4
  switch i32 %call2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %14 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %14) #2
  %15 = bitcast %struct.gs_imager_state_s** %pis_draw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %16, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  %17 = load i32, i32* %lop, align 4, !tbaa !5
  %18 = load i32, i32* %lop_orig, align 4, !tbaa !5
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  %21 = bitcast %struct.gs_imager_state_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 1616, i32 8, i1 false), !tbaa.struct !69
  %22 = bitcast %struct.gs_imager_state_s* %lopis to %struct.gs_state_s*
  %23 = load i32, i32* %lop, align 4, !tbaa !5
  %call4 = call i32 @gs_set_logical_op(%struct.gs_state_s* %22, i32 %23) #4
  store %struct.gs_imager_state_s* %lopis, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %25 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !75
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %29 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call5 = call i32 %25(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %27, %struct.gx_path_s* %28, %struct.gx_fill_params_s* %29, %struct.gx_device_color_s* %dcolor, %struct.gx_clip_path_s* %30) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast %struct.gs_imager_state_s** %pis_draw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %32) #2
  br label %cleanup

sw.default:                                       ; preds = %entry
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %36 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_default_fill_path(%struct.gx_device_s* %33, %struct.gs_imager_state_s* %34, %struct.gx_path_s* %35, %struct.gx_fill_params_s* %36, %struct.gx_device_color_s* %37, %struct.gx_clip_path_s* %38) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end, %sw.bb
  %39 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %39) #2
  %40 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %lop_orig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %lop_orig = alloca i32, align 4
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %lopis = alloca %struct.gs_imager_state_s, align 8
  %pis_draw = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i32* %lop_orig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_imager_state_s* %7 to %struct.gs_state_s*
  %call = call i32 @gs_current_logical_op(%struct.gs_state_s* %8) #4
  store i32 %call, i32* %lop_orig, align 4, !tbaa !5
  %9 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %lop_orig, align 4, !tbaa !5
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call2 = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %12, %struct.gx_device_color_s* %13, i32* %lop) #4
  switch i32 %call2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %14 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %14) #2
  %15 = bitcast %struct.gs_imager_state_s** %pis_draw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %16, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  %17 = load i32, i32* %lop, align 4, !tbaa !5
  %18 = load i32, i32* %lop_orig, align 4, !tbaa !5
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  %21 = bitcast %struct.gs_imager_state_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 1616, i32 8, i1 false), !tbaa.struct !69
  %22 = bitcast %struct.gs_imager_state_s* %lopis to %struct.gs_state_s*
  %23 = load i32, i32* %lop, align 4, !tbaa !5
  %call4 = call i32 @gs_set_logical_op(%struct.gs_state_s* %22, i32 %23) #4
  store %struct.gs_imager_state_s* %lopis, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 25
  %25 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !76
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_draw, align 8, !tbaa !1
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %29 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call5 = call i32 %25(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %27, %struct.gx_path_s* %28, %struct.gx_stroke_params_s* %29, %struct.gx_device_color_s* %dcolor, %struct.gx_clip_path_s* %30) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast %struct.gs_imager_state_s** %pis_draw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gs_imager_state_s* %lopis to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %32) #2
  br label %cleanup

sw.default:                                       ; preds = %entry
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %36 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %33, %struct.gs_imager_state_s* %34, %struct.gx_path_s* %35, %struct.gx_stroke_params_s* %36, %struct.gx_device_color_s* %37, %struct.gx_clip_path_s* %38) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end, %sw.bb
  %39 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %39) #2
  %40 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %lop_orig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
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
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !51
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %7, %struct.gx_device_color_s* %8, i32* %lop.addr) #4
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !77
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %21 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call3 = call i32 %10(%struct.gx_device_s* %11, i8* %12, i32 %13, i32 %14, i64 0, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_color_s* %dcolor, i32 %19, i32 %20, %struct.gx_clip_path_s* %21) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %24 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load i32, i32* %w.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %31 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %32 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %22, i8* %23, i32 %24, i32 %25, i64 0, i32 %26, i32 %27, i32 %28, i32 %29, %struct.gx_device_color_s* %dcolor, i32 %30, i32 %31, %struct.gx_clip_path_s* %32) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.2, %sw.bb
  %33 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %33) #2
  %34 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %7, %struct.gx_device_color_s* %8, i32* %lop.addr) #4
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %10 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !78
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %12 = load i32, i32* %px.addr, align 4, !tbaa !5
  %13 = load i32, i32* %py.addr, align 4, !tbaa !5
  %14 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %16 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %17 = load i32, i32* %by.addr, align 4, !tbaa !5
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call3 = call i32 %10(%struct.gx_device_s* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct.gx_device_color_s* %dcolor, i32 %18) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load i32, i32* %px.addr, align 4, !tbaa !5
  %21 = load i32, i32* %py.addr, align 4, !tbaa !5
  %22 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %23 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %24 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %25 = load i32, i32* %by.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %27 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call4 = call i32 @gx_default_fill_parallelogram(%struct.gx_device_s* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, %struct.gx_device_color_s* %26, i32 %27) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.2, %sw.bb
  %28 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %28) #2
  %29 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %7, %struct.gx_device_color_s* %8, i32* %lop.addr) #4
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 29
  %10 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !79
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %12 = load i32, i32* %px.addr, align 4, !tbaa !5
  %13 = load i32, i32* %py.addr, align 4, !tbaa !5
  %14 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %16 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %17 = load i32, i32* %by.addr, align 4, !tbaa !5
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call3 = call i32 %10(%struct.gx_device_s* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct.gx_device_color_s* %dcolor, i32 %18) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load i32, i32* %px.addr, align 4, !tbaa !5
  %21 = load i32, i32* %py.addr, align 4, !tbaa !5
  %22 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %23 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %24 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %25 = load i32, i32* %by.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %27 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call4 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, %struct.gx_device_color_s* %26, i32 %27) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.2, %sw.bb
  %28 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %28) #2
  %29 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %phase_x, i32 %phase_y) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %pixel0 = alloca i64, align 8
  %pixel1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %plane_tile = alloca %struct.gx_strip_bitmap_s, align 8
  %state = alloca %struct.tiling_state_s, align 8
  %buf = alloca [12 x i64], align 16
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !51
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !51
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %9 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %9, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %10 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %11 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %11, i32 0, i32 47
  %12 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %12 to i64
  %and = and i64 %shr, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %and, %cond.false ]
  store i64 %cond, i64* %pixel0, align 8, !tbaa !51
  %13 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i64, i64* %color1.addr, align 8, !tbaa !51
  %cmp2 = icmp eq i64 %14, -1
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.5:                                     ; preds = %cond.end
  %15 = load i64, i64* %color1.addr, align 8, !tbaa !51
  %16 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane6 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %16, i32 0, i32 45
  %shift7 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane6, i32 0, i32 1
  %17 = load i32, i32* %shift7, align 4, !tbaa !52
  %sh_prom8 = zext i32 %17 to i64
  %shr9 = lshr i64 %15, %sh_prom8
  %18 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask10 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %18, i32 0, i32 47
  %19 = load i32, i32* %plane_mask10, align 4, !tbaa !37
  %conv11 = zext i32 %19 to i64
  %and12 = and i64 %shr9, %conv11
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.5, %cond.true.4
  %cond14 = phi i64 [ -1, %cond.true.4 ], [ %and12, %cond.false.5 ]
  store i64 %cond14, i64* %pixel1, align 8, !tbaa !51
  %20 = load i64, i64* %pixel0, align 8, !tbaa !51
  %21 = load i64, i64* %pixel1, align 8, !tbaa !51
  %cmp15 = icmp eq i64 %20, %21
  br i1 %cmp15, label %if.then, label %if.end.39

if.then:                                          ; preds = %cond.end.13
  %22 = load i64, i64* %pixel0, align 8, !tbaa !51
  %cmp17 = icmp ne i64 %22, -1
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %25 = load i32, i32* %y.addr, align 4, !tbaa !5
  %26 = load i32, i32* %w.addr, align 4, !tbaa !5
  %27 = load i32, i32* %h.addr, align 4, !tbaa !5
  %28 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %call = call i32 @plane_fill_rectangle(%struct.gx_device_s* %23, i32 %24, i32 %25, i32 %26, i32 %27, i64 %28) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %if.then
  %29 = bitcast %struct.gx_strip_bitmap_s* %plane_tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %29) #2
  %30 = bitcast %struct.tiling_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 88, i8* %30) #2
  %31 = bitcast [12 x i64]* %buf to i8*
  call void @llvm.lifetime.start(i64 96, i8* %31) #2
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %34 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8, !tbaa !80
  %36 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %36, i32 0, i32 1
  %37 = load i32, i32* %raster, align 4, !tbaa !82
  %38 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %38, i32 0, i32 2
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %39 = load i32, i32* %x20, align 4, !tbaa !83
  %40 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size21 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %40, i32 0, i32 2
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size21, i32 0, i32 1
  %41 = load i32, i32* %y22, align 4, !tbaa !84
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %buf, i32 0, i32 0
  %42 = bitcast i64* %arraydecay to i8*
  %call23 = call i32 @begin_tiling(%struct.tiling_state_s* %state, %struct.gx_device_plane_extract_s* %33, i8* %35, i32 0, i32 %37, i32 %39, i32 %41, i8* %42, i32 96, i32 0) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %43, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %45 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %48 = load i32, i32* %w.addr, align 4, !tbaa !5
  %49 = load i32, i32* %h.addr, align 4, !tbaa !5
  %50 = load i64, i64* %color0.addr, align 8, !tbaa !51
  %51 = load i64, i64* %color1.addr, align 8, !tbaa !51
  %52 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %53 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %call27 = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %44, %struct.gx_strip_bitmap_s* %45, i32 %46, i32 %47, i32 %48, i32 %49, i64 %50, i64 %51, i32 %52, i32 %53) #4
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  %call29 = call i32 @extract_partial_tile(%struct.tiling_state_s* %state) #4
  %54 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_strip_bitmap_s* %plane_tile to i8*
  %56 = bitcast %struct.gx_strip_bitmap_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 48, i32 8, i1 false), !tbaa.struct !85
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 7
  %data30 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 0
  %57 = load i8*, i8** %data30, align 8, !tbaa !63
  %data31 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %plane_tile, i32 0, i32 0
  store i8* %57, i8** %data31, align 8, !tbaa !80
  %buffer32 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state, i32 0, i32 7
  %raster33 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer32, i32 0, i32 2
  %58 = load i32, i32* %raster33, align 4, !tbaa !62
  %raster34 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %plane_tile, i32 0, i32 1
  store i32 %58, i32* %raster34, align 4, !tbaa !82
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %plane_tile, i32 0, i32 3
  store i64 0, i64* %id, align 8, !tbaa !86
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %60 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !87
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %62 = load i32, i32* %x.addr, align 4, !tbaa !5
  %63 = load i32, i32* %y.addr, align 4, !tbaa !5
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  %66 = load i64, i64* %pixel0, align 8, !tbaa !51
  %67 = load i64, i64* %pixel1, align 8, !tbaa !51
  %68 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %69 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %call35 = call i32 %60(%struct.gx_device_s* %61, %struct.gx_strip_bitmap_s* %plane_tile, i32 %62, i32 %63, i32 %64, i32 %65, i64 %66, i64 %67, i32 %68, i32 %69) #4
  store i32 %call35, i32* %code, align 4, !tbaa !5
  call void @end_tiling(%struct.tiling_state_s* %state) #4
  %70 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %70, i32 0, i32 49
  store i32 1, i32* %any_marks, align 4, !tbaa !36
  %71 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.26
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast [12 x i64]* %buf to i8*
  call void @llvm.lifetime.end(i64 96, i8* %73) #2
  %74 = bitcast %struct.tiling_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 88, i8* %74) #2
  %75 = bitcast %struct.gx_strip_bitmap_s* %plane_tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %75) #2
  br label %cleanup.59

if.end.39:                                        ; preds = %cond.end.13
  %76 = load i64, i64* %pixel0, align 8, !tbaa !51
  %77 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %77, i32 0, i32 46
  %78 = load i64, i64* %plane_white, align 8, !tbaa !35
  %cmp40 = icmp eq i64 %76, %78
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %79 = load i64, i64* %pixel0, align 8, !tbaa !51
  %cmp42 = icmp eq i64 %79, -1
  br i1 %cmp42, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.39
  %80 = load i64, i64* %pixel1, align 8, !tbaa !51
  %81 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_white44 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %81, i32 0, i32 46
  %82 = load i64, i64* %plane_white44, align 8, !tbaa !35
  %cmp45 = icmp eq i64 %80, %82
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true
  %83 = load i64, i64* %pixel1, align 8, !tbaa !51
  %cmp48 = icmp eq i64 %83, -1
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %lor.lhs.false.47, %land.lhs.true
  %84 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks51 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %84, i32 0, i32 49
  %85 = load i32, i32* %any_marks51, align 4, !tbaa !36
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.53:                                        ; preds = %if.then.50
  br label %if.end.55

if.else:                                          ; preds = %lor.lhs.false.47, %lor.lhs.false
  %86 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %any_marks54 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %86, i32 0, i32 49
  store i32 1, i32* %any_marks54, align 4, !tbaa !36
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.end.53
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 42
  %strip_tile_rectangle57 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 34
  %88 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle57, align 8, !tbaa !87
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %90 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %91 = load i32, i32* %x.addr, align 4, !tbaa !5
  %92 = load i32, i32* %y.addr, align 4, !tbaa !5
  %93 = load i32, i32* %w.addr, align 4, !tbaa !5
  %94 = load i32, i32* %h.addr, align 4, !tbaa !5
  %95 = load i64, i64* %pixel0, align 8, !tbaa !51
  %96 = load i64, i64* %pixel1, align 8, !tbaa !51
  %97 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %98 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %call58 = call i32 %88(%struct.gx_device_s* %89, %struct.gx_strip_bitmap_s* %90, i32 %91, i32 %92, i32 %93, i32 %94, i64 %95, i64 %96, i32 %97, i32 %98) #4
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.55, %if.then.52, %cleanup, %if.then.19
  %99 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  %101 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %rop = alloca i32, align 4
  %source = alloca %struct.crp_, align 8
  %texture = alloca %struct.crp_, align 8
  %sbuf = alloca [12 x i64], align 16
  %tbuf = alloca [12 x i64], align 16
  %plane_source = alloca i8*, align 8
  %plane_raster = alloca i32, align 4
  %plane_texture = alloca %struct.gx_strip_bitmap_s, align 8
  %plane_textures = alloca %struct.gx_strip_bitmap_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !51
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %7, 255
  store i32 %and, i32* %rop, align 4, !tbaa !71
  %8 = bitcast %struct.crp_* %source to i8*
  call void @llvm.lifetime.start(i64 112, i8* %8) #2
  %9 = bitcast %struct.crp_* %texture to i8*
  call void @llvm.lifetime.start(i64 112, i8* %9) #2
  %10 = bitcast [12 x i64]* %sbuf to i8*
  call void @llvm.lifetime.start(i64 96, i8* %10) #2
  %11 = bitcast [12 x i64]* %tbuf to i8*
  call void @llvm.lifetime.start(i64 96, i8* %11) #2
  %12 = bitcast i8** %plane_source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 -1163005939, i32* %plane_raster, align 4, !tbaa !5
  %14 = bitcast %struct.gx_strip_bitmap_s* %plane_texture to i8*
  call void @llvm.lifetime.start(i64 48, i8* %14) #2
  %15 = bitcast %struct.gx_strip_bitmap_s** %plane_textures to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %plane_textures, align 8, !tbaa !1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and2 = and i32 %17, 768
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %20 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %21 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %22 = load i64, i64* %id.addr, align 8, !tbaa !51
  %23 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %24 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %25 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load i32, i32* %w.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %31 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %32 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_strip_copy_rop(%struct.gx_device_s* %18, i8* %19, i32 %20, i32 %21, i64 %22, i64* %23, %struct.gx_strip_bitmap_s* %24, i64* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %33 = load i32, i32* %rop, align 4, !tbaa !71
  %shl = shl i32 %33, 2
  %34 = load i32, i32* %rop, align 4, !tbaa !71
  %xor = xor i32 %shl, %34
  %and3 = and i32 %xor, 204
  %cmp = icmp ne i32 %and3, 0
  br i1 %cmp, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %sdata.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 1
  store i64* null, i64** %colors, align 8, !tbaa !88
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %35 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool5 = icmp ne i64* %35, null
  br i1 %tobool5, label %if.then.6, label %if.else.29

if.then.6:                                        ; preds = %if.else
  %36 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %36, i64 0
  %37 = load i64, i64* %arrayidx, align 8, !tbaa !51
  %38 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %38, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %39 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %39 to i64
  %shr = lshr i64 %37, %sh_prom
  %40 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %40, i32 0, i32 47
  %41 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %41 to i64
  %and7 = and i64 %shr, %conv
  %pixels = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels, i32 0, i64 0
  store i64 %and7, i64* %arrayidx8, align 8, !tbaa !51
  %42 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %42, i64 1
  %43 = load i64, i64* %arrayidx9, align 8, !tbaa !51
  %44 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane10 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %44, i32 0, i32 45
  %shift11 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane10, i32 0, i32 1
  %45 = load i32, i32* %shift11, align 4, !tbaa !52
  %sh_prom12 = zext i32 %45 to i64
  %shr13 = lshr i64 %43, %sh_prom12
  %46 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask14 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %46, i32 0, i32 47
  %47 = load i32, i32* %plane_mask14, align 4, !tbaa !37
  %conv15 = zext i32 %47 to i64
  %and16 = and i64 %shr13, %conv15
  %pixels17 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels17, i32 0, i64 1
  store i64 %and16, i64* %arrayidx18, align 8, !tbaa !51
  %pixels19 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels19, i32 0, i64 0
  %48 = load i64, i64* %arrayidx20, align 8, !tbaa !51
  %pixels21 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels21, i32 0, i64 1
  %49 = load i64, i64* %arrayidx22, align 8, !tbaa !51
  %cmp23 = icmp eq i64 %48, %49
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.6
  store i8* null, i8** %sdata.addr, align 8, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.6
  %pixels27 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %pixels27, i32 0, i32 0
  %colors28 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 1
  store i64* %arraydecay, i64** %colors28, align 8, !tbaa !88
  br label %if.end.31

if.else.29:                                       ; preds = %if.else
  %colors30 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 1
  store i64* null, i64** %colors30, align 8, !tbaa !88
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.end.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.4
  %50 = load i32, i32* %rop, align 4, !tbaa !71
  %shl33 = shl i32 %50, 4
  %51 = load i32, i32* %rop, align 4, !tbaa !71
  %xor34 = xor i32 %shl33, %51
  %and35 = and i32 %xor34, 240
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.else.40, label %if.then.38

if.then.38:                                       ; preds = %if.end.32
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %colors39 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 1
  store i64* null, i64** %colors39, align 8, !tbaa !88
  br label %if.end.77

if.else.40:                                       ; preds = %if.end.32
  %52 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool41 = icmp ne i64* %52, null
  br i1 %tobool41, label %if.then.42, label %if.else.74

if.then.42:                                       ; preds = %if.else.40
  %53 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i64, i64* %53, i64 0
  %54 = load i64, i64* %arrayidx43, align 8, !tbaa !51
  %55 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane44 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %55, i32 0, i32 45
  %shift45 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane44, i32 0, i32 1
  %56 = load i32, i32* %shift45, align 4, !tbaa !52
  %sh_prom46 = zext i32 %56 to i64
  %shr47 = lshr i64 %54, %sh_prom46
  %57 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask48 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %57, i32 0, i32 47
  %58 = load i32, i32* %plane_mask48, align 4, !tbaa !37
  %conv49 = zext i32 %58 to i64
  %and50 = and i64 %shr47, %conv49
  %pixels51 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels51, i32 0, i64 0
  store i64 %and50, i64* %arrayidx52, align 8, !tbaa !51
  %59 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i64, i64* %59, i64 1
  %60 = load i64, i64* %arrayidx53, align 8, !tbaa !51
  %61 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane54 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %61, i32 0, i32 45
  %shift55 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane54, i32 0, i32 1
  %62 = load i32, i32* %shift55, align 4, !tbaa !52
  %sh_prom56 = zext i32 %62 to i64
  %shr57 = lshr i64 %60, %sh_prom56
  %63 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_mask58 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %63, i32 0, i32 47
  %64 = load i32, i32* %plane_mask58, align 4, !tbaa !37
  %conv59 = zext i32 %64 to i64
  %and60 = and i64 %shr57, %conv59
  %pixels61 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels61, i32 0, i64 1
  store i64 %and60, i64* %arrayidx62, align 8, !tbaa !51
  %pixels63 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels63, i32 0, i64 0
  %65 = load i64, i64* %arrayidx64, align 8, !tbaa !51
  %pixels65 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels65, i32 0, i64 1
  %66 = load i64, i64* %arrayidx66, align 8, !tbaa !51
  %cmp67 = icmp eq i64 %65, %66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.42
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.42
  %pixels71 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [2 x i64], [2 x i64]* %pixels71, i32 0, i32 0
  %colors73 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 1
  store i64* %arraydecay72, i64** %colors73, align 8, !tbaa !88
  br label %if.end.76

if.else.74:                                       ; preds = %if.else.40
  %colors75 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 1
  store i64* null, i64** %colors75, align 8, !tbaa !88
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.end.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.38
  %67 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %tobool78 = icmp ne i8* %67, null
  br i1 %tobool78, label %if.then.79, label %if.else.90

if.then.79:                                       ; preds = %if.end.77
  %state = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  %68 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %69 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %70 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %71 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %73 = load i32, i32* %y.addr, align 4, !tbaa !5
  %arraydecay80 = getelementptr inbounds [12 x i64], [12 x i64]* %sbuf, i32 0, i32 0
  %74 = bitcast i64* %arraydecay80 to i8*
  %call81 = call i32 @begin_tiling(%struct.tiling_state_s* %state, %struct.gx_device_plane_extract_s* %68, i8* %69, i32 %70, i32 %71, i32 %72, i32 %73, i8* %74, i32 96, i32 1) #4
  store i32 %call81, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %75, 0
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.then.79
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %78 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %79 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %80 = load i64, i64* %id.addr, align 8, !tbaa !51
  %81 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %82 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %83 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %84 = load i32, i32* %x.addr, align 4, !tbaa !5
  %85 = load i32, i32* %y.addr, align 4, !tbaa !5
  %86 = load i32, i32* %w.addr, align 4, !tbaa !5
  %87 = load i32, i32* %h.addr, align 4, !tbaa !5
  %88 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %89 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %90 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call85 = call i32 @gx_default_strip_copy_rop(%struct.gx_device_s* %76, i8* %77, i32 %78, i32 %79, i64 %80, i64* %81, %struct.gx_strip_bitmap_s* %82, i64* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90) #4
  store i32 %call85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %if.then.79
  %state87 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state87, i32 0, i32 7
  %data = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 0
  %91 = load i8*, i8** %data, align 8, !tbaa !90
  store i8* %91, i8** %plane_source, align 8, !tbaa !1
  %state88 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  %buffer89 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state88, i32 0, i32 7
  %raster = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer89, i32 0, i32 2
  %92 = load i32, i32* %raster, align 4, !tbaa !91
  store i32 %92, i32* %plane_raster, align 4, !tbaa !5
  br label %if.end.91

if.else.90:                                       ; preds = %if.end.77
  store i8* null, i8** %plane_source, align 8, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.end.86
  %93 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool92 = icmp ne %struct.gx_strip_bitmap_s* %93, null
  br i1 %tobool92, label %if.then.93, label %if.end.118

if.then.93:                                       ; preds = %if.end.91
  %state94 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 2
  %94 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %95 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data95 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %95, i32 0, i32 0
  %96 = load i8*, i8** %data95, align 8, !tbaa !80
  %97 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster96 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %97, i32 0, i32 1
  %98 = load i32, i32* %raster96, align 4, !tbaa !82
  %99 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %99, i32 0, i32 2
  %x97 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %100 = load i32, i32* %x97, align 4, !tbaa !83
  %101 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size98 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %101, i32 0, i32 2
  %y99 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size98, i32 0, i32 1
  %102 = load i32, i32* %y99, align 4, !tbaa !84
  %arraydecay100 = getelementptr inbounds [12 x i64], [12 x i64]* %tbuf, i32 0, i32 0
  %103 = bitcast i64* %arraydecay100 to i8*
  %call101 = call i32 @begin_tiling(%struct.tiling_state_s* %state94, %struct.gx_device_plane_extract_s* %94, i8* %96, i32 0, i32 %98, i32 %100, i32 %102, i8* %103, i32 96, i32 0) #4
  store i32 %call101, i32* %code, align 4, !tbaa !5
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %104, 0
  br i1 %cmp102, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.then.93
  %105 = load i8*, i8** %plane_source, align 8, !tbaa !1
  %tobool105 = icmp ne i8* %105, null
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.then.104
  %state107 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  call void @end_tiling(%struct.tiling_state_s* %state107) #4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.104
  %106 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %if.then.93
  %107 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %108 = bitcast %struct.gx_strip_bitmap_s* %plane_texture to i8*
  %109 = bitcast %struct.gx_strip_bitmap_s* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 48, i32 8, i1 false), !tbaa.struct !85
  %state110 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 2
  %buffer111 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state110, i32 0, i32 7
  %data112 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer111, i32 0, i32 0
  %110 = load i8*, i8** %data112, align 8, !tbaa !90
  %data113 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %plane_texture, i32 0, i32 0
  store i8* %110, i8** %data113, align 8, !tbaa !80
  %state114 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 2
  %buffer115 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %state114, i32 0, i32 7
  %raster116 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer115, i32 0, i32 2
  %111 = load i32, i32* %raster116, align 4, !tbaa !91
  %raster117 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %plane_texture, i32 0, i32 1
  store i32 %111, i32* %raster117, align 4, !tbaa !82
  store %struct.gx_strip_bitmap_s* %plane_texture, %struct.gx_strip_bitmap_s** %plane_textures, align 8, !tbaa !1
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.109, %if.end.91
  %112 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool119 = icmp ne %struct.gx_strip_bitmap_s* %112, null
  br i1 %tobool119, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.end.118
  %state121 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 2
  %call122 = call i32 @extract_partial_tile(%struct.tiling_state_s* %state121) #4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.end.118
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.123
  %113 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %tobool124 = icmp ne i8* %113, null
  br i1 %tobool124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %do.body
  %state126 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  %call127 = call i32 @extract_partial_tile(%struct.tiling_state_s* %state126) #4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %do.body
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %114, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %115 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !92
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %117 = load i8*, i8** %plane_source, align 8, !tbaa !1
  %118 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %119 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %colors129 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 1
  %120 = load i64*, i64** %colors129, align 8, !tbaa !88
  %121 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %plane_textures, align 8, !tbaa !1
  %colors130 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 1
  %122 = load i64*, i64** %colors130, align 8, !tbaa !88
  %123 = load i32, i32* %x.addr, align 4, !tbaa !5
  %124 = load i32, i32* %y.addr, align 4, !tbaa !5
  %125 = load i32, i32* %w.addr, align 4, !tbaa !5
  %126 = load i32, i32* %h.addr, align 4, !tbaa !5
  %127 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %128 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %129 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call131 = call i32 %115(%struct.gx_device_s* %116, i8* %117, i32 %118, i32 %119, i64 0, i64* %120, %struct.gx_strip_bitmap_s* %121, i64* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129) #4
  store i32 %call131, i32* %code, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.128
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp132 = icmp sge i32 %130, 0
  br i1 %cmp132, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %131 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %tobool134 = icmp ne i8* %131, null
  br i1 %tobool134, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %state135 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  %call136 = call i32 @next_tile(%struct.tiling_state_s* %state135) #4
  %tobool137 = icmp ne i32 %call136, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %132 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool137, %land.rhs ]
  br i1 %132, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %133 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool138 = icmp ne %struct.gx_strip_bitmap_s* %133, null
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %do.end
  %state140 = getelementptr inbounds %struct.crp_, %struct.crp_* %texture, i32 0, i32 2
  call void @end_tiling(%struct.tiling_state_s* %state140) #4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %do.end
  %134 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %tobool142 = icmp ne i8* %134, null
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.141
  %state144 = getelementptr inbounds %struct.crp_, %struct.crp_* %source, i32 0, i32 2
  call void @end_tiling(%struct.tiling_state_s* %state144) #4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.141
  %135 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.145, %if.end.108, %if.then.84, %if.then
  %136 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast %struct.gx_strip_bitmap_s** %plane_textures to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast %struct.gx_strip_bitmap_s* %plane_texture to i8*
  call void @llvm.lifetime.end(i64 48, i8* %138) #2
  %139 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i8** %plane_source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast [12 x i64]* %tbuf to i8*
  call void @llvm.lifetime.end(i64 96, i8* %141) #2
  %142 = bitcast [12 x i64]* %sbuf to i8*
  call void @llvm.lifetime.end(i64 96, i8* %142) #2
  %143 = bitcast %struct.crp_* %texture to i8*
  call void @llvm.lifetime.end(i64 112, i8* %143) #2
  %144 = bitcast %struct.crp_* %source to i8*
  call void @llvm.lifetime.end(i64 112, i8* %144) #2
  %145 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %lop = alloca i32, align 4
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %info = alloca %struct.plane_image_enum_s*, align 8
  %pis_image = alloca %struct.gs_imager_state_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %uses_color = alloca i32, align 4
  %code = alloca i32, align 4
  %pim1 = alloca %struct.gs_image1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_imager_state_s* %4 to %struct.gs_state_s*
  %call = call i32 @gs_current_logical_op(%struct.gs_state_s* %5) #4
  store i32 %call, i32* %lop, align 4, !tbaa !5
  %6 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.plane_image_enum_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store %struct.plane_image_enum_s* null, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %8 = bitcast %struct.gs_imager_state_s** %pis_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct.gs_imager_state_s* null, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %9) #2
  %10 = bitcast i32* %uses_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %uses_color, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %12, i32 0, i32 0
  %13 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !93
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %13, i32 0, i32 6
  %14 = load i32, i32* %index, align 4, !tbaa !95
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %15 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_image_common_s* %16 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %17, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %18 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %18, i32 0, i32 12
  %19 = load i32, i32* %Alpha, align 4, !tbaa !97
  %cmp = icmp ne i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %20 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %20, i32 0, i32 10
  %21 = load i32, i32* %ImageMask, align 4, !tbaa !99
  store i32 %21, i32* %uses_color, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %22 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 2, label %sw.epilog
    i32 3, label %fail
  ]

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %fail

sw.epilog:                                        ; preds = %sw.bb.1, %cleanup
  %23 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gs_image_common_s* %23 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %24, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %25 = load i32, i32* %lop, align 4, !tbaa !5
  %and = and i32 %25, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %26 = load i32, i32* %uses_color, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %26, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %27 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %27, i32 0, i32 8
  %28 = load i32, i32* %CombineWithColor, align 4, !tbaa !100
  %tobool4 = icmp ne i32 %28, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %lor.lhs.false.3, %lor.lhs.false
  %29 = load i32, i32* %lop, align 4, !tbaa !5
  %and5 = and i32 %29, 512
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true, %sw.epilog
  br label %fail

if.end.8:                                         ; preds = %land.lhs.true, %lor.lhs.false.3
  %30 = load i32, i32* %uses_color, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %30, 0
  br i1 %tobool9, label %if.then.19, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %31 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor11 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %31, i32 0, i32 8
  %32 = load i32, i32* %CombineWithColor11, align 4, !tbaa !100
  %tobool12 = icmp ne i32 %32, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %lor.lhs.false.10
  %33 = load i32, i32* %lop, align 4, !tbaa !5
  %shl = shl i32 %33, 4
  %34 = load i32, i32* %lop, align 4, !tbaa !5
  %xor = xor i32 %shl, %34
  %and14 = and i32 %xor, 240
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.13
  %35 = load i32, i32* %lop, align 4, !tbaa !5
  %and17 = and i32 %35, 512
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.16, %land.lhs.true.13, %if.end.8
  %36 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call20 = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %dcolor, %struct.gx_device_plane_extract_s* %36, %struct.gx_device_color_s* %37, i32* %lop) #4
  %cmp21 = icmp eq i32 %call20, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  br label %fail

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.10
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 0, i64* %pure, align 8, !tbaa !51
  %type24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type24, align 8, !tbaa !102
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !108
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.23
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %39 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !109
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call26 = call i8* %39(%struct.gs_memory_s* %40, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_plane_image_enum to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #4
  %41 = bitcast i8* %call26 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %41, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call27 = call %struct.gs_imager_state_s* @gs_imager_state_copy(%struct.gs_imager_state_s* %42, %struct.gs_memory_s* %43) #4
  store %struct.gs_imager_state_s* %call27, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %cmp28 = icmp eq %struct.gs_imager_state_s* %44, null
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.25
  %45 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.plane_image_enum_s* %45, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.29, %if.end.25
  br label %fail

if.end.32:                                        ; preds = %lor.lhs.false.29
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gs_imager_state_s* %46 to i8*
  %49 = bitcast %struct.gs_imager_state_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 1616, i32 8, i1 false), !tbaa.struct !69
  %50 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %51 = bitcast %struct.plane_image_enum_s* %50 to i8*
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 2
  store i8* %51, i8** %client_data, align 8, !tbaa !112
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %get_cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 38
  store %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @plane_get_cmap_procs, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)** %get_cmap_procs, align 8, !tbaa !123
  %54 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %54, i32 0, i32 44
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !26
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 37
  %56 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !124
  %57 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev34 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %57, i32 0, i32 44
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev34, align 8, !tbaa !26
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %61 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %62 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %63 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %65 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %info35 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %65, i32 0, i32 9
  %call36 = call i32 %56(%struct.gx_device_s* %58, %struct.gs_imager_state_s* %59, %struct.gs_matrix_s* %60, %struct.gs_image_common_s* %61, %struct.gs_int_rect_s* %62, %struct.gx_device_color_s* %dcolor, %struct.gx_clip_path_s* %63, %struct.gs_memory_s* %64, %struct.gx_image_enum_common_s** %info35) #4
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %66, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  br label %fail

if.end.39:                                        ; preds = %if.end.32
  %67 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %68 = bitcast %struct.plane_image_enum_s* %67 to %struct.gx_image_enum_common_s*
  %69 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %info40 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %69, i32 0, i32 9
  %70 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info40, align 8, !tbaa !125
  %71 = bitcast %struct.gx_image_enum_common_s* %68 to i8*
  %72 = bitcast %struct.gx_image_enum_common_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 568, i32 8, i1 false), !tbaa.struct !127
  %73 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %73, i32 0, i32 1
  store %struct.gx_image_enum_procs_s* @plane_image_enum_procs, %struct.gx_image_enum_procs_s** %procs41, align 8, !tbaa !128
  %74 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_plane_extract_s* %74 to %struct.gx_device_s*
  %76 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %dev42 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %76, i32 0, i32 2
  store %struct.gx_device_s* %75, %struct.gx_device_s** %dev42, align 8, !tbaa !129
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call43 = call i64 @gs_next_ids(%struct.gs_memory_s* %77, i32 1) #4
  %78 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %78, i32 0, i32 4
  store i64 %call43, i64* %id, align 8, !tbaa !130
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %80 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %80, i32 0, i32 3
  store %struct.gs_memory_s* %79, %struct.gs_memory_s** %memory44, align 8, !tbaa !131
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %82 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %pis45 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %82, i32 0, i32 10
  store %struct.gs_imager_state_s* %81, %struct.gs_imager_state_s** %pis45, align 8, !tbaa !132
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %84 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %pis_image46 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %84, i32 0, i32 11
  store %struct.gs_imager_state_s* %83, %struct.gs_imager_state_s** %pis_image46, align 8, !tbaa !133
  %85 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %86 = bitcast %struct.plane_image_enum_s* %85 to %struct.gx_image_enum_common_s*
  %87 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %86, %struct.gx_image_enum_common_s** %87, align 8, !tbaa !1
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

fail:                                             ; preds = %cleanup, %if.then.38, %if.then.31, %if.then.22, %if.then.7, %sw.default
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %90 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !134
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !1
  %93 = bitcast %struct.gs_imager_state_s* %92 to i8*
  call void %90(%struct.gs_memory_s* %91, i8* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)) #4
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %free_object49 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 2
  %95 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object49, align 8, !tbaa !134
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %97 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %info, align 8, !tbaa !1
  %98 = bitcast %struct.plane_image_enum_s* %97 to i8*
  call void %95(%struct.gs_memory_s* %96, i8* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #4
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %101 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %102 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %103 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %104 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %105 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %107 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call50 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %99, %struct.gs_imager_state_s* %100, %struct.gs_matrix_s* %101, %struct.gs_image_common_s* %102, %struct.gs_int_rect_s* %103, %struct.gx_device_color_s* %104, %struct.gx_clip_path_s* %105, %struct.gs_memory_s* %106, %struct.gx_image_enum_common_s** %107) #4
  store i32 %call50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %fail, %if.end.39, %cleanup
  %108 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %uses_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %110) #2
  %111 = bitcast %struct.gs_imager_state_s** %pis_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast %struct.plane_image_enum_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %plane_dev = alloca %struct.gx_device_s*, align 8
  %plane_index = alloca i32, align 4
  %options = alloca i64, align 8
  %plane_params = alloca %struct.gs_get_bits_params_s, align 8
  %plane3 = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dest = alloca %struct.bits_plane_s, align 8
  %source = alloca %struct.bits_plane_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane_dev1 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %6 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %7, i32 0, i32 45
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 2
  %8 = load i32, i32* %index, align 4, !tbaa !135
  store i32 %8, i32* %plane_index, align 4, !tbaa !5
  %9 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %10, i32 0, i32 0
  %11 = load i64, i64* %options2, align 8, !tbaa !136
  store i64 %11, i64* %options, align 8, !tbaa !51
  %12 = bitcast %struct.gs_get_bits_params_s* %plane_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %12) #2
  %13 = bitcast i32* %plane3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i64, i64* %options, align 8, !tbaa !51
  %and = and i64 %15, 131072
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %16 = load i64, i64* %options, align 8, !tbaa !51
  %and4 = and i64 %16, 524288
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %plane_index, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp = icmp eq i8* %19, null
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %22 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %23 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %20, %struct.gs_int_rect_s* %21, %struct.gs_get_bits_params_s* %22, %struct.gs_int_rect_s** %23) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %plane3, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %plane3, align 4, !tbaa !5
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %26 = load i32, i32* %num_components, align 4, !tbaa !138
  %cmp7 = icmp slt i32 %24, %26
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %plane3, align 4, !tbaa !5
  %28 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %27, %28
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %for.body
  %29 = load i32, i32* %plane3, align 4, !tbaa !5
  %idxprom10 = sext i32 %29 to i64
  %30 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %30, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data11, i32 0, i64 %idxprom10
  %31 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %cmp13 = icmp ne i8* %31, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true.9
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %34 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %35 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %32, %struct.gs_int_rect_s* %33, %struct.gs_get_bits_params_s* %34, %struct.gs_int_rect_s** %35) #4
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %land.lhs.true.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %36 = load i32, i32* %plane3, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %plane3, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gs_get_bits_params_s* %plane_params to i8*
  %39 = bitcast %struct.gs_get_bits_params_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 536, i32 8, i1 false), !tbaa.struct !139
  %40 = load i64, i64* %options, align 8, !tbaa !51
  %and17 = and i64 %40, -983041
  %or = or i64 %and17, 65536
  %options18 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 0
  store i64 %or, i64* %options18, align 8, !tbaa !136
  %41 = load i32, i32* %plane_index, align 4, !tbaa !5
  %idxprom19 = sext i32 %41 to i64
  %42 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %42, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data20, i32 0, i64 %idxprom19
  %43 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data22, i32 0, i64 0
  store i8* %43, i8** %arrayidx23, align 8, !tbaa !1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %45 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !140
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %47 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %48 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call24 = call i32 %45(%struct.gx_device_s* %46, %struct.gs_int_rect_s* %47, %struct.gs_get_bits_params_s* %plane_params, %struct.gs_int_rect_s** %48) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %49, 0
  br i1 %cmp25, label %if.then.26, label %if.end.50

if.then.26:                                       ; preds = %for.end
  %50 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gs_get_bits_params_s* %50 to i8*
  %52 = bitcast %struct.gs_get_bits_params_s* %plane_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 536, i32 8, i1 false), !tbaa.struct !139
  %53 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options27 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %53, i32 0, i32 0
  %54 = load i64, i64* %options27, align 8, !tbaa !136
  %and28 = and i64 %54, -458753
  %or29 = or i64 %and28, 655360
  %55 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options30 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %55, i32 0, i32 0
  store i64 %or29, i64* %options30, align 8, !tbaa !136
  %56 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %56, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data31, i32 0, i64 0
  %57 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %58 = load i32, i32* %plane_index, align 4, !tbaa !5
  %idxprom33 = sext i32 %58 to i64
  %59 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data34 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %59, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data34, i32 0, i64 %idxprom33
  store i8* %57, i8** %arrayidx35, align 8, !tbaa !1
  store i32 0, i32* %plane3, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.47, %if.then.26
  %60 = load i32, i32* %plane3, align 4, !tbaa !5
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 11
  %num_components38 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info37, i32 0, i32 1
  %62 = load i32, i32* %num_components38, align 4, !tbaa !138
  %cmp39 = icmp slt i32 %60, %62
  br i1 %cmp39, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.36
  %63 = load i32, i32* %plane3, align 4, !tbaa !5
  %64 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %63, %64
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %for.body.40
  %65 = load i32, i32* %plane3, align 4, !tbaa !5
  %idxprom43 = sext i32 %65 to i64
  %66 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data44 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %66, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data44, i32 0, i64 %idxprom43
  store i8* null, i8** %arrayidx45, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.body.40
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %67 = load i32, i32* %plane3, align 4, !tbaa !5
  %inc48 = add nsw i32 %67, 1
  store i32 %inc48, i32* %plane3, align 4, !tbaa !5
  br label %for.cond.36

for.end.49:                                       ; preds = %for.cond.36
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  br label %if.end.102

if.else:                                          ; preds = %land.lhs.true, %entry
  %68 = load i64, i64* %options, align 8, !tbaa !51
  %neg = xor i64 %68, -1
  %and51 = and i64 %neg, 290521105
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.else.99, label %if.then.53

if.then.53:                                       ; preds = %if.else
  %69 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.start(i64 24, i8* %69) #2
  %70 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.start(i64 24, i8* %70) #2
  %71 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %71, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data54, i32 0, i64 0
  %72 = load i8*, i8** %arrayidx55, align 8, !tbaa !1
  %data56 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 0
  %write = bitcast %union.bpd_* %data56 to i8**
  store i8* %72, i8** %write, align 8, !tbaa !1
  %73 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %73, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %74 = load i32, i32* %x, align 4, !tbaa !141
  %75 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %75, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %76 = load i32, i32* %x57, align 4, !tbaa !143
  %sub = sub nsw i32 %74, %76
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info58 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info58, i32 0, i32 3
  %78 = load i16, i16* %depth, align 2, !tbaa !28
  %conv = zext i16 %78 to i32
  %mul = mul nsw i32 %sub, %conv
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  %raster = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 1
  store i32 %shl, i32* %raster, align 4, !tbaa !144
  %79 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %color_info59 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %79, i32 0, i32 11
  %depth60 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info59, i32 0, i32 3
  %80 = load i16, i16* %depth60, align 2, !tbaa !146
  %conv61 = zext i16 %80 to i32
  %depth62 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 2
  store i32 %conv61, i32* %depth62, align 4, !tbaa !147
  %x63 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 3
  store i32 0, i32* %x63, align 4, !tbaa !148
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %color_info64 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 11
  %depth65 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info64, i32 0, i32 3
  %82 = load i16, i16* %depth65, align 2, !tbaa !28
  %conv66 = zext i16 %82 to i32
  %depth67 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 2
  store i32 %conv66, i32* %depth67, align 4, !tbaa !147
  %83 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %84 = bitcast %struct.gs_get_bits_params_s* %plane_params to i8*
  %85 = bitcast %struct.gs_get_bits_params_s* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 536, i32 8, i1 false), !tbaa.struct !139
  %86 = load i64, i64* %options, align 8, !tbaa !51
  %and68 = and i64 %86, -580255855
  store i64 %and68, i64* %options, align 8, !tbaa !51
  %options69 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 0
  store i64 %and68, i64* %options69, align 8, !tbaa !136
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %call70 = call i32 @gx_device_raster(%struct.gx_device_s* %87, i32 1) #4
  %raster71 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 4
  store i32 %call70, i32* %raster71, align 4, !tbaa !149
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 42
  %get_bits_rectangle73 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs72, i32 0, i32 38
  %89 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle73, align 8, !tbaa !140
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !1
  %91 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %92 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call74 = call i32 %89(%struct.gx_device_s* %90, %struct.gs_int_rect_s* %91, %struct.gs_get_bits_params_s* %plane_params, %struct.gs_int_rect_s** %92) #4
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp sge i32 %93, 0
  br i1 %cmp75, label %if.then.77, label %if.end.95

if.then.77:                                       ; preds = %if.then.53
  %data78 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data78, i32 0, i64 0
  %94 = load i8*, i8** %arrayidx79, align 8, !tbaa !1
  %data80 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 0
  %read = bitcast %union.bpd_* %data80 to i8**
  store i8* %94, i8** %read, align 8, !tbaa !1
  %raster81 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %plane_params, i32 0, i32 4
  %95 = load i32, i32* %raster81, align 4, !tbaa !149
  %raster82 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 1
  store i32 %95, i32* %raster82, align 4, !tbaa !144
  %96 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %96, i32 0, i32 2
  %97 = load i32, i32* %x_offset, align 4, !tbaa !150
  %x83 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 3
  store i32 %97, i32* %x83, align 4, !tbaa !148
  %98 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane84 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %98, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane84, i32 0, i32 1
  %99 = load i32, i32* %shift, align 4, !tbaa !52
  %100 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q85 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %100, i32 0, i32 1
  %x86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q85, i32 0, i32 0
  %101 = load i32, i32* %x86, align 4, !tbaa !141
  %102 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %102, i32 0, i32 0
  %x88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p87, i32 0, i32 0
  %103 = load i32, i32* %x88, align 4, !tbaa !143
  %sub89 = sub nsw i32 %101, %103
  %104 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q90 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %104, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q90, i32 0, i32 1
  %105 = load i32, i32* %y, align 4, !tbaa !151
  %106 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p91 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %106, i32 0, i32 0
  %y92 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p91, i32 0, i32 1
  %107 = load i32, i32* %y92, align 4, !tbaa !152
  %sub93 = sub nsw i32 %105, %107
  %call94 = call i32 @bits_expand_plane(%struct.bits_plane_s* %dest, %struct.bits_plane_s* %source, i32 %99, i32 %sub89, i32 %sub93) #4
  store i32 %call94, i32* %code, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.77, %if.then.53
  %108 = load i64, i64* %options, align 8, !tbaa !51
  %and96 = and i64 %108, -2097153
  %or97 = or i64 %and96, 1048576
  %109 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options98 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %109, i32 0, i32 0
  store i64 %or97, i64* %options98, align 8, !tbaa !136
  %110 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.end(i64 24, i8* %110) #2
  %111 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.end(i64 24, i8* %111) #2
  br label %if.end.101

if.else.99:                                       ; preds = %if.else
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %113 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %114 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %115 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call100 = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %112, %struct.gs_int_rect_s* %113, %struct.gs_get_bits_params_s* %114, %struct.gs_int_rect_s** %115) #4
  store i32 %call100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.95
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.50
  %116 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %if.else.99, %if.then.14, %if.then.6
  %117 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %plane3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast %struct.gs_get_bits_params_s* %plane_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %119) #2
  %120 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %121 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast %struct.gx_device_s** %plane_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = load i32, i32* %retval
  ret i32 %124
}

declare i32 @gx_no_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_fill_rectangle_hl_color(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #1

declare i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #1

declare i32 @gx_default_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #1

declare i32 @gx_default_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare %struct.gs_devn_params_s* @gx_default_ret_devn_params(%struct.gx_device_s*) #1

declare i32 @gx_default_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @gx_default_strip_copy_rop2(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #1

declare i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @begin_tiling(%struct.tiling_state_s* %pts, %struct.gx_device_plane_extract_s* %edev, i8* %data, i32 %data_x, i32 %raster, i32 %width, i32 %height, i8* %local_buffer, i32 %buffer_size, i32 %partial_ok) #0 {
entry:
  %retval = alloca i32, align 4
  %pts.addr = alloca %struct.tiling_state_s*, align 8
  %edev.addr = alloca %struct.gx_device_plane_extract_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %local_buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %partial_ok.addr = alloca i32, align 4
  %width_raster = alloca i32, align 4
  %full_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tiling_state_s* %pts, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  store %struct.gx_device_plane_extract_s* %edev, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %local_buffer, i8** %local_buffer.addr, align 8, !tbaa !1
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !5
  store i32 %partial_ok, i32* %partial_ok.addr, align 4, !tbaa !5
  %0 = bitcast i32* %width_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %2 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_dev = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %2, i32 0, i32 44
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !26
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !28
  %conv = zext i16 %4 to i32
  %mul = mul nsw i32 %1, %conv
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %width_raster, align 4, !tbaa !5
  %5 = bitcast i32* %full_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %width_raster, align 4, !tbaa !5
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul1 = mul i32 %6, %7
  store i32 %mul1, i32* %full_size, align 4, !tbaa !5
  %8 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %9 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %edev2 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %9, i32 0, i32 0
  store %struct.gx_device_plane_extract_s* %8, %struct.gx_device_plane_extract_s** %edev2, align 8, !tbaa !153
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %11, i32 0, i32 1
  store i8* %10, i8** %data3, align 8, !tbaa !154
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %13 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %data_x4 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %13, i32 0, i32 2
  store i32 %12, i32* %data_x4, align 4, !tbaa !155
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %15 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %raster5 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %15, i32 0, i32 3
  store i32 %14, i32* %raster5, align 4, !tbaa !156
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %17 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %17, i32 0, i32 4
  store i32 %16, i32* %width6, align 4, !tbaa !157
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  %19 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %19, i32 0, i32 5
  store i32 %18, i32* %height7, align 4, !tbaa !158
  %20 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %dest_x = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %20, i32 0, i32 6
  store i32 0, i32* %dest_x, align 4, !tbaa !57
  %21 = load i32, i32* %full_size, align 4, !tbaa !5
  %22 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %21, %22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load i8*, i8** %local_buffer.addr, align 8, !tbaa !1
  %24 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %24, i32 0, i32 7
  %data9 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 0
  store i8* %23, i8** %data9, align 8, !tbaa !63
  %25 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %26 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer10 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %26, i32 0, i32 7
  %size = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer10, i32 0, i32 1
  store i32 %25, i32* %size, align 4, !tbaa !159
  %27 = load i32, i32* %width_raster, align 4, !tbaa !5
  %28 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer11 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %28, i32 0, i32 7
  %raster12 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer11, i32 0, i32 2
  store i32 %27, i32* %raster12, align 4, !tbaa !62
  %29 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer13 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %29, i32 0, i32 7
  %on_heap = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer13, i32 0, i32 3
  store i32 0, i32* %on_heap, align 4, !tbaa !160
  %30 = load i32, i32* %width.addr, align 4, !tbaa !5
  %31 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %31, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size14, i32 0, i32 0
  store i32 %30, i32* %x, align 4, !tbaa !66
  %32 = load i32, i32* %height.addr, align 4, !tbaa !5
  %33 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size15 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %33, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size15, i32 0, i32 1
  store i32 %32, i32* %y, align 4, !tbaa !67
  br label %if.end.67

if.else:                                          ; preds = %entry
  %34 = load i32, i32* %partial_ok.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.16, label %if.else.47

if.then.16:                                       ; preds = %if.else
  %35 = load i8*, i8** %local_buffer.addr, align 8, !tbaa !1
  %36 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer17 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %36, i32 0, i32 7
  %data18 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer17, i32 0, i32 0
  store i8* %35, i8** %data18, align 8, !tbaa !63
  %37 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %38 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer19 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %38, i32 0, i32 7
  %size20 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer19, i32 0, i32 1
  store i32 %37, i32* %size20, align 4, !tbaa !159
  %39 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer21 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %39, i32 0, i32 7
  %on_heap22 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer21, i32 0, i32 3
  store i32 0, i32* %on_heap22, align 4, !tbaa !160
  %40 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %41 = load i32, i32* %width_raster, align 4, !tbaa !5
  %cmp23 = icmp uge i32 %40, %41
  br i1 %cmp23, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %if.then.16
  %42 = load i32, i32* %width_raster, align 4, !tbaa !5
  %43 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer26 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %43, i32 0, i32 7
  %raster27 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer26, i32 0, i32 2
  store i32 %42, i32* %raster27, align 4, !tbaa !62
  %44 = load i32, i32* %width.addr, align 4, !tbaa !5
  %45 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size28 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %45, i32 0, i32 9
  %x29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size28, i32 0, i32 0
  store i32 %44, i32* %x29, align 4, !tbaa !66
  %46 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %47 = load i32, i32* %width_raster, align 4, !tbaa !5
  %div = udiv i32 %46, %47
  %48 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size30 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %48, i32 0, i32 9
  %y31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size30, i32 0, i32 1
  store i32 %div, i32* %y31, align 4, !tbaa !67
  br label %if.end

if.else.32:                                       ; preds = %if.then.16
  %49 = load i32, i32* %buffer_size.addr, align 4, !tbaa !5
  %and = and i32 %49, -8
  %50 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer33 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %50, i32 0, i32 7
  %raster34 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer33, i32 0, i32 2
  store i32 %and, i32* %raster34, align 4, !tbaa !62
  %51 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer35 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %51, i32 0, i32 7
  %raster36 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer35, i32 0, i32 2
  %52 = load i32, i32* %raster36, align 4, !tbaa !62
  %53 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_dev37 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %53, i32 0, i32 44
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev37, align 8, !tbaa !26
  %color_info38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 11
  %depth39 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info38, i32 0, i32 3
  %55 = load i16, i16* %depth39, align 2, !tbaa !28
  %conv40 = zext i16 %55 to i32
  %div41 = sdiv i32 8, %conv40
  %mul42 = mul i32 %52, %div41
  %56 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size43 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %56, i32 0, i32 9
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size43, i32 0, i32 0
  store i32 %mul42, i32* %x44, align 4, !tbaa !66
  %57 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size45 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %57, i32 0, i32 9
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size45, i32 0, i32 1
  store i32 1, i32* %y46, align 4, !tbaa !67
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.25
  br label %if.end.66

if.else.47:                                       ; preds = %if.else
  %58 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %60 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !161
  %61 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !30
  %63 = load i32, i32* %full_size, align 4, !tbaa !5
  %call = call i8* %60(%struct.gs_memory_s* %62, i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #4
  %64 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer49 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %64, i32 0, i32 7
  %data50 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer49, i32 0, i32 0
  store i8* %call, i8** %data50, align 8, !tbaa !63
  %65 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer51 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %65, i32 0, i32 7
  %data52 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer51, i32 0, i32 0
  %66 = load i8*, i8** %data52, align 8, !tbaa !63
  %tobool53 = icmp ne i8* %66, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.else.47
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.else.47
  %67 = load i32, i32* %full_size, align 4, !tbaa !5
  %68 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer56 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %68, i32 0, i32 7
  %size57 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer56, i32 0, i32 1
  store i32 %67, i32* %size57, align 4, !tbaa !159
  %69 = load i32, i32* %width_raster, align 4, !tbaa !5
  %70 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer58 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %70, i32 0, i32 7
  %raster59 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer58, i32 0, i32 2
  store i32 %69, i32* %raster59, align 4, !tbaa !62
  %71 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer60 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %71, i32 0, i32 7
  %on_heap61 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer60, i32 0, i32 3
  store i32 1, i32* %on_heap61, align 4, !tbaa !160
  %72 = load i32, i32* %width.addr, align 4, !tbaa !5
  %73 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size62 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %73, i32 0, i32 9
  %x63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size62, i32 0, i32 0
  store i32 %72, i32* %x63, align 4, !tbaa !66
  %74 = load i32, i32* %height.addr, align 4, !tbaa !5
  %75 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size64 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %75, i32 0, i32 9
  %y65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size64, i32 0, i32 1
  store i32 %74, i32* %y65, align 4, !tbaa !67
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.55, %if.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then
  %76 = load i32, i32* %width_raster, align 4, !tbaa !5
  %77 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer68 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %77, i32 0, i32 7
  %raster69 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer68, i32 0, i32 2
  store i32 %76, i32* %raster69, align 4, !tbaa !62
  %78 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %78, i32 0, i32 8
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 1
  store i32 0, i32* %y70, align 4, !tbaa !65
  %79 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset71 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %79, i32 0, i32 8
  %x72 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset71, i32 0, i32 0
  store i32 0, i32* %x72, align 4, !tbaa !64
  %80 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size73 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %80, i32 0, i32 9
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size73, i32 0, i32 0
  %81 = load i32, i32* %x74, align 4, !tbaa !66
  %82 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %per_tile_width = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %82, i32 0, i32 10
  store i32 %81, i32* %per_tile_width, align 4, !tbaa !162
  %83 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer75 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %83, i32 0, i32 7
  %size76 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer75, i32 0, i32 1
  %84 = load i32, i32* %size76, align 4, !tbaa !159
  %85 = load i32, i32* %full_size, align 4, !tbaa !5
  %cmp77 = icmp ult i32 %84, %85
  %conv78 = zext i1 %cmp77 to i32
  store i32 %conv78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.54
  %86 = bitcast i32* %full_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %width_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @extract_partial_tile(%struct.tiling_state_s* %pts) #3 {
entry:
  %pts.addr = alloca %struct.tiling_state_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %dest = alloca %struct.bits_plane_s, align 8
  %source = alloca %struct.bits_plane_s, align 8
  store %struct.tiling_state_s* %pts, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %edev1 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev1, align 8, !tbaa !153
  store %struct.gx_device_plane_extract_s* %2, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %3 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %5, i32 0, i32 7
  %data = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !63
  %7 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %7, i32 0, i32 8
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 1
  %8 = load i32, i32* %y, align 4, !tbaa !65
  %9 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer2 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %9, i32 0, i32 7
  %raster = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer2, i32 0, i32 2
  %10 = load i32, i32* %raster, align 4, !tbaa !62
  %mul = mul i32 %8, %10
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %data3 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 0
  %write = bitcast %union.bpd_* %data3 to i8**
  store i8* %add.ptr, i8** %write, align 8, !tbaa !1
  %11 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer4 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %11, i32 0, i32 7
  %raster5 = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer4, i32 0, i32 2
  %12 = load i32, i32* %raster5, align 4, !tbaa !62
  %raster6 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 1
  store i32 %12, i32* %raster6, align 4, !tbaa !144
  %13 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %13, i32 0, i32 45
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 0
  %14 = load i32, i32* %depth, align 4, !tbaa !163
  %depth7 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 2
  store i32 %14, i32* %depth7, align 4, !tbaa !147
  %15 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %dest_x = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %15, i32 0, i32 6
  %16 = load i32, i32* %dest_x, align 4, !tbaa !57
  %x = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 3
  store i32 %16, i32* %x, align 4, !tbaa !148
  %17 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %data8, align 8, !tbaa !154
  %19 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset9 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %19, i32 0, i32 8
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset9, i32 0, i32 1
  %20 = load i32, i32* %y10, align 4, !tbaa !65
  %21 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %raster11 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %21, i32 0, i32 3
  %22 = load i32, i32* %raster11, align 4, !tbaa !156
  %mul12 = mul i32 %20, %22
  %idx.ext13 = zext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %idx.ext13
  %data15 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 0
  %read = bitcast %union.bpd_* %data15 to i8**
  store i8* %add.ptr14, i8** %read, align 8, !tbaa !1
  %23 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %raster16 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %23, i32 0, i32 3
  %24 = load i32, i32* %raster16, align 4, !tbaa !156
  %raster17 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 1
  store i32 %24, i32* %raster17, align 4, !tbaa !144
  %25 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %25, i32 0, i32 11
  %depth18 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %26 = load i16, i16* %depth18, align 2, !tbaa !146
  %conv = zext i16 %26 to i32
  %depth19 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 2
  store i32 %conv, i32* %depth19, align 4, !tbaa !147
  %27 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %data_x = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %27, i32 0, i32 2
  %28 = load i32, i32* %data_x, align 4, !tbaa !155
  %29 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset20 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %29, i32 0, i32 8
  %x21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset20, i32 0, i32 0
  %30 = load i32, i32* %x21, align 4, !tbaa !64
  %add = add nsw i32 %28, %30
  %x22 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 3
  store i32 %add, i32* %x22, align 4, !tbaa !148
  %31 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %plane23 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %31, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane23, i32 0, i32 1
  %32 = load i32, i32* %shift, align 4, !tbaa !52
  %33 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %33, i32 0, i32 9
  %x24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %34 = load i32, i32* %x24, align 4, !tbaa !66
  %35 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size25 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %35, i32 0, i32 9
  %y26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size25, i32 0, i32 1
  %36 = load i32, i32* %y26, align 4, !tbaa !67
  %call = call i32 @bits_extract_plane(%struct.bits_plane_s* %dest, %struct.bits_plane_s* %source, i32 %32, i32 %34, i32 %36) #4
  %37 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #2
  %38 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.end(i64 24, i8* %38) #2
  %39 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @end_tiling(%struct.tiling_state_s* %pts) #0 {
entry:
  %pts.addr = alloca %struct.tiling_state_s*, align 8
  store %struct.tiling_state_s* %pts, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %0 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %0, i32 0, i32 7
  %on_heap = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer, i32 0, i32 3
  %1 = load i32, i32* %on_heap, align 4, !tbaa !160
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %edev = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !153
  %memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !134
  %6 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %edev1 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %6, i32 0, i32 0
  %7 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev1, align 8, !tbaa !153
  %memory2 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !30
  %9 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %buffer3 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %9, i32 0, i32 7
  %data = getelementptr inbounds %struct.tsb_, %struct.tsb_* %buffer3, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !63
  call void %5(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @next_tile(%struct.tiling_state_s* %pts) #0 {
entry:
  %retval = alloca i32, align 4
  %pts.addr = alloca %struct.tiling_state_s*, align 8
  store %struct.tiling_state_s* %pts, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %0 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %0, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !66
  %2 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %2, i32 0, i32 8
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !64
  %add = add nsw i32 %3, %1
  store i32 %add, i32* %x1, align 4, !tbaa !64
  %4 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %4, i32 0, i32 4
  %5 = load i32, i32* %width, align 4, !tbaa !157
  %cmp = icmp sge i32 %add, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %6, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !67
  %8 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset3 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %8, i32 0, i32 8
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset3, i32 0, i32 1
  %9 = load i32, i32* %y4, align 4, !tbaa !65
  %add5 = add nsw i32 %9, %7
  store i32 %add5, i32* %y4, align 4, !tbaa !65
  %10 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %10, i32 0, i32 5
  %11 = load i32, i32* %height, align 4, !tbaa !158
  %cmp6 = icmp sge i32 %add5, %11
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset8 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %12, i32 0, i32 8
  %x9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset8, i32 0, i32 0
  store i32 0, i32* %x9, align 4, !tbaa !64
  %13 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %per_tile_width = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %13, i32 0, i32 10
  %14 = load i32, i32* %per_tile_width, align 4, !tbaa !162
  %15 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size10 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %15, i32 0, i32 9
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size10, i32 0, i32 0
  store i32 %14, i32* %x11, align 4, !tbaa !66
  %16 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset12 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %16, i32 0, i32 8
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset12, i32 0, i32 1
  %17 = load i32, i32* %y13, align 4, !tbaa !65
  %18 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %18, i32 0, i32 9
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size14, i32 0, i32 1
  %19 = load i32, i32* %y15, align 4, !tbaa !67
  %add16 = add nsw i32 %17, %19
  %20 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %height17 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %20, i32 0, i32 5
  %21 = load i32, i32* %height17, align 4, !tbaa !158
  %cmp18 = icmp sge i32 %add16, %21
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end
  %22 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %22, i32 0, i32 5
  %23 = load i32, i32* %height20, align 4, !tbaa !158
  %24 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset21 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %24, i32 0, i32 8
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset21, i32 0, i32 1
  %25 = load i32, i32* %y22, align 4, !tbaa !65
  %sub = sub nsw i32 %23, %25
  %26 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size23 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %26, i32 0, i32 9
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size23, i32 0, i32 1
  store i32 %sub, i32* %y24, align 4, !tbaa !67
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end
  br label %if.end.41

if.else:                                          ; preds = %entry
  %27 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset26 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %27, i32 0, i32 8
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset26, i32 0, i32 0
  %28 = load i32, i32* %x27, align 4, !tbaa !64
  %29 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size28 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %29, i32 0, i32 9
  %x29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size28, i32 0, i32 0
  %30 = load i32, i32* %x29, align 4, !tbaa !66
  %add30 = add nsw i32 %28, %30
  %31 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %31, i32 0, i32 4
  %32 = load i32, i32* %width31, align 4, !tbaa !157
  %cmp32 = icmp sge i32 %add30, %32
  br i1 %cmp32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.else
  %33 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %width34 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %33, i32 0, i32 4
  %34 = load i32, i32* %width34, align 4, !tbaa !157
  %35 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %offset35 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %35, i32 0, i32 8
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset35, i32 0, i32 0
  %36 = load i32, i32* %x36, align 4, !tbaa !64
  %sub37 = sub nsw i32 %34, %36
  %37 = load %struct.tiling_state_s*, %struct.tiling_state_s** %pts.addr, align 8, !tbaa !1
  %size38 = getelementptr inbounds %struct.tiling_state_s, %struct.tiling_state_s* %37, i32 0, i32 9
  %x39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size38, i32 0, i32 0
  store i32 %sub37, i32* %x39, align 4, !tbaa !66
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.33, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.25
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.7
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @bits_extract_plane(%struct.bits_plane_s*, %struct.bits_plane_s*, i32, i32, i32) #1

declare i32 @gs_current_logical_op(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reduce_drawing_color(%struct.gx_device_color_s* %ppdc, %struct.gx_device_plane_extract_s* %edev, %struct.gx_device_color_s* %pdevc, i32* %plop) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdc.addr = alloca %struct.gx_device_color_s*, align 8
  %edev.addr = alloca %struct.gx_device_plane_extract_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %plop.addr = alloca i32*, align 8
  %reduced = alloca i32, align 4
  %pixel = alloca i64, align 8
  %pixel0 = alloca i64, align 8
  %pixel1 = alloca i64, align 8
  %plane83 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %white = alloca i64, align 8
  store %struct.gx_device_color_s* %ppdc, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  store %struct.gx_device_plane_extract_s* %edev, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32* %plop, i32** %plop.addr, align 8, !tbaa !1
  %0 = bitcast i32* %reduced to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !102
  %cmp = icmp eq %struct.gx_device_color_type_s* %2, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %5 = load i64, i64* %pure, align 8, !tbaa !51
  %6 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %6, i32 0, i32 45
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane, i32 0, i32 1
  %7 = load i32, i32* %shift, align 4, !tbaa !52
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %5, %sh_prom
  %8 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %8, i32 0, i32 47
  %9 = load i32, i32* %plane_mask, align 4, !tbaa !37
  %conv = zext i32 %9 to i64
  %and = and i64 %shr, %conv
  store i64 %and, i64* %pixel, align 8, !tbaa !51
  %10 = load i64, i64* %pixel, align 8, !tbaa !51
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 1
  %pure2 = bitcast %union._c* %colors1 to i64*
  store i64 %10, i64* %pure2, align 8, !tbaa !51
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %type3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type3, align 8, !tbaa !102
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !108
  %14 = load i64, i64* %pixel, align 8, !tbaa !51
  %15 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_white = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %15, i32 0, i32 46
  %16 = load i64, i64* %plane_white, align 8, !tbaa !35
  %cmp4 = icmp eq i64 %14, %16
  br i1 %cmp4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %17, i32 0, i32 49
  %18 = load i32, i32* %any_marks, align 4, !tbaa !36
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %19 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks6 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %19, i32 0, i32 49
  store i32 1, i32* %any_marks6, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %reduced, align 4, !tbaa !71
  %20 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %if.end.185

if.else:                                          ; preds = %entry
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 0
  %22 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type7, align 8, !tbaa !102
  %cmp8 = icmp eq %struct.gx_device_color_type_s* %22, @gx_dc_type_data_ht_binary
  br i1 %cmp8, label %if.then.10, label %if.else.78

if.then.10:                                       ; preds = %if.else
  %23 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 1
  %binary = bitcast %union._c* %colors11 to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %25 = load i64, i64* %arrayidx, align 8, !tbaa !51
  %cmp12 = icmp eq i64 %25, -1
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.then.10
  br label %cond.end.27

cond.false.15:                                    ; preds = %if.then.10
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors16 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 1
  %binary17 = bitcast %union._c* %colors16 to %struct._bin*
  %color18 = getelementptr inbounds %struct._bin, %struct._bin* %binary17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %color18, i32 0, i64 0
  %27 = load i64, i64* %arrayidx19, align 8, !tbaa !51
  %28 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane20 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %28, i32 0, i32 45
  %shift21 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane20, i32 0, i32 1
  %29 = load i32, i32* %shift21, align 4, !tbaa !52
  %sh_prom22 = zext i32 %29 to i64
  %shr23 = lshr i64 %27, %sh_prom22
  %30 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask24 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %30, i32 0, i32 47
  %31 = load i32, i32* %plane_mask24, align 4, !tbaa !37
  %conv25 = zext i32 %31 to i64
  %and26 = and i64 %shr23, %conv25
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.15, %cond.true.14
  %cond28 = phi i64 [ -1, %cond.true.14 ], [ %and26, %cond.false.15 ]
  store i64 %cond28, i64* %pixel0, align 8, !tbaa !51
  %32 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors29 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 1
  %binary30 = bitcast %union._c* %colors29 to %struct._bin*
  %color31 = getelementptr inbounds %struct._bin, %struct._bin* %binary30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %color31, i32 0, i64 1
  %34 = load i64, i64* %arrayidx32, align 8, !tbaa !51
  %cmp33 = icmp eq i64 %34, -1
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.27
  br label %cond.end.48

cond.false.36:                                    ; preds = %cond.end.27
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors37 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 1
  %binary38 = bitcast %union._c* %colors37 to %struct._bin*
  %color39 = getelementptr inbounds %struct._bin, %struct._bin* %binary38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %color39, i32 0, i64 1
  %36 = load i64, i64* %arrayidx40, align 8, !tbaa !51
  %37 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane41 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %37, i32 0, i32 45
  %shift42 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane41, i32 0, i32 1
  %38 = load i32, i32* %shift42, align 4, !tbaa !52
  %sh_prom43 = zext i32 %38 to i64
  %shr44 = lshr i64 %36, %sh_prom43
  %39 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask45 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %39, i32 0, i32 47
  %40 = load i32, i32* %plane_mask45, align 4, !tbaa !37
  %conv46 = zext i32 %40 to i64
  %and47 = and i64 %shr44, %conv46
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.36, %cond.true.35
  %cond49 = phi i64 [ -1, %cond.true.35 ], [ %and47, %cond.false.36 ]
  store i64 %cond49, i64* %pixel1, align 8, !tbaa !51
  %41 = load i64, i64* %pixel0, align 8, !tbaa !51
  %42 = load i64, i64* %pixel1, align 8, !tbaa !51
  %cmp50 = icmp eq i64 %41, %42
  br i1 %cmp50, label %if.then.52, label %if.else.68

if.then.52:                                       ; preds = %cond.end.48
  %43 = load i64, i64* %pixel0, align 8, !tbaa !51
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors53 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure54 = bitcast %union._c* %colors53 to i64*
  store i64 %43, i64* %pure54, align 8, !tbaa !51
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %type55 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type55, align 8, !tbaa !102
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %ccolor_valid56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 3
  store i32 0, i32* %ccolor_valid56, align 4, !tbaa !108
  %47 = load i64, i64* %pixel0, align 8, !tbaa !51
  %48 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_white57 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %48, i32 0, i32 46
  %49 = load i64, i64* %plane_white57, align 8, !tbaa !35
  %cmp58 = icmp eq i64 %47, %49
  br i1 %cmp58, label %land.lhs.true.60, label %cond.false.64

land.lhs.true.60:                                 ; preds = %if.then.52
  %50 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks61 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %50, i32 0, i32 49
  %51 = load i32, i32* %any_marks61, align 4, !tbaa !36
  %tobool62 = icmp ne i32 %51, 0
  br i1 %tobool62, label %cond.false.64, label %cond.true.63

cond.true.63:                                     ; preds = %land.lhs.true.60
  br label %cond.end.66

cond.false.64:                                    ; preds = %land.lhs.true.60, %if.then.52
  %52 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks65 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %52, i32 0, i32 49
  store i32 1, i32* %any_marks65, align 4, !tbaa !36
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi i32 [ 0, %cond.true.63 ], [ 1, %cond.false.64 ]
  store i32 %cond67, i32* %reduced, align 4, !tbaa !71
  br label %if.end

if.else.68:                                       ; preds = %cond.end.48
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %54 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_color_s* %53 to i8*
  %56 = bitcast %struct.gx_device_color_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 656, i32 8, i1 false), !tbaa.struct !164
  %57 = load i64, i64* %pixel0, align 8, !tbaa !51
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors69 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %58, i32 0, i32 1
  %binary70 = bitcast %union._c* %colors69 to %struct._bin*
  %color71 = getelementptr inbounds %struct._bin, %struct._bin* %binary70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [2 x i64], [2 x i64]* %color71, i32 0, i64 0
  store i64 %57, i64* %arrayidx72, align 8, !tbaa !51
  %59 = load i64, i64* %pixel1, align 8, !tbaa !51
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors73 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %60, i32 0, i32 1
  %binary74 = bitcast %union._c* %colors73 to %struct._bin*
  %color75 = getelementptr inbounds %struct._bin, %struct._bin* %binary74, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [2 x i64], [2 x i64]* %color75, i32 0, i64 1
  store i64 %59, i64* %arrayidx76, align 8, !tbaa !51
  %61 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks77 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %61, i32 0, i32 49
  store i32 1, i32* %any_marks77, align 4, !tbaa !36
  store i32 1, i32* %reduced, align 4, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.else.68, %cond.end.66
  %62 = bitcast i64* %pixel1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i64* %pixel0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  br label %if.end.184

if.else.78:                                       ; preds = %if.else
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type79 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %64, i32 0, i32 0
  %65 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type79, align 8, !tbaa !102
  %cmp80 = icmp eq %struct.gx_device_color_type_s* %65, @gx_dc_type_data_ht_colored
  br i1 %cmp80, label %if.then.82, label %if.else.182

if.then.82:                                       ; preds = %if.else.78
  %66 = bitcast i32* %plane83 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane84 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %67, i32 0, i32 45
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane84, i32 0, i32 2
  %68 = load i32, i32* %index, align 4, !tbaa !135
  store i32 %68, i32* %plane83, align 4, !tbaa !5
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_color_s* %70 to i8*
  %73 = bitcast %struct.gx_device_color_s* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 656, i32 8, i1 false), !tbaa.struct !164
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.82
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %conv85 = sext i32 %74 to i64
  %cmp86 = icmp ult i64 %conv85, 64
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %76 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane88 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %76, i32 0, i32 45
  %index89 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane88, i32 0, i32 2
  %77 = load i32, i32* %index89, align 4, !tbaa !135
  %cmp90 = icmp ne i32 %75, %77
  br i1 %cmp90, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %for.body
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %78 to i64
  %79 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors93 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %79, i32 0, i32 1
  %colored = bitcast %union._c* %colors93 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx94, align 1, !tbaa !71
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %80 to i64
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors96 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 1
  %colored97 = bitcast %union._c* %colors96 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored97, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom95
  store i32 0, i32* %arrayidx98, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %plane83, align 4, !tbaa !5
  %shl = shl i32 1, %83
  %conv100 = sext i32 %shl to i64
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors101 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %84, i32 0, i32 1
  %colored102 = bitcast %union._c* %colors101 to %struct._col*
  %plane_mask103 = getelementptr inbounds %struct._col, %struct._col* %colored102, i32 0, i32 5
  %85 = load i64, i64* %plane_mask103, align 8, !tbaa !165
  %and104 = and i64 %85, %conv100
  store i64 %and104, i64* %plane_mask103, align 8, !tbaa !165
  %86 = load i32, i32* %plane83, align 4, !tbaa !5
  %idxprom105 = sext i32 %86 to i64
  %87 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors106 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %87, i32 0, i32 1
  %colored107 = bitcast %union._c* %colors106 to %struct._col*
  %c_level108 = getelementptr inbounds %struct._col, %struct._col* %colored107, i32 0, i32 3
  %arrayidx109 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level108, i32 0, i64 %idxprom105
  %88 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %88, 0
  br i1 %cmp110, label %if.then.112, label %if.else.137

if.then.112:                                      ; preds = %for.end
  %89 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %90 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_plane_extract_s* %90 to %struct.gx_device_s*
  %call = call i32 @gx_devn_reduce_colored_halftone(%struct.gx_device_color_s* %89, %struct.gx_device_s* %91) #4
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors113 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 1
  %pure114 = bitcast %union._c* %colors113 to i64*
  %93 = load i64, i64* %pure114, align 8, !tbaa !51
  %94 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane115 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %94, i32 0, i32 45
  %shift116 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane115, i32 0, i32 1
  %95 = load i32, i32* %shift116, align 4, !tbaa !52
  %sh_prom117 = zext i32 %95 to i64
  %shr118 = lshr i64 %93, %sh_prom117
  %96 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask119 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %96, i32 0, i32 47
  %97 = load i32, i32* %plane_mask119, align 4, !tbaa !37
  %conv120 = zext i32 %97 to i64
  %and121 = and i64 %shr118, %conv120
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors122 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %98, i32 0, i32 1
  %pure123 = bitcast %union._c* %colors122 to i64*
  store i64 %and121, i64* %pure123, align 8, !tbaa !51
  %99 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors124 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %99, i32 0, i32 1
  %pure125 = bitcast %union._c* %colors124 to i64*
  %100 = load i64, i64* %pure125, align 8, !tbaa !51
  %101 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_white126 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %101, i32 0, i32 46
  %102 = load i64, i64* %plane_white126, align 8, !tbaa !35
  %cmp127 = icmp eq i64 %100, %102
  br i1 %cmp127, label %land.lhs.true.129, label %cond.false.133

land.lhs.true.129:                                ; preds = %if.then.112
  %103 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks130 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %103, i32 0, i32 49
  %104 = load i32, i32* %any_marks130, align 4, !tbaa !36
  %tobool131 = icmp ne i32 %104, 0
  br i1 %tobool131, label %cond.false.133, label %cond.true.132

cond.true.132:                                    ; preds = %land.lhs.true.129
  br label %cond.end.135

cond.false.133:                                   ; preds = %land.lhs.true.129, %if.then.112
  %105 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks134 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %105, i32 0, i32 49
  store i32 1, i32* %any_marks134, align 4, !tbaa !36
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.133, %cond.true.132
  %cond136 = phi i32 [ 0, %cond.true.132 ], [ 1, %cond.false.133 ]
  store i32 %cond136, i32* %reduced, align 4, !tbaa !71
  br label %if.end.180

if.else.137:                                      ; preds = %for.end
  %106 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors138 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %106, i32 0, i32 1
  %colored139 = bitcast %union._c* %colors138 to %struct._col*
  %alpha = getelementptr inbounds %struct._col, %struct._col* %colored139, i32 0, i32 4
  %107 = load i16, i16* %alpha, align 2, !tbaa !167
  %conv140 = zext i16 %107 to i32
  %cmp141 = icmp ne i32 %conv140, 65535
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.else.137
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.144:                                      ; preds = %if.else.137
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %109 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gx_device_plane_extract_s* %109 to %struct.gx_device_s*
  %call145 = call i32 @gx_devn_reduce_colored_halftone(%struct.gx_device_color_s* %108, %struct.gx_device_s* %110) #4
  %111 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors146 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %111, i32 0, i32 1
  %binary147 = bitcast %union._c* %colors146 to %struct._bin*
  %color148 = getelementptr inbounds %struct._bin, %struct._bin* %binary147, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [2 x i64], [2 x i64]* %color148, i32 0, i64 0
  %112 = load i64, i64* %arrayidx149, align 8, !tbaa !51
  %113 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane150 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %113, i32 0, i32 45
  %shift151 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane150, i32 0, i32 1
  %114 = load i32, i32* %shift151, align 4, !tbaa !52
  %sh_prom152 = zext i32 %114 to i64
  %shr153 = lshr i64 %112, %sh_prom152
  %115 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask154 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %115, i32 0, i32 47
  %116 = load i32, i32* %plane_mask154, align 4, !tbaa !37
  %conv155 = zext i32 %116 to i64
  %and156 = and i64 %shr153, %conv155
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors157 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 1
  %binary158 = bitcast %union._c* %colors157 to %struct._bin*
  %color159 = getelementptr inbounds %struct._bin, %struct._bin* %binary158, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [2 x i64], [2 x i64]* %color159, i32 0, i64 0
  store i64 %and156, i64* %arrayidx160, align 8, !tbaa !51
  %118 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors161 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %118, i32 0, i32 1
  %binary162 = bitcast %union._c* %colors161 to %struct._bin*
  %color163 = getelementptr inbounds %struct._bin, %struct._bin* %binary162, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [2 x i64], [2 x i64]* %color163, i32 0, i64 1
  %119 = load i64, i64* %arrayidx164, align 8, !tbaa !51
  %120 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane165 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %120, i32 0, i32 45
  %shift166 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane165, i32 0, i32 1
  %121 = load i32, i32* %shift166, align 4, !tbaa !52
  %sh_prom167 = zext i32 %121 to i64
  %shr168 = lshr i64 %119, %sh_prom167
  %122 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %plane_mask169 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %122, i32 0, i32 47
  %123 = load i32, i32* %plane_mask169, align 4, !tbaa !37
  %conv170 = zext i32 %123 to i64
  %and171 = and i64 %shr168, %conv170
  %124 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %colors172 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %124, i32 0, i32 1
  %binary173 = bitcast %union._c* %colors172 to %struct._bin*
  %color174 = getelementptr inbounds %struct._bin, %struct._bin* %binary173, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [2 x i64], [2 x i64]* %color174, i32 0, i64 1
  store i64 %and171, i64* %arrayidx175, align 8, !tbaa !51
  %125 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %type176 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %125, i32 0, i32 0
  %126 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type176, align 8, !tbaa !102
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %126, i32 0, i32 4
  %127 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !168
  %128 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %129 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_plane_extract_s* %129 to %struct.gx_device_s*
  %call177 = call i32 %127(%struct.gx_device_color_s* %128, %struct.gs_imager_state_s* null, %struct.gx_device_s* %130, i32 0) #4
  %131 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %any_marks178 = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %131, i32 0, i32 49
  store i32 1, i32* %any_marks178, align 4, !tbaa !36
  store i32 1, i32* %reduced, align 4, !tbaa !71
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.144
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %cond.end.135
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.180, %if.then.143
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %plane83 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.230 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.183

if.else.182:                                      ; preds = %if.else.78
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

if.end.183:                                       ; preds = %cleanup.cont
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %cond.end
  %134 = load i32*, i32** %plop.addr, align 8, !tbaa !1
  %135 = load i32, i32* %134, align 4, !tbaa !5
  %and186 = and i32 %135, 512
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.229

if.then.188:                                      ; preds = %if.end.185
  %136 = bitcast i64* %white to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #2
  %137 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev.addr, align 8, !tbaa !1
  %138 = bitcast %struct.gx_device_plane_extract_s* %137 to %struct.gx_device_s*
  %call189 = call i64 @gx_device_white(%struct.gx_device_s* %138) #4
  store i64 %call189, i64* %white, align 8, !tbaa !51
  %139 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ppdc.addr, align 8, !tbaa !1
  %type190 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %139, i32 0, i32 0
  %140 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type190, align 8, !tbaa !102
  %cmp191 = icmp eq %struct.gx_device_color_type_s* %140, @gx_dc_type_data_pure
  br i1 %cmp191, label %if.then.193, label %if.else.207

if.then.193:                                      ; preds = %if.then.188
  %141 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors194 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %141, i32 0, i32 1
  %pure195 = bitcast %union._c* %colors194 to i64*
  %142 = load i64, i64* %pure195, align 8, !tbaa !51
  %143 = load i64, i64* %white, align 8, !tbaa !51
  %cmp196 = icmp ne i64 %142, %143
  br i1 %cmp196, label %if.then.198, label %if.else.200

if.then.198:                                      ; preds = %if.then.193
  %144 = load i32*, i32** %plop.addr, align 8, !tbaa !1
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %and199 = and i32 %145, -513
  store i32 %and199, i32* %144, align 4, !tbaa !5
  br label %if.end.206

if.else.200:                                      ; preds = %if.then.193
  %146 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type201 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %146, i32 0, i32 0
  %147 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type201, align 8, !tbaa !102
  %cmp202 = icmp eq %struct.gx_device_color_type_s* %147, @gx_dc_type_data_pure
  br i1 %cmp202, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %if.else.200
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.205:                                       ; preds = %if.else.200
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.198
  br label %if.end.225

if.else.207:                                      ; preds = %if.then.188
  %148 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors208 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %148, i32 0, i32 1
  %binary209 = bitcast %union._c* %colors208 to %struct._bin*
  %color210 = getelementptr inbounds %struct._bin, %struct._bin* %binary209, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [2 x i64], [2 x i64]* %color210, i32 0, i64 0
  %149 = load i64, i64* %arrayidx211, align 8, !tbaa !51
  %150 = load i64, i64* %white, align 8, !tbaa !51
  %cmp212 = icmp ne i64 %149, %150
  br i1 %cmp212, label %land.lhs.true.214, label %if.else.223

land.lhs.true.214:                                ; preds = %if.else.207
  %151 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors215 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %151, i32 0, i32 1
  %binary216 = bitcast %union._c* %colors215 to %struct._bin*
  %color217 = getelementptr inbounds %struct._bin, %struct._bin* %binary216, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [2 x i64], [2 x i64]* %color217, i32 0, i64 1
  %152 = load i64, i64* %arrayidx218, align 8, !tbaa !51
  %153 = load i64, i64* %white, align 8, !tbaa !51
  %cmp219 = icmp ne i64 %152, %153
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %land.lhs.true.214
  %154 = load i32*, i32** %plop.addr, align 8, !tbaa !1
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %and222 = and i32 %155, -513
  store i32 %and222, i32* %154, align 4, !tbaa !5
  br label %if.end.224

if.else.223:                                      ; preds = %land.lhs.true.214, %if.else.207
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.224:                                       ; preds = %if.then.221
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.end.206
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %if.end.225, %if.else.223, %if.then.204
  %156 = bitcast i64* %white to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %cleanup.dest.227 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.227, label %cleanup.230 [
    i32 0, label %cleanup.cont.228
  ]

cleanup.cont.228:                                 ; preds = %cleanup.226
  br label %if.end.229

if.end.229:                                       ; preds = %cleanup.cont.228, %if.end.185
  %157 = load i32, i32* %reduced, align 4, !tbaa !71
  store i32 %157, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

cleanup.230:                                      ; preds = %if.end.229, %cleanup.226, %if.else.182, %cleanup
  %158 = bitcast i32* %reduced to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = load i32, i32* %retval
  ret i32 %159
}

declare i32 @gs_set_logical_op(%struct.gs_state_s*, i32) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_devn_reduce_colored_halftone(%struct.gx_device_color_s*, %struct.gx_device_s*) #1

declare i64 @gx_device_white(%struct.gx_device_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct.gs_imager_state_s* @gs_imager_state_copy(%struct.gs_imager_state_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gx_color_map_procs_s* @plane_get_cmap_procs(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_color_map_procs_s* @plane_color_map_procs
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal void @plane_cmap_gray(i16 signext %gray, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis_image, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %gray.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis_image.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !74
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis_image, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !71
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %client_data, align 8, !tbaa !112
  %3 = bitcast i8* %2 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %3, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !129
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %7, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %log_op, align 4, !tbaa !170
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %12, i32 0, i32 10
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !132
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 49
  %14 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !171
  %map_gray = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %14, i32 0, i32 0
  %15 = load void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_gray, align 8, !tbaa !172
  %16 = load i16, i16* %gray.addr, align 2, !tbaa !74
  %17 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis2 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %17, i32 0, i32 10
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis2, align 8, !tbaa !132
  %19 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_plane_extract_s* %19 to %struct.gx_device_s*
  %21 = load i32, i32* %select.addr, align 4, !tbaa !71
  call void %15(i16 signext %16, %struct.gx_device_color_s* %dcolor, %struct.gs_imager_state_s* %18, %struct.gx_device_s* %20, i32 %21) #4
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %22, %struct.gx_device_plane_extract_s* %23, %struct.gx_device_color_s* %dcolor, i32* %lop) #4
  %24 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %24) #2
  %25 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plane_cmap_rgb(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis_image, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis_image.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  store i16 %r, i16* %r.addr, align 2, !tbaa !74
  store i16 %g, i16* %g.addr, align 2, !tbaa !74
  store i16 %b, i16* %b.addr, align 2, !tbaa !74
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis_image, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !71
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %client_data, align 8, !tbaa !112
  %3 = bitcast i8* %2 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %3, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !129
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %7, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %log_op, align 4, !tbaa !170
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %12, i32 0, i32 10
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !132
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 49
  %14 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !171
  %map_rgb = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %14, i32 0, i32 1
  %15 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !174
  %16 = load i16, i16* %r.addr, align 2, !tbaa !74
  %17 = load i16, i16* %g.addr, align 2, !tbaa !74
  %18 = load i16, i16* %b.addr, align 2, !tbaa !74
  %19 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis2 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %19, i32 0, i32 10
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis2, align 8, !tbaa !132
  %21 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_plane_extract_s* %21 to %struct.gx_device_s*
  %23 = load i32, i32* %select.addr, align 4, !tbaa !71
  call void %15(i16 signext %16, i16 signext %17, i16 signext %18, %struct.gx_device_color_s* %dcolor, %struct.gs_imager_state_s* %20, %struct.gx_device_s* %22, i32 %23) #4
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %24, %struct.gx_device_plane_extract_s* %25, %struct.gx_device_color_s* %dcolor, i32* %lop) #4
  %26 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %26) #2
  %27 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plane_cmap_cmyk(i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis_image, %struct.gx_device_s* %dev, i32 %select, %struct.gs_color_space_s* %source_pcs) #0 {
entry:
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis_image.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %source_pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  store i16 %c, i16* %c.addr, align 2, !tbaa !74
  store i16 %m, i16* %m.addr, align 2, !tbaa !74
  store i16 %y, i16* %y.addr, align 2, !tbaa !74
  store i16 %k, i16* %k.addr, align 2, !tbaa !74
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis_image, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !71
  store %struct.gs_color_space_s* %source_pcs, %struct.gs_color_space_s** %source_pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %client_data, align 8, !tbaa !112
  %3 = bitcast i8* %2 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %3, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !129
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %7, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %log_op, align 4, !tbaa !170
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %12, i32 0, i32 10
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !132
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 49
  %14 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !171
  %map_cmyk = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %14, i32 0, i32 2
  %15 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk, align 8, !tbaa !175
  %16 = load i16, i16* %c.addr, align 2, !tbaa !74
  %17 = load i16, i16* %m.addr, align 2, !tbaa !74
  %18 = load i16, i16* %y.addr, align 2, !tbaa !74
  %19 = load i16, i16* %k.addr, align 2, !tbaa !74
  %20 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis2 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %20, i32 0, i32 10
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis2, align 8, !tbaa !132
  %22 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_plane_extract_s* %22 to %struct.gx_device_s*
  %24 = load i32, i32* %select.addr, align 4, !tbaa !71
  call void %15(i16 signext %16, i16 signext %17, i16 signext %18, i16 signext %19, %struct.gx_device_color_s* %dcolor, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %23, i32 %24, %struct.gs_color_space_s* null) #4
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %25, %struct.gx_device_plane_extract_s* %26, %struct.gx_device_color_s* %dcolor, i32* %lop) #4
  %27 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %27) #2
  %28 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plane_cmap_rgb_alpha(i16 signext %r, i16 signext %g, i16 signext %b, i16 signext %alpha, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis_image, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis_image.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  %lop = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  store i16 %r, i16* %r.addr, align 2, !tbaa !74
  store i16 %g, i16* %g.addr, align 2, !tbaa !74
  store i16 %b, i16* %b.addr, align 2, !tbaa !74
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !74
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis_image, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !71
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %client_data, align 8, !tbaa !112
  %3 = bitcast i8* %2 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %3, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !129
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %7, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %8 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %log_op, align 4, !tbaa !170
  store i32 %10, i32* %lop, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %12, i32 0, i32 10
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !132
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 49
  %14 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !171
  %map_rgb_alpha = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %14, i32 0, i32 3
  %15 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb_alpha, align 8, !tbaa !176
  %16 = load i16, i16* %r.addr, align 2, !tbaa !74
  %17 = load i16, i16* %g.addr, align 2, !tbaa !74
  %18 = load i16, i16* %b.addr, align 2, !tbaa !74
  %19 = load i16, i16* %alpha.addr, align 2, !tbaa !74
  %20 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis2 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %20, i32 0, i32 10
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis2, align 8, !tbaa !132
  %22 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_plane_extract_s* %22 to %struct.gx_device_s*
  %24 = load i32, i32* %select.addr, align 4, !tbaa !71
  call void %15(i16 signext %16, i16 signext %17, i16 signext %18, i16 signext %19, %struct.gx_device_color_s* %dcolor, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %23, i32 %24) #4
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %call = call i32 @reduce_drawing_color(%struct.gx_device_color_s* %25, %struct.gx_device_plane_extract_s* %26, %struct.gx_device_color_s* %dcolor, i32* %lop) #4
  %27 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %27) #2
  %28 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_cmap_is_halftoned(%struct.gs_imager_state_s* %pis_image, %struct.gx_device_s* %dev) #0 {
entry:
  %pis_image.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_imager_state_s* %pis_image, %struct.gs_imager_state_s** %pis_image.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %2, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %3 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %info1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %3, i32 0, i32 9
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info1, align 8, !tbaa !125
  %5 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %7 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %4, %struct.gx_image_plane_s* %5, i32 %6, i32* %7) #4
  %8 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @plane_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %ppie = alloca %struct.plane_image_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.plane_image_enum_s*
  store %struct.plane_image_enum_s* %2, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %info1 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %4, i32 0, i32 9
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info1, align 8, !tbaa !125
  %6 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %5, i32 %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !131
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !134
  %10 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !131
  %12 = load %struct.plane_image_enum_s*, %struct.plane_image_enum_s** %ppie, align 8, !tbaa !1
  %pis_image = getelementptr inbounds %struct.plane_image_enum_s, %struct.plane_image_enum_s* %12, i32 0, i32 11
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_image, align 8, !tbaa !133
  %14 = bitcast %struct.gs_imager_state_s* %13 to i8*
  call void %9(%struct.gs_memory_s* %11, i8* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #4
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #4
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.plane_image_enum_s** %ppie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %15
}

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #1

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #1

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #1

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #1

declare i32 @bits_expand_plane(%struct.bits_plane_s*, %struct.bits_plane_s*, i32, i32, i32) #1

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 1728}
!10 = !{!"gx_device_plane_extract_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !2, i64 1736, !22, i64 1744, !12, i64 1760, !6, i64 1768, !6, i64 1772, !6, i64 1776}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!23 = !{!24, !2, i64 0}
!24 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!25 = !{!8, !2, i64 40}
!26 = !{!10, !2, i64 1736}
!27 = !{!22, !6, i64 0}
!28 = !{!29, !14, i64 108}
!29 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!30 = !{!10, !2, i64 24}
!31 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!32 = !{!29, !2, i64 1200}
!33 = !{!29, !6, i64 832}
!34 = !{!29, !6, i64 836}
!35 = !{!10, !12, i64 1760}
!36 = !{!10, !6, i64 1776}
!37 = !{!10, !6, i64 1768}
!38 = !{!29, !2, i64 1224}
!39 = !{!40, !2, i64 1224}
!40 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !41, i64 2548, !2, i64 2576, !43, i64 2584, !44, i64 2600, !45, i64 2624, !46, i64 2656, !47, i64 2680, !48, i64 2720, !49, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !12, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!41 = !{!"gs_matrix_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!42 = !{!"float", !3, i64 0}
!43 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!44 = !{!"_c24", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!45 = !{!"_c40", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!46 = !{!"_c48", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!47 = !{!"_c56", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!48 = !{!"_c64", !12, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!50 = !{!10, !6, i64 1772}
!51 = !{!12, !12, i64 0}
!52 = !{!10, !6, i64 1748}
!53 = !{!29, !2, i64 1216}
!54 = !{!10, !6, i64 832}
!55 = !{!10, !6, i64 836}
!56 = !{!40, !2, i64 2576}
!57 = !{!58, !6, i64 32}
!58 = !{!"tiling_state_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !59, i64 40, !60, i64 64, !60, i64 72, !6, i64 80}
!59 = !{!"tsb_", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!60 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!61 = !{!40, !6, i64 1736}
!62 = !{!58, !6, i64 52}
!63 = !{!58, !2, i64 40}
!64 = !{!58, !6, i64 64}
!65 = !{!58, !6, i64 68}
!66 = !{!58, !6, i64 72}
!67 = !{!58, !6, i64 76}
!68 = !{!29, !2, i64 1312}
!69 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !70, i64 28, i64 4, !71, i64 32, i64 4, !71, i64 36, i64 4, !71, i64 40, i64 4, !71, i64 44, i64 4, !5, i64 48, i64 4, !70, i64 52, i64 4, !70, i64 56, i64 4, !70, i64 60, i64 4, !5, i64 64, i64 4, !70, i64 68, i64 4, !70, i64 72, i64 4, !70, i64 76, i64 4, !70, i64 80, i64 4, !70, i64 84, i64 4, !70, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !70, i64 104, i64 4, !5, i64 108, i64 4, !70, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !70, i64 128, i64 4, !5, i64 132, i64 4, !70, i64 136, i64 4, !70, i64 140, i64 4, !70, i64 144, i64 4, !70, i64 148, i64 4, !70, i64 152, i64 4, !70, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !72, i64 184, i64 8, !72, i64 192, i64 8, !72, i64 200, i64 8, !72, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 2, !74, i64 220, i64 4, !71, i64 224, i64 4, !70, i64 228, i64 4, !70, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !51, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5, i64 288, i64 4, !5, i64 292, i64 4, !5, i64 296, i64 4, !70, i64 300, i64 4, !5, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 320, i64 4, !70, i64 324, i64 4, !5, i64 328, i64 4, !5, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !71, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !5, i64 440, i64 8, !1, i64 448, i64 4, !5, i64 456, i64 8, !1, i64 464, i64 4, !5, i64 472, i64 8, !1, i64 480, i64 4, !5, i64 488, i64 8, !1, i64 496, i64 512, !71, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !5, i64 1028, i64 4, !71, i64 1032, i64 4, !5, i64 1036, i64 4, !5, i64 1040, i64 8, !51, i64 1048, i64 256, !71, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !5, i64 1340, i64 4, !71, i64 1344, i64 4, !5, i64 1348, i64 4, !5, i64 1352, i64 8, !51, i64 1360, i64 256, !71}
!70 = !{!42, !42, i64 0}
!71 = !{!3, !3, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !3, i64 0}
!74 = !{!14, !14, i64 0}
!75 = !{!29, !2, i64 1336}
!76 = !{!29, !2, i64 1344}
!77 = !{!29, !2, i64 1352}
!78 = !{!29, !2, i64 1368}
!79 = !{!29, !2, i64 1376}
!80 = !{!81, !2, i64 0}
!81 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !60, i64 12, !12, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !6, i64 40}
!82 = !{!81, !6, i64 8}
!83 = !{!81, !6, i64 12}
!84 = !{!81, !6, i64 16}
!85 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !51, i64 32, i64 2, !74, i64 34, i64 2, !74, i64 36, i64 2, !74, i64 38, i64 2, !74, i64 40, i64 4, !5}
!86 = !{!81, !12, i64 24}
!87 = !{!29, !2, i64 1416}
!88 = !{!89, !2, i64 16}
!89 = !{!"crp_", !3, i64 0, !2, i64 16, !58, i64 24}
!90 = !{!89, !2, i64 64}
!91 = !{!89, !6, i64 76}
!92 = !{!29, !2, i64 1424}
!93 = !{!94, !2, i64 0}
!94 = !{!"gs_image_common_s", !2, i64 0, !41, i64 8}
!95 = !{!96, !6, i64 48}
!96 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48}
!97 = !{!98, !3, i64 592}
!98 = !{!"gs_image1_s", !2, i64 0, !41, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!99 = !{!98, !6, i64 584}
!100 = !{!101, !6, i64 572}
!101 = !{!"gs_pixel_image_s", !2, i64 0, !41, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576}
!102 = !{!103, !2, i64 0}
!103 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !60, i64 352, !6, i64 360, !104, i64 368, !106, i64 632}
!104 = !{!"gs_client_color_s", !2, i64 0, !105, i64 8}
!105 = !{!"gs_paint_color_s", !3, i64 0}
!106 = !{!"_mask", !107, i64 0, !12, i64 8, !2, i64 16}
!107 = !{!"mp_", !6, i64 0, !6, i64 4}
!108 = !{!103, !6, i64 360}
!109 = !{!110, !2, i64 72}
!110 = !{!"gs_memory_s", !2, i64 0, !111, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!111 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!112 = !{!113, !2, i64 16}
!113 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !114, i64 24, !6, i64 128, !116, i64 132, !6, i64 168, !117, i64 176, !117, i64 192, !6, i64 208, !6, i64 212, !14, i64 216, !3, i64 220, !118, i64 224, !118, i64 228, !119, i64 232, !12, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !42, i64 296, !120, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !42, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !121, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !122, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !122, i64 1336}
!114 = !{!"gx_line_params_s", !42, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !6, i64 36, !41, i64 40, !115, i64 64}
!115 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !42, i64 12, !6, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !42, i64 32}
!116 = !{!"gs_matrix_fixed_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!117 = !{!"gs_point_s", !73, i64 0, !73, i64 8}
!118 = !{!"gs_transparency_source_s", !42, i64 0}
!119 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!120 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!121 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!122 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !3, i64 24}
!123 = !{!113, !2, i64 360}
!124 = !{!29, !2, i64 1440}
!125 = !{!126, !2, i64 568}
!126 = !{!"plane_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !2, i64 584}
!127 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !51, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 260, !71, i64 308, i64 260, !71}
!128 = !{!126, !2, i64 8}
!129 = !{!126, !2, i64 16}
!130 = !{!126, !12, i64 32}
!131 = !{!126, !2, i64 24}
!132 = !{!126, !2, i64 576}
!133 = !{!126, !2, i64 584}
!134 = !{!110, !2, i64 24}
!135 = !{!10, !6, i64 1752}
!136 = !{!137, !12, i64 0}
!137 = !{!"gs_get_bits_params_s", !12, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!138 = !{!29, !6, i64 100}
!139 = !{i64 0, i64 8, !51, i64 8, i64 512, !71, i64 520, i64 4, !5, i64 524, i64 4, !5, i64 528, i64 4, !5}
!140 = !{!29, !2, i64 1448}
!141 = !{!142, !6, i64 8}
!142 = !{!"gs_int_rect_s", !60, i64 0, !60, i64 8}
!143 = !{!142, !6, i64 0}
!144 = !{!145, !6, i64 8}
!145 = !{!"bits_plane_s", !3, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!146 = !{!10, !14, i64 108}
!147 = !{!145, !6, i64 12}
!148 = !{!145, !6, i64 16}
!149 = !{!137, !6, i64 528}
!150 = !{!137, !6, i64 520}
!151 = !{!142, !6, i64 12}
!152 = !{!142, !6, i64 4}
!153 = !{!58, !2, i64 0}
!154 = !{!58, !2, i64 8}
!155 = !{!58, !6, i64 16}
!156 = !{!58, !6, i64 20}
!157 = !{!58, !6, i64 24}
!158 = !{!58, !6, i64 28}
!159 = !{!58, !6, i64 48}
!160 = !{!58, !6, i64 56}
!161 = !{!110, !2, i64 64}
!162 = !{!58, !6, i64 80}
!163 = !{!10, !6, i64 1744}
!164 = !{i64 0, i64 8, !1, i64 8, i64 8, !51, i64 8, i64 8, !1, i64 16, i64 16, !71, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !74, i64 18, i64 64, !71, i64 84, i64 256, !71, i64 340, i64 2, !74, i64 344, i64 8, !51, i64 8, i64 8, !1, i64 8, i64 128, !71, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !71, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !51, i64 648, i64 8, !1}
!165 = !{!166, !12, i64 336}
!166 = !{!"_col", !2, i64 0, !14, i64 8, !3, i64 10, !3, i64 76, !14, i64 332, !12, i64 336}
!167 = !{!166, !14, i64 332}
!168 = !{!169, !2, i64 32}
!169 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!170 = !{!113, !6, i64 212}
!171 = !{!113, !2, i64 1016}
!172 = !{!173, !2, i64 0}
!173 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!174 = !{!173, !2, i64 8}
!175 = !{!173, !2, i64 16}
!176 = !{!173, !2, i64 24}
