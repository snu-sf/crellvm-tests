; ModuleID = './gdevprn.bc'
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
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32)*, {}*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gx_clist_state_s = type opaque
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
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.clist_render_thread_control_s = type { i32, %struct.gs_memory_s*, %struct.gx_semaphore_s*, %struct.gx_semaphore_s*, %struct.gx_device_s*, %struct.gx_device_s*, i32, i8*, %struct.gx_process_page_options_s*, i8* }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.gx_device_plane_extract_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gx_render_plane_s, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"gx_device_printer\00", align 1
@st_device_printer = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 18472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_printer_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_printer_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@prn_std_procs = constant { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@prn_bg_procs = constant { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"gdev_prn_free_memory\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NumRenderingThreads\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"OpenOutputFile\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"BGPrint\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ReopenPerPage\00", align 1
@clist_io_procs_file_global = external global %struct.clist_io_procs_s*, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"BandListStorage\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"saved-pages\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"InputAttributes\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"OutputAttributes\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"I/O Error: Output File \22%s\22 must be seekable\0A\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"create_buf_device\00", align 1
@st_device_plane_extract = external constant %struct.gs_memory_struct_type_s, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"mem_close\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"setup_buf_device\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"destroy_buf_device\00", align 1
@st_device_clist = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"printer buffer\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"printer_buffer\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"printer mem left\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"printer buffer(open)\00", align 1
@gs_clist_device_procs = external constant %struct.gx_device_procs_s, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"cmd list buffer\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"cmd list buf(retry open)\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"cmd list buf\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"clist_color_usage_array\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_printer_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 53
  %5 = load i64, i64* %buffer_space, align 8, !tbaa !7
  %6 = inttoptr i64 %5 to %struct.gx_device_printer_s*
  %cmp = icmp ne %struct.gx_device_printer_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %7 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_clist, i32 0, i32 4), align 8, !tbaa !23
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %11 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 0
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %7(%struct.gs_memory_s* %8, i8* %9, i32 %10, i32 %sub, %struct.enum_ptr_s* %12, %struct.gs_memory_struct_type_s* @st_device_clist, %struct.gc_state_s* %13) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.default
  %14 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !23
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = load i32, i32* %size.addr, align 4, !tbaa !5
  %18 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %18, 0
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %14(%struct.gs_memory_s* %15, i8* %16, i32 %17, i32 %sub1, %struct.enum_ptr_s* %19, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %20) #5
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %21 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %22
}

; Function Attrs: nounwind uwtable
define internal void @device_printer_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 53
  %4 = load i64, i64* %buffer_space, align 8, !tbaa !7
  %5 = inttoptr i64 %4 to %struct.gx_device_printer_s*
  %cmp = icmp ne %struct.gx_device_printer_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_clist, i32 0, i32 5), align 8, !tbaa !25
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i8* %7, i32 %8, %struct.gs_memory_struct_type_s* @st_device_clist, %struct.gc_state_s* %9) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !25
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !5
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %10(i8* %11, i32 %12, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_open(%struct.gx_device_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 52
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !26
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_allocate_memory(%struct.gx_device_s* %5, %struct.gdev_space_params_s* null, i32 0, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %OpenOutputFile = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 47
  %9 = load i32, i32* %OpenOutputFile, align 4, !tbaa !27
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %10, i32 1) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_output_page(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %2 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_output_page_aux(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 0, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_close(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  call void @prn_finish_bg_print(%struct.gx_device_printer_s* %4) #5
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 63
  %sema = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print, i32 0, i32 0
  %6 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !28
  %cmp = icmp ne %struct.gx_semaphore_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 63
  %sema2 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print1, i32 0, i32 0
  %8 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema2, align 8, !tbaa !28
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %8) #5
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 63
  %sema4 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print3, i32 0, i32 0
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %sema4, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_free_memory(%struct.gx_device_s* %10) #5
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 52
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %cmp5 = icmp ne %struct._IO_FILE* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file7, align 8, !tbaa !26
  %call8 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %13, i8* %arraydecay, %struct._IO_FILE* %16) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 52
  store %struct._IO_FILE* null, %struct._IO_FILE** %file9, align 8, !tbaa !26
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 65
  %19 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !29
  %cmp11 = icmp ne %struct.gx_saved_pages_list_s* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %saved_pages_list13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 65
  %21 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list13, align 8, !tbaa !29
  call void @gx_saved_pages_list_free(%struct.gx_saved_pages_list_s* %21) #5
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %saved_pages_list14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* null, %struct.gx_saved_pages_list_s** %saved_pages_list14, align 8, !tbaa !29
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 %23
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  %ofns = alloca %struct.gs_param_string_s, align 8
  %bls = alloca %struct.gs_param_string_s, align 8
  %saved_pages = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %bls to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast %struct.gs_param_string_s* %saved_pages to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 50
  %11 = load i32, i32* %Duplex_set, align 4, !tbaa !30
  %cmp1 = icmp sge i32 %11, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex_set2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 50
  %13 = load i32, i32* %Duplex_set2, align 4, !tbaa !30
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 49
  %call3 = call i32 @param_write_bool(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32* %Duplex) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_null(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call4, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %cond, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %cond.end, %lor.lhs.false
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 64
  %call7 = call i32 @param_write_int(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32* %num_render_threads_requested) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %OpenOutputFile = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 47
  %call10 = call i32 @param_write_bool(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32* %OpenOutputFile) #5
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 62
  %call13 = call i32 @param_write_bool(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %bg_print_requested) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %ReopenPerPage = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 48
  %call16 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32* %ReopenPerPage) #5
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %cond.end, %entry
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.15
  %26 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** @clist_io_procs_file_global, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.clist_io_procs_s* %26, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %BLS_force_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 46
  store i32 1, i32* %BLS_force_memory, align 4, !tbaa !31
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %BLS_force_memory21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 46
  %29 = load i32, i32* %BLS_force_memory21, align 4, !tbaa !31
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** %data, align 8, !tbaa !32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 1
  store i32 6, i32* %size, align 4, !tbaa !34
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !35
  br label %if.end.27

if.else:                                          ; preds = %if.end.20
  %data24 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8** %data24, align 8, !tbaa !32
  %size25 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 1
  store i32 4, i32* %size25, align 4, !tbaa !34
  %persistent26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 2
  store i32 0, i32* %persistent26, align 4, !tbaa !35
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.23
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @param_write_string(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %bls) #5
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.27
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %data32 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* %arraydecay, i8** %data32, align 8, !tbaa !32
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 45
  %arraydecay34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname33, i32 0, i32 0
  %call35 = call i64 @strlen(i8* %arraydecay34) #6
  %conv = trunc i64 %call35 to i32
  %size36 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  store i32 %conv, i32* %size36, align 4, !tbaa !34
  %persistent37 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 2
  store i32 0, i32* %persistent37, align 4, !tbaa !35
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call38 = call i32 @param_write_string(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %ofns) #5
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.31
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.31
  %data43 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %data43, align 8, !tbaa !32
  %size44 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 1
  store i32 0, i32* %size44, align 4, !tbaa !34
  %persistent45 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 2
  store i32 0, i32* %persistent45, align 4, !tbaa !35
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call46 = call i32 @param_write_string(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct.gs_param_string_s* %saved_pages) #5
  store i32 %call46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41, %if.then.30, %if.then
  %37 = bitcast %struct.gs_param_string_s* %saved_pages to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #2
  %38 = bitcast %struct.gs_param_string_s* %bls to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #2
  %39 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #2
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %is_open = alloca i32, align 4
  %oof = alloca i32, align 4
  %rpp = alloca i32, align 4
  %old_page_uses_transparency = alloca i32, align 4
  %bg_print_requested = alloca i32, align 4
  %duplex = alloca i32, align 4
  %duplex_set = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %nthreads = alloca i32, align 4
  %save_sp = alloca %struct.gdev_space_params_s, align 8
  %ofs = alloca %struct.gs_param_string_s, align 8
  %bls = alloca %struct.gs_param_string_s, align 8
  %mdict = alloca %struct.gs_param_collection_s, align 8
  %saved_pages = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %is_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 9
  %8 = load i32, i32* %is_open1, align 4, !tbaa !36
  store i32 %8, i32* %is_open, align 4, !tbaa !5
  %9 = bitcast i32* %oof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %OpenOutputFile = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 47
  %11 = load i32, i32* %OpenOutputFile, align 4, !tbaa !27
  store i32 %11, i32* %oof, align 4, !tbaa !5
  %12 = bitcast i32* %rpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %ReopenPerPage = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 48
  %14 = load i32, i32* %ReopenPerPage, align 4, !tbaa !38
  store i32 %14, i32* %rpp, align 4, !tbaa !5
  %15 = bitcast i32* %old_page_uses_transparency to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 37
  %17 = load i32, i32* %page_uses_transparency, align 4, !tbaa !39
  store i32 %17, i32* %old_page_uses_transparency, align 4, !tbaa !5
  %18 = bitcast i32* %bg_print_requested to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print_requested2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 62
  %20 = load i32, i32* %bg_print_requested2, align 4, !tbaa !40
  store i32 %20, i32* %bg_print_requested, align 4, !tbaa !5
  %21 = bitcast i32* %duplex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %duplex_set to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 -1, i32* %duplex_set, align 4, !tbaa !5
  %23 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 13
  %25 = load i32, i32* %width3, align 4, !tbaa !41
  store i32 %25, i32* %width, align 4, !tbaa !5
  %26 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height4, align 4, !tbaa !42
  store i32 %28, i32* %height, align 4, !tbaa !5
  %29 = bitcast i32* %nthreads to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 64
  %31 = load i32, i32* %num_render_threads_requested, align 4, !tbaa !43
  store i32 %31, i32* %nthreads, align 4, !tbaa !5
  %32 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %32) #2
  %33 = bitcast %struct.gs_param_string_s* %ofs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #2
  %34 = bitcast %struct.gs_param_string_s* %bls to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #2
  %35 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %35) #2
  %36 = bitcast %struct.gs_param_string_s* %saved_pages to i8*
  call void @llvm.lifetime.start(i64 16, i8* %36) #2
  %37 = bitcast %struct.gs_param_string_s* %saved_pages to i8*
  %call = call i8* @memset(i8* %37, i32 0, i64 16) #7
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 38
  %39 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  %40 = bitcast %struct.gdev_space_params_s* %space_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 40, i32 8, i1 false), !tbaa.struct !44
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call5 = call i32 @param_read_bool(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32* %oof) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  switch i32 %call5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %ecode, align 4, !tbaa !5
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %43, i32 0, i32 0
  %44 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !47
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %44, i32 0, i32 7
  %45 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !49
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %param_name, align 8, !tbaa !1
  %48 = load i32, i32* %ecode, align 4, !tbaa !5
  %call6 = call i32 %45(%struct.gs_param_list_s* %46, i8* %47, i32 %48) #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call7 = call i32 @param_read_bool(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32* %rpp) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  switch i32 %call7, label %sw.default.8 [
    i32 0, label %sw.bb.12
    i32 1, label %sw.bb.12
  ]

sw.default.8:                                     ; preds = %sw.epilog
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %ecode, align 4, !tbaa !5
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %51, i32 0, i32 0
  %52 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs9, align 8, !tbaa !47
  %signal_error10 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %52, i32 0, i32 7
  %53 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error10, align 8, !tbaa !49
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %param_name, align 8, !tbaa !1
  %56 = load i32, i32* %ecode, align 4, !tbaa !5
  %call11 = call i32 %53(%struct.gs_param_list_s* %54, i8* %55, i32 %56) #5
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %sw.epilog, %sw.epilog, %sw.default.8
  br label %sw.epilog.13

sw.epilog.13:                                     ; preds = %sw.bb.12
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 50
  %58 = load i32, i32* %Duplex_set, align 4, !tbaa !30
  %cmp = icmp sge i32 %58, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %sw.epilog.13
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call14 = call i32 @param_read_bool(%struct.gs_param_list_s* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32* %duplex) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  switch i32 %call14, label %sw.default.16 [
    i32 0, label %sw.bb.15
    i32 1, label %sw.bb.23
  ]

sw.bb.15:                                         ; preds = %if.then
  store i32 1, i32* %duplex_set, align 4, !tbaa !5
  br label %sw.epilog.24

sw.default.16:                                    ; preds = %if.then
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call17 = call i32 @param_read_null(%struct.gs_param_list_s* %60, i8* %61) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %sw.default.16
  store i32 0, i32* %duplex_set, align 4, !tbaa !5
  br label %sw.epilog.24

if.end:                                           ; preds = %sw.default.16
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %ecode, align 4, !tbaa !5
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %63, i32 0, i32 0
  %64 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs20, align 8, !tbaa !47
  %signal_error21 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %64, i32 0, i32 7
  %65 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error21, align 8, !tbaa !49
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %67 = load i8*, i8** %param_name, align 8, !tbaa !1
  %68 = load i32, i32* %ecode, align 4, !tbaa !5
  %call22 = call i32 %65(%struct.gs_param_list_s* %66, i8* %67, i32 %68) #5
  br label %sw.bb.23

sw.bb.23:                                         ; preds = %if.then, %if.end
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %sw.bb.23, %if.then.19, %sw.bb.15
  br label %if.end.25

if.end.25:                                        ; preds = %sw.epilog.24, %sw.epilog.13
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call26 = call i32 @param_read_string(%struct.gs_param_list_s* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %bls) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  switch i32 %call26, label %sw.default.41 [
    i32 0, label %sw.bb.27
    i32 1, label %sw.bb.45
  ]

sw.bb.27:                                         ; preds = %if.end.25
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 1
  %70 = load i32, i32* %size, align 4, !tbaa !34
  %cmp28 = icmp ugt i32 %70, 1
  br i1 %cmp28, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %sw.bb.27
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  %71 = load i8*, i8** %data, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %conv = zext i8 %72 to i32
  %cmp29 = icmp eq i32 %conv, 109
  br i1 %cmp29, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %73 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** @clist_io_procs_file_global, align 8, !tbaa !1
  %cmp31 = icmp ne %struct.clist_io_procs_s* %73, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.40

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %data34 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  %74 = load i8*, i8** %data34, align 8, !tbaa !32
  %arrayidx35 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx35, align 1, !tbaa !46
  %conv36 = zext i8 %75 to i32
  %cmp37 = icmp eq i32 %conv36, 102
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.33, %land.lhs.true
  br label %sw.epilog.47

if.end.40:                                        ; preds = %land.lhs.true.33, %lor.lhs.false, %sw.bb.27
  br label %sw.default.41

sw.default.41:                                    ; preds = %if.end.25, %if.end.40
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %ecode, align 4, !tbaa !5
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %77, i32 0, i32 0
  %78 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs42, align 8, !tbaa !47
  %signal_error43 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %78, i32 0, i32 7
  %79 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error43, align 8, !tbaa !49
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %param_name, align 8, !tbaa !1
  %82 = load i32, i32* %ecode, align 4, !tbaa !5
  %call44 = call i32 %79(%struct.gs_param_list_s* %80, i8* %81, i32 %82) #5
  br label %sw.bb.45

sw.bb.45:                                         ; preds = %if.end.25, %sw.default.41
  %data46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  store i8* null, i8** %data46, align 8, !tbaa !32
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %sw.bb.45, %if.then.39
  %83 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call48 = call i32 @param_read_string(%struct.gs_param_list_s* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %ofs) #5
  store i32 %call48, i32* %code, align 4, !tbaa !5
  switch i32 %call48, label %sw.default.66 [
    i32 0, label %sw.bb.49
    i32 1, label %sw.bb.70
  ]

sw.bb.49:                                         ; preds = %sw.epilog.47
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 32
  %85 = load i32, i32* %LockSafetyParams, align 4, !tbaa !51
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %sw.bb.49
  %data51 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %86 = load i8*, i8** %data51, align 8, !tbaa !32
  %size52 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %87 = load i32, i32* %size52, align 4, !tbaa !34
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname53 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 45
  %arraydecay54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname53, i32 0, i32 0
  %call55 = call i64 @strlen(i8* %arraydecay54) #6
  %conv56 = trunc i64 %call55 to i32
  %call57 = call i32 @bytes_compare(i8* %86, i32 %87, i8* %arraydecay, i32 %conv56) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true.50
  store i32 -7, i32* %code, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true.50, %sw.bb.49
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %call60 = call i32 @validate_output_file(%struct.gs_param_string_s* %ofs, %struct.gs_memory_s* %91) #5
  store i32 %call60, i32* %code, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.59
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp62 = icmp sge i32 %92, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  br label %sw.epilog.72

if.end.65:                                        ; preds = %if.end.61
  br label %sw.default.66

sw.default.66:                                    ; preds = %sw.epilog.47, %if.end.65
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %ecode, align 4, !tbaa !5
  %94 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %94, i32 0, i32 0
  %95 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs67, align 8, !tbaa !47
  %signal_error68 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %95, i32 0, i32 7
  %96 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error68, align 8, !tbaa !49
  %97 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %98 = load i8*, i8** %param_name, align 8, !tbaa !1
  %99 = load i32, i32* %ecode, align 4, !tbaa !5
  %call69 = call i32 %96(%struct.gs_param_list_s* %97, i8* %98, i32 %99) #5
  br label %sw.bb.70

sw.bb.70:                                         ; preds = %sw.epilog.47, %sw.default.66
  %data71 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  store i8* null, i8** %data71, align 8, !tbaa !32
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %sw.bb.70, %if.then.64
  %100 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs73 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %100, i32 0, i32 0
  %101 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs73, align 8, !tbaa !47
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %101, i32 0, i32 1
  %102 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !53
  %103 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call74 = call i32 %102(%struct.gs_param_list_s* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_collection_s* %mdict, i32 1) #5
  store i32 %call74, i32* %code, align 4, !tbaa !5
  switch i32 %call74, label %sw.default.78 [
    i32 0, label %sw.bb.75
    i32 1, label %sw.bb.82
  ]

sw.bb.75:                                         ; preds = %sw.epilog.72
  %104 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %104, i32 0, i32 0
  %105 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs76, align 8, !tbaa !47
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %105, i32 0, i32 2
  %106 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !54
  %107 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call77 = call i32 %106(%struct.gs_param_list_s* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_collection_s* %mdict) #5
  br label %sw.epilog.83

sw.default.78:                                    ; preds = %sw.epilog.72
  %108 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %108, i32* %ecode, align 4, !tbaa !5
  %109 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs79 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %109, i32 0, i32 0
  %110 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs79, align 8, !tbaa !47
  %signal_error80 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %110, i32 0, i32 7
  %111 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error80, align 8, !tbaa !49
  %112 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %113 = load i8*, i8** %param_name, align 8, !tbaa !1
  %114 = load i32, i32* %ecode, align 4, !tbaa !5
  %call81 = call i32 %111(%struct.gs_param_list_s* %112, i8* %113, i32 %114) #5
  br label %sw.bb.82

sw.bb.82:                                         ; preds = %sw.epilog.72, %sw.default.78
  br label %sw.epilog.83

sw.epilog.83:                                     ; preds = %sw.bb.82, %sw.bb.75
  %115 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs84 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %115, i32 0, i32 0
  %116 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs84, align 8, !tbaa !47
  %begin_xmit_collection85 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %116, i32 0, i32 1
  %117 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection85, align 8, !tbaa !53
  %118 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call86 = call i32 %117(%struct.gs_param_list_s* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_collection_s* %mdict, i32 1) #5
  store i32 %call86, i32* %code, align 4, !tbaa !5
  switch i32 %call86, label %sw.default.91 [
    i32 0, label %sw.bb.87
    i32 1, label %sw.bb.95
  ]

sw.bb.87:                                         ; preds = %sw.epilog.83
  %119 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs88 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %119, i32 0, i32 0
  %120 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs88, align 8, !tbaa !47
  %end_xmit_collection89 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %120, i32 0, i32 2
  %121 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection89, align 8, !tbaa !54
  %122 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call90 = call i32 %121(%struct.gs_param_list_s* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_collection_s* %mdict) #5
  br label %sw.epilog.96

sw.default.91:                                    ; preds = %sw.epilog.83
  %123 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %123, i32* %ecode, align 4, !tbaa !5
  %124 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs92 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %124, i32 0, i32 0
  %125 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs92, align 8, !tbaa !47
  %signal_error93 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %125, i32 0, i32 7
  %126 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error93, align 8, !tbaa !49
  %127 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %128 = load i8*, i8** %param_name, align 8, !tbaa !1
  %129 = load i32, i32* %ecode, align 4, !tbaa !5
  %call94 = call i32 %126(%struct.gs_param_list_s* %127, i8* %128, i32 %129) #5
  br label %sw.bb.95

sw.bb.95:                                         ; preds = %sw.epilog.83, %sw.default.91
  br label %sw.epilog.96

sw.epilog.96:                                     ; preds = %sw.bb.95, %sw.bb.87
  %130 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call97 = call i32 @param_read_int(%struct.gs_param_list_s* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32* %nthreads) #5
  store i32 %call97, i32* %code, align 4, !tbaa !5
  switch i32 %call97, label %sw.default.98 [
    i32 0, label %sw.epilog.103
    i32 1, label %sw.bb.102
  ]

sw.default.98:                                    ; preds = %sw.epilog.96
  %131 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %131, i32* %ecode, align 4, !tbaa !5
  %132 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs99 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %132, i32 0, i32 0
  %133 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs99, align 8, !tbaa !47
  %signal_error100 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %133, i32 0, i32 7
  %134 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error100, align 8, !tbaa !49
  %135 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %136 = load i8*, i8** %param_name, align 8, !tbaa !1
  %137 = load i32, i32* %ecode, align 4, !tbaa !5
  %call101 = call i32 %134(%struct.gs_param_list_s* %135, i8* %136, i32 %137) #5
  br label %sw.bb.102

sw.bb.102:                                        ; preds = %sw.epilog.96, %sw.default.98
  br label %sw.epilog.103

sw.epilog.103:                                    ; preds = %sw.bb.102, %sw.epilog.96
  %138 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call104 = call i32 @param_read_bool(%struct.gs_param_list_s* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %bg_print_requested) #5
  store i32 %call104, i32* %code, align 4, !tbaa !5
  switch i32 %call104, label %sw.default.105 [
    i32 0, label %sw.bb.109
    i32 1, label %sw.bb.109
  ]

sw.default.105:                                   ; preds = %sw.epilog.103
  %139 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %139, i32* %ecode, align 4, !tbaa !5
  %140 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs106 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %140, i32 0, i32 0
  %141 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs106, align 8, !tbaa !47
  %signal_error107 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %141, i32 0, i32 7
  %142 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error107, align 8, !tbaa !49
  %143 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %144 = load i8*, i8** %param_name, align 8, !tbaa !1
  %145 = load i32, i32* %ecode, align 4, !tbaa !5
  %call108 = call i32 %142(%struct.gs_param_list_s* %143, i8* %144, i32 %145) #5
  br label %sw.bb.109

sw.bb.109:                                        ; preds = %sw.epilog.103, %sw.epilog.103, %sw.default.105
  br label %sw.epilog.110

sw.epilog.110:                                    ; preds = %sw.bb.109
  %146 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call111 = call i32 @param_read_string(%struct.gs_param_list_s* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct.gs_param_string_s* %saved_pages) #5
  store i32 %call111, i32* %code, align 4, !tbaa !5
  switch i32 %call111, label %sw.default.112 [
    i32 0, label %sw.bb.116
    i32 1, label %sw.bb.116
  ]

sw.default.112:                                   ; preds = %sw.epilog.110
  %147 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %147, i32* %ecode, align 4, !tbaa !5
  %148 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs113 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %148, i32 0, i32 0
  %149 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs113, align 8, !tbaa !47
  %signal_error114 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %149, i32 0, i32 7
  %150 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error114, align 8, !tbaa !49
  %151 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %152 = load i8*, i8** %param_name, align 8, !tbaa !1
  %153 = load i32, i32* %ecode, align 4, !tbaa !5
  %call115 = call i32 %150(%struct.gs_param_list_s* %151, i8* %152, i32 %153) #5
  br label %sw.bb.116

sw.bb.116:                                        ; preds = %sw.epilog.110, %sw.epilog.110, %sw.default.112
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.bb.116
  %154 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %154, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %sw.epilog.117
  %155 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %sw.epilog.117
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %156, i32 0, i32 9
  store i32 0, i32* %is_open122, align 4, !tbaa !36
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %158 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call123 = call i32 @gx_default_put_params(%struct.gx_device_s* %157, %struct.gs_param_list_s* %158) #5
  store i32 %call123, i32* %code, align 4, !tbaa !5
  %159 = load i32, i32* %is_open, align 4, !tbaa !5
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %160, i32 0, i32 9
  store i32 %159, i32* %is_open124, align 4, !tbaa !36
  %161 = load i32, i32* %code, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %161, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.121
  %162 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %162, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %if.end.121
  %163 = load i32, i32* %oof, align 4, !tbaa !5
  %164 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %OpenOutputFile129 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %164, i32 0, i32 47
  store i32 %163, i32* %OpenOutputFile129, align 4, !tbaa !27
  %165 = load i32, i32* %rpp, align 4, !tbaa !5
  %166 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %ReopenPerPage130 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %166, i32 0, i32 48
  store i32 %165, i32* %ReopenPerPage130, align 4, !tbaa !38
  %167 = load i32, i32* %bg_print_requested, align 4, !tbaa !5
  %168 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print_requested131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %168, i32 0, i32 62
  store i32 %167, i32* %bg_print_requested131, align 4, !tbaa !40
  %169 = load i32, i32* %duplex_set, align 4, !tbaa !5
  %cmp132 = icmp sge i32 %169, 0
  br i1 %cmp132, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.128
  %170 = load i32, i32* %duplex, align 4, !tbaa !5
  %171 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %171, i32 0, i32 49
  store i32 %170, i32* %Duplex, align 4, !tbaa !55
  %172 = load i32, i32* %duplex_set, align 4, !tbaa !5
  %173 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %Duplex_set135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %173, i32 0, i32 50
  store i32 %172, i32* %Duplex_set135, align 4, !tbaa !30
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.128
  %174 = load i32, i32* %nthreads, align 4, !tbaa !5
  %175 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %num_render_threads_requested137 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %175, i32 0, i32 64
  store i32 %174, i32* %num_render_threads_requested137, align 4, !tbaa !43
  %data138 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  %176 = load i8*, i8** %data138, align 8, !tbaa !32
  %cmp139 = icmp ne i8* %176, null
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.136
  %data142 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %bls, i32 0, i32 0
  %177 = load i8*, i8** %data142, align 8, !tbaa !32
  %arrayidx143 = getelementptr inbounds i8, i8* %177, i64 0
  %178 = load i8, i8* %arrayidx143, align 1, !tbaa !46
  %conv144 = zext i8 %178 to i32
  %cmp145 = icmp eq i32 %conv144, 109
  %conv146 = zext i1 %cmp145 to i32
  %179 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %BLS_force_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %179, i32 0, i32 46
  store i32 %conv146, i32* %BLS_force_memory, align 4, !tbaa !31
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.141, %if.end.136
  %180 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %181 = load i32, i32* %width, align 4, !tbaa !5
  %182 = load i32, i32* %height, align 4, !tbaa !5
  %183 = load i32, i32* %old_page_uses_transparency, align 4, !tbaa !5
  %call148 = call i32 @gdev_prn_maybe_realloc_memory(%struct.gx_device_printer_s* %180, %struct.gdev_space_params_s* %save_sp, i32 %181, i32 %182, i32 %183) #5
  store i32 %call148, i32* %code, align 4, !tbaa !5
  %184 = load i32, i32* %code, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %184, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.147
  %185 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.152:                                       ; preds = %if.end.147
  %data153 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %186 = load i8*, i8** %data153, align 8, !tbaa !32
  %cmp154 = icmp ne i8* %186, null
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.192

land.lhs.true.156:                                ; preds = %if.end.152
  %data157 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %187 = load i8*, i8** %data157, align 8, !tbaa !32
  %size158 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %188 = load i32, i32* %size158, align 4, !tbaa !34
  %189 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname159 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %189, i32 0, i32 45
  %arraydecay160 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname159, i32 0, i32 0
  %190 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname161 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %190, i32 0, i32 45
  %arraydecay162 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname161, i32 0, i32 0
  %call163 = call i64 @strlen(i8* %arraydecay162) #6
  %conv164 = trunc i64 %call163 to i32
  %call165 = call i32 @bytes_compare(i8* %187, i32 %188, i8* %arraydecay160, i32 %conv164) #5
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.192

if.then.167:                                      ; preds = %land.lhs.true.156
  %191 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %191, i32 0, i32 52
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %cmp168 = icmp ne %struct._IO_FILE* %192, null
  br i1 %cmp168, label %if.then.170, label %if.end.175

if.then.170:                                      ; preds = %if.then.167
  %193 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %194 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname171 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %194, i32 0, i32 45
  %arraydecay172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname171, i32 0, i32 0
  %195 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file173 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %195, i32 0, i32 52
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %file173, align 8, !tbaa !26
  %call174 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %193, i8* %arraydecay172, %struct._IO_FILE* %196) #5
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.170, %if.then.167
  %197 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file176 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %197, i32 0, i32 52
  store %struct._IO_FILE* null, %struct._IO_FILE** %file176, align 8, !tbaa !26
  %size177 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %198 = load i32, i32* %size177, align 4, !tbaa !34
  %conv178 = zext i32 %198 to i64
  %cmp179 = icmp ule i64 4096, %conv178
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.175
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.182:                                       ; preds = %if.end.175
  %199 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname183 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %199, i32 0, i32 45
  %arraydecay184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname183, i32 0, i32 0
  %data185 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %200 = load i8*, i8** %data185, align 8, !tbaa !32
  %size186 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %201 = load i32, i32* %size186, align 4, !tbaa !34
  %conv187 = zext i32 %201 to i64
  %call188 = call i8* @memcpy(i8* %arraydecay184, i8* %200, i64 %conv187) #7
  %size189 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %202 = load i32, i32* %size189, align 4, !tbaa !34
  %idxprom = zext i32 %202 to i64
  %203 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname190 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %203, i32 0, i32 45
  %arrayidx191 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname190, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx191, align 1, !tbaa !46
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.182, %land.lhs.true.156, %if.end.152
  %204 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open193 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %204, i32 0, i32 9
  %205 = load i32, i32* %is_open193, align 4, !tbaa !36
  %tobool194 = icmp ne i32 %205, 0
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.203

land.lhs.true.195:                                ; preds = %if.end.192
  %206 = load i32, i32* %oof, align 4, !tbaa !5
  %tobool196 = icmp ne i32 %206, 0
  br i1 %tobool196, label %if.then.197, label %if.end.203

if.then.197:                                      ; preds = %land.lhs.true.195
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call198 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %207, i32 1) #5
  store i32 %call198, i32* %code, align 4, !tbaa !5
  %208 = load i32, i32* %code, align 4, !tbaa !5
  %cmp199 = icmp slt i32 %208, 0
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.then.197
  %209 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.202:                                       ; preds = %if.then.197
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %land.lhs.true.195, %if.end.192
  %data204 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 0
  %210 = load i8*, i8** %data204, align 8, !tbaa !32
  %cmp205 = icmp ne i8* %210, null
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.215

land.lhs.true.207:                                ; preds = %if.end.203
  %size208 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 1
  %211 = load i32, i32* %size208, align 4, !tbaa !34
  %cmp209 = icmp ne i32 %211, 0
  br i1 %cmp209, label %if.then.211, label %if.end.215

if.then.211:                                      ; preds = %land.lhs.true.207
  %212 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %data212 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 0
  %213 = load i8*, i8** %data212, align 8, !tbaa !32
  %size213 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %saved_pages, i32 0, i32 1
  %214 = load i32, i32* %size213, align 4, !tbaa !34
  %call214 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %212, i8* %213, i32 %214) #5
  store i32 %call214, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.215:                                       ; preds = %land.lhs.true.207, %if.end.203
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.215, %if.then.211, %if.then.201, %if.then.181, %if.then.151, %if.then.127, %if.then.120
  %215 = bitcast %struct.gs_param_string_s* %saved_pages to i8*
  call void @llvm.lifetime.end(i64 16, i8* %215) #2
  %216 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %216) #2
  %217 = bitcast %struct.gs_param_string_s* %bls to i8*
  call void @llvm.lifetime.end(i64 16, i8* %217) #2
  %218 = bitcast %struct.gs_param_string_s* %ofs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %218) #2
  %219 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %219) #2
  %220 = bitcast i32* %nthreads to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %221 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  %223 = bitcast i32* %duplex_set to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %duplex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i32* %bg_print_requested to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  %226 = bitcast i32* %old_page_uses_transparency to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %rpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast i32* %oof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %is_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = load i32, i32* %retval
  ret i32 %234
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %1, i32 %2, i8* %3, i32 %4) #5
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_bg_output_page(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %2 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_output_page_aux(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 0, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_allocate_memory(%struct.gx_device_s* %pdev, %struct.gdev_space_params_s* %new_space_params, i32 %new_width, i32 %new_height) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %new_space_params.addr = alloca %struct.gdev_space_params_s*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %new_space_params, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  store i32 %new_width, i32* %new_width.addr, align 4, !tbaa !5
  store i32 %new_height, i32* %new_height.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  %2 = load i32, i32* %new_width.addr, align 4, !tbaa !5
  %3 = load i32, i32* %new_height.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_allocate(%struct.gx_device_s* %0, %struct.gdev_space_params_s* %1, i32 %2, i32 %3, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_open_printer(%struct.gx_device_s* %pdev, i32 %binary_mode) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %binary_mode.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %binary_mode, i32* %binary_mode.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %binary_mode.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_open_printer_seekable(%struct.gx_device_s* %0, i32 %1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @prn_finish_bg_print(%struct.gx_device_printer_s* %ppdev) #0 {
entry:
  %ppdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %closecode = alloca i32, align 4
  store %struct.gx_device_printer_s* %ppdev, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i32 0, i32 63
  %device = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print, i32 0, i32 1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !56
  %cmp = icmp ne %struct.gx_device_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 63
  %sema = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print1, i32 0, i32 0
  %4 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !28
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %4, i32 0, i32 1
  %call = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native) #5
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call2 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* %6) #5
  store i32 %call2, i32* %closecode, align 4, !tbaa !5
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 63
  %return_code = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print3, i32 0, i32 4
  %8 = load i32, i32* %return_code, align 4, !tbaa !57
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %closecode, align 4, !tbaa !5
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 63
  %return_code7 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print6, i32 0, i32 4
  store i32 %9, i32* %return_code7, align 4, !tbaa !57
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 63
  %device9 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print8, i32 0, i32 1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !56
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 63
  %thread_id = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print10, i32 0, i32 2
  %14 = load i8*, i8** %thread_id, align 8, !tbaa !58
  call void @teardown_device_and_mem_for_thread(%struct.gx_device_s* %12, i8* %14, i32 1) #5
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev.addr, align 8, !tbaa !1
  %bg_print11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 63
  %device12 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print11, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %device12, align 8, !tbaa !56
  %16 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

declare void @gx_semaphore_free(%struct.gx_semaphore_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_free_memory(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %the_memory = alloca i8*, align 8
  %buffer_memory = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i8** %the_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i8* null, i8** %the_memory, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s** %buffer_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 55
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory1, align 8, !tbaa !59
  %cmp = icmp eq %struct.gs_memory_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !60
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 55
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory2, align 8, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %9, %cond.true ], [ %11, %cond.false ]
  store %struct.gs_memory_s* %cond, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_tear_down(%struct.gx_device_s* %12, i8** %the_memory) #5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %16 = load i8*, i8** %the_memory, align 8, !tbaa !1
  call void %14(%struct.gs_memory_s* %15, i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  %17 = bitcast %struct.gs_memory_s** %buffer_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i8** %the_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret i32 0
}

declare i32 @gx_device_close_output_file(%struct.gx_device_s*, i8*, %struct._IO_FILE*) #1

declare void @gx_saved_pages_list_free(%struct.gx_saved_pages_list_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_forwarding_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 67
  %dev_spec_op1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs, i32 0, i32 65
  %4 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op1, align 8, !tbaa !64
  %tobool = icmp ne i32 (%struct.gx_device_s*, i32, i8*, i32)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 67
  %dev_spec_op3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs2, i32 0, i32 65
  %6 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op3, align 8, !tbaa !64
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 %6(%struct.gx_device_s* %7, i32 %8, i8* %9, i32 %10) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call4 = call i32 @gdev_prn_dev_spec_op(%struct.gx_device_s* %11, i32 %12, i8* %13, i32 %14) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gdev_prn_allocate(%struct.gx_device_s* %pdev, %struct.gdev_space_params_s* %new_space_params, i32 %new_width, i32 %new_height, i32 %reallocate) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %new_space_params.addr = alloca %struct.gdev_space_params_s*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %reallocate.addr = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %pmemdev = alloca %struct.gx_device_memory_s*, align 8
  %the_memory = alloca i8*, align 8
  %save_params = alloca %struct.gdev_space_params_s, align 8
  %save_width = alloca i32, align 4
  %save_height = alloca i32, align 4
  %is_command_list = alloca i32, align 4
  %save_is_command_list = alloca i32, align 4
  %size_ok = alloca i32, align 4
  %ecode = alloca i32, align 4
  %pass = alloca i32, align 4
  %buffer_memory = alloca %struct.gs_memory_s*, align 8
  %mem_space = alloca i64, align 8
  %pdf14_trans_buffer_size = alloca i64, align 8
  %base = alloca i8*, align 8
  %bufferSpace_is_default = alloca i32, align 4
  %space_params6 = alloca %struct.gdev_space_params_s, align 8
  %buf_space = alloca %struct.gx_device_buf_space_s, align 8
  %left = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bdev = alloca %struct.gx_device_s*, align 8
  %code156 = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %new_space_params, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  store i32 %new_width, i32* %new_width.addr, align 4, !tbaa !5
  store i32 %new_height, i32* %new_height.addr, align 4, !tbaa !5
  store i32 %reallocate, i32* %reallocate.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %5, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %6 = bitcast i8** %the_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i8* null, i8** %the_memory, align 8, !tbaa !1
  %7 = bitcast %struct.gdev_space_params_s* %save_params to i8*
  call void @llvm.lifetime.start(i64 40, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 38
  %9 = bitcast %struct.gdev_space_params_s* %save_params to i8*
  %10 = bitcast %struct.gdev_space_params_s* %space_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 40, i32 8, i1 false), !tbaa.struct !44
  %11 = bitcast i32* %save_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 195948557, i32* %save_width, align 4, !tbaa !5
  %12 = bitcast i32* %save_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 195948557, i32* %save_height, align 4, !tbaa !5
  %13 = bitcast i32* %is_command_list to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %is_command_list, align 4, !tbaa !5
  %14 = bitcast i32* %save_is_command_list to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %save_is_command_list, align 4, !tbaa !5
  %15 = bitcast i32* %size_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %size_ok, align 4, !tbaa !5
  %16 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %17 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast %struct.gs_memory_s** %buffer_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 55
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory1, align 8, !tbaa !59
  %cmp = icmp eq %struct.gs_memory_s* %20, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !60
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 55
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory2, align 8, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %23, %cond.true ], [ %25, %cond.false ]
  store %struct.gs_memory_s* %cond, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %26 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_tear_down(%struct.gx_device_s* %27, i8** %the_memory) #5
  store i32 %call, i32* %save_is_command_list, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 67
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 42
  %30 = bitcast %struct.gx_device_procs_s* %orig_procs to i8*
  %31 = bitcast %struct.gx_device_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 584, i32 8, i1 false), !tbaa.struct !65
  store i32 1, i32* %pass, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %pass, align 4, !tbaa !5
  %33 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %33, 0
  %cond4 = select i1 %tobool3, i32 2, i32 1
  %cmp5 = icmp sle i32 %32, %cond4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i64* %mem_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = bitcast i64* %pdf14_trans_buffer_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  store i64 0, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %36 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #2
  store i8* null, i8** %base, align 8, !tbaa !1
  %37 = bitcast i32* %bufferSpace_is_default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  store i32 0, i32* %bufferSpace_is_default, align 4, !tbaa !5
  %38 = bitcast %struct.gdev_space_params_s* %space_params6 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %38) #2
  %39 = bitcast %struct.gx_device_buf_space_s* %buf_space to i8*
  call void @llvm.lifetime.start(i64 24, i8* %39) #2
  %40 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %40, 0
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body
  %41 = load i32, i32* %pass, align 4, !tbaa !5
  switch i32 %41, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then.8
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 38
  %43 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gdev_space_params_s* %space_params9 to i8*
  %45 = bitcast %struct.gdev_space_params_s* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 40, i32 8, i1 false), !tbaa.struct !44
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 13
  %47 = load i32, i32* %width, align 4, !tbaa !66
  store i32 %47, i32* %save_width, align 4, !tbaa !5
  %48 = load i32, i32* %new_width.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %width10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 13
  store i32 %48, i32* %width10, align 4, !tbaa !66
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 14
  %51 = load i32, i32* %height, align 4, !tbaa !67
  store i32 %51, i32* %save_height, align 4, !tbaa !5
  %52 = load i32, i32* %new_height.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %height11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 14
  store i32 %52, i32* %height11, align 4, !tbaa !67
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.8
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 38
  %55 = bitcast %struct.gdev_space_params_s* %space_params13 to i8*
  %56 = bitcast %struct.gdev_space_params_s* %save_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 40, i32 8, i1 false), !tbaa.struct !44
  %57 = load i32, i32* %save_width, align 4, !tbaa !5
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 13
  store i32 %57, i32* %width14, align 4, !tbaa !66
  %59 = load i32, i32* %save_height, align 4, !tbaa !5
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 14
  store i32 %59, i32* %height15, align 4, !tbaa !67
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.8, %sw.bb.12, %sw.bb
  br label %if.end.16

if.end.16:                                        ; preds = %sw.epilog, %for.body
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 43
  %arraydecay = getelementptr inbounds [11240 x i8], [11240 x i8]* %skip, i32 0, i32 0
  %call17 = call i8* @memset(i8* %arraydecay, i32 0, i64 11240) #7
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 44
  %buf_procs = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 2
  %size_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 1
  %63 = load i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)** %size_buf_device, align 8, !tbaa !68
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height18, align 4, !tbaa !42
  %call19 = call i32 %63(%struct.gx_device_buf_space_s* %buf_space, %struct.gx_device_s* %64, %struct.gx_render_plane_s* null, i32 %66, i32 0) #5
  %cmp20 = icmp sge i32 %call19, 0
  %conv = zext i1 %cmp20 to i32
  store i32 %conv, i32* %size_ok, align 4, !tbaa !5
  %bits = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %buf_space, i32 0, i32 0
  %67 = load i64, i64* %bits, align 8, !tbaa !69
  %line_ptrs = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %buf_space, i32 0, i32 1
  %68 = load i64, i64* %line_ptrs, align 8, !tbaa !71
  %add = add i64 %67, %68
  store i64 %add, i64* %mem_space, align 8, !tbaa !45
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 37
  %70 = load i32, i32* %page_uses_transparency, align 4, !tbaa !39
  %tobool21 = icmp ne i32 %70, 0
  br i1 %tobool21, label %if.then.22, label %if.end.43

if.then.22:                                       ; preds = %if.end.16
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 13
  %72 = load i32, i32* %width23, align 4, !tbaa !41
  %cmp24 = icmp sgt i32 1, %72
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.then.22
  br label %cond.end.29

cond.false.27:                                    ; preds = %if.then.22
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 13
  %74 = load i32, i32* %width28, align 4, !tbaa !41
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i32 [ 1, %cond.true.26 ], [ %74, %cond.false.27 ]
  %mul = mul nsw i32 %cond30, 8
  %mul31 = mul nsw i32 %mul, 5
  %mul32 = mul nsw i32 3, %mul31
  %shr = ashr i32 %mul32, 3
  %conv33 = sext i32 %shr to i64
  store i64 %conv33, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %75 = load i32, i32* %new_height.addr, align 4, !tbaa !5
  %conv34 = sext i32 %75 to i64
  %76 = load i64, i64* %mem_space, align 8, !tbaa !45
  %sub = sub i64 -1, %76
  %77 = load i64, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %div = udiv i64 %sub, %77
  %cmp35 = icmp ult i64 %conv34, %div
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %cond.end.29
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height38, align 4, !tbaa !42
  %conv39 = sext i32 %79 to i64
  %80 = load i64, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %mul40 = mul i64 %80, %conv39
  store i64 %mul40, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %81 = load i64, i64* %pdf14_trans_buffer_size, align 8, !tbaa !45
  %82 = load i64, i64* %mem_space, align 8, !tbaa !45
  %add41 = add i64 %82, %81
  store i64 %add41, i64* %mem_space, align 8, !tbaa !45
  br label %if.end.42

if.else:                                          ; preds = %cond.end.29
  store i32 0, i32* %size_ok, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.16
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %83, i32 0, i32 38
  %84 = bitcast %struct.gdev_space_params_s* %space_params6 to i8*
  %85 = bitcast %struct.gdev_space_params_s* %space_params44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 40, i32 8, i1 false), !tbaa.struct !44
  %BufferSpace = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 1
  store i64 0, i64* %BufferSpace, align 8, !tbaa !72
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs45 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %86, i32 0, i32 44
  %get_space_params = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs45, i32 0, i32 3
  %87 = load void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)** %get_space_params, align 8, !tbaa !73
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  call void %87(%struct.gx_device_printer_s* %88, %struct.gdev_space_params_s* %space_params6) #5
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %is_async_renderer = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 59
  %90 = load i32, i32* %is_async_renderer, align 4, !tbaa !74
  %tobool46 = icmp ne i32 %90, 0
  br i1 %tobool46, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %if.end.43
  %band = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 2
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band, i32 0, i32 2
  %91 = load i64, i64* %BandBufferSpace, align 8, !tbaa !75
  %cmp47 = icmp ne i64 %91, 0
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %land.lhs.true
  %band50 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 2
  %BandBufferSpace51 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band50, i32 0, i32 2
  %92 = load i64, i64* %BandBufferSpace51, align 8, !tbaa !75
  %BufferSpace52 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 1
  store i64 %92, i64* %BufferSpace52, align 8, !tbaa !72
  br label %if.end.72

if.else.53:                                       ; preds = %land.lhs.true, %if.end.43
  %BufferSpace54 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 1
  %93 = load i64, i64* %BufferSpace54, align 8, !tbaa !72
  %cmp55 = icmp eq i64 %93, 0
  br i1 %cmp55, label %if.then.57, label %if.end.71

if.then.57:                                       ; preds = %if.else.53
  %band58 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 2
  %BandBufferSpace59 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band58, i32 0, i32 2
  %94 = load i64, i64* %BandBufferSpace59, align 8, !tbaa !75
  %cmp60 = icmp sgt i64 %94, 0
  br i1 %cmp60, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %if.then.57
  %band63 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 2
  %BandBufferSpace64 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band63, i32 0, i32 2
  %95 = load i64, i64* %BandBufferSpace64, align 8, !tbaa !75
  %BufferSpace65 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 1
  store i64 %95, i64* %BufferSpace65, align 8, !tbaa !72
  br label %if.end.70

if.else.66:                                       ; preds = %if.then.57
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %space_params67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 38
  %BufferSpace68 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params67, i32 0, i32 1
  %97 = load i64, i64* %BufferSpace68, align 8, !tbaa !76
  %BufferSpace69 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 1
  store i64 %97, i64* %BufferSpace69, align 8, !tbaa !72
  store i32 1, i32* %bufferSpace_is_default, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.66, %if.then.62
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.53
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.49
  %98 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp73 = icmp sgt i32 %98, 1
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.end.72
  %99 = load i32, i32* %save_is_command_list, align 4, !tbaa !5
  store i32 %99, i32* %is_command_list, align 4, !tbaa !5
  br label %if.end.85

if.else.76:                                       ; preds = %if.end.72
  %banding_type = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 4
  %100 = load i32, i32* %banding_type, align 4, !tbaa !77
  %cmp77 = icmp eq i32 %100, 1
  br i1 %cmp77, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.76
  %101 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %101, i32 0, i32 65
  %102 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !29
  %cmp79 = icmp ne %struct.gx_saved_pages_list_s* %102, null
  br i1 %cmp79, label %lor.end, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false
  %103 = load i64, i64* %mem_space, align 8, !tbaa !45
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 0
  %104 = load i64, i64* %MaxBitmap, align 8, !tbaa !78
  %cmp82 = icmp uge i64 %103, %104
  br i1 %cmp82, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.81
  %105 = load i32, i32* %size_ok, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %105, 0
  %lnot = xor i1 %tobool84, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.81, %lor.lhs.false, %if.else.76
  %106 = phi i1 [ true, %lor.lhs.false.81 ], [ true, %lor.lhs.false ], [ true, %if.else.76 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %106 to i32
  store i32 %lor.ext, i32* %is_command_list, align 4, !tbaa !5
  br label %if.end.85

if.end.85:                                        ; preds = %lor.end, %if.then.75
  %107 = load i32, i32* %is_command_list, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %107, 0
  br i1 %tobool86, label %if.end.104, label %if.then.87

if.then.87:                                       ; preds = %if.end.85
  %108 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %108, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %if.then.87
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs90, i32 0, i32 1
  %110 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !79
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %112 = load i8*, i8** %the_memory, align 8, !tbaa !1
  %113 = load i64, i64* %mem_space, align 8, !tbaa !45
  %conv91 = trunc i64 %113 to i32
  %call92 = call i8* %110(%struct.gs_memory_s* %111, i8* %112, i32 %conv91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #5
  br label %cond.end.97

cond.false.93:                                    ; preds = %if.then.87
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs94, i32 0, i32 7
  %115 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %117 = load i64, i64* %mem_space, align 8, !tbaa !45
  %conv95 = trunc i64 %117 to i32
  %call96 = call i8* %115(%struct.gs_memory_s* %116, i32 %conv95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.93, %cond.true.89
  %cond98 = phi i8* [ %call92, %cond.true.89 ], [ %call96, %cond.false.93 ]
  store i8* %cond98, i8** %base, align 8, !tbaa !1
  %118 = load i8*, i8** %base, align 8, !tbaa !1
  %cmp99 = icmp eq i8* %118, null
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %cond.end.97
  store i32 1, i32* %is_command_list, align 4, !tbaa !5
  br label %if.end.103

if.else.102:                                      ; preds = %cond.end.97
  %119 = load i8*, i8** %base, align 8, !tbaa !1
  store i8* %119, i8** %the_memory, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.85
  %120 = load i32, i32* %is_command_list, align 4, !tbaa !5
  %tobool105 = icmp ne i32 %120, 0
  br i1 %tobool105, label %if.end.124, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %if.end.104
  %121 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp107 = icmp eq i32 %121, 1
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.124

land.lhs.true.109:                                ; preds = %land.lhs.true.106
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 3
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory110, align 8, !tbaa !52
  %non_gc_memory111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory111, align 8, !tbaa !60
  %cmp112 = icmp eq %struct.gs_memory_s* %122, %125
  br i1 %cmp112, label %if.then.114, label %if.end.124

if.then.114:                                      ; preds = %land.lhs.true.109
  %126 = bitcast i8** %left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #2
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %alloc_bytes116 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs115, i32 0, i32 7
  %128 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes116, align 8, !tbaa !80
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %call117 = call i8* %128(%struct.gs_memory_s* %129, i32 500000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #5
  store i8* %call117, i8** %left, align 8, !tbaa !1
  %130 = load i8*, i8** %left, align 8, !tbaa !1
  %cmp118 = icmp eq i8* %130, null
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.then.114
  store i32 1, i32* %is_command_list, align 4, !tbaa !5
  br label %if.end.123

if.else.121:                                      ; preds = %if.then.114
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs122, i32 0, i32 2
  %132 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %134 = load i8*, i8** %left, align 8, !tbaa !1
  call void %132(%struct.gs_memory_s* %133, i8* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #5
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.120
  %135 = bitcast i8** %left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true.109, %land.lhs.true.106, %if.end.104
  %136 = load i32, i32* %is_command_list, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %136, 0
  br i1 %tobool125, label %if.then.126, label %if.else.155

if.then.126:                                      ; preds = %if.end.124
  %137 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  %138 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %138, 0
  br i1 %tobool127, label %if.end.131, label %if.then.128

if.then.128:                                      ; preds = %if.then.126
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 1
  %free_object130 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 2
  %140 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object130, align 8, !tbaa !63
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %142 = load i8*, i8** %the_memory, align 8, !tbaa !1
  call void %140(%struct.gs_memory_s* %141, i8* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #5
  store i8* null, i8** %the_memory, align 8, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.then.126
  %banding_type132 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params6, i32 0, i32 4
  %143 = load i32, i32* %banding_type132, align 4, !tbaa !77
  %cmp133 = icmp eq i32 %143, 2
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.131
  store i32 -25, i32* %ecode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %if.end.131
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %146 = load i32, i32* %bufferSpace_is_default, align 4, !tbaa !5
  %tobool137 = icmp ne i32 %146, 0
  %lnot138 = xor i1 %tobool137, true
  %lnot.ext = zext i1 %lnot138 to i32
  %call139 = call i32 @gdev_prn_setup_as_command_list(%struct.gx_device_s* %144, %struct.gs_memory_s* %145, i8** %the_memory, %struct.gdev_space_params_s* %space_params6, i32 %lnot.ext) #5
  store i32 %call139, i32* %code, align 4, !tbaa !5
  %147 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp140 = icmp eq i32 %147, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.136
  %148 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %148, i32* %ecode, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.136
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %cmp144 = icmp sge i32 %149, 0
  br i1 %cmp144, label %if.then.151, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.143
  %150 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool147 = icmp ne i32 %150, 0
  br i1 %tobool147, label %land.lhs.true.148, label %if.end.153

land.lhs.true.148:                                ; preds = %lor.lhs.false.146
  %151 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp149 = icmp sgt i32 %151, 1
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %land.lhs.true.148, %if.end.143
  %152 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs152 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %152, i32 0, i32 42
  %153 = bitcast %struct.gx_device_procs_s* %procs152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* bitcast (%struct.gx_device_procs_s* @gs_clist_device_procs to i8*), i64 584, i32 8, i1 false), !tbaa.struct !65
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %land.lhs.true.148, %lor.lhs.false.146
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call154 = call i32 @clist_enable_multi_thread_render(%struct.gx_device_s* %154) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.153, %if.then.135
  %155 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.188 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.183

if.else.155:                                      ; preds = %if.end.124
  %156 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #2
  %157 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %158 = bitcast %struct.gx_device_memory_s* %157 to %struct.gx_device_s*
  store %struct.gx_device_s* %158, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %159 = bitcast i32* %code156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #2
  %160 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %160, i32 0, i32 53
  store i64 0, i64* %buffer_space, align 8, !tbaa !7
  %161 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs157 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %161, i32 0, i32 44
  %buf_procs158 = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs157, i32 0, i32 2
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs158, i32 0, i32 0
  %162 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !81
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call159 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %162, %struct.gx_device_s** %bdev, %struct.gx_device_s* %163, i32 0, %struct.gx_render_plane_s* null, %struct.gs_memory_s* null, %struct.gx_colors_usage_s* null) #5
  store i32 %call159, i32* %code156, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.171, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.else.155
  %164 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs163 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %164, i32 0, i32 44
  %buf_procs164 = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs163, i32 0, i32 2
  %setup_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs164, i32 0, i32 2
  %165 = load i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)** %setup_buf_device, align 8, !tbaa !82
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %167 = load i8*, i8** %base, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %buf_space, i32 0, i32 2
  %168 = load i32, i32* %raster, align 4, !tbaa !83
  %169 = load i8*, i8** %base, align 8, !tbaa !1
  %bits165 = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %buf_space, i32 0, i32 0
  %170 = load i64, i64* %bits165, align 8, !tbaa !69
  %add.ptr = getelementptr inbounds i8, i8* %169, i64 %170
  %171 = bitcast i8* %add.ptr to i8**
  %172 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height166 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %172, i32 0, i32 14
  %173 = load i32, i32* %height166, align 4, !tbaa !42
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height167 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %174, i32 0, i32 14
  %175 = load i32, i32* %height167, align 4, !tbaa !42
  %call168 = call i32 %165(%struct.gx_device_s* %166, i8* %167, i32 %168, i8** %171, i32 0, i32 %173, i32 %175) #5
  store i32 %call168, i32* %code156, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.178

if.then.171:                                      ; preds = %lor.lhs.false.162, %if.else.155
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %procs172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %176, i32 0, i32 1
  %free_object173 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs172, i32 0, i32 2
  %177 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object173, align 8, !tbaa !63
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory, align 8, !tbaa !1
  %179 = load i8*, i8** %base, align 8, !tbaa !1
  call void %177(%struct.gs_memory_s* %178, i8* %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #5
  %180 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs174 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %180, i32 0, i32 42
  %181 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs175 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %181, i32 0, i32 67
  %182 = bitcast %struct.gx_device_procs_s* %procs174 to i8*
  %183 = bitcast %struct.gx_device_procs_s* %orig_procs175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 584, i32 8, i1 false), !tbaa.struct !65
  %184 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs176 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %184, i32 0, i32 67
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs176, i32 0, i32 0
  %open_device177 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  store i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*)** %open_device177, align 8, !tbaa !84
  %185 = load i32, i32* %code156, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.178:                                       ; preds = %lor.lhs.false.162
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %if.end.178, %if.then.171
  %186 = bitcast i32* %code156 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %cleanup.dest.181 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.181, label %cleanup.188 [
    i32 0, label %cleanup.cont.182
  ]

cleanup.cont.182:                                 ; preds = %cleanup.179
  br label %if.end.183

if.end.183:                                       ; preds = %cleanup.cont.182, %cleanup.cont
  %188 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp184 = icmp eq i32 %188, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.183
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.187:                                       ; preds = %if.end.183
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.188

cleanup.188:                                      ; preds = %if.end.187, %if.then.186, %cleanup.179, %cleanup
  %189 = bitcast %struct.gx_device_buf_space_s* %buf_space to i8*
  call void @llvm.lifetime.end(i64 24, i8* %189) #2
  %190 = bitcast %struct.gdev_space_params_s* %space_params6 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %190) #2
  %191 = bitcast i32* %bufferSpace_is_default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast i64* %pdf14_trans_buffer_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i64* %mem_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %cleanup.dest.194 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.194, label %cleanup.286 [
    i32 0, label %cleanup.cont.195
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont.195:                                 ; preds = %cleanup.188
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.195, %cleanup.188
  %195 = load i32, i32* %pass, align 4, !tbaa !5
  %inc = add nsw i32 %195, 1
  store i32 %inc, i32* %pass, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup.188, %for.cond
  %196 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp196 = icmp sge i32 %196, 0
  br i1 %cmp196, label %if.then.200, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %for.end
  %197 = load i32, i32* %reallocate.addr, align 4, !tbaa !5
  %tobool199 = icmp ne i32 %197, 0
  br i1 %tobool199, label %if.then.200, label %if.else.280

if.then.200:                                      ; preds = %lor.lhs.false.198, %for.end
  %198 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs201 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %198, i32 0, i32 67
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs201, i32 0, i32 1
  %199 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !85
  %200 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs202 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %200, i32 0, i32 42
  %get_initial_matrix203 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs202, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* %199, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix203, align 8, !tbaa !86
  %201 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs204 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %201, i32 0, i32 67
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs204, i32 0, i32 3
  %202 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !87
  %203 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs205 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %203, i32 0, i32 42
  %output_page206 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs205, i32 0, i32 3
  store i32 (%struct.gx_device_s*, i32, i32)* %202, i32 (%struct.gx_device_s*, i32, i32)** %output_page206, align 8, !tbaa !88
  %204 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs207 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %204, i32 0, i32 67
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs207, i32 0, i32 4
  %close_device208 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %205 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device208, align 8, !tbaa !89
  %206 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs209 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %206, i32 0, i32 42
  %close_device210 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs209, i32 0, i32 4
  %close_device211 = bitcast {}** %close_device210 to i32 (%struct.gx_device_s*)**
  store i32 (%struct.gx_device_s*)* %205, i32 (%struct.gx_device_s*)** %close_device211, align 8, !tbaa !90
  %207 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs212 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %207, i32 0, i32 67
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs212, i32 0, i32 5
  %208 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !91
  %209 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs213 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %209, i32 0, i32 42
  %map_rgb_color214 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs213, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* %208, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color214, align 8, !tbaa !92
  %210 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs215 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %210, i32 0, i32 67
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs215, i32 0, i32 6
  %211 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !93
  %212 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs216 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %212, i32 0, i32 42
  %map_color_rgb217 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs216, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* %211, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb217, align 8, !tbaa !94
  %213 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs218 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %213, i32 0, i32 67
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs218, i32 0, i32 13
  %214 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !95
  %215 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs219 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %215, i32 0, i32 42
  %get_params220 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs219, i32 0, i32 13
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %214, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params220, align 8, !tbaa !96
  %216 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs221 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %216, i32 0, i32 67
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs221, i32 0, i32 14
  %217 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !97
  %218 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs222 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %218, i32 0, i32 42
  %put_params223 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs222, i32 0, i32 14
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %217, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params223, align 8, !tbaa !98
  %219 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs224 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %219, i32 0, i32 67
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs224, i32 0, i32 15
  %220 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !99
  %221 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs225 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %221, i32 0, i32 42
  %map_cmyk_color226 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs225, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* %220, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color226, align 8, !tbaa !100
  %222 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs227 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %222, i32 0, i32 67
  %get_xfont_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs227, i32 0, i32 16
  %223 = load %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs, align 8, !tbaa !101
  %224 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs228 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %224, i32 0, i32 42
  %get_xfont_procs229 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs228, i32 0, i32 16
  store %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* %223, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs229, align 8, !tbaa !102
  %225 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs230 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %225, i32 0, i32 67
  %get_xfont_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs230, i32 0, i32 17
  %226 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device, align 8, !tbaa !103
  %227 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs231 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %227, i32 0, i32 42
  %get_xfont_device232 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs231, i32 0, i32 17
  store %struct.gx_device_s* (%struct.gx_device_s*)* %226, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device232, align 8, !tbaa !104
  %228 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs233 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %228, i32 0, i32 67
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs233, i32 0, i32 18
  %229 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !105
  %230 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs234 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %230, i32 0, i32 42
  %map_rgb_alpha_color235 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs234, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* %229, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color235, align 8, !tbaa !106
  %231 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs236 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %231, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs236, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !107
  %232 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs237 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %232, i32 0, i32 67
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs237, i32 0, i32 36
  %233 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !108
  %234 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs238 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %234, i32 0, i32 42
  %get_clipping_box239 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs238, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* %233, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box239, align 8, !tbaa !109
  %235 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs240 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %235, i32 0, i32 67
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs240, i32 0, i32 39
  %236 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !110
  %237 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs241 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %237, i32 0, i32 42
  %map_color_rgb_alpha242 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs241, i32 0, i32 39
  store i32 (%struct.gx_device_s*, i64, i16*)* %236, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha242, align 8, !tbaa !111
  %238 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs243 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %238, i32 0, i32 67
  %get_hardware_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs243, i32 0, i32 41
  %239 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params, align 8, !tbaa !112
  %240 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs244 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %240, i32 0, i32 42
  %get_hardware_params245 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs244, i32 0, i32 41
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %239, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params245, align 8, !tbaa !113
  %241 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs246 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %241, i32 0, i32 67
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs246, i32 0, i32 49
  %242 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !114
  %243 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs247 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %243, i32 0, i32 42
  %get_color_mapping_procs248 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs247, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %242, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs248, align 8, !tbaa !115
  %244 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs249 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %244, i32 0, i32 67
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs249, i32 0, i32 50
  %245 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !116
  %246 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs250 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %246, i32 0, i32 42
  %get_color_comp_index251 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs250, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* %245, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index251, align 8, !tbaa !117
  %247 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs252 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %247, i32 0, i32 67
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs252, i32 0, i32 51
  %248 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !118
  %249 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs253 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %249, i32 0, i32 42
  %encode_color254 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs253, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* %248, i64 (%struct.gx_device_s*, i16*)** %encode_color254, align 8, !tbaa !119
  %250 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs255 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %250, i32 0, i32 67
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs255, i32 0, i32 52
  %251 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !120
  %252 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs256 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %252, i32 0, i32 42
  %decode_color257 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs256, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* %251, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color257, align 8, !tbaa !121
  %253 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs258 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %253, i32 0, i32 67
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs258, i32 0, i32 59
  %254 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !122
  %255 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs259 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %255, i32 0, i32 42
  %update_spot_equivalent_colors260 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs259, i32 0, i32 59
  store i32 (%struct.gx_device_s*, %struct.gs_state_s*)* %254, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors260, align 8, !tbaa !123
  %256 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs261 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %256, i32 0, i32 67
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs261, i32 0, i32 60
  %257 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !124
  %258 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs262 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %258, i32 0, i32 42
  %ret_devn_params263 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs262, i32 0, i32 60
  store %struct.gs_devn_params_s* (%struct.gx_device_s*)* %257, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params263, align 8, !tbaa !125
  %259 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs264 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %259, i32 0, i32 42
  %put_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs264, i32 0, i32 64
  %260 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image, align 8, !tbaa !126
  %cmp265 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %260, null
  br i1 %cmp265, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %if.then.200
  %261 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs268 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %261, i32 0, i32 67
  %put_image269 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs268, i32 0, i32 64
  %262 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image269, align 8, !tbaa !127
  %263 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %procs270 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %263, i32 0, i32 42
  %put_image271 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs270, i32 0, i32 64
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %262, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image271, align 8, !tbaa !126
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.267, %if.then.200
  %264 = load i32, i32* %is_command_list, align 4, !tbaa !5
  %tobool273 = icmp ne i32 %264, 0
  br i1 %tobool273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %if.end.272
  %265 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.286

if.else.275:                                      ; preds = %if.end.272
  %266 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs276 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %266, i32 0, i32 42
  %open_device277 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs276, i32 0, i32 0
  %open_device278 = bitcast {}** %open_device277 to i32 (%struct.gx_device_s*)**
  %267 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device278, align 8, !tbaa !128
  %268 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call279 = call i32 %267(%struct.gx_device_s* %268) #5
  store i32 %call279, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.286

if.else.280:                                      ; preds = %lor.lhs.false.198
  %269 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs281 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %269, i32 0, i32 42
  %270 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs282 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %270, i32 0, i32 67
  %271 = bitcast %struct.gx_device_procs_s* %procs281 to i8*
  %272 = bitcast %struct.gx_device_procs_s* %orig_procs282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %272, i64 584, i32 8, i1 false), !tbaa.struct !65
  %273 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs283 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %273, i32 0, i32 67
  %open_device284 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs283, i32 0, i32 0
  %open_device285 = bitcast {}** %open_device284 to i32 (%struct.gx_device_s*)**
  store i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*)** %open_device285, align 8, !tbaa !84
  %274 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %274, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.286

cleanup.286:                                      ; preds = %if.else.280, %if.else.275, %if.then.274, %cleanup.188
  %275 = bitcast %struct.gs_memory_s** %buffer_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast i32* %size_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = bitcast i32* %save_is_command_list to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i32* %is_command_list to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #2
  %281 = bitcast i32* %save_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %save_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast %struct.gdev_space_params_s* %save_params to i8*
  call void @llvm.lifetime.end(i64 40, i8* %283) #2
  %284 = bitcast i8** %the_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #2
  %285 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #2
  %286 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #2
  %287 = load i32, i32* %retval
  ret i32 %287
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_reallocate_memory(%struct.gx_device_s* %pdev, %struct.gdev_space_params_s* %new_space_params, i32 %new_width, i32 %new_height) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %new_space_params.addr = alloca %struct.gdev_space_params_s*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %new_space_params, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  store i32 %new_width, i32* %new_width.addr, align 4, !tbaa !5
  store i32 %new_height, i32* %new_height.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %new_space_params.addr, align 8, !tbaa !1
  %2 = load i32, i32* %new_width.addr, align 4, !tbaa !5
  %3 = load i32, i32* %new_height.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_allocate(%struct.gx_device_s* %0, %struct.gdev_space_params_s* %1, i32 %2, i32 %3, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_prn_tear_down(%struct.gx_device_s* %pdev, i8** %the_memory) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %the_memory.addr = alloca i8**, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %pmemdev = alloca %struct.gx_device_memory_s*, align 8
  %pclist_dev = alloca %union.gx_device_clist_s*, align 8
  %pcldev = alloca %struct.gx_device_clist_common_s*, align 8
  %pcrdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %was_command_list = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i8** %the_memory, i8*** %the_memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %5, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %6 = bitcast %union.gx_device_clist_s** %pclist_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %8, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clist_common_s** %pcldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %common, %struct.gx_device_clist_common_s** %pcldev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %12 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %13 = bitcast i32* %was_command_list to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 53
  %15 = load i64, i64* %buffer_space, align 8, !tbaa !7
  %16 = inttoptr i64 %15 to %struct.gx_device_printer_s*
  %cmp = icmp ne %struct.gx_device_printer_s* %16, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** bitcast ({}** getelementptr inbounds (%struct.gx_device_procs_s, %struct.gx_device_procs_s* @gs_clist_device_procs, i32 0, i32 4) to i32 (%struct.gx_device_s*)**), align 8, !tbaa !129
  %18 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %pcldev, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_clist_common_s* %18 to %struct.gx_device_s*
  %call = call i32 %17(%struct.gx_device_s* %19) #5
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 54
  %21 = load i8*, i8** %buf, align 8, !tbaa !130
  %22 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* %21, i8** %22, align 8, !tbaa !1
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 54
  store i8* null, i8** %buf1, align 8, !tbaa !130
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 53
  store i64 0, i64* %buffer_space2, align 8, !tbaa !7
  store i32 1, i32* %was_command_list, align 4, !tbaa !5
  %25 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common3 = bitcast %union.gx_device_clist_s* %25 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common3, i32 0, i32 56
  %26 = load i32, i32* %ymin, align 4, !tbaa !131
  %cmp4 = icmp slt i32 %26, 0
  br i1 %cmp4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !136
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !136
  %32 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %32, i32 0, i32 67
  %33 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !139
  %34 = bitcast %struct.gx_colors_usage_s* %33 to i8*
  call void %29(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 45
  %36 = load i8*, i8** %base, align 8, !tbaa !140
  %37 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* %36, i8** %37, align 8, !tbaa !1
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %base7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 45
  store i8* null, i8** %base7, align 8, !tbaa !140
  store i32 0, i32* %was_command_list, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 67
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs, i32 0, i32 0
  %open_device9 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %40 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device9, align 8, !tbaa !84
  %cmp10 = icmp ne i32 (%struct.gx_device_s*)* %40, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 42
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 67
  %43 = bitcast %struct.gx_device_procs_s* %procs12 to i8*
  %44 = bitcast %struct.gx_device_procs_s* %orig_procs13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 584, i32 8, i1 false), !tbaa.struct !65
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %orig_procs15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 67
  %open_device16 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs15, i32 0, i32 0
  %open_device17 = bitcast {}** %open_device16 to i32 (%struct.gx_device_s*)**
  store i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*)** %open_device17, align 8, !tbaa !84
  %46 = load i32, i32* %was_command_list, align 4, !tbaa !5
  %47 = bitcast i32* %was_command_list to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_clist_common_s** %pcldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %union.gx_device_clist_s** %pclist_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_start_render_thread(%struct.gdev_prn_start_render_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gdev_prn_start_render_params_s*, align 8
  store %struct.gdev_prn_start_render_params_s* %params, %struct.gdev_prn_start_render_params_s** %params.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_open_render_device(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_close_render_device(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_printer_s* %0 to %struct.gx_device_s*
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %1) #5
  ret i32 %call
}

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #1

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare i32 @bytes_compare(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @validate_output_file(%struct.gs_param_string_s* %ofs, %struct.gs_memory_s* %memory) #0 {
entry:
  %ofs.addr = alloca %struct.gs_param_string_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  store %struct.gs_param_string_s* %ofs, %struct.gs_param_string_s** %ofs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ofs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !32
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ofs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4, !tbaa !34
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %3, i32 %5, %struct.gs_memory_s* %6) #5
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  %7 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  %8 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %8) #2
  ret i32 %conv
}

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_maybe_realloc_memory(%struct.gx_device_printer_s* %prdev, %struct.gdev_space_params_s* %old_sp, i32 %old_width, i32 %old_height, i32 %old_page_uses_transparency) #0 {
entry:
  %prdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %old_sp.addr = alloca %struct.gdev_space_params_s*, align 8
  %old_width.addr = alloca i32, align 4
  %old_height.addr = alloca i32, align 4
  %old_page_uses_transparency.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_s*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %new_sp = alloca %struct.gdev_space_params_s, align 8
  store %struct.gx_device_printer_s* %prdev, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %old_sp, %struct.gdev_space_params_s** %old_sp.addr, align 8, !tbaa !1
  store i32 %old_width, i32* %old_width.addr, align 4, !tbaa !5
  store i32 %old_height, i32* %old_height.addr, align 4, !tbaa !5
  store i32 %old_page_uses_transparency, i32* %old_page_uses_transparency.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  store %struct.gx_device_s* %3, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 9
  %5 = load i32, i32* %is_open, align 4, !tbaa !151
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 38
  %7 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %old_sp.addr, align 8, !tbaa !1
  %call = call i32 @compare_gdev_prn_space_params(%struct.gdev_space_params_s* byval align 8 %space_params, %struct.gdev_space_params_s* byval align 8 %7) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 13
  %9 = load i32, i32* %width, align 4, !tbaa !66
  %10 = load i32, i32* %old_width.addr, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %9, %10
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 14
  %12 = load i32, i32* %height, align 4, !tbaa !67
  %13 = load i32, i32* %old_height.addr, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %12, %13
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 37
  %15 = load i32, i32* %page_uses_transparency, align 4, !tbaa !39
  %16 = load i32, i32* %old_page_uses_transparency.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %15, %16
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %land.lhs.true
  %17 = bitcast i32* %new_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width6, align 4, !tbaa !66
  store i32 %19, i32* %new_width, align 4, !tbaa !5
  %20 = bitcast i32* %new_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height7, align 4, !tbaa !67
  store i32 %22, i32* %new_height, align 4, !tbaa !5
  %23 = bitcast %struct.gdev_space_params_s* %new_sp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %23) #2
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %space_params8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 38
  %25 = bitcast %struct.gdev_space_params_s* %new_sp to i8*
  %26 = bitcast %struct.gdev_space_params_s* %space_params8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 40, i32 8, i1 false), !tbaa.struct !44
  %27 = load i32, i32* %old_width.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 13
  store i32 %27, i32* %width9, align 4, !tbaa !66
  %29 = load i32, i32* %old_height.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 14
  store i32 %29, i32* %height10, align 4, !tbaa !67
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %prdev.addr, align 8, !tbaa !1
  %space_params11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 38
  %32 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %old_sp.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gdev_space_params_s* %space_params11 to i8*
  %34 = bitcast %struct.gdev_space_params_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 40, i32 8, i1 false), !tbaa.struct !44
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %36 = load i32, i32* %new_width, align 4, !tbaa !5
  %37 = load i32, i32* %new_height, align 4, !tbaa !5
  %call12 = call i32 @gdev_prn_reallocate_memory(%struct.gx_device_s* %35, %struct.gdev_space_params_s* %new_sp, i32 %36, i32 %37) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %38 = bitcast %struct.gdev_space_params_s* %new_sp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %38) #2
  %39 = bitcast i32* %new_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %new_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4, %entry
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %42 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @gx_default_get_space_params(%struct.gx_device_printer_s* %printer_dev, %struct.gdev_space_params_s* %space_params) #0 {
entry:
  %printer_dev.addr = alloca %struct.gx_device_printer_s*, align 8
  %space_params.addr = alloca %struct.gdev_space_params_s*, align 8
  store %struct.gx_device_printer_s* %printer_dev, %struct.gx_device_printer_s** %printer_dev.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %space_params, %struct.gdev_space_params_s** %space_params.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_prn_output_page_aux(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush, i32 %seekable, i32 %bg_print_ok) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %seekable.addr = alloca i32, align 4
  %bg_print_ok.addr = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %pdevn_params = alloca %struct.gs_devn_params_s*, align 8
  %outcode = alloca i32, align 4
  %closecode = alloca i32, align 4
  %errcode = alloca i32, align 4
  %endcode = alloca i32, align 4
  %upgraded_copypage = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %threads_enabled = alloca i32, align 4
  %print_foreground = alloca i32, align 4
  %ndev = alloca %struct.gx_device_s*, align 8
  %npdev = alloca %struct.gx_device_printer_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  store i32 %seekable, i32* %seekable.addr, align 4, !tbaa !5
  store i32 %bg_print_ok, i32* %bg_print_ok.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %outcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %outcode, align 4, !tbaa !5
  %5 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %closecode, align 4, !tbaa !5
  %6 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %errcode, align 4, !tbaa !5
  %7 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %upgraded_copypage to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %upgraded_copypage, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  call void @prn_finish_bg_print(%struct.gx_device_printer_s* %10) #5
  %11 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 65
  %13 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !29
  %cmp1 = icmp ne %struct.gx_saved_pages_list_s* %13, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %call = call i32 @gx_saved_pages_list_add(%struct.gx_device_printer_s* %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end:                                           ; preds = %if.then
  br label %if.end.135

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.134, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %19 = load i32, i32* %seekable.addr, align 4, !tbaa !5
  %call6 = call i32 @gdev_prn_open_printer_seekable(%struct.gx_device_s* %18, i32 1, i32 %19) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.9:                                         ; preds = %if.then.5
  %21 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %if.else.15, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end.9
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 44
  %buffer_page = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 7
  %23 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)** %buffer_page, align 8, !tbaa !152
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 52
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %27 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call12 = call i32 %23(%struct.gx_device_printer_s* %24, %struct._IO_FILE* %26, i32 %27) #5
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %upgraded_copypage, align 4, !tbaa !5
  store i32 1, i32* %flush.addr, align 4, !tbaa !5
  br label %if.end.133

if.else.15:                                       ; preds = %land.lhs.true.11, %if.end.9
  %28 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %28, 0
  br i1 %cmp16, label %if.then.17, label %if.end.132

if.then.17:                                       ; preds = %if.else.15
  %29 = bitcast i32* %threads_enabled to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  store i32 0, i32* %threads_enabled, align 4, !tbaa !5
  %30 = bitcast i32* %print_foreground to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  store i32 1, i32* %print_foreground, align 4, !tbaa !5
  %31 = load i32, i32* %bg_print_ok.addr, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %if.then.17
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 53
  %33 = load i64, i64* %buffer_space, align 8, !tbaa !7
  %34 = inttoptr i64 %33 to %struct.gx_device_printer_s*
  %cmp20 = icmp ne %struct.gx_device_printer_s* %34, null
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 62
  %36 = load i32, i32* %bg_print_requested, align 4, !tbaa !40
  %tobool22 = icmp ne i32 %36, 0
  br i1 %tobool22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %num_render_threads_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 64
  %38 = load i32, i32* %num_render_threads_requested, align 4, !tbaa !43
  %cmp24 = icmp sgt i32 %38, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %lor.lhs.false.23, %land.lhs.true.21
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call26 = call i32 @clist_enable_multi_thread_render(%struct.gx_device_s* %39) #5
  store i32 %call26, i32* %threads_enabled, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %lor.lhs.false.23, %land.lhs.true.19, %if.then.17
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 63
  %return_code = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print, i32 0, i32 4
  %41 = load i32, i32* %return_code, align 4, !tbaa !57
  %cmp28 = icmp slt i32 %41, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 63
  %return_code31 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print30, i32 0, i32 4
  %43 = load i32, i32* %return_code31, align 4, !tbaa !57
  store i32 %43, i32* %outcode, align 4, !tbaa !5
  store i32 0, i32* %threads_enabled, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.27
  br label %while.cond

while.cond:                                       ; preds = %if.end.32
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print_requested33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 62
  %45 = load i32, i32* %bg_print_requested33, align 4, !tbaa !40
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %46 = load i32, i32* %threads_enabled, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %46, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %47 = phi i1 [ false, %while.cond ], [ %tobool35, %land.rhs ]
  br i1 %47, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %48 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_printer_s** %npdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_printer_s* %51 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %52, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_printer_s* %53 to %union.gx_device_clist_s*
  %call36 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %54) #5
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %while.body
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print40 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 63
  %sema = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print40, i32 0, i32 0
  %56 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !28
  %cmp41 = icmp eq %struct.gx_semaphore_s* %56, null
  br i1 %cmp41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.39
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !60
  %call43 = call %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %59) #5
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 63
  %sema45 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print44, i32 0, i32 0
  store %struct.gx_semaphore_s* %call43, %struct.gx_semaphore_s** %sema45, align 8, !tbaa !28
  %cmp46 = icmp eq %struct.gx_semaphore_s* %call43, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.42
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.39
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !52
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 4
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !154
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call51 = call %struct.gx_device_s* @setup_device_and_mem_for_thread(%struct.gs_memory_s* %63, %struct.gx_device_s* %64, i32 1, %struct.gsicc_link_cache_s** null) #5
  store %struct.gx_device_s* %call51, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %cmp52 = icmp eq %struct.gx_device_s* %65, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.49
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 63
  %device = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print55, i32 0, i32 1
  store %struct.gx_device_s* %66, %struct.gx_device_s** %device, align 8, !tbaa !56
  %68 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 63
  %num_copies57 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print56, i32 0, i32 3
  store i32 %68, i32* %num_copies57, align 4, !tbaa !155
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_s* %70 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %71, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %bg_print_requested58 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 62
  store i32 0, i32* %bg_print_requested58, align 4, !tbaa !40
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %num_render_threads_requested59 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 64
  %74 = load i32, i32* %num_render_threads_requested59, align 4, !tbaa !43
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %npdev, align 8, !tbaa !1
  %num_render_threads_requested60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 64
  store i32 %74, i32* %num_render_threads_requested60, align 4, !tbaa !43
  %76 = load i32, i32* %code, align 4, !tbaa !5
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print61 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 63
  %78 = bitcast %struct.bg_print_s* %bg_print61 to i8*
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print62 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %79, i32 0, i32 63
  %thread_id = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print62, i32 0, i32 2
  %call63 = call i32 @gp_thread_start(void (i8*)* @prn_print_page_in_background, i8* %78, i8** %thread_id) #5
  %cmp64 = icmp eq i32 %76, %call63
  %conv = zext i1 %cmp64 to i32
  %cmp65 = icmp slt i32 %conv, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.54
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.end.54
  store i32 0, i32* %print_foreground, align 4, !tbaa !5
  %80 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %80, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %81 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !156
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %81, i32 0, i32 1
  %82 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !157
  %83 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info69 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %83, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info69, i32 0, i32 1
  %84 = load i8*, i8** %cfile, align 8, !tbaa !159
  %85 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info70 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %85, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info70, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call71 = call i32 %82(i8* %84, i8* %arraydecay, i32 0) #5
  store i32 %call71, i32* %code, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.84, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.end.68
  %86 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info75 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %86, i32 0, i32 58
  %io_procs76 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info75, i32 0, i32 4
  %87 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs76, align 8, !tbaa !156
  %fclose77 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %87, i32 0, i32 1
  %88 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose77, align 8, !tbaa !157
  %89 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info78 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %89, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info78, i32 0, i32 3
  %90 = load i8*, i8** %bfile, align 8, !tbaa !160
  %91 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info79 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %91, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info79, i32 0, i32 2
  %arraydecay80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call81 = call i32 %88(i8* %90, i8* %arraydecay80, i32 0) #5
  store i32 %call81, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.74, %if.end.68
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %lor.lhs.false.74
  %92 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info86 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %92, i32 0, i32 58
  %bfile87 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info86, i32 0, i32 3
  store i8* null, i8** %bfile87, align 8, !tbaa !160
  %93 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info88 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %93, i32 0, i32 58
  %cfile89 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info88, i32 0, i32 1
  store i8* null, i8** %cfile89, align 8, !tbaa !159
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call90 = call i32 @clist_open(%struct.gx_device_s* %94) #5
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.85
  %95 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.85
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %if.then.93, %if.then.84, %if.then.67, %if.then.53, %if.then.47, %if.then.38
  %96 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast %struct.gx_device_printer_s** %npdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 3, label %while.end
  ]

while.end:                                        ; preds = %cleanup, %land.end
  %99 = load i32, i32* %print_foreground, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %99, 0
  br i1 %tobool97, label %if.then.98, label %if.end.128

if.then.98:                                       ; preds = %while.end
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print99 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 63
  %sema100 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print99, i32 0, i32 0
  %101 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema100, align 8, !tbaa !28
  %cmp101 = icmp ne %struct.gx_semaphore_s* %101, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.115

land.lhs.true.103:                                ; preds = %if.then.98
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print104 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %102, i32 0, i32 63
  %device105 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print104, i32 0, i32 1
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %device105, align 8, !tbaa !56
  %cmp106 = icmp ne %struct.gx_device_s* %103, null
  br i1 %cmp106, label %if.then.108, label %if.end.115

if.then.108:                                      ; preds = %land.lhs.true.103
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print109 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %104, i32 0, i32 63
  %device110 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print109, i32 0, i32 1
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %device110, align 8, !tbaa !56
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print111 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 63
  %thread_id112 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print111, i32 0, i32 2
  %107 = load i8*, i8** %thread_id112, align 8, !tbaa !58
  call void @teardown_device_and_mem_for_thread(%struct.gx_device_s* %105, i8* %107, i32 1) #5
  %108 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bg_print113 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %108, i32 0, i32 63
  %device114 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %bg_print113, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %device114, align 8, !tbaa !56
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.108, %land.lhs.true.103, %if.then.98
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs116 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %109, i32 0, i32 44
  %print_page_copies = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs116, i32 0, i32 1
  %110 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)** %print_page_copies, align 8, !tbaa !161
  %111 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file117 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %112, i32 0, i32 52
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %file117, align 8, !tbaa !26
  %114 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call118 = call i32 %110(%struct.gx_device_printer_s* %111, %struct._IO_FILE* %113, i32 %114) #5
  store i32 %call118, i32* %outcode, align 4, !tbaa !5
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file119 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 52
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %file119, align 8, !tbaa !26
  %call120 = call i32 @fflush(%struct._IO_FILE* %116) #5
  %117 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file121 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %117, i32 0, i32 52
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %file121, align 8, !tbaa !26
  %call122 = call i32 @ferror(%struct._IO_FILE* %118) #7
  %tobool123 = icmp ne i32 %call122, 0
  %cond = select i1 %tobool123, i32 -12, i32 0
  store i32 %cond, i32* %errcode, align 4, !tbaa !5
  %119 = load i32, i32* %upgraded_copypage, align 4, !tbaa !5
  %tobool124 = icmp ne i32 %119, 0
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %if.end.115
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call126 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* %120) #5
  store i32 %call126, i32* %closecode, align 4, !tbaa !5
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.115
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.128, %cleanup
  %121 = bitcast i32* %print_foreground to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %threads_enabled to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.131, label %cleanup.174 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.129
  br label %if.end.132

if.end.132:                                       ; preds = %cleanup.cont, %if.else.15
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.14
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %lor.lhs.false
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %124 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !162
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call136 = call %struct.gs_devn_params_s* %124(%struct.gx_device_s* %125) #5
  store %struct.gs_devn_params_s* %call136, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !1
  %126 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !1
  %cmp137 = icmp ne %struct.gs_devn_params_s* %126, null
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.end.135
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8, !tbaa !52
  %129 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %129, i32 0, i32 5
  call void @free_separation_names(%struct.gs_memory_s* %128, %struct.gs_separations_s* %separations) #5
  %130 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %130, i32 0, i32 6
  store i32 0, i32* %num_separation_order_names, align 4, !tbaa !163
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.end.135
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space142 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %131, i32 0, i32 53
  %132 = load i64, i64* %buffer_space142, align 8, !tbaa !7
  %133 = inttoptr i64 %132 to %struct.gx_device_printer_s*
  %cmp143 = icmp ne %struct.gx_device_printer_s* %133, null
  br i1 %cmp143, label %land.lhs.true.145, label %cond.false

land.lhs.true.145:                                ; preds = %if.end.141
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %135 = bitcast %struct.gx_device_printer_s* %134 to %struct.gx_device_clist_common_s*
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %135, i32 0, i32 49
  %136 = load i32, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !166
  %tobool146 = icmp ne i32 %136, 0
  br i1 %tobool146, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.145
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %138 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call147 = call i32 @clist_finish_page(%struct.gx_device_s* %137, i32 %138) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.145, %if.end.141
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond148 = phi i32 [ %call147, %cond.true ], [ 0, %cond.false ]
  store i32 %cond148, i32* %endcode, align 4, !tbaa !5
  %139 = load i32, i32* %outcode, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %139, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %cond.end
  %140 = load i32, i32* %outcode, align 4, !tbaa !5
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.152:                                       ; preds = %cond.end
  %141 = load i32, i32* %errcode, align 4, !tbaa !5
  %cmp153 = icmp slt i32 %141, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  %142 = load i32, i32* %errcode, align 4, !tbaa !5
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.156:                                       ; preds = %if.end.152
  %143 = load i32, i32* %closecode, align 4, !tbaa !5
  %cmp157 = icmp slt i32 %143, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.156
  %144 = load i32, i32* %closecode, align 4, !tbaa !5
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.160:                                       ; preds = %if.end.156
  %145 = load i32, i32* %endcode, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %145, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.160
  %146 = load i32, i32* %endcode, align 4, !tbaa !5
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.end.164:                                       ; preds = %if.end.160
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %148 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %149 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call165 = call i32 @gx_finish_output_page(%struct.gx_device_s* %147, i32 %148, i32 %149) #5
  store i32 %call165, i32* %endcode, align 4, !tbaa !5
  %150 = load i32, i32* %endcode, align 4, !tbaa !5
  %cmp166 = icmp slt i32 %150, 0
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.end.164
  %151 = load i32, i32* %endcode, align 4, !tbaa !5
  br label %cond.end.172

cond.false.169:                                   ; preds = %if.end.164
  %152 = load i32, i32* %upgraded_copypage, align 4, !tbaa !5
  %tobool170 = icmp ne i32 %152, 0
  %cond171 = select i1 %tobool170, i32 1, i32 0
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.169, %cond.true.168
  %cond173 = phi i32 [ %151, %cond.true.168 ], [ %cond171, %cond.false.169 ]
  store i32 %cond173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

cleanup.174:                                      ; preds = %cond.end.172, %if.then.163, %if.then.159, %if.then.155, %if.then.151, %cleanup.129, %if.then.8, %if.then.3
  %153 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %upgraded_copypage to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %outcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = load i32, i32* %retval
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_output_page_seekable(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %2 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_output_page_aux(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_bg_output_page_seekable(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %2 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_output_page_aux(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 1, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_print_page_single_copy(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i32 0, i32 44
  %print_page_copies = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 1
  %1 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)** %print_page_copies, align 8, !tbaa !161
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %errcode = alloca i32, align 4
  %closecode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %i, align 4, !tbaa !5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 44
  %print_page = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 0
  %7 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %print_page, align 8, !tbaa !167
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_printer_s* %8, %struct._IO_FILE* %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 52
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %call2 = call i32 @fflush(%struct._IO_FILE* %13) #5
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 52
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file3, align 8, !tbaa !26
  %call4 = call i32 @ferror(%struct._IO_FILE* %15) #7
  %tobool = icmp ne i32 %call4, 0
  %cond = select i1 %tobool, i32 -12, i32 0
  store i32 %cond, i32* %errcode, align 4, !tbaa !5
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_s*
  %call5 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* %17) #5
  store i32 %call5, i32* %closecode, align 4, !tbaa !5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 26
  %19 = load i64, i64* %PageCount, align 8, !tbaa !168
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %PageCount, align 8, !tbaa !168
  %20 = load i32, i32* %errcode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %20, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %21 = load i32, i32* %errcode, align 4, !tbaa !5
  br label %cond.end.12

cond.false:                                       ; preds = %if.end
  %22 = load i32, i32* %closecode, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %22, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  %23 = load i32, i32* %closecode, align 4, !tbaa !5
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_s*
  %call10 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %25, i32 1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %23, %cond.true.8 ], [ %call10, %cond.false.9 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %21, %cond.true ], [ %cond11, %cond.end ]
  store i32 %cond13, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %cond.end.12
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %27 to i64
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 26
  %29 = load i64, i64* %PageCount16, align 8, !tbaa !168
  %sub = sub nsw i64 %29, %conv
  store i64 %sub, i64* %PageCount16, align 8, !tbaa !168
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %cond.end.12
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 52
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file18, align 8, !tbaa !26
  store %struct._IO_FILE* %32, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then
  %33 = bitcast i32* %closecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %35, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %36, 1
  %conv22 = sext i32 %sub21 to i64
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 26
  %38 = load i64, i64* %PageCount23, align 8, !tbaa !168
  %sub24 = sub nsw i64 %38, %conv22
  store i64 %sub24, i64* %PageCount23, align 8, !tbaa !168
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %printer_procs25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 44
  %print_page26 = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs25, i32 0, i32 0
  %40 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)** %print_page26, align 8, !tbaa !167
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call27 = call i32 %40(%struct.gx_device_printer_s* %41, %struct._IO_FILE* %42) #5
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end, %cleanup
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_close_printer(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 45
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname1, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay2) #6
  %conv = trunc i64 %call to i32
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %call3 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %arraydecay, i32 %conv, %struct.gs_memory_s* %9) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %11 = load i8*, i8** %fmt, align 8, !tbaa !1
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %ReopenPerPage = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 48
  %13 = load i32, i32* %ReopenPerPage, align 4, !tbaa !38
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 45
  %arraydecay7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname6, i32 0, i32 0
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 52
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %call8 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %14, i8* %arraydecay7, %struct._IO_FILE* %17) #5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 52
  store %struct._IO_FILE* null, %struct._IO_FILE** %file9, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %21) #2
  %22 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_buffer_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_render_plane_init(%struct.gx_render_plane_s* %render_plane, %struct.gx_device_s* %dev, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !169
  store i32 %2, i32* %num_planes, align 4, !tbaa !5
  %3 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %5 = load i16, i16* %depth, align 2, !tbaa !170
  %conv = zext i16 %5 to i32
  %6 = load i32, i32* %num_planes, align 4, !tbaa !5
  %div = sdiv i32 %conv, %6
  store i32 %div, i32* %plane_depth, align 4, !tbaa !5
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %11 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %11, i32 0, i32 2
  store i32 %10, i32* %index5, align 4, !tbaa !171
  %12 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %13 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %depth6 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %13, i32 0, i32 0
  store i32 %12, i32* %depth6, align 4, !tbaa !172
  %14 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %15 = load i32, i32* %num_planes, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 %sub, %16
  %mul = mul nsw i32 %14, %sub7
  %17 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %17, i32 0, i32 1
  store i32 %mul, i32* %shift, align 4, !tbaa !173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @gdev_prn_clear_trailing_bits(i8* %data, i32 %raster, i32 %height, %struct.gx_device_s* %dev) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %first_bit = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !41
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !170
  %conv = zext i16 %4 to i32
  %mul = mul nsw i32 %2, %conv
  store i32 %mul, i32* %first_bit, align 4, !tbaa !5
  %5 = load i32, i32* %first_bit, align 4, !tbaa !5
  %and = and i32 %5, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %first_bit, align 4, !tbaa !5
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %9 = load i32, i32* %first_bit, align 4, !tbaa !5
  %sub = sub nsw i32 0, %9
  %and1 = and i32 %sub, 7
  %10 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @bits_fill_rectangle(i8* %6, i32 %7, i32 %8, i32 0, i32 %and1, i32 %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  ret void
}

declare void @bits_fill_rectangle(i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %height = alloca i32, align 4
  %imat = alloca %struct.gs_matrix_s, align 4
  %yscale = alloca float, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %offset = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 14
  %2 = load i32, i32* %height1, align 4, !tbaa !42
  store i32 %2, i32* %height, align 4, !tbaa !5
  %3 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast float* %yscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %10 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !174
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void %10(%struct.gx_device_s* %11, %struct.gs_matrix_s* %imat) #5
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 3
  %12 = load float, float* %yy, align 4, !tbaa !175
  %conv = fpext float %12 to double
  %mul = fmul double %conv, 7.200000e+01
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %yscale, align 4, !tbaa !176
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %14 = load float, float* %arrayidx, align 4, !tbaa !176
  %conv3 = fpext float %14 to double
  %div = fdiv double %conv3, 7.200000e+01
  %15 = load float, float* %yscale, align 4, !tbaa !176
  %conv4 = fpext float %15 to double
  %mul5 = fmul double %div, %conv4
  %conv6 = fptosi double %mul5 to i32
  store i32 %conv6, i32* %top, align 4, !tbaa !5
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins7, i32 0, i64 1
  %17 = load float, float* %arrayidx8, align 4, !tbaa !176
  %conv9 = fpext float %17 to double
  %div10 = fdiv double %conv9, 7.200000e+01
  %18 = load float, float* %yscale, align 4, !tbaa !176
  %conv11 = fpext float %18 to double
  %mul12 = fmul double %div10, %conv11
  %conv13 = fptosi double %mul12 to i32
  store i32 %conv13, i32* %bottom, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 24
  %arrayidx14 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 1
  %20 = load float, float* %arrayidx14, align 4, !tbaa !176
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 23
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 1
  %22 = load float, float* %arrayidx15, align 4, !tbaa !176
  %div16 = fdiv float %20, %22
  %23 = load float, float* %yscale, align 4, !tbaa !176
  %mul17 = fmul float %div16, %23
  %conv18 = fptosi float %mul17 to i32
  store i32 %conv18, i32* %offset, align 4, !tbaa !5
  %24 = load float, float* %yscale, align 4, !tbaa !176
  %cmp = fcmp olt float %24, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %sub = sub nsw i32 0, %25
  %26 = load i32, i32* %height, align 4, !tbaa !5
  %add = add nsw i32 %sub, %26
  %27 = load i32, i32* %bottom, align 4, !tbaa !5
  %add20 = add nsw i32 %add, %27
  store i32 %add20, i32* %end, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i32, i32* %offset, align 4, !tbaa !5
  %29 = load i32, i32* %height, align 4, !tbaa !5
  %add21 = add nsw i32 %28, %29
  %30 = load i32, i32* %top, align 4, !tbaa !5
  %sub22 = sub nsw i32 %add21, %30
  store i32 %sub22, i32* %end, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %height, align 4, !tbaa !5
  %32 = load i32, i32* %end, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %31, %32
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load i32, i32* %height, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %34 = load i32, i32* %end, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  %35 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast float* %yscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #2
  %41 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_open_printer_seekable(%struct.gx_device_s* %pdev, i32 %binary_mode, i32 %seekable) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %binary_mode.addr = alloca i32, align 4
  %seekable.addr = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %binary_mode, i32* %binary_mode.addr, align 4, !tbaa !5
  store i32 %seekable, i32* %seekable.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 52
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %cmp = icmp ne %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file_is_new = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 51
  store i32 0, i32* %file_is_new, align 4, !tbaa !177
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %9 = load i32, i32* %binary_mode.addr, align 4, !tbaa !5
  %10 = load i32, i32* %seekable.addr, align 4, !tbaa !5
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 52
  %call = call i32 @gx_device_open_output_file(%struct.gx_device_s* %7, i8* %arraydecay, i32 %9, i32 %10, %struct._IO_FILE** %file1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load i32, i32* %seekable.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.4
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file5, align 8, !tbaa !26
  %call6 = call i32 @gp_fseekable(%struct._IO_FILE* %16) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.30, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 45
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname9, i32 0, i32 0
  %call11 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay10) #5
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 52
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file12, align 8, !tbaa !26
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !52
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !178
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !179
  %cmp14 = icmp eq %struct._IO_FILE* %21, %25
  br i1 %cmp14, label %if.end.28, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %if.then.8
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 52
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file16, align 8, !tbaa !26
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !52
  %gs_lib_ctx18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 2
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx18, align 8, !tbaa !178
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !181
  %cmp19 = icmp eq %struct._IO_FILE* %27, %31
  br i1 %cmp19, label %if.end.28, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.15
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %fname21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 45
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname21, i32 0, i32 0
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 52
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file23, align 8, !tbaa !26
  %call24 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %32, i8* %arraydecay22, %struct._IO_FILE* %35) #5
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.15, %if.then.8
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file29 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 52
  store %struct._IO_FILE* null, %struct._IO_FILE** %file29, align 8, !tbaa !26
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %land.lhs.true, %if.end.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.end.28, %if.then.26, %if.then.3
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file_is_new31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 51
  store i32 1, i32* %file_is_new31, align 4, !tbaa !177
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %41 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gx_device_open_output_file(%struct.gx_device_s*, i8*, i32, i32, %struct._IO_FILE**) #1

declare i32 @gp_fseekable(%struct._IO_FILE*) #1

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file_is_new = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i32 0, i32 51
  %1 = load i32, i32* %file_is_new, align 4, !tbaa !177
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gx_page_info_color_usage(%struct.gx_device_s* %dev, %struct.gx_band_page_info_s* %page_info, i32 %y, i32 %height, %struct.gx_colors_usage_s* %color_usage, i32* %range_start) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %page_info.addr = alloca %struct.gx_band_page_info_s*, align 8
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %range_start.addr = alloca i32*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  %band_height = alloca i32, align 4
  %or = alloca i64, align 8
  %slow_rop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_band_page_info_s* %page_info, %struct.gx_band_page_info_s** %page_info.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  store i32* %range_start, i32** %range_start.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %2, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %3 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info.addr, align 8, !tbaa !1
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %7, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %8 = load i32, i32* %BandHeight, align 4, !tbaa !182
  store i32 %8, i32* %band_height, align 4, !tbaa !5
  %9 = bitcast i64* %or to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i64 0, i64* %or, align 8, !tbaa !45
  %10 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %slow_rop, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %height.addr, align 4, !tbaa !5
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height3, align 4, !tbaa !42
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %16
  %cmp4 = icmp sgt i32 %13, %sub
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %17, %18
  store i32 %div, i32* %start, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %19, %20
  %21 = load i32, i32* %band_height, align 4, !tbaa !5
  %add5 = add nsw i32 %add, %21
  %sub6 = sub nsw i32 %add5, 1
  %22 = load i32, i32* %band_height, align 4, !tbaa !5
  %div7 = sdiv i32 %sub6, %22
  store i32 %div7, i32* %end, align 4, !tbaa !5
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 67
  %24 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !139
  %cmp8 = icmp eq %struct.gx_colors_usage_s* %24, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %25 = load i32, i32* %start, align 4, !tbaa !5
  store i32 %25, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %end, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array12 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 67
  %30 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array12, align 8, !tbaa !139
  %arrayidx = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %30, i64 %idxprom
  %or13 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %arrayidx, i32 0, i32 0
  %31 = load i64, i64* %or13, align 8, !tbaa !183
  %32 = load i64, i64* %or, align 8, !tbaa !45
  %or14 = or i64 %32, %31
  store i64 %or14, i64* %or, align 8, !tbaa !45
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %33 to i64
  %34 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array16 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %34, i32 0, i32 67
  %35 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array16, align 8, !tbaa !139
  %arrayidx17 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %35, i64 %idxprom15
  %slow_rop18 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %arrayidx17, i32 0, i32 1
  %36 = load i32, i32* %slow_rop18, align 4, !tbaa !187
  %37 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %or19 = or i32 %37, %36
  store i32 %or19, i32* %slow_rop, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i64, i64* %or, align 8, !tbaa !45
  %40 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %or20 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %40, i32 0, i32 0
  store i64 %39, i64* %or20, align 8, !tbaa !183
  %41 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %42 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %slow_rop21 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %42, i32 0, i32 1
  store i32 %41, i32* %slow_rop21, align 4, !tbaa !187
  %43 = load i32, i32* %start, align 4, !tbaa !5
  %44 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul = mul nsw i32 %43, %44
  %45 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  store i32 %mul, i32* %45, align 4, !tbaa !5
  %46 = load i32, i32* %end, align 4, !tbaa !5
  %47 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul22 = mul nsw i32 %46, %47
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 14
  %49 = load i32, i32* %height23, align 4, !tbaa !42
  %cmp24 = icmp slt i32 %mul22, %49
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %50 = load i32, i32* %end, align 4, !tbaa !5
  %51 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul25 = mul nsw i32 %50, %51
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 14
  %53 = load i32, i32* %height26, align 4, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul25, %cond.true ], [ %53, %cond.false ]
  %54 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %sub27 = sub nsw i32 %cond, %55
  store i32 %sub27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %56 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i64* %or to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_color_usage(%struct.gx_device_s* %dev, i32 %y, i32 %height, %struct.gx_colors_usage_s* %color_usage, i32* %range_start) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %range_start.addr = alloca i32*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %cldev = alloca %struct.gx_device_clist_writer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  store i32* %range_start, i32** %range_start.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %5, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clist_writer_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %8, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !1
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 53
  %10 = load i64, i64* %buffer_space, align 8, !tbaa !7
  %11 = inttoptr i64 %10 to %struct.gx_device_printer_s*
  %cmp = icmp ne %struct.gx_device_printer_s* %11, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  store i32 0, i32* %12, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %14 = load i32, i32* %num_components, align 4, !tbaa !169
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %15 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %15, i32 0, i32 0
  store i64 %sub, i64* %or, align 8, !tbaa !183
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 14
  %17 = load i32, i32* %height1, align 4, !tbaa !42
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %18, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %19, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %20 = load i32, i32* %height.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height5, align 4, !tbaa !42
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %22, %23
  %cmp7 = icmp sgt i32 %20, %sub6
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false.4
  %24 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %24 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 56
  %25 = load i32, i32* %ymin, align 4, !tbaa !131
  %cmp10 = icmp slt i32 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !1
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load i32, i32* %height.addr, align 4, !tbaa !5
  %29 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  %call = call i32 @clist_writer_color_usage(%struct.gx_device_clist_writer_s* %26, i32 %27, i32 %28, %struct.gx_colors_usage_s* %29, i32* %30) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.9
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 58
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %34 = load i32, i32* %height.addr, align 4, !tbaa !5
  %35 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %36 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  %call12 = call i32 @gx_page_info_color_usage(%struct.gx_device_s* %31, %struct.gx_band_page_info_s* %page_info, i32 %33, i32 %34, %struct.gx_colors_usage_s* %35, i32* %36) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.11, %if.then.8, %if.then
  %37 = bitcast %struct.gx_device_clist_writer_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @clist_writer_color_usage(%struct.gx_device_clist_writer_s*, i32, i32, %struct.gx_colors_usage_s*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %cbd_proc, %struct.gx_device_s** %pbdev, %struct.gx_device_s* %target, i32 %y, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %mem, %struct.gx_colors_usage_s* %color_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %cbd_proc.addr = alloca i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, align 8
  %pbdev.addr = alloca %struct.gx_device_s**, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %cbd_proc, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %cbd_proc.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pbdev, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %cbd_proc.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %5 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gx_device_s** %2, %struct.gx_device_s* %3, i32 %4, %struct.gx_render_plane_s* %5, %struct.gs_memory_s* %6, %struct.gx_colors_usage_s* %7) #5
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
  %10 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %10, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %11, i32 1) #5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_create_buf_device(%struct.gx_device_s** %pbdev, %struct.gx_device_s* %target, i32 %y, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %mem, %struct.gx_colors_usage_s* %color_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %pbdev.addr = alloca %struct.gx_device_s**, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %plane_index = alloca i32, align 4
  %depth = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %bdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %edev = alloca %struct.gx_device_plane_extract_s*, align 8
  store %struct.gx_device_s** %pbdev, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %0 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %2, i32 0, i32 2
  %3 = load i32, i32* %index, align 4, !tbaa !171
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %plane_index, align 4, !tbaa !5
  %4 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %depth1 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %9, i32 0, i32 0
  %10 = load i32, i32* %depth1, align 4, !tbaa !172
  store i32 %10, i32* %depth, align 4, !tbaa !5
  br label %if.end.6

if.else:                                          ; preds = %cond.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %12 = load i16, i16* %depth2, align 2, !tbaa !170
  %conv = zext i16 %12 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 17
  %14 = load i32, i32* %is_planar, align 4, !tbaa !188
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %16 = load i32, i32* %num_components, align 4, !tbaa !169
  %17 = load i32, i32* %depth, align 4, !tbaa !5
  %div = sdiv i32 %17, %16
  store i32 %div, i32* %depth, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %18 = load i32, i32* %depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %18) #5
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_device_memory_s* %19, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.10:                                        ; preds = %if.end.6
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %tobool11 = icmp ne %struct.gs_memory_s* %20, null
  br i1 %tobool11, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %22 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !189
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i8* %22(%struct.gs_memory_s* %23, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #5
  %24 = bitcast i8* %call13 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %24, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gx_device_memory_s* %25, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.12
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.10
  %26 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %26, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %28, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end.17
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_memory_s* %30 to %struct.gx_device_s*
  %cmp20 = icmp eq %struct.gx_device_s* %29, %31
  br i1 %cmp20, label %if.then.22, label %if.else.32

if.then.22:                                       ; preds = %if.end.19
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 42
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 42
  %34 = bitcast %struct.gx_device_procs_s* %procs23 to i8*
  %35 = bitcast %struct.gx_device_procs_s* %procs24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 584, i32 8, i1 false), !tbaa.struct !65
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_memory_s* %36 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %37) #5
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs25, i32 0, i32 65
  %39 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !190
  %cmp26 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i32)* %39, null
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.22
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 42
  %dev_spec_op30 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs29, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op30, align 8, !tbaa !190
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.then.22
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_memory_s* %41 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %42) #5
  br label %if.end.36

if.else.32:                                       ; preds = %if.end.19
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.gx_colors_usage_s* %46, null
  %cond35 = select i1 %cmp33, i32 1, i32 0
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %43, %struct.gx_device_memory_s* %44, %struct.gs_memory_s* %45, i32 %cond35, %struct.gx_device_s* %47) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32, %if.end.31
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 13
  %49 = load i32, i32* %width, align 4, !tbaa !41
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 13
  store i32 %49, i32* %width37, align 4, !tbaa !191
  %51 = load i32, i32* %y.addr, align 4, !tbaa !5
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %band_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 68
  store i32 %51, i32* %band_y, align 4, !tbaa !192
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 16
  %54 = load i32, i32* %log2_align_mod, align 4, !tbaa !193
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_align_mod38 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 16
  store i32 %54, i32* %log2_align_mod38, align 4, !tbaa !194
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 15
  %57 = load i32, i32* %pad, align 4, !tbaa !195
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %pad39 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %58, i32 0, i32 15
  store i32 %57, i32* %pad39, align 4, !tbaa !196
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 17
  %60 = load i32, i32* %is_planar40, align 4, !tbaa !188
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %is_planar41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %61, i32 0, i32 17
  store i32 %60, i32* %is_planar41, align 4, !tbaa !197
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 51
  call void @gs_deviceinitialmatrix(%struct.gx_device_s* %62, %struct.gs_matrix_s* %initial_matrix) #5
  %64 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %64, 0
  br i1 %cmp42, label %if.then.44, label %if.else.53

if.then.44:                                       ; preds = %if.end.36
  %65 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_struct46 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 8
  %67 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct46, align 8, !tbaa !189
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call47 = call i8* %67(%struct.gs_memory_s* %68, %struct.gs_memory_struct_type_s* @st_device_plane_extract, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #5
  %69 = bitcast i8* %call47 to %struct.gx_device_plane_extract_s*
  store %struct.gx_device_plane_extract_s* %69, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %70 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.gx_device_plane_extract_s* %70, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.44
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_memory_s* %71 to %struct.gx_device_s*
  call void @gx_default_destroy_buf_device(%struct.gx_device_s* %72) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.44
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %74 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %74, i32 0, i32 3
  store %struct.gs_memory_s* %73, %struct.gs_memory_s** %memory, align 8, !tbaa !198
  %75 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_memory_s* %77 to %struct.gx_device_s*
  %79 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %call52 = call i32 @plane_device_init(%struct.gx_device_plane_extract_s* %75, %struct.gx_device_s* %76, %struct.gx_device_s* %78, %struct.gx_render_plane_s* %79, i32 0) #5
  %80 = load %struct.gx_device_plane_extract_s*, %struct.gx_device_plane_extract_s** %edev, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_plane_extract_s* %80 to %struct.gx_device_s*
  store %struct.gx_device_s* %81, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.50
  %82 = bitcast %struct.gx_device_plane_extract_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.else.53:                                       ; preds = %if.end.36
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %84 = bitcast %struct.gx_device_memory_s* %83 to %struct.gx_device_s*
  store %struct.gx_device_s* %84, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %cleanup.cont
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %color_info55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 11
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 11
  %cmp57 = icmp ne %struct.gx_device_color_info_s* %color_info55, %color_info56
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.54
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 11
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 11
  %89 = bitcast %struct.gx_device_color_info_s* %color_info60 to i8*
  %90 = bitcast %struct.gx_device_color_info_s* %color_info61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 720, i32 8, i1 false), !tbaa.struct !200
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.54
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %92 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %91, %struct.gx_device_s** %92, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %if.end.62, %cleanup, %if.then.16, %if.then.9
  %93 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #1

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #1

declare void @gs_deviceinitialmatrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define void @gx_default_destroy_buf_device(%struct.gx_device_s* %bdev) #0 {
entry:
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %1, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %call = call i32 @gs_device_is_memory(%struct.gx_device_s* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_plane_extract_s*
  %plane_dev = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !202
  store %struct.gx_device_s* %5, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !52
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 4
  %close_device3 = bitcast {}** %close_device to i32 (%struct.gx_device_s*)**
  %14 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device3, align 8, !tbaa !203
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %call4 = call i32 %14(%struct.gx_device_s* %15) #5
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !52
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !63
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !52
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)) #5
  %23 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret void
}

declare i32 @plane_device_init(%struct.gx_device_plane_extract_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_size_buf_device(%struct.gx_device_buf_space_s* %space, %struct.gx_device_s* %target, %struct.gx_render_plane_s* %render_plane, i32 %height, i32 %not_used) #0 {
entry:
  %retval = alloca i32, align 4
  %space.addr = alloca %struct.gx_device_buf_space_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %not_used.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_buf_space_s* %space, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %not_used, i32* %not_used.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %0) #2
  %1 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %1, i32 0, i32 1
  store i64 0, i64* %line_ptrs, align 8, !tbaa !71
  %2 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %2, i32 0, i32 0
  store i64 0, i64* %bits, align 8, !tbaa !69
  %3 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %3, i32 0, i32 2
  store i32 0, i32* %raster, align 4, !tbaa !83
  %4 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %4, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %5, i32 0, i32 2
  %6 = load i32, i32* %index, align 4, !tbaa !171
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %7, i32 0, i32 0
  %8 = load i32, i32* %depth, align 4, !tbaa !172
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %10 = load i16, i16* %depth1, align 2, !tbaa !170
  %conv = zext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  %color_info3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 11
  %depth4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 3
  store i16 %conv2, i16* %depth4, align 2, !tbaa !204
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4, !tbaa !41
  %width5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 13
  store i32 %12, i32* %width5, align 4, !tbaa !191
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 17
  %14 = load i32, i32* %is_planar, align 4, !tbaa !188
  %is_planar6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 17
  store i32 %14, i32* %is_planar6, align 4, !tbaa !197
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 15
  %16 = load i32, i32* %pad, align 4, !tbaa !195
  %pad7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 15
  store i32 %16, i32* %pad7, align 4, !tbaa !196
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 16
  %18 = load i32, i32* %log2_align_mod, align 4, !tbaa !193
  %log2_align_mod8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 16
  store i32 %18, i32* %log2_align_mod8, align 4, !tbaa !194
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width9, align 4, !tbaa !41
  %21 = load i32, i32* %height.addr, align 4, !tbaa !5
  %22 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %bits10 = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %22, i32 0, i32 0
  %call = call i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %mdev, i32 %20, i32 %21, i64* %bits10) #5
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width13, align 4, !tbaa !41
  %25 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call14 = call i64 @gdev_mem_line_ptrs_size(%struct.gx_device_memory_s* %mdev, i32 %24, i32 %25) #5
  %26 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %line_ptrs15 = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %26, i32 0, i32 1
  store i64 %call14, i64* %line_ptrs15, align 8, !tbaa !71
  %27 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %call16 = call i32 @gx_device_raster(%struct.gx_device_s* %27, i32 1) #5
  %28 = load %struct.gx_device_buf_space_s*, %struct.gx_device_buf_space_s** %space.addr, align 8, !tbaa !1
  %raster17 = getelementptr inbounds %struct.gx_device_buf_space_s, %struct.gx_device_buf_space_s* %28, i32 0, i32 2
  store i32 %call16, i32* %raster17, align 4, !tbaa !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gdev_mem_bits_size(%struct.gx_device_memory_s*, i32, i32, i64*) #1

declare i64 @gdev_mem_line_ptrs_size(%struct.gx_device_memory_s*, i32, i32) #1

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_setup_buf_device(%struct.gx_device_s* %bdev, i8* %buffer, i32 %raster, i8** %line_ptrs, i32 %y, i32 %setup_height, i32 %full_height) #0 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %line_ptrs.addr = alloca i8**, align 8
  %y.addr = alloca i32, align 4
  %setup_height.addr = alloca i32, align 4
  %full_height.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %ptrs = alloca i8**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8** %line_ptrs, i8*** %line_ptrs.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %setup_height, i32* %setup_height.addr, align 4, !tbaa !5
  store i32 %full_height, i32* %full_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %call = call i32 @gs_device_is_memory(%struct.gx_device_s* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_memory_s*
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_plane_extract_s*
  %plane_dev = getelementptr inbounds %struct.gx_device_plane_extract_s, %struct.gx_device_plane_extract_s* %5, i32 0, i32 44
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %plane_dev, align 8, !tbaa !202
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ %3, %cond.true ], [ %7, %cond.false ]
  store %struct.gx_device_memory_s* %cond, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %8 = bitcast i8*** %ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i8**, i8*** %line_ptrs.addr, align 8, !tbaa !1
  store i8** %9, i8*** %ptrs, align 8, !tbaa !1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i8**, i8*** %ptrs, align 8, !tbaa !1
  %cmp = icmp eq i8** %11, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %cond.end
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 52
  %13 = load i8**, i8*** %line_ptrs1, align 8, !tbaa !205
  %cmp2 = icmp ne i8** %13, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 48
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory, align 8, !tbaa !206
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 48
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory4, align 8, !tbaa !206
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 52
  %20 = load i8**, i8*** %line_ptrs5, align 8, !tbaa !205
  %21 = bitcast i8** %20 to i8*
  call void %16(%struct.gs_memory_s* %18, i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !207
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !208
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !207
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 17
  %28 = load i32, i32* %is_planar, align 4, !tbaa !197
  %tobool8 = icmp ne i32 %28, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.end
  %29 = load i32, i32* %full_height.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %31 = load i32, i32* %num_components, align 4, !tbaa !209
  %mul = mul nsw i32 %29, %31
  br label %cond.end.11

cond.false.10:                                    ; preds = %if.end
  %32 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %mul, %cond.true.9 ], [ %32, %cond.false.10 ]
  %call13 = call i8* %24(%struct.gs_memory_s* %26, i32 %cond12, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)) #5
  %33 = bitcast i8* %call13 to i8**
  store i8** %33, i8*** %ptrs, align 8, !tbaa !1
  %34 = load i8**, i8*** %ptrs, align 8, !tbaa !1
  %cmp14 = icmp eq i8** %34, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end.11
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %cond.end.11
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !207
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory18 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 48
  store %struct.gs_memory_s* %36, %struct.gs_memory_s** %line_pointer_memory18, align 8, !tbaa !206
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %foreign_line_pointers = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 49
  store i32 0, i32* %foreign_line_pointers, align 4, !tbaa !210
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %cond.end
  %39 = load i32, i32* %full_height.addr, align 4, !tbaa !5
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 14
  store i32 %39, i32* %height, align 4, !tbaa !211
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %42 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %43 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %mul20 = mul nsw i32 %43, %44
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %45 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %46 = load i8**, i8*** %ptrs, align 8, !tbaa !1
  %47 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %call21 = call i32 @gdev_mem_set_line_ptrs(%struct.gx_device_memory_s* %41, i8* %add.ptr, i32 %45, i8** %46, i32 %47) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 14
  store i32 %48, i32* %height22, align 4, !tbaa !211
  %50 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 14
  store i32 %50, i32* %height23, align 4, !tbaa !42
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.15
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i8*** %ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gs_device_is_memory(%struct.gx_device_s*) #1

declare i32 @gdev_mem_set_line_ptrs(%struct.gx_device_memory_s*, i8*, i32, i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_get_lines(%struct.gx_device_printer_s* %pdev, i32 %y, i32 %height, i8* %buffer, i32 %bytes_per_line, i8** %actual_buffer, i32* %actual_bytes_per_line, %struct.gx_render_plane_s* %render_plane) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %bytes_per_line.addr = alloca i32, align 4
  %actual_buffer.addr = alloca i8**, align 8
  %actual_bytes_per_line.addr = alloca i32*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %code = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %plane = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %bytes_per_line, i32* %bytes_per_line.addr, align 4, !tbaa !5
  store i8** %actual_buffer, i8*** %actual_buffer.addr, align 8, !tbaa !1
  store i32* %actual_bytes_per_line, i32** %actual_bytes_per_line.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %2) #2
  %3 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 14
  %9 = load i32, i32* %height3, align 4, !tbaa !67
  %cmp4 = icmp sgt i32 %add, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !212
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 1
  store i32 %10, i32* %y6, align 4, !tbaa !213
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4, !tbaa !66
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %12, i32* %x7, align 4, !tbaa !214
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %13, %14
  %q9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q9, i32 0, i32 1
  store i32 %add8, i32* %y10, align 4, !tbaa !215
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 1096810513, i64* %options, align 8, !tbaa !216
  %15 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %15, null
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %options12 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %16 = load i64, i64* %options12, align 8, !tbaa !216
  %or = or i64 %16, 655360
  store i64 %or, i64* %options12, align 8, !tbaa !216
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i32 0
  %17 = bitcast i8** %arraydecay to i8*
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %19 = load i32, i32* %num_components, align 4, !tbaa !218
  %conv = sext i32 %19 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @memset(i8* %17, i32 0, i64 %mul) #7
  %20 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %20, i32 0, i32 2
  %21 = load i32, i32* %index, align 4, !tbaa !171
  store i32 %21, i32* %plane, align 4, !tbaa !5
  %22 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %23 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %data13 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data13, i32 0, i64 %idxprom
  store i8* %22, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %options14 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %24 = load i64, i64* %options14, align 8, !tbaa !216
  %or15 = or i64 %24, 65536
  store i64 %or15, i64* %options14, align 8, !tbaa !216
  %25 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data16, i32 0, i64 0
  store i8* %25, i8** %arrayidx17, align 8, !tbaa !1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.11
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !219
  %26 = load i32, i32* %bytes_per_line.addr, align 4, !tbaa !5
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  store i32 %26, i32* %raster, align 4, !tbaa !220
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %28 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !221
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_printer_s* %29 to %struct.gx_device_s*
  %call19 = call i32 %28(%struct.gx_device_s* %30, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #5
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %31, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.18
  %32 = load i8**, i8*** %actual_buffer.addr, align 8, !tbaa !1
  %tobool22 = icmp ne i8** %32, null
  br i1 %tobool22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %land.lhs.true
  %options24 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %33 = load i64, i64* %options24, align 8, !tbaa !216
  %and = and i64 %33, -1881145345
  store i64 %and, i64* %options24, align 8, !tbaa !216
  %options25 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %34 = load i64, i64* %options25, align 8, !tbaa !216
  %or26 = or i64 %34, 537919488
  store i64 %or26, i64* %options25, align 8, !tbaa !216
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 42
  %get_bits_rectangle28 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs27, i32 0, i32 38
  %36 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle28, align 8, !tbaa !221
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_printer_s* %37 to %struct.gx_device_s*
  %call29 = call i32 %36(%struct.gx_device_s* %38, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.18
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %39, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.30
  %41 = load i8**, i8*** %actual_buffer.addr, align 8, !tbaa !1
  %tobool35 = icmp ne i8** %41, null
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.34
  %42 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom37 = sext i32 %42 to i64
  %data38 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data38, i32 0, i64 %idxprom37
  %43 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %44 = load i8**, i8*** %actual_buffer.addr, align 8, !tbaa !1
  store i8* %43, i8** %44, align 8, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end.34
  %45 = load i32*, i32** %actual_bytes_per_line.addr, align 8, !tbaa !1
  %tobool41 = icmp ne i32* %45, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %raster43 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  %46 = load i32, i32* %raster43, align 4, !tbaa !220
  %47 = load i32*, i32** %actual_bytes_per_line.addr, align 8, !tbaa !1
  store i32 %46, i32* %47, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.33, %if.then
  %49 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %50) #2
  %51 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %51) #2
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %pdev, i32 %y, i8* %str, i8** %actual_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %code = alloca i32, align 4
  %line_size = alloca i32, align 4
  %last_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dest = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %2 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !222
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_device_s* %4, i32 %5, i8* %6, i8** %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_printer_s* %9 to %struct.gx_device_s*
  %call1 = call i32 @gx_device_raster(%struct.gx_device_s* %10, i32 0) #5
  store i32 %call1, i32* %line_size, align 4, !tbaa !5
  %11 = bitcast i32* %last_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !66
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %15 = load i16, i16* %depth, align 2, !tbaa !223
  %conv = zext i16 %15 to i32
  %mul = mul nsw i32 %13, %conv
  %sub = sub nsw i32 0, %mul
  %and = and i32 %sub, 7
  store i32 %and, i32* %last_bits, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %last_bits, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %18, 0
  br i1 %cmp3, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %19 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %cmp6 = icmp ne i8** %20, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %21 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %21, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %23 = load i8*, i8** %str.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %23, %cond.false ]
  store i8* %cond, i8** %dest, align 8, !tbaa !1
  %24 = load i32, i32* %last_bits, align 4, !tbaa !5
  %shl = shl i32 255, %24
  %25 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub8 = sub i32 %25, 1
  %idxprom = zext i32 %sub8 to i64
  %26 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %conv9 = zext i8 %27 to i32
  %and10 = and i32 %conv9, %shl
  %conv11 = trunc i32 %and10 to i8
  store i8 %conv11, i8* %arrayidx, align 1, !tbaa !46
  %28 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %29 = bitcast i32* %last_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %pdev, i32 %y, i8* %str, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %line_size = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %dest = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %5 = load i32, i32* %line_size, align 4, !tbaa !5
  %div = udiv i32 %4, %5
  store i32 %div, i32* %count, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %8, i8** %dest, align 8, !tbaa !1
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 14
  %11 = load i32, i32* %height, align 4, !tbaa !67
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  %cmp = icmp slt i32 %9, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load i32, i32* %count, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height1, align 4, !tbaa !67
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %15, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %sub2, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %count, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %17, %18
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %21, %22
  %23 = load i8*, i8** %dest, align 8, !tbaa !1
  %call4 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %20, i32 %add, i8* %23, i8** null) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %24, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %line_size, align 4, !tbaa !5
  %29 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %for.end, %cleanup
  %31 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s*, i8**, i8*, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_gdev_prn_space_params(%struct.gdev_space_params_s* byval align 8 %sp1, %struct.gdev_space_params_s* byval align 8 %sp2) #0 {
entry:
  %retval = alloca i32, align 4
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 0
  %0 = load i64, i64* %MaxBitmap, align 8, !tbaa !78
  %MaxBitmap1 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 0
  %1 = load i64, i64* %MaxBitmap1, align 8, !tbaa !78
  %cmp = icmp ne i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %BufferSpace = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 1
  %2 = load i64, i64* %BufferSpace, align 8, !tbaa !72
  %BufferSpace2 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 1
  %3 = load i64, i64* %BufferSpace2, align 8, !tbaa !72
  %cmp3 = icmp ne i64 %2, %3
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %band = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 2
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band, i32 0, i32 0
  %4 = load i32, i32* %BandWidth, align 4, !tbaa !224
  %band6 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 2
  %BandWidth7 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band6, i32 0, i32 0
  %5 = load i32, i32* %BandWidth7, align 4, !tbaa !224
  %cmp8 = icmp ne i32 %4, %5
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %band11 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 2
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band11, i32 0, i32 1
  %6 = load i32, i32* %BandHeight, align 4, !tbaa !225
  %band12 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 2
  %BandHeight13 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band12, i32 0, i32 1
  %7 = load i32, i32* %BandHeight13, align 4, !tbaa !225
  %cmp14 = icmp ne i32 %6, %7
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  %band17 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 2
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band17, i32 0, i32 2
  %8 = load i64, i64* %BandBufferSpace, align 8, !tbaa !75
  %band18 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 2
  %BandBufferSpace19 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band18, i32 0, i32 2
  %9 = load i64, i64* %BandBufferSpace19, align 8, !tbaa !75
  %cmp20 = icmp ne i64 %8, %9
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.16
  %params_are_read_only = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 3
  %10 = load i32, i32* %params_are_read_only, align 4, !tbaa !226
  %params_are_read_only23 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 3
  %11 = load i32, i32* %params_are_read_only23, align 4, !tbaa !226
  %cmp24 = icmp ne i32 %10, %11
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %banding_type = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp1, i32 0, i32 4
  %12 = load i32, i32* %banding_type, align 4, !tbaa !77
  %banding_type27 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp2, i32 0, i32 4
  %13 = load i32, i32* %banding_type27, align 4, !tbaa !77
  %cmp28 = icmp ne i32 %12, %13
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.25, %if.then.21, %if.then.15, %if.then.9, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gp_semaphore_wait(%union.gp_semaphore*) #1

declare void @teardown_device_and_mem_for_thread(%struct.gx_device_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gdev_prn_setup_as_command_list(%struct.gx_device_s* %pdev, %struct.gs_memory_s* %buffer_memory, i8** %the_memory, %struct.gdev_space_params_s* %space_params, i32 %bufferSpace_is_exact) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer_memory.addr = alloca %struct.gs_memory_s*, align 8
  %the_memory.addr = alloca i8**, align 8
  %space_params.addr = alloca %struct.gdev_space_params_s*, align 8
  %bufferSpace_is_exact.addr = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %space = alloca i32, align 4
  %code = alloca i32, align 4
  %pclist_dev = alloca %union.gx_device_clist_s*, align 8
  %pcldev = alloca %struct.gx_device_clist_common_s*, align 8
  %reallocate = alloca i32, align 4
  %base = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %buffer_memory, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  store i8** %the_memory, i8*** %the_memory.addr, align 8, !tbaa !1
  store %struct.gdev_space_params_s* %space_params, %struct.gdev_space_params_s** %space_params.addr, align 8, !tbaa !1
  store i32 %bufferSpace_is_exact, i32* %bufferSpace_is_exact.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %union.gx_device_clist_s** %pclist_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %7, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_clist_common_s** %pcldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %9 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %common, %struct.gx_device_clist_common_s** %pcldev, align 8, !tbaa !1
  %10 = bitcast i32* %reallocate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %cmp = icmp ne i8* %12, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %reallocate, align 4, !tbaa !5
  %13 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %space_params.addr, align 8, !tbaa !1
  %BufferSpace = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %14, i32 0, i32 1
  %15 = load i64, i64* %BufferSpace, align 8, !tbaa !72
  %conv1 = trunc i64 %15 to i32
  store i32 %conv1, i32* %space, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %entry
  %16 = load i32, i32* %reallocate, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 1
  %18 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !79
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %20 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %20, align 8, !tbaa !1
  %22 = load i32, i32* %space, align 4, !tbaa !5
  %call = call i8* %18(%struct.gs_memory_s* %19, i8* %21, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %26 = load i32, i32* %space, align 4, !tbaa !5
  %call3 = call i8* %24(%struct.gs_memory_s* %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call3, %cond.false ]
  store i8* %cond, i8** %base, align 8, !tbaa !1
  %27 = load i8*, i8** %base, align 8, !tbaa !1
  %cmp4 = icmp ne i8* %27, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %for.end

if.end:                                           ; preds = %cond.end
  %28 = load i32, i32* %bufferSpace_is_exact.addr, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %28, 0
  br i1 %tobool6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load i32, i32* %space, align 4, !tbaa !5
  %shr = lshr i32 %29, 1
  store i32 %shr, i32* %space, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %shr, 10000
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end.10:                                        ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %if.then
  %30 = load i8*, i8** %base, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %30, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.end
  %31 = load i8*, i8** %base, align 8, !tbaa !1
  %32 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* %31, i8** %32, align 8, !tbaa !1
  br label %open_c

open_c:                                           ; preds = %if.then.68, %if.end.14
  %33 = load i8*, i8** %base, align 8, !tbaa !1
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 54
  store i8* %33, i8** %buf, align 8, !tbaa !130
  %35 = load i32, i32* %space, align 4, !tbaa !5
  %conv15 = zext i32 %35 to i64
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 53
  store i64 %conv15, i64* %buffer_space, align 8, !tbaa !7
  %37 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common16 = bitcast %union.gx_device_clist_s* %37 to %struct.gx_device_clist_common_s*
  %is_printer = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common16, i32 0, i32 50
  store i32 1, i32* %is_printer, align 4, !tbaa !227
  %38 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %BLS_force_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 46
  %40 = load i32, i32* %BLS_force_memory, align 4, !tbaa !31
  call void @clist_init_io_procs(%union.gx_device_clist_s* %38, i32 %40) #5
  br label %do.body

do.body:                                          ; preds = %open_c
  %41 = load i8*, i8** %base, align 8, !tbaa !1
  %42 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common17 = bitcast %union.gx_device_clist_s* %42 to %struct.gx_device_clist_common_s*
  %data = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common17, i32 0, i32 46
  store i8* %41, i8** %data, align 8, !tbaa !228
  %43 = load i32, i32* %space, align 4, !tbaa !5
  %44 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common18 = bitcast %union.gx_device_clist_s* %44 to %struct.gx_device_clist_common_s*
  %data_size = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common18, i32 0, i32 47
  store i32 %43, i32* %data_size, align 4, !tbaa !229
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common19 = bitcast %union.gx_device_clist_s* %46 to %struct.gx_device_clist_common_s*
  %target = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common19, i32 0, i32 43
  store %struct.gx_device_s* %45, %struct.gx_device_s** %target, align 8, !tbaa !230
  %47 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common20 = bitcast %union.gx_device_clist_s* %47 to %struct.gx_device_clist_common_s*
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common20, i32 0, i32 44
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 44
  %buf_procs21 = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 2
  %49 = bitcast %struct.gx_device_buf_procs_s* %buf_procs to i8*
  %50 = bitcast %struct.gx_device_buf_procs_s* %buf_procs21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false), !tbaa.struct !231
  %51 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common22 = bitcast %union.gx_device_clist_s* %51 to %struct.gx_device_clist_common_s*
  %band_params = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common22, i32 0, i32 48
  %52 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %space_params.addr, align 8, !tbaa !1
  %band = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %52, i32 0, i32 2
  %53 = bitcast %struct.gx_band_params_s* %band_params to i8*
  %54 = bitcast %struct.gx_band_params_s* %band to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !232
  %55 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common23 = bitcast %union.gx_device_clist_s* %55 to %struct.gx_device_clist_common_s*
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common23, i32 0, i32 49
  store i32 0, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !166
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 56
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !233
  %cmp24 = icmp eq %struct.gs_memory_s* %57, null
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %do.body
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 3
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !60
  br label %cond.end.29

cond.false.27:                                    ; preds = %do.body
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %bandlist_memory28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 56
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory28, align 8, !tbaa !233
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi %struct.gs_memory_s* [ %60, %cond.true.26 ], [ %62, %cond.false.27 ]
  %63 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %common31 = bitcast %union.gx_device_clist_s* %63 to %struct.gx_device_clist_common_s*
  %bandlist_memory32 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common31, i32 0, i32 45
  store %struct.gs_memory_s* %cond30, %struct.gs_memory_s** %bandlist_memory32, align 8, !tbaa !234
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %free_up_bandlist_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 57
  %65 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory, align 8, !tbaa !235
  %66 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %66 to %struct.gx_device_clist_writer_s*
  %free_up_bandlist_memory33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 98
  store i32 (%struct.gx_device_s*, i32)* %65, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory33, align 8, !tbaa !236
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %clist_disable_mask = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 61
  %68 = load i32, i32* %clist_disable_mask, align 4, !tbaa !253
  %69 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %writer34 = bitcast %union.gx_device_clist_s* %69 to %struct.gx_device_clist_writer_s*
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer34, i32 0, i32 99
  store i32 %68, i32* %disable_mask, align 4, !tbaa !254
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 37
  %71 = load i32, i32* %page_uses_transparency, align 4, !tbaa !39
  %72 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %writer35 = bitcast %union.gx_device_clist_s* %72 to %struct.gx_device_clist_writer_s*
  %page_uses_transparency36 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer35, i32 0, i32 37
  store i32 %71, i32* %page_uses_transparency36, align 4, !tbaa !255
  %73 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev, align 8, !tbaa !1
  %writer37 = bitcast %union.gx_device_clist_s* %73 to %struct.gx_device_clist_writer_s*
  %pinst = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer37, i32 0, i32 100
  store %struct.gs_pattern1_instance_s* null, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !256
  br label %do.cond

do.cond:                                          ; preds = %cond.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  %74 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** bitcast (%struct.gx_device_procs_s* @gs_clist_device_procs to i32 (%struct.gx_device_s*)**), align 8, !tbaa !257
  %75 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %pcldev, align 8, !tbaa !1
  %76 = bitcast %struct.gx_device_clist_common_s* %75 to %struct.gx_device_s*
  %call38 = call i32 %74(%struct.gx_device_s* %76) #5
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %77, 0
  br i1 %cmp39, label %if.then.41, label %if.end.77

if.then.41:                                       ; preds = %do.end
  %78 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %78, -15
  br i1 %cmp42, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.then.41
  %79 = load i32, i32* %space, align 4, !tbaa !5
  %conv44 = zext i32 %79 to i64
  %80 = load %struct.gdev_space_params_s*, %struct.gdev_space_params_s** %space_params.addr, align 8, !tbaa !1
  %BufferSpace45 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %80, i32 0, i32 1
  %81 = load i64, i64* %BufferSpace45, align 8, !tbaa !72
  %cmp46 = icmp sge i64 %conv44, %81
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.70

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %82 = load i32, i32* %bufferSpace_is_exact.addr, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %82, 0
  br i1 %tobool49, label %if.end.70, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %83 = load i32, i32* %space, align 4, !tbaa !5
  %shl = shl i32 %83, 1
  store i32 %shl, i32* %space, align 4, !tbaa !5
  %84 = load i32, i32* %reallocate, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %84, 0
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.50
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 1
  %resize_object54 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 1
  %86 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object54, align 8, !tbaa !79
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %88 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  %89 = load i8*, i8** %88, align 8, !tbaa !1
  %90 = load i32, i32* %space, align 4, !tbaa !5
  %call55 = call i8* %86(%struct.gs_memory_s* %87, i8* %89, i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %call55, i8** %base, align 8, !tbaa !1
  %91 = load i8*, i8** %base, align 8, !tbaa !1
  %cmp56 = icmp ne i8* %91, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.52
  %92 = load i8*, i8** %base, align 8, !tbaa !1
  %93 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* %92, i8** %93, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.52
  br label %if.end.64

if.else:                                          ; preds = %if.then.50
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 2
  %95 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %97 = load i8*, i8** %base, align 8, !tbaa !1
  call void %95(%struct.gs_memory_s* %96, i8* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)) #5
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %alloc_bytes62 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs61, i32 0, i32 7
  %99 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes62, align 8, !tbaa !80
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %101 = load i32, i32* %space, align 4, !tbaa !5
  %call63 = call i8* %99(%struct.gs_memory_s* %100, i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %call63, i8** %base, align 8, !tbaa !1
  %102 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* %call63, i8** %102, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.end.59
  %103 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  %104 = load i8*, i8** %103, align 8, !tbaa !1
  %105 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buf65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %105, i32 0, i32 54
  store i8* %104, i8** %buf65, align 8, !tbaa !130
  %106 = load i8*, i8** %base, align 8, !tbaa !1
  %cmp66 = icmp ne i8* %106, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  br label %open_c

if.end.69:                                        ; preds = %if.end.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.48, %land.lhs.true, %if.then.41
  %107 = load i32, i32* %reallocate, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %107, 0
  br i1 %tobool71, label %if.end.76, label %if.then.72

if.then.72:                                       ; preds = %if.end.70
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %procs73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 1
  %free_object74 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs73, i32 0, i32 2
  %109 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object74, align 8, !tbaa !63
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %buffer_memory.addr, align 8, !tbaa !1
  %111 = load i8*, i8** %base, align 8, !tbaa !1
  call void %109(%struct.gs_memory_s* %110, i8* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)) #5
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %buffer_space75 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %112, i32 0, i32 53
  store i64 0, i64* %buffer_space75, align 8, !tbaa !7
  %113 = load i8**, i8*** %the_memory.addr, align 8, !tbaa !1
  store i8* null, i8** %113, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %if.end.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.end
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.13
  %115 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast i32* %reallocate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast %struct.gx_device_clist_common_s** %pcldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast %union.gx_device_clist_s** %pclist_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i32 @clist_enable_multi_thread_render(%struct.gx_device_s*) #1

declare void @clist_init_io_procs(%union.gx_device_clist_s*, i32) #1

declare i32 @gx_saved_pages_list_add(%struct.gx_device_printer_s*) #1

declare i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s*) #1

declare %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s*) #1

declare %struct.gx_device_s* @setup_device_and_mem_for_thread(%struct.gs_memory_s*, %struct.gx_device_s*, i32, %struct.gsicc_link_cache_s**) #1

declare i32 @gp_thread_start(void (i8*)*, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @prn_print_page_in_background(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %bg_print = alloca %struct.bg_print_s*, align 8
  %code = alloca i32, align 4
  %errcode = alloca i32, align 4
  %num_copies = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.bg_print_s** %bg_print to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.bg_print_s*
  store %struct.bg_print_s* %2, %struct.bg_print_s** %bg_print, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %errcode, align 4, !tbaa !5
  %5 = bitcast i32* %num_copies to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.bg_print_s*, %struct.bg_print_s** %bg_print, align 8, !tbaa !1
  %num_copies1 = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %6, i32 0, i32 3
  %7 = load i32, i32* %num_copies1, align 4, !tbaa !258
  store i32 %7, i32* %num_copies, align 4, !tbaa !5
  %8 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.bg_print_s*, %struct.bg_print_s** %bg_print, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %9, i32 0, i32 1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !259
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %11, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 44
  %print_page_copies = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 1
  %13 = load i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)** %print_page_copies, align 8, !tbaa !161
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !26
  %17 = load i32, i32* %num_copies, align 4, !tbaa !5
  %call = call i32 %13(%struct.gx_device_printer_s* %14, %struct._IO_FILE* %16, i32 %17) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 52
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file2, align 8, !tbaa !26
  %call3 = call i32 @fflush(%struct._IO_FILE* %19) #5
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 52
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8, !tbaa !26
  %call5 = call i32 @ferror(%struct._IO_FILE* %21) #7
  %tobool = icmp ne i32 %call5, 0
  %cond = select i1 %tobool, i32 -12, i32 0
  store i32 %cond, i32* %errcode, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %23 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load i32, i32* %errcode, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  %25 = load %struct.bg_print_s*, %struct.bg_print_s** %bg_print, align 8, !tbaa !1
  %return_code = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %25, i32 0, i32 4
  store i32 %cond6, i32* %return_code, align 4, !tbaa !260
  %26 = load %struct.bg_print_s*, %struct.bg_print_s** %bg_print, align 8, !tbaa !1
  %sema = getelementptr inbounds %struct.bg_print_s, %struct.bg_print_s* %26, i32 0, i32 0
  %27 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !261
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %27, i32 0, i32 1
  %call7 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native) #5
  %28 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %num_copies to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %errcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.bg_print_s** %bg_print to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret void
}

declare i32 @clist_open(%struct.gx_device_s*) #1

declare void @free_separation_names(%struct.gs_memory_s*, %struct.gs_separations_s*) #1

declare i32 @clist_finish_page(%struct.gx_device_s*, i32) #1

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #1

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #1

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
!7 = !{!8, !10, i64 17184}
!8 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
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
!20 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !21, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!21 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!23 = !{!24, !2, i64 32}
!24 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!25 = !{!24, !2, i64 40}
!26 = !{!8, !2, i64 17176}
!27 = !{!8, !6, i64 17156}
!28 = !{!8, !2, i64 17256}
!29 = !{!8, !2, i64 17296}
!30 = !{!8, !6, i64 17168}
!31 = !{!8, !6, i64 17152}
!32 = !{!33, !2, i64 0}
!33 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!33, !6, i64 8}
!35 = !{!33, !6, i64 12}
!36 = !{!37, !6, i64 84}
!37 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!38 = !{!8, !6, i64 17160}
!39 = !{!8, !6, i64 1056}
!40 = !{!8, !6, i64 17252}
!41 = !{!37, !6, i64 832}
!42 = !{!37, !6, i64 836}
!43 = !{!8, !6, i64 17288}
!44 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 8, !45, i64 32, i64 4, !5, i64 36, i64 4, !46}
!45 = !{!10, !10, i64 0}
!46 = !{!3, !3, i64 0}
!47 = !{!48, !2, i64 0}
!48 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!49 = !{!50, !2, i64 56}
!50 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!51 = !{!37, !6, i64 960}
!52 = !{!37, !2, i64 24}
!53 = !{!50, !2, i64 8}
!54 = !{!50, !2, i64 16}
!55 = !{!8, !6, i64 17164}
!56 = !{!8, !2, i64 17264}
!57 = !{!8, !6, i64 17284}
!58 = !{!8, !2, i64 17272}
!59 = !{!8, !2, i64 17200}
!60 = !{!61, !2, i64 200}
!61 = !{!"gs_memory_s", !2, i64 0, !62, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!62 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!63 = !{!61, !2, i64 24}
!64 = !{!8, !2, i64 18408}
!65 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 8, !1, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !1, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 8, !1, i64 552, i64 8, !1, i64 560, i64 8, !1, i64 568, i64 8, !1, i64 576, i64 8, !1}
!66 = !{!8, !6, i64 832}
!67 = !{!8, !6, i64 836}
!68 = !{!8, !2, i64 12992}
!69 = !{!70, !10, i64 0}
!70 = !{!"gx_device_buf_space_s", !10, i64 0, !10, i64 8, !6, i64 16}
!71 = !{!70, !10, i64 8}
!72 = !{!16, !10, i64 8}
!73 = !{!8, !2, i64 13016}
!74 = !{!8, !6, i64 17232}
!75 = !{!16, !10, i64 24}
!76 = !{!8, !10, i64 1072}
!77 = !{!16, !3, i64 36}
!78 = !{!16, !10, i64 0}
!79 = !{!61, !2, i64 16}
!80 = !{!61, !2, i64 64}
!81 = !{!8, !2, i64 12984}
!82 = !{!8, !2, i64 13000}
!83 = !{!70, !6, i64 16}
!84 = !{!8, !2, i64 17888}
!85 = !{!8, !2, i64 17896}
!86 = !{!8, !2, i64 1152}
!87 = !{!8, !2, i64 17912}
!88 = !{!8, !2, i64 1168}
!89 = !{!8, !2, i64 17920}
!90 = !{!8, !2, i64 1176}
!91 = !{!8, !2, i64 17928}
!92 = !{!8, !2, i64 1184}
!93 = !{!8, !2, i64 17936}
!94 = !{!8, !2, i64 1192}
!95 = !{!8, !2, i64 17992}
!96 = !{!8, !2, i64 1248}
!97 = !{!8, !2, i64 18000}
!98 = !{!8, !2, i64 1256}
!99 = !{!8, !2, i64 18008}
!100 = !{!8, !2, i64 1264}
!101 = !{!8, !2, i64 18016}
!102 = !{!8, !2, i64 1272}
!103 = !{!8, !2, i64 18024}
!104 = !{!8, !2, i64 1280}
!105 = !{!8, !2, i64 18032}
!106 = !{!8, !2, i64 1288}
!107 = !{!8, !2, i64 1296}
!108 = !{!8, !2, i64 18176}
!109 = !{!8, !2, i64 1432}
!110 = !{!8, !2, i64 18200}
!111 = !{!8, !2, i64 1456}
!112 = !{!8, !2, i64 18216}
!113 = !{!8, !2, i64 1472}
!114 = !{!8, !2, i64 18280}
!115 = !{!8, !2, i64 1536}
!116 = !{!8, !2, i64 18288}
!117 = !{!8, !2, i64 1544}
!118 = !{!8, !2, i64 18296}
!119 = !{!8, !2, i64 1552}
!120 = !{!8, !2, i64 18304}
!121 = !{!8, !2, i64 1560}
!122 = !{!8, !2, i64 18360}
!123 = !{!8, !2, i64 1616}
!124 = !{!8, !2, i64 18368}
!125 = !{!8, !2, i64 1624}
!126 = !{!8, !2, i64 1656}
!127 = !{!8, !2, i64 18400}
!128 = !{!37, !2, i64 1144}
!129 = !{!19, !2, i64 32}
!130 = !{!8, !2, i64 17192}
!131 = !{!132, !6, i64 1880}
!132 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !21, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !133, i64 1816, !134, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !135, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!133 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!134 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!135 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !10, i64 8224, !10, i64 8232, !17, i64 8240}
!136 = !{!137, !2, i64 24}
!137 = !{!"gx_device_clist_reader_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !21, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !133, i64 1816, !134, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !135, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !138, i64 10192, !2, i64 10208, !2, i64 10216, !6, i64 10224, !2, i64 10232, !6, i64 10240, !2, i64 10248, !2, i64 10256, !6, i64 10264, !6, i64 10268, !6, i64 10272}
!138 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!139 = !{!137, !2, i64 10216}
!140 = !{!141, !2, i64 1744}
!141 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !142, i64 2548, !2, i64 2576, !144, i64 2584, !145, i64 2600, !146, i64 2624, !147, i64 2656, !148, i64 2680, !149, i64 2720, !150, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!142 = !{!"gs_matrix_s", !143, i64 0, !143, i64 4, !143, i64 8, !143, i64 12, !143, i64 16, !143, i64 20}
!143 = !{!"float", !3, i64 0}
!144 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!145 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!146 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!147 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!148 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!149 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!150 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!151 = !{!8, !6, i64 84}
!152 = !{!8, !2, i64 13048}
!153 = !{!8, !2, i64 24}
!154 = !{!61, !2, i64 208}
!155 = !{!8, !6, i64 17280}
!156 = !{!137, !2, i64 10096}
!157 = !{!158, !2, i64 8}
!158 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!159 = !{!137, !2, i64 5984}
!160 = !{!137, !2, i64 10088}
!161 = !{!8, !2, i64 12976}
!162 = !{!37, !2, i64 1624}
!163 = !{!164, !6, i64 1064}
!164 = !{!"gs_devn_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !165, i64 32, !6, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !165, i64 1368}
!165 = !{!"gs_separations_s", !6, i64 0, !3, i64 8}
!166 = !{!132, !6, i64 1808}
!167 = !{!8, !2, i64 12968}
!168 = !{!8, !10, i64 928}
!169 = !{!37, !6, i64 100}
!170 = !{!37, !12, i64 108}
!171 = !{!138, !6, i64 8}
!172 = !{!138, !6, i64 0}
!173 = !{!138, !6, i64 4}
!174 = !{!37, !2, i64 1152}
!175 = !{!142, !143, i64 12}
!176 = !{!143, !143, i64 0}
!177 = !{!8, !6, i64 17172}
!178 = !{!61, !2, i64 192}
!179 = !{!180, !2, i64 16}
!180 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !10, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!181 = !{!180, !2, i64 24}
!182 = !{!135, !6, i64 8244}
!183 = !{!184, !10, i64 0}
!184 = !{!"gx_colors_usage_s", !10, i64 0, !6, i64 8, !185, i64 12}
!185 = !{!"gs_int_rect_s", !186, i64 0, !186, i64 8}
!186 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!187 = !{!184, !6, i64 8}
!188 = !{!37, !6, i64 848}
!189 = !{!61, !2, i64 72}
!190 = !{!141, !2, i64 1664}
!191 = !{!141, !6, i64 832}
!192 = !{!141, !6, i64 2788}
!193 = !{!37, !6, i64 844}
!194 = !{!141, !6, i64 844}
!195 = !{!37, !6, i64 840}
!196 = !{!141, !6, i64 840}
!197 = !{!141, !6, i64 848}
!198 = !{!199, !2, i64 24}
!199 = !{!"gx_device_plane_extract_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !2, i64 1736, !138, i64 1744, !10, i64 1760, !6, i64 1768, !6, i64 1772, !6, i64 1776}
!200 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !46, i64 12, i64 2, !201, i64 14, i64 1, !46, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !46, i64 44, i64 64, !46, i64 108, i64 64, !46, i64 176, i64 512, !46, i64 688, i64 8, !1, i64 696, i64 4, !46, i64 704, i64 8, !45, i64 712, i64 4, !5}
!201 = !{!12, !12, i64 0}
!202 = !{!199, !2, i64 1736}
!203 = !{!37, !2, i64 1176}
!204 = !{!141, !12, i64 108}
!205 = !{!141, !2, i64 2576}
!206 = !{!141, !2, i64 1768}
!207 = !{!141, !2, i64 24}
!208 = !{!61, !2, i64 88}
!209 = !{!141, !6, i64 100}
!210 = !{!141, !6, i64 1776}
!211 = !{!141, !6, i64 836}
!212 = !{!185, !6, i64 0}
!213 = !{!185, !6, i64 4}
!214 = !{!185, !6, i64 8}
!215 = !{!185, !6, i64 12}
!216 = !{!217, !10, i64 0}
!217 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!218 = !{!8, !6, i64 100}
!219 = !{!217, !6, i64 520}
!220 = !{!217, !6, i64 528}
!221 = !{!8, !2, i64 1448}
!222 = !{!8, !2, i64 1240}
!223 = !{!8, !12, i64 108}
!224 = !{!16, !6, i64 16}
!225 = !{!16, !6, i64 20}
!226 = !{!16, !6, i64 32}
!227 = !{!132, !6, i64 1812}
!228 = !{!132, !2, i64 1776}
!229 = !{!132, !6, i64 1784}
!230 = !{!132, !2, i64 1728}
!231 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!232 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !45}
!233 = !{!8, !2, i64 17208}
!234 = !{!132, !2, i64 1768}
!235 = !{!8, !2, i64 17216}
!236 = !{!237, !2, i64 12160}
!237 = !{!"gx_device_clist_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !21, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !133, i64 1816, !134, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !135, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !6, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !238, i64 10240, !6, i64 10256, !6, i64 10260, !6, i64 10264, !6, i64 10268, !239, i64 10272, !6, i64 10320, !6, i64 10324, !6, i64 10328, !240, i64 10336, !6, i64 11952, !6, i64 11956, !6, i64 11960, !6, i64 11964, !3, i64 11968, !2, i64 12016, !10, i64 12024, !251, i64 12032, !3, i64 12080, !10, i64 12112, !10, i64 12120, !10, i64 12128, !10, i64 12136, !6, i64 12144, !6, i64 12148, !6, i64 12152, !6, i64 12156, !2, i64 12160, !6, i64 12168, !2, i64 12176, !6, i64 12184, !6, i64 12188, !6, i64 12192, !6, i64 12196, !6, i64 12200, !6, i64 12204, !2, i64 12208, !10, i64 12216, !6, i64 12224, !6, i64 12228, !6, i64 12232, !6, i64 12236, !11, i64 12240}
!238 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!239 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !186, i64 12, !10, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !6, i64 40}
!240 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !241, i64 24, !6, i64 128, !243, i64 132, !6, i64 168, !244, i64 176, !244, i64 192, !6, i64 208, !6, i64 212, !12, i64 216, !3, i64 220, !246, i64 224, !246, i64 228, !247, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !143, i64 296, !248, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !143, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !249, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !250, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !250, i64 1336}
!241 = !{!"gx_line_params_s", !143, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !143, i64 24, !143, i64 28, !143, i64 32, !6, i64 36, !142, i64 40, !242, i64 64}
!242 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !143, i64 12, !6, i64 16, !143, i64 20, !6, i64 24, !6, i64 28, !143, i64 32}
!243 = !{!"gs_matrix_fixed_s", !143, i64 0, !143, i64 4, !143, i64 8, !143, i64 12, !143, i64 16, !143, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!244 = !{!"gs_point_s", !245, i64 0, !245, i64 8}
!245 = !{!"double", !3, i64 0}
!246 = !{!"gs_transparency_source_s", !143, i64 0}
!247 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!248 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!249 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!250 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!251 = !{!"clist_color_space_s", !3, i64 0, !10, i64 8, !252, i64 16, !2, i64 40}
!252 = !{!"clist_icc_color_s", !10, i64 0, !3, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!253 = !{!8, !6, i64 17248}
!254 = !{!237, !6, i64 12168}
!255 = !{!237, !6, i64 1056}
!256 = !{!237, !2, i64 12176}
!257 = !{!19, !2, i64 0}
!258 = !{!22, !6, i64 24}
!259 = !{!22, !2, i64 8}
!260 = !{!22, !6, i64 28}
!261 = !{!22, !2, i64 0}
