; ModuleID = './gdevtxtw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_txtwrite_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.page_text_s, [4096 x i8], %struct._IO_FILE*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.page_text_s = type { i32, %struct.page_text_list_s*, %struct.text_list_entry_s* }
%struct.page_text_list_s = type { %struct.page_text_list_s*, %struct.page_text_list_s*, %struct.gs_point_s, float, float, %struct.text_list_entry_s* }
%struct.text_list_entry_s = type { %struct.text_list_entry_s*, %struct.text_list_entry_s*, %struct.gs_point_s, %struct.gs_point_s, %struct.gs_point_s, %struct.gs_point_s, float*, i16*, i32, i32, %struct.gs_matrix_s, %struct.gs_font_s*, i8*, i32, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.single_glyph_list_s = type { i8*, i16 }
%struct.double_glyph_list_s = type { i8*, [2 x i16] }
%struct.treble_glyph_list_s = type { i8*, [3 x i16] }
%struct.quad_glyph_list_s = type { i8*, [4 x i16] }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.textw_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, %struct.gs_fixed_point_s, i32, i32, [10 x double], float*, i16*, i32, %struct.text_list_entry_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.txt_glyph_widths_s = type { %struct.txt_glyph_width_s, %struct.txt_glyph_width_s, i32 }
%struct.txt_glyph_width_s = type { double, %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }

@.str = private unnamed_addr constant [9 x i8] c"txtwrite\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_txtwrite_device = constant %struct.gx_device_txtwrite_s { i32 5864, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @txtwrite_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @txtwrite_output_page, i32 (%struct.gx_device_s*)* @txtwrite_close_device, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @txtwrite_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @txtwrite_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @txtwrite_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @txtwrite_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @txtwrite_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @txtwrite_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_null_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @txtwrite_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.page_text_s zeroinitializer, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, i32 3 }, align 8
@txtwrite_output_page.BOM = internal constant [2 x i8] c"\FE\FF", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"txtwrite free text fragment text buffer\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"txtwrite free widths array\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"txtwrite free Font Name\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"txtwrite free text fragment\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"txtwrite free text list\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"txtwrite free unsorted text fragment text buffer\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"txtwrite free unsorted text fragment\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"<page>\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"<span bbox=\22%0.0f %0.0f %0.0f %0.0f\22 font=\22%s\22 size=\22%0.4f\22>\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"<char bbox=\22%0.0f %0.0f %0.0f %0.0f\22 c=\22%s\22>\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"</span>\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"</page>\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"txtwrite alloc Y-list\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"<block>\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"<line>\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"</line>\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"</block>\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"&#x%x;\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"txtwrite alloc working text buffer\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"txtwrite alloc Widths array\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"free working text fragment\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"free consolidated text fragment\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"free consolidated Widths array\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"free FontName\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"free consolidated fragment\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"txtwrite alloc text state\00", align 1
@simple_text_output.UnicodeEOL = private unnamed_addr constant [2 x i16] [i16 13, i16 10], align 2
@.str.34 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"WantsToUnicode\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"PreserveTrMode\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"HighLevelDevice\00", align 1
@txt_param_items = internal constant [2 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8 2, i16 5856 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [11 x i8] c"TextFormat\00", align 1
@st_textw_text_enum = internal constant %struct.gs_memory_struct_type_s { i32 576, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @textw_text_enum_reloc_ptrs to i8*) }, align 8
@.str.39 = private unnamed_addr constant [22 x i8] c"gdev_textw_text_begin\00", align 1
@textw_text_procs = internal constant %struct.gs_text_enum_procs_s { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)* @textw_text_resync, i32 (%struct.gs_text_enum_s*)* @textw_text_process, i32 (%struct.gs_text_enum_s*)* @textw_text_is_width_only, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)* @textw_text_current_width, i32 (%struct.gs_text_enum_s*, double*, i32)* @textw_text_set_cache, i32 (%struct.gs_text_enum_s*)* @textw_text_retry, void (%struct.gs_text_enum_s*, i8*)* @textw_text_release }, align 8
@.str.40 = private unnamed_addr constant [25 x i8] c"txtwrite free text state\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"textwrite_text_begin\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"textw_text_enum_t\00", align 1
@textw_text_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_gs_text_enum, %struct.gc_ptr_element_s* null }, align 8
@st_gs_text_enum = external constant %struct.gs_memory_struct_type_s, align 8
@.str.43 = private unnamed_addr constant [31 x i8] c"txtwrite temporary text buffer\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"txtwrite temporary widths array\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"txtwrite alloc font name\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"uni\00", align 1
@get_unicode.hexdigits = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@SingleGlyphList = external global %struct.single_glyph_list_s*, align 8
@DoubleGlyphList = external global %struct.double_glyph_list_s*, align 8
@TrebleGlyphList = external global %struct.treble_glyph_list_s*, align 8
@QuadGlyphList = external global %struct.quad_glyph_list_s*, align 8
@st_gs_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.48 = private unnamed_addr constant [33 x i8] c"txtwrite alloc sorted text state\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"txtwrite alloc text buffer\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"txtwrite alloc widths array\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"txtwrite alloc sorted text buffer\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"txtwrite alloc Y list entry\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"txtwrite free temporary text buffer\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"txtwrite free temporary widths array\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_open_device(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %2, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %3) #6
  %4 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %4, i32 0, i32 44
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %6, i32 0, i32 43
  %PageNum = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 0
  store i32 0, i32* %PageNum, align 4, !tbaa !6
  %7 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData2 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %7, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData2, i32 0, i32 1
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  %8 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %8, i32 0, i32 45
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %x_entry = alloca %struct.text_list_entry_s*, align 8
  %next_x = alloca %struct.text_list_entry_s*, align 8
  %y_list = alloca %struct.page_text_list_s*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !23
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %3, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %4 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.text_list_entry_s** %next_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %9, i32 0, i32 45
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %tobool = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %12, i32 0, i32 44
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %13 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %13, i32 0, i32 45
  %call = call i32 @gx_device_open_output_file(%struct.gx_device_s* %11, i8* %arraydecay, i32 1, i32 0, %struct._IO_FILE** %file1) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %14 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %16 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %TextFormat = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %16, i32 0, i32 46
  %17 = load i32, i32* %TextFormat, align 4, !tbaa !24
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.3, %if.end.3
  %18 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %call4 = call i32 @decorated_text_output(%struct.gx_device_txtwrite_s* %18) #6
  store i32 %call4, i32* %code, align 4, !tbaa !23
  %19 = load i32, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %19, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  %20 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.3
  %21 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file9 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %21, i32 0, i32 45
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file9, align 8, !tbaa !22
  %call10 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @txtwrite_output_page.BOM, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %22) #6
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end.3, %sw.bb.8
  %23 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %call12 = call i32 @simple_text_output(%struct.gx_device_txtwrite_s* %23) #6
  store i32 %call12, i32* %code, align 4, !tbaa !23
  %24 = load i32, i32* %code, align 4, !tbaa !23
  %cmp13 = icmp slt i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.11
  %25 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %sw.bb.11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.15, %if.end.7
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %num_copies.addr, align 4, !tbaa !23
  %28 = load i32, i32* %flush.addr, align 4, !tbaa !23
  %call16 = call i32 @gx_default_output_page(%struct.gx_device_s* %26, i32 %27, i32 %28) #6
  store i32 %call16, i32* %code, align 4, !tbaa !23
  %29 = load i32, i32* %code, align 4, !tbaa !23
  %cmp17 = icmp slt i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  %30 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %sw.epilog
  %31 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %31, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 1
  %32 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  store %struct.page_text_list_s* %32, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.72, %if.end.19
  %33 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool20 = icmp ne %struct.page_text_list_s* %33, null
  br i1 %tobool20, label %while.body, label %while.end.73

while.body:                                       ; preds = %while.cond
  %34 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %34, i32 0, i32 5
  %35 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  store %struct.text_list_entry_s* %35, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.53, %while.body
  %36 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool22 = icmp ne %struct.text_list_entry_s* %36, null
  br i1 %tobool22, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.21
  %37 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %41 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !30
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !31
  %44 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %44, i32 0, i32 7
  %45 = load i16*, i16** %Unicode_Text, align 8, !tbaa !35
  %46 = bitcast i16* %45 to i8*
  call void %40(%struct.gs_memory_s* %43, i8* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #6
  %47 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !30
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !31
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object29, align 8, !tbaa !34
  %51 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !30
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !31
  %54 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %54, i32 0, i32 6
  %55 = load float*, float** %Widths, align 8, !tbaa !38
  %56 = bitcast float* %55 to i8*
  call void %50(%struct.gs_memory_s* %53, i8* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #6
  %57 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !30
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !31
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %60 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !34
  %61 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !30
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !31
  %64 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %FontName = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %64, i32 0, i32 12
  %65 = load i8*, i8** %FontName, align 8, !tbaa !39
  call void %60(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  %66 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %66, i32 0, i32 1
  %67 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next, align 8, !tbaa !40
  %tobool38 = icmp ne %struct.text_list_entry_s* %67, null
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %while.body.23
  %68 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next40 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %68, i32 0, i32 1
  %69 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next40, align 8, !tbaa !40
  store %struct.text_list_entry_s* %69, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %70 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !30
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !31
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %73 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !34
  %74 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !30
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !31
  %77 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %previous = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %77, i32 0, i32 0
  %78 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous, align 8, !tbaa !41
  %79 = bitcast %struct.text_list_entry_s* %78 to i8*
  call void %73(%struct.gs_memory_s* %76, i8* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %if.end.53

if.else:                                          ; preds = %while.body.23
  %80 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !30
  %non_gc_memory48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory48, align 8, !tbaa !31
  %procs49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %free_object50 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs49, i32 0, i32 2
  %83 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object50, align 8, !tbaa !34
  %84 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !30
  %non_gc_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory52, align 8, !tbaa !31
  %87 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %88 = bitcast %struct.text_list_entry_s* %87 to i8*
  call void %83(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #6
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.39
  br label %while.cond.21

while.end:                                        ; preds = %while.cond.21
  %89 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next54 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %89, i32 0, i32 1
  %90 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next54, align 8, !tbaa !42
  %tobool55 = icmp ne %struct.page_text_list_s* %90, null
  br i1 %tobool55, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %while.end
  %91 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next57 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %91, i32 0, i32 1
  %92 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next57, align 8, !tbaa !42
  store %struct.page_text_list_s* %92, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %93 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !30
  %non_gc_memory59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory59, align 8, !tbaa !31
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object61 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object61, align 8, !tbaa !34
  %97 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !30
  %non_gc_memory63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory63, align 8, !tbaa !31
  %100 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous64 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %100, i32 0, i32 0
  %101 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous64, align 8, !tbaa !43
  %102 = bitcast %struct.page_text_list_s* %101 to i8*
  call void %96(%struct.gs_memory_s* %99, i8* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.72

if.else.65:                                       ; preds = %while.end
  %103 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %103, i32 0, i32 3
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !30
  %non_gc_memory67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory67, align 8, !tbaa !31
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %free_object69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object69, align 8, !tbaa !34
  %107 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !30
  %non_gc_memory71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory71, align 8, !tbaa !31
  %110 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %111 = bitcast %struct.page_text_list_s* %110 to i8*
  call void %106(%struct.gs_memory_s* %109, i8* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #6
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.65, %if.then.56
  br label %while.cond

while.end.73:                                     ; preds = %while.cond
  %112 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData74 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %112, i32 0, i32 43
  %y_ordered_list75 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData74, i32 0, i32 1
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_ordered_list75, align 8, !tbaa !21
  %113 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData76 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %113, i32 0, i32 43
  %unsorted_text_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData76, i32 0, i32 2
  %114 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_text_list, align 8, !tbaa !44
  store %struct.text_list_entry_s* %114, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.77

while.cond.77:                                    ; preds = %while.body.79, %while.end.73
  %115 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool78 = icmp ne %struct.text_list_entry_s* %115, null
  br i1 %tobool78, label %while.body.79, label %while.end.108

while.body.79:                                    ; preds = %while.cond.77
  %116 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next80 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %116, i32 0, i32 1
  %117 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next80, align 8, !tbaa !40
  store %struct.text_list_entry_s* %117, %struct.text_list_entry_s** %next_x, align 8, !tbaa !1
  %118 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory81 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !30
  %non_gc_memory82 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory82, align 8, !tbaa !31
  %procs83 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %120, i32 0, i32 1
  %free_object84 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs83, i32 0, i32 2
  %121 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object84, align 8, !tbaa !34
  %122 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory85, align 8, !tbaa !30
  %non_gc_memory86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 3
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory86, align 8, !tbaa !31
  %125 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text87 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %125, i32 0, i32 7
  %126 = load i16*, i16** %Unicode_Text87, align 8, !tbaa !35
  %127 = bitcast i16* %126 to i8*
  call void %121(%struct.gs_memory_s* %124, i8* %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #6
  %128 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !30
  %non_gc_memory89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory89, align 8, !tbaa !31
  %procs90 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object91 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs90, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object91, align 8, !tbaa !34
  %132 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory92 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory92, align 8, !tbaa !30
  %non_gc_memory93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory93, align 8, !tbaa !31
  %135 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths94 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %135, i32 0, i32 6
  %136 = load float*, float** %Widths94, align 8, !tbaa !38
  %137 = bitcast float* %136 to i8*
  call void %131(%struct.gs_memory_s* %134, i8* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #6
  %138 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !30
  %non_gc_memory96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory96, align 8, !tbaa !31
  %procs97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 1
  %free_object98 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs97, i32 0, i32 2
  %141 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object98, align 8, !tbaa !34
  %142 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !30
  %non_gc_memory100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory100, align 8, !tbaa !31
  %145 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %FontName101 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %145, i32 0, i32 12
  %146 = load i8*, i8** %FontName101, align 8, !tbaa !39
  call void %141(%struct.gs_memory_s* %144, i8* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  %147 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory102, align 8, !tbaa !30
  %non_gc_memory103 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory103, align 8, !tbaa !31
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 1
  %free_object105 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 2
  %150 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object105, align 8, !tbaa !34
  %151 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %151, i32 0, i32 3
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !30
  %non_gc_memory107 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 3
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory107, align 8, !tbaa !31
  %154 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %155 = bitcast %struct.text_list_entry_s* %154 to i8*
  call void %150(%struct.gs_memory_s* %153, i8* %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0)) #6
  %156 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next_x, align 8, !tbaa !1
  store %struct.text_list_entry_s* %156, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.77

while.end.108:                                    ; preds = %while.cond.77
  %157 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %PageData109 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %157, i32 0, i32 43
  %unsorted_text_list110 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData109, i32 0, i32 2
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %unsorted_text_list110, align 8, !tbaa !44
  %158 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname111 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %158, i32 0, i32 44
  %arraydecay112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname111, i32 0, i32 0
  %159 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname113 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %159, i32 0, i32 44
  %arraydecay114 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname113, i32 0, i32 0
  %call115 = call i64 @strlen(i8* %arraydecay114) #7
  %conv = trunc i64 %call115 to i32
  %160 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory116, align 8, !tbaa !30
  %call117 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %arraydecay112, i32 %conv, %struct.gs_memory_s* %161) #6
  store i32 %call117, i32* %code, align 4, !tbaa !23
  %162 = load i32, i32* %code, align 4, !tbaa !23
  %cmp118 = icmp sge i32 %162, 0
  br i1 %cmp118, label %land.lhs.true, label %if.end.127

land.lhs.true:                                    ; preds = %while.end.108
  %163 = load i8*, i8** %fmt, align 8, !tbaa !1
  %tobool120 = icmp ne i8* %163, null
  br i1 %tobool120, label %if.then.121, label %if.end.127

if.then.121:                                      ; preds = %land.lhs.true
  %164 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %165 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname122 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %165, i32 0, i32 44
  %arraydecay123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname122, i32 0, i32 0
  %166 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file124 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %166, i32 0, i32 45
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %file124, align 8, !tbaa !22
  %call125 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %164, i8* %arraydecay123, %struct._IO_FILE* %167) #6
  store i32 %call125, i32* %code, align 4, !tbaa !23
  %168 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file126 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %168, i32 0, i32 45
  store %struct._IO_FILE* null, %struct._IO_FILE** %file126, align 8, !tbaa !22
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.121, %land.lhs.true, %while.end.108
  %169 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.127, %if.then.18, %sw.default, %if.then.14, %if.then.6, %if.then.2
  %170 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %171) #2
  %172 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast %struct.text_list_entry_s** %next_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = load i32, i32* %retval
  ret i32 %177
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_close_device(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !23
  %1 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %3, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %4, i32 0, i32 45
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %7, i32 0, i32 44
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %8 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %8, i32 0, i32 45
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !22
  %call = call i32 @gx_device_close_output_file(%struct.gx_device_s* %6, i8* %arraydecay, %struct._IO_FILE* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !23
  %11 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !23
  store i32 %y, i32* %y.addr, align 4, !tbaa !23
  store i32 %w, i32* %w.addr, align 4, !tbaa !23
  store i32 %h, i32* %h.addr, align 4, !tbaa !23
  store i64 %color, i64* %color.addr, align 8, !tbaa !45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %bool_T = alloca i32, align 4
  %ofns = alloca %struct.gs_param_string_s, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %bool_T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 1, i32* %bool_T, align 4, !tbaa !23
  %2 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %5, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_params(%struct.gx_device_s* %6, %struct.gs_param_list_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %8 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %10, i32 0, i32 44
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !46
  %11 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %11, i32 0, i32 44
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname1, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #7
  %conv = trunc i64 %call3 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !48
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !49
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_string(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), %struct.gs_param_string_s* %ofns) #6
  store i32 %call4, i32* %code, align 4, !tbaa !23
  %13 = load i32, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_bool(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32* %bool_T) #6
  store i32 %call9, i32* %code, align 4, !tbaa !23
  %16 = load i32, i32* %code, align 4, !tbaa !23
  %cmp10 = icmp slt i32 %16, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call14 = call i32 @param_write_bool(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32* %bool_T) #6
  store i32 %call14, i32* %code, align 4, !tbaa !23
  %19 = load i32, i32* %code, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %20 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call19 = call i32 @param_write_bool(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i32* %bool_T) #6
  store i32 %call19, i32* %code, align 4, !tbaa !23
  %22 = load i32, i32* %code, align 4, !tbaa !23
  %cmp20 = icmp slt i32 %22, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %23 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_txtwrite_s* %25 to i8*
  %call24 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %24, i8* %26, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([2 x %struct.gs_param_item_s], [2 x %struct.gs_param_item_s]* @txt_param_items, i32 0, i32 0)) #6
  store i32 %call24, i32* %code, align 4, !tbaa !23
  %27 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.17, %if.then.12, %if.then.7, %if.then
  %28 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = bitcast i32* %bool_T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %ofs = alloca %struct.gs_param_string_s, align 8
  %dummy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %2, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !23
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %ofs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), %struct.gs_param_string_s* %ofs) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 32
  %10 = load i32, i32* %LockSafetyParams, align 4, !tbaa !50
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !46
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !48
  %13 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %13, i32 0, i32 44
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %14 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %14, i32 0, i32 44
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname1, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #7
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @bytes_compare(i8* %11, i32 %12, i8* %arraydecay, i32 %conv) #6
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -7, i32* %ecode, align 4, !tbaa !23
  br label %ofe

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %15 = load i32, i32* %size6, align 4, !tbaa !48
  %cmp = icmp uge i32 %15, 4096
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  store i32 -13, i32* %ecode, align 4, !tbaa !23
  br label %if.end.9

if.else:                                          ; preds = %if.end
  br label %sw.epilog

if.end.9:                                         ; preds = %if.then.8
  br label %ofe

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %16, i32* %ecode, align 4, !tbaa !23
  br label %ofe

ofe:                                              ; preds = %sw.default, %if.end.9, %if.then
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %17, i32 0, i32 0
  %18 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !52
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %18, i32 0, i32 7
  %19 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !54
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %param_name, align 8, !tbaa !1
  %22 = load i32, i32* %ecode, align 4, !tbaa !23
  %call10 = call i32 %19(%struct.gs_param_list_s* %20, i8* %21, i32 %22) #6
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %entry, %ofe
  %data12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  store i8* null, i8** %data12, align 8, !tbaa !46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.else
  %23 = load i32, i32* %ecode, align 4, !tbaa !23
  %cmp13 = icmp slt i32 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.epilog
  %24 = load i32, i32* %ecode, align 4, !tbaa !23
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %sw.epilog
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %TextFormat = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %26, i32 0, i32 46
  %call17 = call i32 @param_read_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32* %TextFormat) #6
  store i32 %call17, i32* %code, align 4, !tbaa !23
  %27 = load i32, i32* %code, align 4, !tbaa !23
  %cmp18 = icmp slt i32 %27, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %28 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call22 = call i32 @param_read_bool(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32* %dummy) #6
  store i32 %call22, i32* %code, align 4, !tbaa !23
  %30 = load i32, i32* %code, align 4, !tbaa !23
  %cmp23 = icmp slt i32 %30, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %31 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call27 = call i32 @param_read_bool(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i32* %dummy) #6
  store i32 %call27, i32* %code, align 4, !tbaa !23
  %33 = load i32, i32* %code, align 4, !tbaa !23
  %cmp28 = icmp slt i32 %33, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %34 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.26
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call32 = call i32 @param_read_bool(%struct.gs_param_list_s* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32* %dummy) #6
  store i32 %call32, i32* %code, align 4, !tbaa !23
  %36 = load i32, i32* %code, align 4, !tbaa !23
  %cmp33 = icmp slt i32 %36, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %37 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call37 = call i32 @gx_default_put_params(%struct.gx_device_s* %38, %struct.gs_param_list_s* %39) #6
  store i32 %call37, i32* %code, align 4, !tbaa !23
  %40 = load i32, i32* %code, align 4, !tbaa !23
  %cmp38 = icmp slt i32 %40, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %41 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.36
  %data42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %42 = load i8*, i8** %data42, align 8, !tbaa !46
  %cmp43 = icmp ne i8* %42, null
  br i1 %cmp43, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %if.end.41
  %43 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %43, i32 0, i32 45
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %cmp46 = icmp ne %struct._IO_FILE* %44, null
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.then.45
  %45 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file49 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %45, i32 0, i32 45
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file49, align 8, !tbaa !22
  %call50 = call i32 @fclose(%struct._IO_FILE* %46) #6
  %47 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %file51 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %47, i32 0, i32 45
  store %struct._IO_FILE* null, %struct._IO_FILE** %file51, align 8, !tbaa !22
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.then.45
  %48 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname53 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %48, i32 0, i32 44
  %arraydecay54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname53, i32 0, i32 0
  %data55 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 0
  %49 = load i8*, i8** %data55, align 8, !tbaa !46
  %size56 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %50 = load i32, i32* %size56, align 4, !tbaa !48
  %conv57 = zext i32 %50 to i64
  %call58 = call i8* @memcpy(i8* %arraydecay54, i8* %49, i64 %conv57) #8
  %size59 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofs, i32 0, i32 1
  %51 = load i32, i32* %size59, align 4, !tbaa !48
  %idxprom = zext i32 %51 to i64
  %52 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %fname60 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %52, i32 0, i32 44
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname60, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.52, %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.40, %if.then.35, %if.then.30, %if.then.25, %if.then.20, %if.then.15
  %53 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.gs_param_string_s* %ofs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #2
  %55 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #1 {
entry:
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !23
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !23
  store i64 %id, i64* %id.addr, align 8, !tbaa !45
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !23
  store i32 %y, i32* %y.addr, align 4, !tbaa !23
  store i32 %w, i32* %w.addr, align 4, !tbaa !23
  store i32 %h, i32* %h.addr, align 4, !tbaa !23
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !23
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !23
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !23
  ret i32 0
}

declare i32 @gx_null_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_text_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppenum) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppenum.addr = alloca %struct.gs_text_enum_s**, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppenum, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %2, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %3 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !56
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_textw_text_enum, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0)) #6
  %8 = bitcast i8* %call to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %8, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.textw_text_enum_s* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %9 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %9, i32 0, i32 10
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !57
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %11, i32 0, i32 10
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !64
  %12 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %12, i32 0, i32 10
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !65
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6
  br label %do.cond.7

do.cond.7:                                        ; preds = %if.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %13 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %13, i32 0, i32 10
  %free10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_text_enum, void (%struct.gs_memory_s*, i8*, i8*)** %free10, align 8, !tbaa !65
  %14 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %charproc_accum = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %14, i32 0, i32 30
  store i32 0, i32* %charproc_accum, align 4, !tbaa !66
  %15 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %15, i32 0, i32 31
  store i32 0, i32* %cdevproc_callout, align 4, !tbaa !67
  %16 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %16, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !68
  %17 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %returned11 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %17, i32 0, i32 28
  %total_width12 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned11, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width12, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !69
  %18 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %18, i32 0, i32 34
  store i16* null, i16** %TextBuffer, align 8, !tbaa !70
  %19 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBufferIndex = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %19, i32 0, i32 35
  store i32 0, i32* %TextBufferIndex, align 4, !tbaa !71
  %20 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %25 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !30
  %stable_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory16, align 8, !tbaa !72
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !31
  %call18 = call i8* %24(%struct.gs_memory_s* %28, i32 1, i32 168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %29 = bitcast i8* %call18 to %struct.text_list_entry_s*
  %30 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %30, i32 0, i32 36
  store %struct.text_list_entry_s* %29, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %31 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state19 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %31, i32 0, i32 36
  %32 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state19, align 8, !tbaa !74
  %tobool = icmp ne %struct.text_list_entry_s* %32, null
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.end.8
  %33 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state22 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %33, i32 0, i32 36
  %34 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state22, align 8, !tbaa !74
  %35 = bitcast %struct.text_list_entry_s* %34 to i8*
  %call23 = call i8* @memset(i8* %35, i32 0, i64 168) #8
  %36 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %37 = bitcast %struct.textw_text_enum_s* %36 to %struct.gs_text_enum_s*
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %40 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call24 = call i32 @gs_text_enum_init(%struct.gs_text_enum_s* %37, %struct.gs_text_enum_procs_s* @textw_text_procs, %struct.gx_device_s* %38, %struct.gs_imager_state_s* %39, %struct.gs_text_params_s* %40, %struct.gs_font_s* %41, %struct.gx_path_s* %42, %struct.gx_device_color_s* %43, %struct.gx_clip_path_s* %44, %struct.gs_memory_s* %45) #6
  store i32 %call24, i32* %code, align 4, !tbaa !23
  %46 = load i32, i32* %code, align 4, !tbaa !23
  %cmp25 = icmp slt i32 %46, 0
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.21
  %47 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !30
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !31
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %51 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !30
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !31
  %54 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state32 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %54, i32 0, i32 36
  %55 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state32, align 8, !tbaa !74
  %56 = bitcast %struct.text_list_entry_s* %55 to i8*
  call void %50(%struct.gs_memory_s* %53, i8* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #6
  %57 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state33 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %57, i32 0, i32 36
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %text_state33, align 8, !tbaa !74
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !34
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %61 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %62 = bitcast %struct.textw_text_enum_s* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0)) #6
  %63 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.21
  %64 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %path37 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %64, i32 0, i32 5
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %path37, align 8, !tbaa !75
  %66 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %66, i32 0, i32 29
  %call38 = call i32 @gx_path_current_point(%struct.gx_path_s* %65, %struct.gs_fixed_point_s* %origin) #6
  store i32 %call38, i32* %code, align 4, !tbaa !23
  %67 = load i32, i32* %code, align 4, !tbaa !23
  %cmp39 = icmp ne i32 %67, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %68 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.36
  %69 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %70 = bitcast %struct.textw_text_enum_s* %69 to %struct.gs_text_enum_s*
  %71 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %70, %struct.gs_text_enum_s** %71, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.40, %if.then.26, %if.then.20, %if.then
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_close_output_file(%struct.gx_device_s*, i8*, %struct._IO_FILE*) #0

declare i32 @gx_device_open_output_file(%struct.gx_device_s*, i8*, i32, i32, %struct._IO_FILE**) #0

; Function Attrs: nounwind uwtable
define internal i32 @decorated_text_output(%struct.gx_device_txtwrite_s* %tdev) #1 {
entry:
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %i = alloca i32, align 4
  %x_entry = alloca %struct.text_list_entry_s*, align 8
  %next_x = alloca %struct.text_list_entry_s*, align 8
  %TextBuffer = alloca [512 x i8], align 16
  %Escaped = alloca [32 x i8], align 16
  %xpos = alloca float, align 4
  %y_list = alloca %struct.page_text_list_s*, align 8
  %temp = alloca %struct.page_text_list_s*, align 8
  %block = alloca %struct.page_text_s, align 8
  %block_line = alloca %struct.page_text_list_s*, align 8
  %BBox = alloca [4 x float], align 16
  %x_entry54 = alloca %struct.text_list_entry_s*, align 8
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.text_list_entry_s** %next_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast [512 x i8]* %TextBuffer to i8*
  call void @llvm.lifetime.start(i64 512, i8* %3) #2
  %4 = bitcast [32 x i8]* %Escaped to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast float* %xpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %TextFormat = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %7, i32 0, i32 46
  %8 = load i32, i32* %TextFormat, align 4, !tbaa !24
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %9, i32 0, i32 45
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %call = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %10) #6
  %11 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %11, i32 0, i32 43
  %unsorted_text_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 2
  %12 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_text_list, align 8, !tbaa !44
  store %struct.text_list_entry_s* %12, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then
  %13 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool = icmp ne %struct.text_list_entry_s* %13, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %14, i32 0, i32 1
  %15 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next, align 8, !tbaa !40
  store %struct.text_list_entry_s* %15, %struct.text_list_entry_s** %next_x, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %16 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %16, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %17 = load double, double* %x, align 8, !tbaa !76
  %18 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start1 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %18, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start1, i32 0, i32 1
  %19 = load double, double* %y, align 8, !tbaa !77
  %20 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %20, i32 0, i32 3
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %21 = load double, double* %x2, align 8, !tbaa !78
  %22 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end3 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %22, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end3, i32 0, i32 1
  %23 = load double, double* %y4, align 8, !tbaa !79
  %24 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %FontName = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %24, i32 0, i32 12
  %25 = load i8*, i8** %FontName, align 8, !tbaa !39
  %26 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %26, i32 0, i32 15
  %27 = load double, double* %size, align 8, !tbaa !80
  %call5 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), double %17, double %19, double %21, double %23, i8* %25, double %27) #6
  %arraydecay6 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %call8 = call i64 @strlen(i8* %arraydecay7) #7
  %28 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file9 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %28, i32 0, i32 45
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file9, align 8, !tbaa !22
  %call10 = call i64 @fwrite(i8* %arraydecay6, i64 1, i64 %call8, %struct._IO_FILE* %29) #6
  %30 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start11 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %30, i32 0, i32 2
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start11, i32 0, i32 0
  %31 = load double, double* %x12, align 8, !tbaa !76
  %conv = fptrunc double %31 to float
  store float %conv, float* %xpos, align 4, !tbaa !81
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %33 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text_Size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %33, i32 0, i32 8
  %34 = load i32, i32* %Unicode_Text_Size, align 4, !tbaa !82
  %cmp13 = icmp slt i32 %32, %34
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %36, i32 0, i32 7
  %37 = load i16*, i16** %Unicode_Text, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i16, i16* %37, i64 %idxprom
  %38 = load i16, i16* %arrayidx, align 2, !tbaa !83
  %39 = bitcast [32 x i8]* %Escaped to i8*
  %call15 = call i32 @escaped_Unicode(i16 zeroext %38, i8* %39) #6
  %arraydecay16 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %40 = load float, float* %xpos, align 4, !tbaa !81
  %conv17 = fpext float %40 to double
  %41 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start18 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %41, i32 0, i32 2
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start18, i32 0, i32 1
  %42 = load double, double* %y19, align 8, !tbaa !77
  %43 = load float, float* %xpos, align 4, !tbaa !81
  %44 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom20 = sext i32 %44 to i64
  %45 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %45, i32 0, i32 6
  %46 = load float*, float** %Widths, align 8, !tbaa !38
  %arrayidx21 = getelementptr inbounds float, float* %46, i64 %idxprom20
  %47 = load float, float* %arrayidx21, align 4, !tbaa !81
  %add = fadd float %43, %47
  %conv22 = fpext float %add to double
  %48 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end23 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %48, i32 0, i32 3
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end23, i32 0, i32 1
  %49 = load double, double* %y24, align 8, !tbaa !79
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %Escaped, i32 0, i32 0
  %call26 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), double %conv17, double %42, double %conv22, double %49, i8* %arraydecay25) #6
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %call29 = call i64 @strlen(i8* %arraydecay28) #7
  %50 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file30 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %50, i32 0, i32 45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file30, align 8, !tbaa !22
  %call31 = call i64 @fwrite(i8* %arraydecay27, i64 1, i64 %call29, %struct._IO_FILE* %51) #6
  %52 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom32 = sext i32 %52 to i64
  %53 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths33 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %53, i32 0, i32 6
  %54 = load float*, float** %Widths33, align 8, !tbaa !38
  %arrayidx34 = getelementptr inbounds float, float* %54, i64 %idxprom32
  %55 = load float, float* %arrayidx34, align 4, !tbaa !81
  %56 = load float, float* %xpos, align 4, !tbaa !81
  %add35 = fadd float %56, %55
  store float %add35, float* %xpos, align 4, !tbaa !81
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file36 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %58, i32 0, i32 45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file36, align 8, !tbaa !22
  %call37 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %59) #6
  %60 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next_x, align 8, !tbaa !1
  store %struct.text_list_entry_s* %60, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file38 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %61, i32 0, i32 45
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %file38, align 8, !tbaa !22
  %call39 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %62) #6
  br label %if.end.387

if.else:                                          ; preds = %entry
  %63 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call40 = call i32 @merge_vertically(%struct.gx_device_txtwrite_s* %63) #6
  %64 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call41 = call i32 @merge_horizontally(%struct.gx_device_txtwrite_s* %64) #6
  %65 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData42 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %65, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData42, i32 0, i32 1
  %66 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  store %struct.page_text_list_s* %66, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %67 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file43 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %67, i32 0, i32 45
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file43, align 8, !tbaa !22
  %call44 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %68) #6
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %69 = bitcast %struct.page_text_list_s** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #2
  %70 = bitcast %struct.page_text_s* %block to i8*
  call void @llvm.lifetime.start(i64 24, i8* %70) #2
  %71 = bitcast %struct.page_text_list_s** %block_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #2
  %72 = bitcast [4 x float]* %BBox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %72) #2
  %73 = bitcast %struct.page_text_s* %block to i8*
  %call45 = call i8* @memset(i8* %73, i32 0, i64 24) #8
  %arraydecay46 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i32 0
  %74 = bitcast float* %arraydecay46 to i8*
  %call47 = call i8* @memset(i8* %74, i32 0, i64 16) #8
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.304, %if.end.270, %do.body
  %75 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool49 = icmp ne %struct.page_text_list_s* %75, null
  br i1 %tobool49, label %while.body.50, label %while.end.305

while.body.50:                                    ; preds = %while.cond.48
  %y_ordered_list51 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %block, i32 0, i32 1
  %76 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list51, align 8, !tbaa !84
  %tobool52 = icmp ne %struct.page_text_list_s* %76, null
  br i1 %tobool52, label %if.then.53, label %if.else.213

if.then.53:                                       ; preds = %while.body.50
  %77 = bitcast %struct.text_list_entry_s** %x_entry54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %78, i32 0, i32 5
  %79 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  store %struct.text_list_entry_s* %79, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %y_ordered_list55 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %block, i32 0, i32 1
  %80 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list55, align 8, !tbaa !84
  store %struct.page_text_list_s* %80, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  br label %while.cond.56

while.cond.56:                                    ; preds = %if.end.210, %if.end.143, %if.then.53
  %81 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %tobool57 = icmp ne %struct.text_list_entry_s* %81, null
  br i1 %tobool57, label %while.body.58, label %while.end.212

while.body.58:                                    ; preds = %while.cond.56
  %82 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %start59 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %82, i32 0, i32 2
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start59, i32 0, i32 0
  %83 = load double, double* %x60, align 8, !tbaa !76
  %arrayidx61 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  %84 = load float, float* %arrayidx61, align 4, !tbaa !81
  %conv62 = fpext float %84 to double
  %cmp63 = fcmp ogt double %83, %conv62
  br i1 %cmp63, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.58
  %85 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %end65 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %85, i32 0, i32 3
  %x66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end65, i32 0, i32 0
  %86 = load double, double* %x66, align 8, !tbaa !78
  %arrayidx67 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  %87 = load float, float* %arrayidx67, align 4, !tbaa !81
  %conv68 = fpext float %87 to double
  %cmp69 = fcmp olt double %86, %conv68
  br i1 %cmp69, label %if.then.81, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %88 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %start72 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %88, i32 0, i32 2
  %y73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start72, i32 0, i32 1
  %89 = load double, double* %y73, align 8, !tbaa !77
  %arrayidx74 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  %90 = load float, float* %arrayidx74, align 4, !tbaa !81
  %arrayidx75 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  %91 = load float, float* %arrayidx75, align 4, !tbaa !81
  %arrayidx76 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  %92 = load float, float* %arrayidx76, align 4, !tbaa !81
  %sub = fsub float %91, %92
  %add77 = fadd float %90, %sub
  %conv78 = fpext float %add77 to double
  %cmp79 = fcmp ogt double %89, %conv78
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %lor.lhs.false.71, %lor.lhs.false, %while.body.58
  br label %if.end.210

if.else.82:                                       ; preds = %lor.lhs.false.71
  %93 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 0
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %97 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %98 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !30
  %stable_memory84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 0
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory84, align 8, !tbaa !72
  %non_gc_memory85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory85, align 8, !tbaa !31
  %call86 = call i8* %97(%struct.gs_memory_s* %101, i32 1, i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #6
  %102 = bitcast i8* %call86 to %struct.page_text_list_s*
  %103 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %next87 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %103, i32 0, i32 1
  store %struct.page_text_list_s* %102, %struct.page_text_list_s** %next87, align 8, !tbaa !42
  %104 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %next88 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %104, i32 0, i32 1
  %105 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next88, align 8, !tbaa !42
  %106 = bitcast %struct.page_text_list_s* %105 to i8*
  %call89 = call i8* @memset(i8* %106, i32 0, i64 48) #8
  %107 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %next90 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %107, i32 0, i32 1
  %108 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next90, align 8, !tbaa !42
  store %struct.page_text_list_s* %108, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %109 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %110 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list91 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %110, i32 0, i32 5
  store %struct.text_list_entry_s* %109, %struct.text_list_entry_s** %x_ordered_list91, align 8, !tbaa !25
  %111 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next92 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %111, i32 0, i32 1
  %112 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next92, align 8, !tbaa !40
  %tobool93 = icmp ne %struct.text_list_entry_s* %112, null
  br i1 %tobool93, label %if.then.94, label %if.end

if.then.94:                                       ; preds = %if.else.82
  %113 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %previous = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %113, i32 0, i32 0
  %114 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous, align 8, !tbaa !41
  %115 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next95 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %115, i32 0, i32 1
  %116 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next95, align 8, !tbaa !40
  %previous96 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %116, i32 0, i32 0
  store %struct.text_list_entry_s* %114, %struct.text_list_entry_s** %previous96, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.94, %if.else.82
  %117 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %previous97 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %117, i32 0, i32 0
  %118 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous97, align 8, !tbaa !41
  %tobool98 = icmp ne %struct.text_list_entry_s* %118, null
  br i1 %tobool98, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %if.end
  %119 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next100 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %119, i32 0, i32 1
  %120 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next100, align 8, !tbaa !40
  %121 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %previous101 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %121, i32 0, i32 0
  %122 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous101, align 8, !tbaa !41
  %next102 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %122, i32 0, i32 1
  store %struct.text_list_entry_s* %120, %struct.text_list_entry_s** %next102, align 8, !tbaa !40
  br label %if.end.146

if.else.103:                                      ; preds = %if.end
  %123 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next104 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %123, i32 0, i32 1
  %124 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next104, align 8, !tbaa !40
  %cmp105 = icmp eq %struct.text_list_entry_s* %124, null
  br i1 %cmp105, label %if.then.107, label %if.end.145

if.then.107:                                      ; preds = %if.else.103
  %125 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next108 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %125, i32 0, i32 1
  %126 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next108, align 8, !tbaa !42
  store %struct.page_text_list_s* %126, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  %127 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous109 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %127, i32 0, i32 0
  %128 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous109, align 8, !tbaa !43
  %tobool110 = icmp ne %struct.page_text_list_s* %128, null
  br i1 %tobool110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.then.107
  %129 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next112 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %129, i32 0, i32 1
  %130 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next112, align 8, !tbaa !42
  %131 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous113 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %131, i32 0, i32 0
  %132 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous113, align 8, !tbaa !43
  %next114 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %132, i32 0, i32 1
  store %struct.page_text_list_s* %130, %struct.page_text_list_s** %next114, align 8, !tbaa !42
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.then.107
  %133 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next116 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %133, i32 0, i32 1
  %134 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next116, align 8, !tbaa !42
  %tobool117 = icmp ne %struct.page_text_list_s* %134, null
  br i1 %tobool117, label %if.then.118, label %if.else.122

if.then.118:                                      ; preds = %if.end.115
  %135 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous119 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %135, i32 0, i32 0
  %136 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous119, align 8, !tbaa !43
  %137 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next120 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %137, i32 0, i32 1
  %138 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next120, align 8, !tbaa !42
  %previous121 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %138, i32 0, i32 0
  store %struct.page_text_list_s* %136, %struct.page_text_list_s** %previous121, align 8, !tbaa !43
  br label %if.end.130

if.else.122:                                      ; preds = %if.end.115
  %139 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous123 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %139, i32 0, i32 0
  %140 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous123, align 8, !tbaa !43
  %cmp124 = icmp eq %struct.page_text_list_s* %140, null
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.else.122
  %141 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData127 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %141, i32 0, i32 43
  %y_ordered_list128 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData127, i32 0, i32 1
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_ordered_list128, align 8, !tbaa !21
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.else.122
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.118
  %142 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !30
  %non_gc_memory132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory132, align 8, !tbaa !31
  %procs133 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs133, i32 0, i32 2
  %145 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %146 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory134, align 8, !tbaa !30
  %non_gc_memory135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory135, align 8, !tbaa !31
  %149 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %150 = bitcast %struct.page_text_list_s* %149 to i8*
  call void %145(%struct.gs_memory_s* %148, i8* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #6
  %151 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData136 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %151, i32 0, i32 43
  %y_ordered_list137 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData136, i32 0, i32 1
  %152 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list137, align 8, !tbaa !21
  %153 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %cmp138 = icmp eq %struct.page_text_list_s* %152, %153
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %if.end.130
  %154 = load %struct.page_text_list_s*, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  %155 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData141 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %155, i32 0, i32 43
  %y_ordered_list142 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData141, i32 0, i32 1
  store %struct.page_text_list_s* %154, %struct.page_text_list_s** %y_ordered_list142, align 8, !tbaa !21
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %if.end.130
  %156 = load %struct.page_text_list_s*, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  store %struct.page_text_list_s* %156, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %157 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next144 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %157, i32 0, i32 1
  %158 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next144, align 8, !tbaa !40
  store %struct.text_list_entry_s* %158, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  br label %while.cond.56

if.end.145:                                       ; preds = %if.else.103
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.99
  %159 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list147 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %159, i32 0, i32 5
  %160 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list147, align 8, !tbaa !25
  %start148 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %160, i32 0, i32 2
  %x149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start148, i32 0, i32 0
  %161 = load double, double* %x149, align 8, !tbaa !76
  %arrayidx150 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  %162 = load float, float* %arrayidx150, align 4, !tbaa !81
  %conv151 = fpext float %162 to double
  %cmp152 = fcmp olt double %161, %conv151
  br i1 %cmp152, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %if.end.146
  %163 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list155 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %163, i32 0, i32 5
  %164 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list155, align 8, !tbaa !25
  %start156 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %164, i32 0, i32 2
  %x157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start156, i32 0, i32 0
  %165 = load double, double* %x157, align 8, !tbaa !76
  %conv158 = fptrunc double %165 to float
  %arrayidx159 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  store float %conv158, float* %arrayidx159, align 4, !tbaa !81
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.154, %if.end.146
  %166 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list161 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %166, i32 0, i32 5
  %167 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list161, align 8, !tbaa !25
  %start162 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %167, i32 0, i32 2
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start162, i32 0, i32 1
  %168 = load double, double* %y163, align 8, !tbaa !77
  %arrayidx164 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  %169 = load float, float* %arrayidx164, align 4, !tbaa !81
  %conv165 = fpext float %169 to double
  %cmp166 = fcmp olt double %168, %conv165
  br i1 %cmp166, label %if.then.168, label %if.end.174

if.then.168:                                      ; preds = %if.end.160
  %170 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list169 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %170, i32 0, i32 5
  %171 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list169, align 8, !tbaa !25
  %start170 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %171, i32 0, i32 2
  %y171 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start170, i32 0, i32 1
  %172 = load double, double* %y171, align 8, !tbaa !77
  %conv172 = fptrunc double %172 to float
  %arrayidx173 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  store float %conv172, float* %arrayidx173, align 4, !tbaa !81
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.168, %if.end.160
  %173 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list175 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %173, i32 0, i32 5
  %174 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list175, align 8, !tbaa !25
  %end176 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %174, i32 0, i32 3
  %x177 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end176, i32 0, i32 0
  %175 = load double, double* %x177, align 8, !tbaa !78
  %arrayidx178 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  %176 = load float, float* %arrayidx178, align 4, !tbaa !81
  %conv179 = fpext float %176 to double
  %cmp180 = fcmp olt double %175, %conv179
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %if.end.174
  %177 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list183 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %177, i32 0, i32 5
  %178 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list183, align 8, !tbaa !25
  %end184 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %178, i32 0, i32 3
  %x185 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end184, i32 0, i32 0
  %179 = load double, double* %x185, align 8, !tbaa !78
  %conv186 = fptrunc double %179 to float
  %arrayidx187 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  store float %conv186, float* %arrayidx187, align 4, !tbaa !81
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %if.end.174
  %180 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list189 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %180, i32 0, i32 5
  %181 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list189, align 8, !tbaa !25
  %end190 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %181, i32 0, i32 3
  %y191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end190, i32 0, i32 1
  %182 = load double, double* %y191, align 8, !tbaa !79
  %183 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list192 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %183, i32 0, i32 5
  %184 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list192, align 8, !tbaa !25
  %FontBBox_topright = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %184, i32 0, i32 5
  %y193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright, i32 0, i32 1
  %185 = load double, double* %y193, align 8, !tbaa !85
  %add194 = fadd double %182, %185
  %arrayidx195 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  %186 = load float, float* %arrayidx195, align 4, !tbaa !81
  %conv196 = fpext float %186 to double
  %cmp197 = fcmp olt double %add194, %conv196
  br i1 %cmp197, label %if.then.199, label %if.end.209

if.then.199:                                      ; preds = %if.end.188
  %187 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list200 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %187, i32 0, i32 5
  %188 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list200, align 8, !tbaa !25
  %end201 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %188, i32 0, i32 3
  %y202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end201, i32 0, i32 1
  %189 = load double, double* %y202, align 8, !tbaa !79
  %190 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list203 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %190, i32 0, i32 5
  %191 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list203, align 8, !tbaa !25
  %FontBBox_topright204 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %191, i32 0, i32 5
  %y205 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright204, i32 0, i32 1
  %192 = load double, double* %y205, align 8, !tbaa !85
  %add206 = fadd double %189, %192
  %conv207 = fptrunc double %add206 to float
  %arrayidx208 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  store float %conv207, float* %arrayidx208, align 4, !tbaa !81
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.199, %if.end.188
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.81
  %193 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  %next211 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %193, i32 0, i32 1
  %194 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next211, align 8, !tbaa !40
  store %struct.text_list_entry_s* %194, %struct.text_list_entry_s** %x_entry54, align 8, !tbaa !1
  br label %while.cond.56

while.end.212:                                    ; preds = %while.cond.56
  %195 = bitcast %struct.text_list_entry_s** %x_entry54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  br label %if.end.300

if.else.213:                                      ; preds = %while.body.50
  %196 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory214 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory214, align 8, !tbaa !30
  %stable_memory215 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 0
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory215, align 8, !tbaa !72
  %non_gc_memory216 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory216, align 8, !tbaa !31
  %procs217 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 1
  %alloc_byte_array218 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs217, i32 0, i32 10
  %200 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array218, align 8, !tbaa !73
  %201 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory219 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory219, align 8, !tbaa !30
  %stable_memory220 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %202, i32 0, i32 0
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory220, align 8, !tbaa !72
  %non_gc_memory221 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %203, i32 0, i32 3
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory221, align 8, !tbaa !31
  %call222 = call i8* %200(%struct.gs_memory_s* %204, i32 1, i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #6
  %205 = bitcast i8* %call222 to %struct.page_text_list_s*
  store %struct.page_text_list_s* %205, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %y_ordered_list223 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %block, i32 0, i32 1
  store %struct.page_text_list_s* %205, %struct.page_text_list_s** %y_ordered_list223, align 8, !tbaa !84
  %206 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %207 = bitcast %struct.page_text_list_s* %206 to i8*
  %call224 = call i8* @memset(i8* %207, i32 0, i64 48) #8
  %208 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list225 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %208, i32 0, i32 5
  %209 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list225, align 8, !tbaa !25
  %210 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list226 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %210, i32 0, i32 5
  store %struct.text_list_entry_s* %209, %struct.text_list_entry_s** %x_ordered_list226, align 8, !tbaa !25
  %211 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list227 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %211, i32 0, i32 5
  %212 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list227, align 8, !tbaa !25
  %next228 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %212, i32 0, i32 1
  %213 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next228, align 8, !tbaa !40
  %214 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list229 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %214, i32 0, i32 5
  store %struct.text_list_entry_s* %213, %struct.text_list_entry_s** %x_ordered_list229, align 8, !tbaa !25
  %215 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list230 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %215, i32 0, i32 5
  %216 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list230, align 8, !tbaa !25
  %cmp231 = icmp eq %struct.text_list_entry_s* %216, null
  br i1 %cmp231, label %if.then.233, label %if.end.271

if.then.233:                                      ; preds = %if.else.213
  %217 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next234 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %217, i32 0, i32 1
  %218 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next234, align 8, !tbaa !42
  store %struct.page_text_list_s* %218, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  %219 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous235 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %219, i32 0, i32 0
  %220 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous235, align 8, !tbaa !43
  %tobool236 = icmp ne %struct.page_text_list_s* %220, null
  br i1 %tobool236, label %if.then.237, label %if.end.241

if.then.237:                                      ; preds = %if.then.233
  %221 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next238 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %221, i32 0, i32 1
  %222 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next238, align 8, !tbaa !42
  %223 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous239 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %223, i32 0, i32 0
  %224 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous239, align 8, !tbaa !43
  %next240 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %224, i32 0, i32 1
  store %struct.page_text_list_s* %222, %struct.page_text_list_s** %next240, align 8, !tbaa !42
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.237, %if.then.233
  %225 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next242 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %225, i32 0, i32 1
  %226 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next242, align 8, !tbaa !42
  %tobool243 = icmp ne %struct.page_text_list_s* %226, null
  br i1 %tobool243, label %if.then.244, label %if.else.248

if.then.244:                                      ; preds = %if.end.241
  %227 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous245 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %227, i32 0, i32 0
  %228 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous245, align 8, !tbaa !43
  %229 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next246 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %229, i32 0, i32 1
  %230 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next246, align 8, !tbaa !42
  %previous247 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %230, i32 0, i32 0
  store %struct.page_text_list_s* %228, %struct.page_text_list_s** %previous247, align 8, !tbaa !43
  br label %if.end.256

if.else.248:                                      ; preds = %if.end.241
  %231 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %previous249 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %231, i32 0, i32 0
  %232 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous249, align 8, !tbaa !43
  %cmp250 = icmp eq %struct.page_text_list_s* %232, null
  br i1 %cmp250, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %if.else.248
  %233 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData253 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %233, i32 0, i32 43
  %y_ordered_list254 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData253, i32 0, i32 1
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_ordered_list254, align 8, !tbaa !21
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.252, %if.else.248
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.244
  %234 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory257 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %234, i32 0, i32 3
  %235 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory257, align 8, !tbaa !30
  %non_gc_memory258 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %235, i32 0, i32 3
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory258, align 8, !tbaa !31
  %procs259 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %236, i32 0, i32 1
  %free_object260 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs259, i32 0, i32 2
  %237 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object260, align 8, !tbaa !34
  %238 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory261 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %238, i32 0, i32 3
  %239 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory261, align 8, !tbaa !30
  %non_gc_memory262 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %239, i32 0, i32 3
  %240 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory262, align 8, !tbaa !31
  %241 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %242 = bitcast %struct.page_text_list_s* %241 to i8*
  call void %237(%struct.gs_memory_s* %240, i8* %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #6
  %243 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData263 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %243, i32 0, i32 43
  %y_ordered_list264 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData263, i32 0, i32 1
  %244 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list264, align 8, !tbaa !21
  %245 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %cmp265 = icmp eq %struct.page_text_list_s* %244, %245
  br i1 %cmp265, label %if.then.267, label %if.end.270

if.then.267:                                      ; preds = %if.end.256
  %246 = load %struct.page_text_list_s*, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  %247 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData268 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %247, i32 0, i32 43
  %y_ordered_list269 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData268, i32 0, i32 1
  store %struct.page_text_list_s* %246, %struct.page_text_list_s** %y_ordered_list269, align 8, !tbaa !21
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.267, %if.end.256
  %248 = load %struct.page_text_list_s*, %struct.page_text_list_s** %temp, align 8, !tbaa !1
  store %struct.page_text_list_s* %248, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond.48

if.end.271:                                       ; preds = %if.else.213
  %249 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list272 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %249, i32 0, i32 5
  %250 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list272, align 8, !tbaa !25
  %previous273 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %250, i32 0, i32 0
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %previous273, align 8, !tbaa !41
  %251 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list274 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %251, i32 0, i32 5
  %252 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list274, align 8, !tbaa !25
  %next275 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %252, i32 0, i32 1
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %next275, align 8, !tbaa !40
  %253 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list276 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %253, i32 0, i32 5
  %254 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list276, align 8, !tbaa !25
  %start277 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %254, i32 0, i32 2
  %x278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start277, i32 0, i32 0
  %255 = load double, double* %x278, align 8, !tbaa !76
  %conv279 = fptrunc double %255 to float
  %arrayidx280 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  store float %conv279, float* %arrayidx280, align 4, !tbaa !81
  %256 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list281 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %256, i32 0, i32 5
  %257 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list281, align 8, !tbaa !25
  %start282 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %257, i32 0, i32 2
  %y283 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start282, i32 0, i32 1
  %258 = load double, double* %y283, align 8, !tbaa !77
  %conv284 = fptrunc double %258 to float
  %arrayidx285 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  store float %conv284, float* %arrayidx285, align 4, !tbaa !81
  %259 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list286 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %259, i32 0, i32 5
  %260 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list286, align 8, !tbaa !25
  %end287 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %260, i32 0, i32 3
  %x288 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end287, i32 0, i32 0
  %261 = load double, double* %x288, align 8, !tbaa !78
  %conv289 = fptrunc double %261 to float
  %arrayidx290 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  store float %conv289, float* %arrayidx290, align 4, !tbaa !81
  %262 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list291 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %262, i32 0, i32 5
  %263 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list291, align 8, !tbaa !25
  %end292 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %263, i32 0, i32 3
  %y293 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end292, i32 0, i32 1
  %264 = load double, double* %y293, align 8, !tbaa !79
  %265 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list294 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %265, i32 0, i32 5
  %266 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list294, align 8, !tbaa !25
  %FontBBox_topright295 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %266, i32 0, i32 5
  %y296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright295, i32 0, i32 1
  %267 = load double, double* %y296, align 8, !tbaa !85
  %add297 = fadd double %264, %267
  %conv298 = fptrunc double %add297 to float
  %arrayidx299 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  store float %conv298, float* %arrayidx299, align 4, !tbaa !81
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.271, %while.end.212
  %268 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool301 = icmp ne %struct.page_text_list_s* %268, null
  br i1 %tobool301, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.300
  %269 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next303 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %269, i32 0, i32 1
  %270 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next303, align 8, !tbaa !42
  store %struct.page_text_list_s* %270, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %if.end.300
  br label %while.cond.48

while.end.305:                                    ; preds = %while.cond.48
  %271 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file306 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %271, i32 0, i32 45
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %file306, align 8, !tbaa !22
  %call307 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %272) #6
  %y_ordered_list308 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %block, i32 0, i32 1
  %273 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list308, align 8, !tbaa !84
  store %struct.page_text_list_s* %273, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  br label %while.cond.309

while.cond.309:                                   ; preds = %while.end.375, %while.end.305
  %274 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %tobool310 = icmp ne %struct.page_text_list_s* %274, null
  br i1 %tobool310, label %while.body.311, label %while.end.379

while.body.311:                                   ; preds = %while.cond.309
  %275 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file312 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %275, i32 0, i32 45
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %file312, align 8, !tbaa !22
  %call313 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %276) #6
  %277 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %x_ordered_list314 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %277, i32 0, i32 5
  %278 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list314, align 8, !tbaa !25
  store %struct.text_list_entry_s* %278, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.315

while.cond.315:                                   ; preds = %for.end.371, %while.body.311
  %279 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool316 = icmp ne %struct.text_list_entry_s* %279, null
  br i1 %tobool316, label %while.body.317, label %while.end.375

while.body.317:                                   ; preds = %while.cond.315
  %arraydecay318 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %280 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start319 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %280, i32 0, i32 2
  %x320 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start319, i32 0, i32 0
  %281 = load double, double* %x320, align 8, !tbaa !76
  %282 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start321 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %282, i32 0, i32 2
  %y322 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start321, i32 0, i32 1
  %283 = load double, double* %y322, align 8, !tbaa !77
  %284 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end323 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %284, i32 0, i32 3
  %x324 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end323, i32 0, i32 0
  %285 = load double, double* %x324, align 8, !tbaa !78
  %286 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end325 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %286, i32 0, i32 3
  %y326 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end325, i32 0, i32 1
  %287 = load double, double* %y326, align 8, !tbaa !79
  %288 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %FontName327 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %288, i32 0, i32 12
  %289 = load i8*, i8** %FontName327, align 8, !tbaa !39
  %290 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %size328 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %290, i32 0, i32 15
  %291 = load double, double* %size328, align 8, !tbaa !80
  %call329 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay318, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), double %281, double %283, double %285, double %287, i8* %289, double %291) #6
  %arraydecay330 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %arraydecay331 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %call332 = call i64 @strlen(i8* %arraydecay331) #7
  %292 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file333 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %292, i32 0, i32 45
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %file333, align 8, !tbaa !22
  %call334 = call i64 @fwrite(i8* %arraydecay330, i64 1, i64 %call332, %struct._IO_FILE* %293) #6
  %294 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start335 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %294, i32 0, i32 2
  %x336 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start335, i32 0, i32 0
  %295 = load double, double* %x336, align 8, !tbaa !76
  %conv337 = fptrunc double %295 to float
  store float %conv337, float* %xpos, align 4, !tbaa !81
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.369, %while.body.317
  %296 = load i32, i32* %i, align 4, !tbaa !23
  %297 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text_Size339 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %297, i32 0, i32 8
  %298 = load i32, i32* %Unicode_Text_Size339, align 4, !tbaa !82
  %cmp340 = icmp slt i32 %296, %298
  br i1 %cmp340, label %for.body.342, label %for.end.371

for.body.342:                                     ; preds = %for.cond.338
  %299 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom343 = sext i32 %299 to i64
  %300 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text344 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %300, i32 0, i32 7
  %301 = load i16*, i16** %Unicode_Text344, align 8, !tbaa !35
  %arrayidx345 = getelementptr inbounds i16, i16* %301, i64 %idxprom343
  %302 = load i16, i16* %arrayidx345, align 2, !tbaa !83
  %303 = bitcast [32 x i8]* %Escaped to i8*
  %call346 = call i32 @escaped_Unicode(i16 zeroext %302, i8* %303) #6
  %arraydecay347 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %304 = load float, float* %xpos, align 4, !tbaa !81
  %conv348 = fpext float %304 to double
  %305 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start349 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %305, i32 0, i32 2
  %y350 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start349, i32 0, i32 1
  %306 = load double, double* %y350, align 8, !tbaa !77
  %307 = load float, float* %xpos, align 4, !tbaa !81
  %308 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom351 = sext i32 %308 to i64
  %309 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths352 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %309, i32 0, i32 6
  %310 = load float*, float** %Widths352, align 8, !tbaa !38
  %arrayidx353 = getelementptr inbounds float, float* %310, i64 %idxprom351
  %311 = load float, float* %arrayidx353, align 4, !tbaa !81
  %add354 = fadd float %307, %311
  %conv355 = fpext float %add354 to double
  %312 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end356 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %312, i32 0, i32 3
  %y357 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end356, i32 0, i32 1
  %313 = load double, double* %y357, align 8, !tbaa !79
  %arraydecay358 = getelementptr inbounds [32 x i8], [32 x i8]* %Escaped, i32 0, i32 0
  %call359 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay347, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), double %conv348, double %306, double %conv355, double %313, i8* %arraydecay358) #6
  %arraydecay360 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %arraydecay361 = getelementptr inbounds [512 x i8], [512 x i8]* %TextBuffer, i32 0, i32 0
  %call362 = call i64 @strlen(i8* %arraydecay361) #7
  %314 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file363 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %314, i32 0, i32 45
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %file363, align 8, !tbaa !22
  %call364 = call i64 @fwrite(i8* %arraydecay360, i64 1, i64 %call362, %struct._IO_FILE* %315) #6
  %316 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom365 = sext i32 %316 to i64
  %317 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Widths366 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %317, i32 0, i32 6
  %318 = load float*, float** %Widths366, align 8, !tbaa !38
  %arrayidx367 = getelementptr inbounds float, float* %318, i64 %idxprom365
  %319 = load float, float* %arrayidx367, align 4, !tbaa !81
  %320 = load float, float* %xpos, align 4, !tbaa !81
  %add368 = fadd float %320, %319
  store float %add368, float* %xpos, align 4, !tbaa !81
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.body.342
  %321 = load i32, i32* %i, align 4, !tbaa !23
  %inc370 = add nsw i32 %321, 1
  store i32 %inc370, i32* %i, align 4, !tbaa !23
  br label %for.cond.338

for.end.371:                                      ; preds = %for.cond.338
  %322 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file372 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %322, i32 0, i32 45
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %file372, align 8, !tbaa !22
  %call373 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %323) #6
  %324 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next374 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %324, i32 0, i32 1
  %325 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next374, align 8, !tbaa !40
  store %struct.text_list_entry_s* %325, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.315

while.end.375:                                    ; preds = %while.cond.315
  %326 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file376 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %326, i32 0, i32 45
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** %file376, align 8, !tbaa !22
  %call377 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %327) #6
  %328 = load %struct.page_text_list_s*, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  %next378 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %328, i32 0, i32 1
  %329 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next378, align 8, !tbaa !42
  store %struct.page_text_list_s* %329, %struct.page_text_list_s** %block_line, align 8, !tbaa !1
  br label %while.cond.309

while.end.379:                                    ; preds = %while.cond.309
  %330 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file380 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %330, i32 0, i32 45
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** %file380, align 8, !tbaa !22
  %call381 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %331) #6
  %332 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData382 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %332, i32 0, i32 43
  %y_ordered_list383 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData382, i32 0, i32 1
  %333 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list383, align 8, !tbaa !21
  store %struct.page_text_list_s* %333, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %334 = bitcast [4 x float]* %BBox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %334) #2
  %335 = bitcast %struct.page_text_list_s** %block_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #2
  %336 = bitcast %struct.page_text_s* %block to i8*
  call void @llvm.lifetime.end(i64 24, i8* %336) #2
  %337 = bitcast %struct.page_text_list_s** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #2
  br label %do.cond

do.cond:                                          ; preds = %while.end.379
  %338 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool384 = icmp ne %struct.page_text_list_s* %338, null
  br i1 %tobool384, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %339 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file385 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %339, i32 0, i32 45
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %file385, align 8, !tbaa !22
  %call386 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %340) #6
  br label %if.end.387

if.end.387:                                       ; preds = %do.end, %while.end
  %341 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #2
  %342 = bitcast float* %xpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #2
  %343 = bitcast [32 x i8]* %Escaped to i8*
  call void @llvm.lifetime.end(i64 32, i8* %343) #2
  %344 = bitcast [512 x i8]* %TextBuffer to i8*
  call void @llvm.lifetime.end(i64 512, i8* %344) #2
  %345 = bitcast %struct.text_list_entry_s** %next_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #2
  %346 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #2
  %347 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #2
  ret i32 0
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @simple_text_output(%struct.gx_device_txtwrite_s* %tdev) #1 {
entry:
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %chars_wide = alloca i32, align 4
  %char_size = alloca float, align 4
  %min_size = alloca float, align 4
  %min_width_size = alloca float, align 4
  %x_entry = alloca %struct.text_list_entry_s*, align 8
  %y_list = alloca %struct.page_text_list_s*, align 8
  %UnicodeSpace = alloca i16, align 2
  %UnicodeEOL = alloca [2 x i16], align 2
  %width16 = alloca float, align 4
  %xpos = alloca float, align 4
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %chars_wide to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %char_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %min_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast float* %min_width_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i16* %UnicodeSpace to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  store i16 32, i16* %UnicodeSpace, align 2, !tbaa !83
  %7 = bitcast [2 x i16]* %UnicodeEOL to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast [2 x i16]* %UnicodeEOL to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([2 x i16]* @simple_text_output.UnicodeEOL to i8*), i64 4, i32 2, i1 false)
  %9 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call = call i32 @merge_vertically(%struct.gx_device_txtwrite_s* %9) #6
  %10 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call1 = call i32 @merge_horizontally(%struct.gx_device_txtwrite_s* %10) #6
  %11 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4, !tbaa !86
  %conv = sitofp i32 %12 to float
  store float %conv, float* %min_size, align 4, !tbaa !81
  %13 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %13, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 1
  %14 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  store %struct.page_text_list_s* %14, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %15 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool = icmp ne %struct.page_text_list_s* %15, null
  br i1 %tobool, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %16 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %16, i32 0, i32 5
  %17 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  store %struct.text_list_entry_s* %17, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %18 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.text_list_entry_s* %18, null
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.2
  %19 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %19, i32 0, i32 15
  %20 = load double, double* %size, align 8, !tbaa !80
  %21 = load float, float* %min_size, align 4, !tbaa !81
  %conv5 = fpext float %21 to double
  %cmp = fcmp olt double %20, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.4
  %22 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %size7 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %22, i32 0, i32 15
  %23 = load double, double* %size7, align 8, !tbaa !80
  %conv8 = fptrunc double %23 to float
  store float %conv8, float* %min_size, align 4, !tbaa !81
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.4
  %24 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %24, i32 0, i32 1
  %25 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next, align 8, !tbaa !40
  store %struct.text_list_entry_s* %25, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %26 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %26, i32 0, i32 1
  %27 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next9, align 8, !tbaa !42
  store %struct.page_text_list_s* %27, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  %28 = load float, float* %min_size, align 4, !tbaa !81
  store float %28, float* %min_width_size, align 4, !tbaa !81
  %29 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData11 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %29, i32 0, i32 43
  %y_ordered_list12 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData11, i32 0, i32 1
  %30 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list12, align 8, !tbaa !21
  store %struct.page_text_list_s* %30, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.end.33, %while.end.10
  %31 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool14 = icmp ne %struct.page_text_list_s* %31, null
  br i1 %tobool14, label %while.body.15, label %while.end.35

while.body.15:                                    ; preds = %while.cond.13
  %32 = bitcast float* %width16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list17 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %33, i32 0, i32 5
  %34 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list17, align 8, !tbaa !25
  store %struct.text_list_entry_s* %34, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.31, %while.body.15
  %35 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool19 = icmp ne %struct.text_list_entry_s* %35, null
  br i1 %tobool19, label %while.body.20, label %while.end.33

while.body.20:                                    ; preds = %while.cond.18
  %36 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %36, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %37 = load double, double* %x, align 8, !tbaa !78
  %38 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %38, i32 0, i32 2
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %39 = load double, double* %x21, align 8, !tbaa !76
  %sub = fsub double %37, %39
  %40 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text_Size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %40, i32 0, i32 8
  %41 = load i32, i32* %Unicode_Text_Size, align 4, !tbaa !82
  %conv22 = sitofp i32 %41 to double
  %div = fdiv double %sub, %conv22
  %conv23 = fptrunc double %div to float
  store float %conv23, float* %width16, align 4, !tbaa !81
  %42 = load float, float* %width16, align 4, !tbaa !81
  %43 = load float, float* %min_width_size, align 4, !tbaa !81
  %cmp24 = fcmp olt float %42, %43
  br i1 %cmp24, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %while.body.20
  %44 = load float, float* %width16, align 4, !tbaa !81
  %conv26 = fpext float %44 to double
  %45 = load float, float* %min_size, align 4, !tbaa !81
  %conv27 = fpext float %45 to double
  %mul = fmul double %conv27, 7.500000e-01
  %cmp28 = fcmp oge double %conv26, %mul
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  %46 = load float, float* %width16, align 4, !tbaa !81
  store float %46, float* %min_width_size, align 4, !tbaa !81
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true, %while.body.20
  %47 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next32 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %47, i32 0, i32 1
  %48 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next32, align 8, !tbaa !40
  store %struct.text_list_entry_s* %48, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.18

while.end.33:                                     ; preds = %while.cond.18
  %49 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next34 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %49, i32 0, i32 1
  %50 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next34, align 8, !tbaa !42
  store %struct.page_text_list_s* %50, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %51 = bitcast float* %width16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  br label %while.cond.13

while.end.35:                                     ; preds = %while.cond.13
  %52 = load float, float* %min_width_size, align 4, !tbaa !81
  store float %52, float* %min_size, align 4, !tbaa !81
  %53 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %width36 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %53, i32 0, i32 13
  %54 = load i32, i32* %width36, align 4, !tbaa !86
  %conv37 = sitofp i32 %54 to float
  %55 = load float, float* %min_size, align 4, !tbaa !81
  %div38 = fdiv float %conv37, %55
  %conv39 = fpext float %div38 to double
  %call40 = call double @ceil(double %conv39) #9
  %conv41 = fptosi double %call40 to i32
  store i32 %conv41, i32* %chars_wide, align 4, !tbaa !23
  %56 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %width42 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %56, i32 0, i32 13
  %57 = load i32, i32* %width42, align 4, !tbaa !86
  %conv43 = sitofp i32 %57 to float
  %58 = load i32, i32* %chars_wide, align 4, !tbaa !23
  %conv44 = sitofp i32 %58 to float
  %div45 = fdiv float %conv43, %conv44
  store float %div45, float* %char_size, align 4, !tbaa !81
  %59 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData46 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %59, i32 0, i32 43
  %y_ordered_list47 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData46, i32 0, i32 1
  %60 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list47, align 8, !tbaa !21
  store %struct.page_text_list_s* %60, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.82, %while.end.35
  %61 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool49 = icmp ne %struct.page_text_list_s* %61, null
  br i1 %tobool49, label %while.body.50, label %while.end.83

while.body.50:                                    ; preds = %while.cond.48
  %62 = bitcast float* %xpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  store float 0.000000e+00, float* %xpos, align 4, !tbaa !81
  %63 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list51 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %63, i32 0, i32 5
  %64 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list51, align 8, !tbaa !25
  store %struct.text_list_entry_s* %64, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.74, %while.body.50
  %65 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %tobool53 = icmp ne %struct.text_list_entry_s* %65, null
  br i1 %tobool53, label %while.body.54, label %while.end.75

while.body.54:                                    ; preds = %while.cond.52
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.61, %while.body.54
  %66 = load float, float* %xpos, align 4, !tbaa !81
  %conv56 = fpext float %66 to double
  %67 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %start57 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %67, i32 0, i32 2
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start57, i32 0, i32 0
  %68 = load double, double* %x58, align 8, !tbaa !76
  %cmp59 = fcmp olt double %conv56, %68
  br i1 %cmp59, label %while.body.61, label %while.end.63

while.body.61:                                    ; preds = %while.cond.55
  %69 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call62 = call i32 @write_simple_text(i16* %UnicodeSpace, i32 1, %struct.gx_device_txtwrite_s* %69) #6
  %70 = load float, float* %char_size, align 4, !tbaa !81
  %71 = load float, float* %xpos, align 4, !tbaa !81
  %add = fadd float %71, %70
  store float %add, float* %xpos, align 4, !tbaa !81
  br label %while.cond.55

while.end.63:                                     ; preds = %while.cond.55
  %72 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %72, i32 0, i32 7
  %73 = load i16*, i16** %Unicode_Text, align 8, !tbaa !35
  %74 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text_Size64 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %74, i32 0, i32 8
  %75 = load i32, i32* %Unicode_Text_Size64, align 4, !tbaa !82
  %76 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call65 = call i32 @write_simple_text(i16* %73, i32 %75, %struct.gx_device_txtwrite_s* %76) #6
  %77 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %Unicode_Text_Size66 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %77, i32 0, i32 8
  %78 = load i32, i32* %Unicode_Text_Size66, align 4, !tbaa !82
  %conv67 = sitofp i32 %78 to float
  %79 = load float, float* %char_size, align 4, !tbaa !81
  %mul68 = fmul float %conv67, %79
  %80 = load float, float* %xpos, align 4, !tbaa !81
  %add69 = fadd float %80, %mul68
  store float %add69, float* %xpos, align 4, !tbaa !81
  %81 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next70 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %81, i32 0, i32 1
  %82 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next70, align 8, !tbaa !40
  %tobool71 = icmp ne %struct.text_list_entry_s* %82, null
  br i1 %tobool71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %while.end.63
  %83 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  %next73 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %83, i32 0, i32 1
  %84 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next73, align 8, !tbaa !40
  store %struct.text_list_entry_s* %84, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %if.end.74

if.else:                                          ; preds = %while.end.63
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %x_entry, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.72
  br label %while.cond.52

while.end.75:                                     ; preds = %while.cond.52
  %85 = bitcast [2 x i16]* %UnicodeEOL to i16*
  %86 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %call76 = call i32 @write_simple_text(i16* %85, i32 2, %struct.gx_device_txtwrite_s* %86) #6
  %87 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next77 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %87, i32 0, i32 1
  %88 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next77, align 8, !tbaa !42
  %tobool78 = icmp ne %struct.page_text_list_s* %88, null
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %while.end.75
  %89 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next80 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %89, i32 0, i32 1
  %90 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next80, align 8, !tbaa !42
  store %struct.page_text_list_s* %90, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.82

if.else.81:                                       ; preds = %while.end.75
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.79
  %91 = bitcast float* %xpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %while.cond.48

while.end.83:                                     ; preds = %while.cond.48
  %92 = bitcast [2 x i16]* %UnicodeEOL to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i16* %UnicodeSpace to i8*
  call void @llvm.lifetime.end(i64 2, i8* %93) #2
  %94 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast %struct.text_list_entry_s** %x_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast float* %min_width_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast float* %min_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast float* %char_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %chars_wide to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  ret i32 0
}

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s*, i8**, i8*, i32, %struct.gs_memory_s*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @escaped_Unicode(i16 zeroext %Unicode, i8* %Buf) #1 {
entry:
  %Unicode.addr = alloca i16, align 2
  %Buf.addr = alloca i8*, align 8
  store i16 %Unicode, i16* %Unicode.addr, align 2, !tbaa !83
  store i8* %Buf, i8** %Buf.addr, align 8, !tbaa !1
  %0 = load i16, i16* %Unicode.addr, align 2, !tbaa !83
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.1
    i32 38, label %sw.bb.3
    i32 34, label %sw.bb.5
    i32 39, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %3 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %call4 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %call6 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %call8 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load i16, i16* %Unicode.addr, align 2, !tbaa !83
  %conv9 = zext i16 %6 to i32
  %cmp = icmp sge i32 %conv9, 32
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.default
  %7 = load i16, i16* %Unicode.addr, align 2, !tbaa !83
  %conv11 = zext i16 %7 to i32
  %cmp12 = icmp sle i32 %conv11, 127
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %9 = load i16, i16* %Unicode.addr, align 2, !tbaa !83
  %conv14 = zext i16 %9 to i32
  %call15 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %conv14) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.default
  %10 = load i8*, i8** %Buf.addr, align 8, !tbaa !1
  %11 = load i16, i16* %Unicode.addr, align 2, !tbaa !83
  %conv16 = zext i16 %11 to i32
  %call17 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %conv16) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_vertically(%struct.gx_device_txtwrite_s* %tdev) #1 {
entry:
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %y_list = alloca %struct.page_text_list_s*, align 8
  %next2 = alloca %struct.page_text_list_s*, align 8
  %collision = alloca i32, align 4
  %overlap = alloca float, align 4
  %upper = alloca %struct.text_list_entry_s*, align 8
  %lower = alloca %struct.text_list_entry_s*, align 8
  %from = alloca %struct.text_list_entry_s*, align 8
  %to = alloca %struct.text_list_entry_s*, align 8
  %new_order = alloca %struct.text_list_entry_s*, align 8
  %current = alloca %struct.text_list_entry_s*, align 8
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %1, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 1
  %2 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  store %struct.page_text_list_s* %2, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %entry
  %3 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool = icmp ne %struct.page_text_list_s* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %4, i32 0, i32 1
  %5 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next, align 8, !tbaa !42
  %tobool1 = icmp ne %struct.page_text_list_s* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end.114

while.body:                                       ; preds = %land.end
  %7 = bitcast %struct.page_text_list_s** %next2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %8, i32 0, i32 1
  %9 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next3, align 8, !tbaa !42
  store %struct.page_text_list_s* %9, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %10 = bitcast i32* %collision to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %collision, align 4, !tbaa !23
  %11 = bitcast float* %overlap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %12, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 1
  %13 = load double, double* %y, align 8, !tbaa !87
  %14 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %MaxY = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %14, i32 0, i32 4
  %15 = load float, float* %MaxY, align 4, !tbaa !88
  %conv = fpext float %15 to double
  %add = fadd double %13, %conv
  %16 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %start4 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %16, i32 0, i32 2
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start4, i32 0, i32 1
  %17 = load double, double* %y5, align 8, !tbaa !87
  %18 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %MinY = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %18, i32 0, i32 3
  %19 = load float, float* %MinY, align 4, !tbaa !89
  %conv6 = fpext float %19 to double
  %add7 = fadd double %17, %conv6
  %sub = fsub double %add, %add7
  %conv8 = fptrunc double %sub to float
  store float %conv8, float* %overlap, align 4, !tbaa !81
  %20 = load float, float* %overlap, align 4, !tbaa !81
  %21 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %MaxY9 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %21, i32 0, i32 4
  %22 = load float, float* %MaxY9, align 4, !tbaa !88
  %23 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %MinY10 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %23, i32 0, i32 3
  %24 = load float, float* %MinY10, align 4, !tbaa !89
  %sub11 = fsub float %22, %24
  %div = fdiv float %sub11, 4.000000e+00
  %cmp = fcmp oge float %20, %div
  br i1 %cmp, label %if.then, label %if.else.112

if.then:                                          ; preds = %while.body
  %25 = bitcast %struct.text_list_entry_s** %upper to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %26, i32 0, i32 5
  %27 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  store %struct.text_list_entry_s* %27, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %28 = bitcast %struct.text_list_entry_s** %lower to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.end, %if.then
  %29 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %tobool14 = icmp ne %struct.text_list_entry_s* %29, null
  br i1 %tobool14, label %land.rhs.15, label %land.end.17

land.rhs.15:                                      ; preds = %while.cond.13
  %30 = load i32, i32* %collision, align 4, !tbaa !23
  %tobool16 = icmp ne i32 %30, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.15, %while.cond.13
  %31 = phi i1 [ false, %while.cond.13 ], [ %lnot, %land.rhs.15 ]
  br i1 %31, label %while.body.18, label %while.end.50

while.body.18:                                    ; preds = %land.end.17
  %32 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %x_ordered_list19 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %32, i32 0, i32 5
  %33 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list19, align 8, !tbaa !25
  store %struct.text_list_entry_s* %33, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.47, %while.body.18
  %34 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  %tobool21 = icmp ne %struct.text_list_entry_s* %34, null
  br i1 %tobool21, label %land.rhs.22, label %land.end.25

land.rhs.22:                                      ; preds = %while.cond.20
  %35 = load i32, i32* %collision, align 4, !tbaa !23
  %tobool23 = icmp ne i32 %35, 0
  %lnot24 = xor i1 %tobool23, true
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.22, %while.cond.20
  %36 = phi i1 [ false, %while.cond.20 ], [ %lnot24, %land.rhs.22 ]
  br i1 %36, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %land.end.25
  %37 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %37, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start27, i32 0, i32 0
  %38 = load double, double* %x, align 8, !tbaa !76
  %39 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  %start28 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %39, i32 0, i32 2
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start28, i32 0, i32 0
  %40 = load double, double* %x29, align 8, !tbaa !76
  %cmp30 = fcmp oge double %38, %40
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %while.body.26
  %41 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %start33 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %41, i32 0, i32 2
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start33, i32 0, i32 0
  %42 = load double, double* %x34, align 8, !tbaa !76
  %43 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %43, i32 0, i32 3
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %44 = load double, double* %x35, align 8, !tbaa !78
  %cmp36 = fcmp ole double %42, %44
  br i1 %cmp36, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then.32
  store i32 1, i32* %collision, align 4, !tbaa !23
  br label %while.end

if.end:                                           ; preds = %if.then.32
  br label %if.end.47

if.else:                                          ; preds = %while.body.26
  %45 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %end39 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %45, i32 0, i32 3
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end39, i32 0, i32 0
  %46 = load double, double* %x40, align 8, !tbaa !78
  %47 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  %start41 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %47, i32 0, i32 2
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start41, i32 0, i32 0
  %48 = load double, double* %x42, align 8, !tbaa !76
  %cmp43 = fcmp ogt double %46, %48
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  store i32 1, i32* %collision, align 4, !tbaa !23
  br label %while.end

if.end.46:                                        ; preds = %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %49 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  %next48 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %49, i32 0, i32 1
  %50 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next48, align 8, !tbaa !40
  store %struct.text_list_entry_s* %50, %struct.text_list_entry_s** %lower, align 8, !tbaa !1
  br label %while.cond.20

while.end:                                        ; preds = %if.then.45, %if.then.38, %land.end.25
  %51 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  %next49 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %51, i32 0, i32 1
  %52 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next49, align 8, !tbaa !40
  store %struct.text_list_entry_s* %52, %struct.text_list_entry_s** %upper, align 8, !tbaa !1
  br label %while.cond.13

while.end.50:                                     ; preds = %land.end.17
  %53 = load i32, i32* %collision, align 4, !tbaa !23
  %tobool51 = icmp ne i32 %53, 0
  br i1 %tobool51, label %if.else.110, label %if.then.52

if.then.52:                                       ; preds = %while.end.50
  %54 = bitcast %struct.text_list_entry_s** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = bitcast %struct.text_list_entry_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = bitcast %struct.text_list_entry_s** %new_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = bitcast %struct.text_list_entry_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %58 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list53 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %58, i32 0, i32 5
  %59 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list53, align 8, !tbaa !25
  store %struct.text_list_entry_s* %59, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %60 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %x_ordered_list54 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %60, i32 0, i32 5
  %61 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list54, align 8, !tbaa !25
  store %struct.text_list_entry_s* %61, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %62 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %start55 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %62, i32 0, i32 2
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start55, i32 0, i32 0
  %63 = load double, double* %x56, align 8, !tbaa !76
  %64 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %start57 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %64, i32 0, i32 2
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start57, i32 0, i32 0
  %65 = load double, double* %x58, align 8, !tbaa !76
  %cmp59 = fcmp olt double %63, %65
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.then.52
  %66 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  store %struct.text_list_entry_s* %66, %struct.text_list_entry_s** %new_order, align 8, !tbaa !1
  store %struct.text_list_entry_s* %66, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %67 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next62 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %67, i32 0, i32 1
  %68 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next62, align 8, !tbaa !40
  store %struct.text_list_entry_s* %68, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  br label %if.end.65

if.else.63:                                       ; preds = %if.then.52
  %69 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  store %struct.text_list_entry_s* %69, %struct.text_list_entry_s** %new_order, align 8, !tbaa !1
  store %struct.text_list_entry_s* %69, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %70 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next64 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %70, i32 0, i32 1
  %71 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next64, align 8, !tbaa !40
  store %struct.text_list_entry_s* %71, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  br label %while.cond.66

while.cond.66:                                    ; preds = %if.end.85, %if.end.65
  %72 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %tobool67 = icmp ne %struct.text_list_entry_s* %72, null
  br i1 %tobool67, label %land.rhs.68, label %land.end.70

land.rhs.68:                                      ; preds = %while.cond.66
  %73 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %tobool69 = icmp ne %struct.text_list_entry_s* %73, null
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.68, %while.cond.66
  %74 = phi i1 [ false, %while.cond.66 ], [ %tobool69, %land.rhs.68 ]
  br i1 %74, label %while.body.71, label %while.end.87

while.body.71:                                    ; preds = %land.end.70
  %75 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %start72 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %75, i32 0, i32 2
  %x73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start72, i32 0, i32 0
  %76 = load double, double* %x73, align 8, !tbaa !76
  %77 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %start74 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %77, i32 0, i32 2
  %x75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start74, i32 0, i32 0
  %78 = load double, double* %x75, align 8, !tbaa !76
  %cmp76 = fcmp olt double %76, %78
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %while.body.71
  %79 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %80 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %next79 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %80, i32 0, i32 1
  store %struct.text_list_entry_s* %79, %struct.text_list_entry_s** %next79, align 8, !tbaa !40
  %81 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %82 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %previous = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %82, i32 0, i32 0
  store %struct.text_list_entry_s* %81, %struct.text_list_entry_s** %previous, align 8, !tbaa !41
  %83 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next80 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %83, i32 0, i32 1
  %84 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next80, align 8, !tbaa !40
  store %struct.text_list_entry_s* %84, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.85

if.else.81:                                       ; preds = %while.body.71
  %85 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %86 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %next82 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %86, i32 0, i32 1
  store %struct.text_list_entry_s* %85, %struct.text_list_entry_s** %next82, align 8, !tbaa !40
  %87 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %88 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %previous83 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %88, i32 0, i32 0
  store %struct.text_list_entry_s* %87, %struct.text_list_entry_s** %previous83, align 8, !tbaa !41
  %89 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next84 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %89, i32 0, i32 1
  %90 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next84, align 8, !tbaa !40
  store %struct.text_list_entry_s* %90, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.81, %if.then.78
  %91 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %next86 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %91, i32 0, i32 1
  %92 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next86, align 8, !tbaa !40
  store %struct.text_list_entry_s* %92, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  br label %while.cond.66

while.end.87:                                     ; preds = %land.end.70
  %93 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %tobool88 = icmp ne %struct.text_list_entry_s* %93, null
  br i1 %tobool88, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %while.end.87
  %94 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %95 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %previous90 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %95, i32 0, i32 0
  store %struct.text_list_entry_s* %94, %struct.text_list_entry_s** %previous90, align 8, !tbaa !41
  %96 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %97 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %next91 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %97, i32 0, i32 1
  store %struct.text_list_entry_s* %96, %struct.text_list_entry_s** %next91, align 8, !tbaa !40
  br label %if.end.98

if.else.92:                                       ; preds = %while.end.87
  %98 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %tobool93 = icmp ne %struct.text_list_entry_s* %98, null
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.else.92
  %99 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %100 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %previous95 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %100, i32 0, i32 0
  store %struct.text_list_entry_s* %99, %struct.text_list_entry_s** %previous95, align 8, !tbaa !41
  %101 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %102 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %current, align 8, !tbaa !1
  %next96 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %102, i32 0, i32 1
  store %struct.text_list_entry_s* %101, %struct.text_list_entry_s** %next96, align 8, !tbaa !40
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.else.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.89
  %103 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %new_order, align 8, !tbaa !1
  %104 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list99 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %104, i32 0, i32 5
  store %struct.text_list_entry_s* %103, %struct.text_list_entry_s** %x_ordered_list99, align 8, !tbaa !25
  %105 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %next100 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %105, i32 0, i32 1
  %106 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next100, align 8, !tbaa !42
  %107 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next101 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %107, i32 0, i32 1
  store %struct.page_text_list_s* %106, %struct.page_text_list_s** %next101, align 8, !tbaa !42
  %108 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %next102 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %108, i32 0, i32 1
  %109 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next102, align 8, !tbaa !42
  %tobool103 = icmp ne %struct.page_text_list_s* %109, null
  br i1 %tobool103, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.98
  %110 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %111 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %next105 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %111, i32 0, i32 1
  %112 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next105, align 8, !tbaa !42
  %previous106 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %112, i32 0, i32 0
  store %struct.page_text_list_s* %110, %struct.page_text_list_s** %previous106, align 8, !tbaa !43
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.end.98
  %113 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %113, i32 0, i32 3
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 3
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %116 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %117 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory108, align 8, !tbaa !30
  %non_gc_memory109 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory109, align 8, !tbaa !31
  %120 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  %121 = bitcast %struct.page_text_list_s* %120 to i8*
  call void %116(%struct.gs_memory_s* %119, i8* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #6
  %122 = bitcast %struct.text_list_entry_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast %struct.text_list_entry_s** %new_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast %struct.text_list_entry_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast %struct.text_list_entry_s** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  br label %if.end.111

if.else.110:                                      ; preds = %while.end.50
  %126 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  store %struct.page_text_list_s* %126, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.end.107
  %127 = bitcast %struct.text_list_entry_s** %lower to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast %struct.text_list_entry_s** %upper to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  br label %if.end.113

if.else.112:                                      ; preds = %while.body
  %129 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next2, align 8, !tbaa !1
  store %struct.page_text_list_s* %129, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.end.111
  %130 = bitcast float* %overlap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %collision to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast %struct.page_text_list_s** %next2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  br label %while.cond

while.end.114:                                    ; preds = %land.end
  %133 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_horizontally(%struct.gx_device_txtwrite_s* %tdev) #1 {
entry:
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %UnicodeSpace = alloca i16, align 2
  %y_list = alloca %struct.page_text_list_s*, align 8
  %average_width = alloca float, align 4
  %from = alloca %struct.text_list_entry_s*, align 8
  %to = alloca %struct.text_list_entry_s*, align 8
  %NewText = alloca i16*, align 8
  %NewWidths = alloca float*, align 8
  %NewText132 = alloca i16*, align 8
  %NewWidths133 = alloca float*, align 8
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %0 = bitcast i16* %UnicodeSpace to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  store i16 32, i16* %UnicodeSpace, align 2, !tbaa !83
  %1 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %2, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 1
  %3 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  store %struct.page_text_list_s* %3, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %4 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %tobool = icmp ne %struct.page_text_list_s* %4, null
  br i1 %tobool, label %while.body, label %while.end.282

while.body:                                       ; preds = %while.cond
  %5 = bitcast float* %average_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.text_list_entry_s** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.text_list_entry_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %8, i32 0, i32 5
  %9 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  store %struct.text_list_entry_s* %9, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %10 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %10, i32 0, i32 1
  %11 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next, align 8, !tbaa !40
  store %struct.text_list_entry_s* %11, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.280, %while.body
  %12 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.text_list_entry_s* %12, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %13 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.text_list_entry_s* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %14 = phi i1 [ false, %while.cond.1 ], [ %tobool3, %land.rhs ]
  br i1 %14, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %land.end
  %15 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %15, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %16 = load double, double* %x, align 8, !tbaa !78
  %17 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %17, i32 0, i32 2
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %18 = load double, double* %x5, align 8, !tbaa !76
  %sub = fsub double %16, %18
  %19 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %19, i32 0, i32 8
  %20 = load i32, i32* %Unicode_Text_Size, align 4, !tbaa !82
  %conv = sitofp i32 %20 to double
  %div = fdiv double %sub, %conv
  %conv6 = fptrunc double %div to float
  store float %conv6, float* %average_width, align 4, !tbaa !81
  %21 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %start7 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %21, i32 0, i32 2
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start7, i32 0, i32 0
  %22 = load double, double* %x8, align 8, !tbaa !76
  %23 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end9 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %23, i32 0, i32 3
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end9, i32 0, i32 0
  %24 = load double, double* %x10, align 8, !tbaa !78
  %sub11 = fsub double %22, %24
  %25 = load float, float* %average_width, align 4, !tbaa !81
  %div12 = fdiv float %25, 2.000000e+00
  %conv13 = fpext float %div12 to double
  %cmp = fcmp olt double %sub11, %conv13
  br i1 %cmp, label %if.then, label %if.else.121

if.then:                                          ; preds = %while.body.4
  %26 = bitcast i16** %NewText to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = bitcast float** %NewWidths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %33 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !30
  %stable_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 0
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory16, align 8, !tbaa !72
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !31
  %37 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size18 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %37, i32 0, i32 8
  %38 = load i32, i32* %Unicode_Text_Size18, align 4, !tbaa !82
  %39 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size19 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %39, i32 0, i32 8
  %40 = load i32, i32* %Unicode_Text_Size19, align 4, !tbaa !82
  %add = add nsw i32 %38, %40
  %call = call i8* %32(%struct.gs_memory_s* %36, i32 %add, i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)) #6
  %41 = bitcast i8* %call to i16*
  store i16* %41, i16** %NewText, align 8, !tbaa !1
  %42 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !30
  %stable_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 0
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory21, align 8, !tbaa !72
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !31
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %alloc_byte_array24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 10
  %46 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array24, align 8, !tbaa !73
  %47 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !30
  %stable_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 0
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory26, align 8, !tbaa !72
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !31
  %51 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size28 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %51, i32 0, i32 8
  %52 = load i32, i32* %Unicode_Text_Size28, align 4, !tbaa !82
  %53 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size29 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %53, i32 0, i32 8
  %54 = load i32, i32* %Unicode_Text_Size29, align 4, !tbaa !82
  %add30 = add nsw i32 %52, %54
  %call31 = call i8* %46(%struct.gs_memory_s* %50, i32 %add30, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #6
  %55 = bitcast i8* %call31 to float*
  store float* %55, float** %NewWidths, align 8, !tbaa !1
  %56 = load i16*, i16** %NewText, align 8, !tbaa !1
  %tobool32 = icmp ne i16* %56, null
  br i1 %tobool32, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %if.then
  %57 = load float*, float** %NewWidths, align 8, !tbaa !1
  %tobool33 = icmp ne float* %57, null
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %if.then
  %58 = load i16*, i16** %NewText, align 8, !tbaa !1
  %tobool35 = icmp ne i16* %58, null
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.34
  %59 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %59, i32 0, i32 3
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !30
  %non_gc_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory38, align 8, !tbaa !31
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %63 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !30
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !31
  %66 = load i16*, i16** %NewText, align 8, !tbaa !1
  %67 = bitcast i16* %66 to i8*
  call void %62(%struct.gs_memory_s* %65, i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.34
  %68 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next42 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %68, i32 0, i32 1
  %69 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next42, align 8, !tbaa !40
  store %struct.text_list_entry_s* %69, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %70 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next43 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %70, i32 0, i32 1
  %71 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next43, align 8, !tbaa !40
  store %struct.text_list_entry_s* %71, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.120

if.else:                                          ; preds = %lor.lhs.false
  %72 = load i16*, i16** %NewText, align 8, !tbaa !1
  %73 = bitcast i16* %72 to i8*
  %74 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %74, i32 0, i32 7
  %75 = load i16*, i16** %Unicode_Text, align 8, !tbaa !35
  %76 = bitcast i16* %75 to i8*
  %77 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size44 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %77, i32 0, i32 8
  %78 = load i32, i32* %Unicode_Text_Size44, align 4, !tbaa !82
  %conv45 = sext i32 %78 to i64
  %mul = mul i64 %conv45, 2
  %call46 = call i8* @memcpy(i8* %73, i8* %76, i64 %mul) #8
  %79 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size47 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %79, i32 0, i32 8
  %80 = load i32, i32* %Unicode_Text_Size47, align 4, !tbaa !82
  %idxprom = sext i32 %80 to i64
  %81 = load i16*, i16** %NewText, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %81, i64 %idxprom
  %82 = bitcast i16* %arrayidx to i8*
  %83 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text48 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %83, i32 0, i32 7
  %84 = load i16*, i16** %Unicode_Text48, align 8, !tbaa !35
  %85 = bitcast i16* %84 to i8*
  %86 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size49 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %86, i32 0, i32 8
  %87 = load i32, i32* %Unicode_Text_Size49, align 4, !tbaa !82
  %conv50 = sext i32 %87 to i64
  %mul51 = mul i64 %conv50, 2
  %call52 = call i8* @memcpy(i8* %82, i8* %85, i64 %mul51) #8
  %88 = load float*, float** %NewWidths, align 8, !tbaa !1
  %89 = bitcast float* %88 to i8*
  %90 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %90, i32 0, i32 6
  %91 = load float*, float** %Widths, align 8, !tbaa !38
  %92 = bitcast float* %91 to i8*
  %93 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size53 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %93, i32 0, i32 8
  %94 = load i32, i32* %Unicode_Text_Size53, align 4, !tbaa !82
  %conv54 = sext i32 %94 to i64
  %mul55 = mul i64 %conv54, 4
  %call56 = call i8* @memcpy(i8* %89, i8* %92, i64 %mul55) #8
  %95 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size57 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %95, i32 0, i32 8
  %96 = load i32, i32* %Unicode_Text_Size57, align 4, !tbaa !82
  %idxprom58 = sext i32 %96 to i64
  %97 = load float*, float** %NewWidths, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds float, float* %97, i64 %idxprom58
  %98 = bitcast float* %arrayidx59 to i8*
  %99 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Widths60 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %99, i32 0, i32 6
  %100 = load float*, float** %Widths60, align 8, !tbaa !38
  %101 = bitcast float* %100 to i8*
  %102 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size61 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %102, i32 0, i32 8
  %103 = load i32, i32* %Unicode_Text_Size61, align 4, !tbaa !82
  %conv62 = sext i32 %103 to i64
  %mul63 = mul i64 %conv62, 4
  %call64 = call i8* @memcpy(i8* %98, i8* %101, i64 %mul63) #8
  %104 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !30
  %non_gc_memory66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory66, align 8, !tbaa !31
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %106, i32 0, i32 1
  %free_object68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 2
  %107 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object68, align 8, !tbaa !34
  %108 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !30
  %non_gc_memory70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory70, align 8, !tbaa !31
  %111 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text71 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %111, i32 0, i32 7
  %112 = load i16*, i16** %Unicode_Text71, align 8, !tbaa !35
  %113 = bitcast i16* %112 to i8*
  call void %107(%struct.gs_memory_s* %110, i8* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #6
  %114 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %114, i32 0, i32 3
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !30
  %non_gc_memory73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory73, align 8, !tbaa !31
  %procs74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 1
  %free_object75 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs74, i32 0, i32 2
  %117 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object75, align 8, !tbaa !34
  %118 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !30
  %non_gc_memory77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory77, align 8, !tbaa !31
  %121 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text78 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %121, i32 0, i32 7
  %122 = load i16*, i16** %Unicode_Text78, align 8, !tbaa !35
  %123 = bitcast i16* %122 to i8*
  call void %117(%struct.gs_memory_s* %120, i8* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #6
  %124 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory79, align 8, !tbaa !30
  %non_gc_memory80 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory80, align 8, !tbaa !31
  %procs81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 1
  %free_object82 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs81, i32 0, i32 2
  %127 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object82, align 8, !tbaa !34
  %128 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !30
  %non_gc_memory84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory84, align 8, !tbaa !31
  %131 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths85 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %131, i32 0, i32 6
  %132 = load float*, float** %Widths85, align 8, !tbaa !38
  %133 = bitcast float* %132 to i8*
  call void %127(%struct.gs_memory_s* %130, i8* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  %134 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory86 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory86, align 8, !tbaa !30
  %non_gc_memory87 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 3
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory87, align 8, !tbaa !31
  %procs88 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 1
  %free_object89 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs88, i32 0, i32 2
  %137 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object89, align 8, !tbaa !34
  %138 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory90, align 8, !tbaa !30
  %non_gc_memory91 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory91, align 8, !tbaa !31
  %141 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Widths92 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %141, i32 0, i32 6
  %142 = load float*, float** %Widths92, align 8, !tbaa !38
  %143 = bitcast float* %142 to i8*
  call void %137(%struct.gs_memory_s* %140, i8* %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  %144 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %144, i32 0, i32 3
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory93, align 8, !tbaa !30
  %non_gc_memory94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory94, align 8, !tbaa !31
  %procs95 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 1
  %free_object96 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs95, i32 0, i32 2
  %147 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object96, align 8, !tbaa !34
  %148 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory97 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory97, align 8, !tbaa !30
  %non_gc_memory98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 3
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory98, align 8, !tbaa !31
  %151 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %FontName = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %151, i32 0, i32 12
  %152 = load i8*, i8** %FontName, align 8, !tbaa !39
  call void %147(%struct.gs_memory_s* %150, i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #6
  %153 = load i16*, i16** %NewText, align 8, !tbaa !1
  %154 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text99 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %154, i32 0, i32 7
  store i16* %153, i16** %Unicode_Text99, align 8, !tbaa !35
  %155 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size100 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %155, i32 0, i32 8
  %156 = load i32, i32* %Unicode_Text_Size100, align 4, !tbaa !82
  %157 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size101 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %157, i32 0, i32 8
  %158 = load i32, i32* %Unicode_Text_Size101, align 4, !tbaa !82
  %add102 = add nsw i32 %158, %156
  store i32 %add102, i32* %Unicode_Text_Size101, align 4, !tbaa !82
  %159 = load float*, float** %NewWidths, align 8, !tbaa !1
  %160 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths103 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %160, i32 0, i32 6
  store float* %159, float** %Widths103, align 8, !tbaa !38
  %161 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end104 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %161, i32 0, i32 3
  %162 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %end105 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %162, i32 0, i32 3
  %163 = bitcast %struct.gs_point_s* %end104 to i8*
  %164 = bitcast %struct.gs_point_s* %end105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 16, i32 8, i1 false), !tbaa.struct !90
  %165 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next106 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %165, i32 0, i32 1
  %166 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next106, align 8, !tbaa !40
  %167 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next107 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %167, i32 0, i32 1
  store %struct.text_list_entry_s* %166, %struct.text_list_entry_s** %next107, align 8, !tbaa !40
  %168 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next108 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %168, i32 0, i32 1
  %169 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next108, align 8, !tbaa !40
  %tobool109 = icmp ne %struct.text_list_entry_s* %169, null
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.else
  %170 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %171 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next111 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %171, i32 0, i32 1
  %172 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next111, align 8, !tbaa !40
  %previous = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %172, i32 0, i32 0
  store %struct.text_list_entry_s* %170, %struct.text_list_entry_s** %previous, align 8, !tbaa !41
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.else
  %173 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !30
  %non_gc_memory114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory114, align 8, !tbaa !31
  %procs115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 1
  %free_object116 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs115, i32 0, i32 2
  %176 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object116, align 8, !tbaa !34
  %177 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %177, i32 0, i32 3
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !30
  %non_gc_memory118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %178, i32 0, i32 3
  %179 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory118, align 8, !tbaa !31
  %180 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %181 = bitcast %struct.text_list_entry_s* %180 to i8*
  call void %176(%struct.gs_memory_s* %179, i8* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)) #6
  %182 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next119 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %182, i32 0, i32 1
  %183 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next119, align 8, !tbaa !40
  store %struct.text_list_entry_s* %183, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.112, %if.end
  %184 = bitcast float** %NewWidths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = bitcast i16** %NewText to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #2
  br label %if.end.280

if.else.121:                                      ; preds = %while.body.4
  %186 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %start122 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %186, i32 0, i32 2
  %x123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start122, i32 0, i32 0
  %187 = load double, double* %x123, align 8, !tbaa !76
  %188 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end124 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %188, i32 0, i32 3
  %x125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end124, i32 0, i32 0
  %189 = load double, double* %x125, align 8, !tbaa !78
  %sub126 = fsub double %187, %189
  %190 = load float, float* %average_width, align 4, !tbaa !81
  %mul127 = fmul float %190, 2.000000e+00
  %conv128 = fpext float %mul127 to double
  %cmp129 = fcmp olt double %sub126, %conv128
  br i1 %cmp129, label %if.then.131, label %if.else.276

if.then.131:                                      ; preds = %if.else.121
  %191 = bitcast i16** %NewText132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %191) #2
  %192 = bitcast float** %NewWidths133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #2
  %193 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %193, i32 0, i32 3
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory134, align 8, !tbaa !30
  %stable_memory135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %194, i32 0, i32 0
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory135, align 8, !tbaa !72
  %non_gc_memory136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %195, i32 0, i32 3
  %196 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory136, align 8, !tbaa !31
  %procs137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %196, i32 0, i32 1
  %alloc_byte_array138 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs137, i32 0, i32 10
  %197 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array138, align 8, !tbaa !73
  %198 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory139, align 8, !tbaa !30
  %stable_memory140 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 0
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory140, align 8, !tbaa !72
  %non_gc_memory141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %200, i32 0, i32 3
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory141, align 8, !tbaa !31
  %202 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size142 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %202, i32 0, i32 8
  %203 = load i32, i32* %Unicode_Text_Size142, align 4, !tbaa !82
  %204 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size143 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %204, i32 0, i32 8
  %205 = load i32, i32* %Unicode_Text_Size143, align 4, !tbaa !82
  %add144 = add nsw i32 %203, %205
  %add145 = add nsw i32 %add144, 1
  %call146 = call i8* %197(%struct.gs_memory_s* %201, i32 %add145, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %206 = bitcast i8* %call146 to i16*
  store i16* %206, i16** %NewText132, align 8, !tbaa !1
  %207 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory147 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %207, i32 0, i32 3
  %208 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory147, align 8, !tbaa !30
  %stable_memory148 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %208, i32 0, i32 0
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory148, align 8, !tbaa !72
  %non_gc_memory149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %209, i32 0, i32 3
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory149, align 8, !tbaa !31
  %procs150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %210, i32 0, i32 1
  %alloc_byte_array151 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs150, i32 0, i32 10
  %211 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array151, align 8, !tbaa !73
  %212 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %212, i32 0, i32 3
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory152, align 8, !tbaa !30
  %stable_memory153 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 0
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory153, align 8, !tbaa !72
  %non_gc_memory154 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %214, i32 0, i32 3
  %215 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory154, align 8, !tbaa !31
  %216 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size155 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %216, i32 0, i32 8
  %217 = load i32, i32* %Unicode_Text_Size155, align 4, !tbaa !82
  %218 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size156 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %218, i32 0, i32 8
  %219 = load i32, i32* %Unicode_Text_Size156, align 4, !tbaa !82
  %add157 = add nsw i32 %217, %219
  %add158 = add nsw i32 %add157, 1
  %call159 = call i8* %211(%struct.gs_memory_s* %215, i32 %add158, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #6
  %220 = bitcast i8* %call159 to float*
  store float* %220, float** %NewWidths133, align 8, !tbaa !1
  %221 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %tobool160 = icmp ne i16* %221, null
  br i1 %tobool160, label %lor.lhs.false.161, label %if.then.163

lor.lhs.false.161:                                ; preds = %if.then.131
  %222 = load float*, float** %NewWidths133, align 8, !tbaa !1
  %tobool162 = icmp ne float* %222, null
  br i1 %tobool162, label %if.else.175, label %if.then.163

if.then.163:                                      ; preds = %lor.lhs.false.161, %if.then.131
  %223 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %tobool164 = icmp ne i16* %223, null
  br i1 %tobool164, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %if.then.163
  %224 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory166 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %224, i32 0, i32 3
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory166, align 8, !tbaa !30
  %non_gc_memory167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %225, i32 0, i32 3
  %226 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory167, align 8, !tbaa !31
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %226, i32 0, i32 1
  %free_object169 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %227 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object169, align 8, !tbaa !34
  %228 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory170 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %228, i32 0, i32 3
  %229 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory170, align 8, !tbaa !30
  %non_gc_memory171 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %229, i32 0, i32 3
  %230 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory171, align 8, !tbaa !31
  %231 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %232 = bitcast i16* %231 to i8*
  call void %227(%struct.gs_memory_s* %230, i8* %232, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.165, %if.then.163
  %233 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next173 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %233, i32 0, i32 1
  %234 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next173, align 8, !tbaa !40
  store %struct.text_list_entry_s* %234, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %235 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next174 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %235, i32 0, i32 1
  %236 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next174, align 8, !tbaa !40
  store %struct.text_list_entry_s* %236, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.275

if.else.175:                                      ; preds = %lor.lhs.false.161
  %237 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %238 = bitcast i16* %237 to i8*
  %239 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text176 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %239, i32 0, i32 7
  %240 = load i16*, i16** %Unicode_Text176, align 8, !tbaa !35
  %241 = bitcast i16* %240 to i8*
  %242 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size177 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %242, i32 0, i32 8
  %243 = load i32, i32* %Unicode_Text_Size177, align 4, !tbaa !82
  %conv178 = sext i32 %243 to i64
  %mul179 = mul i64 %conv178, 2
  %call180 = call i8* @memcpy(i8* %238, i8* %241, i64 %mul179) #8
  %244 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size181 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %244, i32 0, i32 8
  %245 = load i32, i32* %Unicode_Text_Size181, align 4, !tbaa !82
  %idxprom182 = sext i32 %245 to i64
  %246 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i16, i16* %246, i64 %idxprom182
  %247 = bitcast i16* %arrayidx183 to i8*
  %248 = bitcast i16* %UnicodeSpace to i8*
  %call184 = call i8* @memcpy(i8* %247, i8* %248, i64 2) #8
  %249 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size185 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %249, i32 0, i32 8
  %250 = load i32, i32* %Unicode_Text_Size185, align 4, !tbaa !82
  %add186 = add nsw i32 %250, 1
  %idxprom187 = sext i32 %add186 to i64
  %251 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i16, i16* %251, i64 %idxprom187
  %252 = bitcast i16* %arrayidx188 to i8*
  %253 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text189 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %253, i32 0, i32 7
  %254 = load i16*, i16** %Unicode_Text189, align 8, !tbaa !35
  %255 = bitcast i16* %254 to i8*
  %256 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size190 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %256, i32 0, i32 8
  %257 = load i32, i32* %Unicode_Text_Size190, align 4, !tbaa !82
  %conv191 = sext i32 %257 to i64
  %mul192 = mul i64 %conv191, 2
  %call193 = call i8* @memcpy(i8* %252, i8* %255, i64 %mul192) #8
  %258 = load float*, float** %NewWidths133, align 8, !tbaa !1
  %259 = bitcast float* %258 to i8*
  %260 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths194 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %260, i32 0, i32 6
  %261 = load float*, float** %Widths194, align 8, !tbaa !38
  %262 = bitcast float* %261 to i8*
  %263 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size195 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %263, i32 0, i32 8
  %264 = load i32, i32* %Unicode_Text_Size195, align 4, !tbaa !82
  %conv196 = sext i32 %264 to i64
  %mul197 = mul i64 %conv196, 4
  %call198 = call i8* @memcpy(i8* %259, i8* %262, i64 %mul197) #8
  %265 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %start199 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %265, i32 0, i32 2
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start199, i32 0, i32 0
  %266 = load double, double* %x200, align 8, !tbaa !76
  %267 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end201 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %267, i32 0, i32 3
  %x202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end201, i32 0, i32 0
  %268 = load double, double* %x202, align 8, !tbaa !78
  %sub203 = fsub double %266, %268
  %conv204 = fptrunc double %sub203 to float
  %269 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size205 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %269, i32 0, i32 8
  %270 = load i32, i32* %Unicode_Text_Size205, align 4, !tbaa !82
  %idxprom206 = sext i32 %270 to i64
  %271 = load float*, float** %NewWidths133, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds float, float* %271, i64 %idxprom206
  store float %conv204, float* %arrayidx207, align 4, !tbaa !81
  %272 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size208 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %272, i32 0, i32 8
  %273 = load i32, i32* %Unicode_Text_Size208, align 4, !tbaa !82
  %add209 = add nsw i32 %273, 1
  %idxprom210 = sext i32 %add209 to i64
  %274 = load float*, float** %NewWidths133, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds float, float* %274, i64 %idxprom210
  %275 = bitcast float* %arrayidx211 to i8*
  %276 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Widths212 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %276, i32 0, i32 6
  %277 = load float*, float** %Widths212, align 8, !tbaa !38
  %278 = bitcast float* %277 to i8*
  %279 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size213 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %279, i32 0, i32 8
  %280 = load i32, i32* %Unicode_Text_Size213, align 4, !tbaa !82
  %conv214 = sext i32 %280 to i64
  %mul215 = mul i64 %conv214, 4
  %call216 = call i8* @memcpy(i8* %275, i8* %278, i64 %mul215) #8
  %281 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory217 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %281, i32 0, i32 3
  %282 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory217, align 8, !tbaa !30
  %non_gc_memory218 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %282, i32 0, i32 3
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory218, align 8, !tbaa !31
  %procs219 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %283, i32 0, i32 1
  %free_object220 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs219, i32 0, i32 2
  %284 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object220, align 8, !tbaa !34
  %285 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory221 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %285, i32 0, i32 3
  %286 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory221, align 8, !tbaa !30
  %non_gc_memory222 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %286, i32 0, i32 3
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory222, align 8, !tbaa !31
  %288 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text223 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %288, i32 0, i32 7
  %289 = load i16*, i16** %Unicode_Text223, align 8, !tbaa !35
  %290 = bitcast i16* %289 to i8*
  call void %284(%struct.gs_memory_s* %287, i8* %290, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #6
  %291 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory224 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory224, align 8, !tbaa !30
  %non_gc_memory225 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory225, align 8, !tbaa !31
  %procs226 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %293, i32 0, i32 1
  %free_object227 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs226, i32 0, i32 2
  %294 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object227, align 8, !tbaa !34
  %295 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %295, i32 0, i32 3
  %296 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory228, align 8, !tbaa !30
  %non_gc_memory229 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %296, i32 0, i32 3
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory229, align 8, !tbaa !31
  %298 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text230 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %298, i32 0, i32 7
  %299 = load i16*, i16** %Unicode_Text230, align 8, !tbaa !35
  %300 = bitcast i16* %299 to i8*
  call void %294(%struct.gs_memory_s* %297, i8* %300, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #6
  %301 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %301, i32 0, i32 3
  %302 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !30
  %non_gc_memory232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %302, i32 0, i32 3
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory232, align 8, !tbaa !31
  %procs233 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %303, i32 0, i32 1
  %free_object234 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs233, i32 0, i32 2
  %304 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object234, align 8, !tbaa !34
  %305 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory235 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %305, i32 0, i32 3
  %306 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory235, align 8, !tbaa !30
  %non_gc_memory236 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %306, i32 0, i32 3
  %307 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory236, align 8, !tbaa !31
  %308 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths237 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %308, i32 0, i32 6
  %309 = load float*, float** %Widths237, align 8, !tbaa !38
  %310 = bitcast float* %309 to i8*
  call void %304(%struct.gs_memory_s* %307, i8* %310, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  %311 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory238 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %311, i32 0, i32 3
  %312 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory238, align 8, !tbaa !30
  %non_gc_memory239 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %312, i32 0, i32 3
  %313 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory239, align 8, !tbaa !31
  %procs240 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %313, i32 0, i32 1
  %free_object241 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs240, i32 0, i32 2
  %314 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object241, align 8, !tbaa !34
  %315 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory242 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %315, i32 0, i32 3
  %316 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory242, align 8, !tbaa !30
  %non_gc_memory243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %316, i32 0, i32 3
  %317 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory243, align 8, !tbaa !31
  %318 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Widths244 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %318, i32 0, i32 6
  %319 = load float*, float** %Widths244, align 8, !tbaa !38
  %320 = bitcast float* %319 to i8*
  call void %314(%struct.gs_memory_s* %317, i8* %320, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  %321 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory245 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %321, i32 0, i32 3
  %322 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory245, align 8, !tbaa !30
  %non_gc_memory246 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %322, i32 0, i32 3
  %323 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory246, align 8, !tbaa !31
  %procs247 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %323, i32 0, i32 1
  %free_object248 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs247, i32 0, i32 2
  %324 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object248, align 8, !tbaa !34
  %325 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory249 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %325, i32 0, i32 3
  %326 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory249, align 8, !tbaa !30
  %non_gc_memory250 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %326, i32 0, i32 3
  %327 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory250, align 8, !tbaa !31
  %328 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %FontName251 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %328, i32 0, i32 12
  %329 = load i8*, i8** %FontName251, align 8, !tbaa !39
  call void %324(%struct.gs_memory_s* %327, i8* %329, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #6
  %330 = load i16*, i16** %NewText132, align 8, !tbaa !1
  %331 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text252 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %331, i32 0, i32 7
  store i16* %330, i16** %Unicode_Text252, align 8, !tbaa !35
  %332 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %Unicode_Text_Size253 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %332, i32 0, i32 8
  %333 = load i32, i32* %Unicode_Text_Size253, align 4, !tbaa !82
  %add254 = add nsw i32 %333, 1
  %334 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Unicode_Text_Size255 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %334, i32 0, i32 8
  %335 = load i32, i32* %Unicode_Text_Size255, align 4, !tbaa !82
  %add256 = add nsw i32 %335, %add254
  store i32 %add256, i32* %Unicode_Text_Size255, align 4, !tbaa !82
  %336 = load float*, float** %NewWidths133, align 8, !tbaa !1
  %337 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %Widths257 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %337, i32 0, i32 6
  store float* %336, float** %Widths257, align 8, !tbaa !38
  %338 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %end258 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %338, i32 0, i32 3
  %339 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %end259 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %339, i32 0, i32 3
  %340 = bitcast %struct.gs_point_s* %end258 to i8*
  %341 = bitcast %struct.gs_point_s* %end259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %340, i8* %341, i64 16, i32 8, i1 false), !tbaa.struct !90
  %342 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next260 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %342, i32 0, i32 1
  %343 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next260, align 8, !tbaa !40
  %344 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next261 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %344, i32 0, i32 1
  store %struct.text_list_entry_s* %343, %struct.text_list_entry_s** %next261, align 8, !tbaa !40
  %345 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next262 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %345, i32 0, i32 1
  %346 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next262, align 8, !tbaa !40
  %tobool263 = icmp ne %struct.text_list_entry_s* %346, null
  br i1 %tobool263, label %if.then.264, label %if.end.267

if.then.264:                                      ; preds = %if.else.175
  %347 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %348 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next265 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %348, i32 0, i32 1
  %349 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next265, align 8, !tbaa !40
  %previous266 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %349, i32 0, i32 0
  store %struct.text_list_entry_s* %347, %struct.text_list_entry_s** %previous266, align 8, !tbaa !41
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.264, %if.else.175
  %350 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory268 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %350, i32 0, i32 3
  %351 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory268, align 8, !tbaa !30
  %non_gc_memory269 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %351, i32 0, i32 3
  %352 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory269, align 8, !tbaa !31
  %procs270 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %352, i32 0, i32 1
  %free_object271 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs270, i32 0, i32 2
  %353 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object271, align 8, !tbaa !34
  %354 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory272 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %354, i32 0, i32 3
  %355 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory272, align 8, !tbaa !30
  %non_gc_memory273 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %355, i32 0, i32 3
  %356 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory273, align 8, !tbaa !31
  %357 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %358 = bitcast %struct.text_list_entry_s* %357 to i8*
  call void %353(%struct.gs_memory_s* %356, i8* %358, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)) #6
  %359 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next274 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %359, i32 0, i32 1
  %360 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next274, align 8, !tbaa !40
  store %struct.text_list_entry_s* %360, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.267, %if.end.172
  %361 = bitcast float** %NewWidths133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #2
  %362 = bitcast i16** %NewText132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #2
  br label %if.end.279

if.else.276:                                      ; preds = %if.else.121
  %363 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %next277 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %363, i32 0, i32 1
  %364 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next277, align 8, !tbaa !40
  store %struct.text_list_entry_s* %364, %struct.text_list_entry_s** %from, align 8, !tbaa !1
  %365 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  %next278 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %365, i32 0, i32 1
  %366 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next278, align 8, !tbaa !40
  store %struct.text_list_entry_s* %366, %struct.text_list_entry_s** %to, align 8, !tbaa !1
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.276, %if.end.275
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.120
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %367 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %next281 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %367, i32 0, i32 1
  %368 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next281, align 8, !tbaa !42
  store %struct.page_text_list_s* %368, %struct.page_text_list_s** %y_list, align 8, !tbaa !1
  %369 = bitcast %struct.text_list_entry_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #2
  %370 = bitcast %struct.text_list_entry_s** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #2
  %371 = bitcast float* %average_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #2
  br label %while.cond

while.end.282:                                    ; preds = %while.cond
  %372 = bitcast %struct.page_text_list_s** %y_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #2
  %373 = bitcast i16* %UnicodeSpace to i8*
  call void @llvm.lifetime.end(i64 2, i8* %373) #2
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @write_simple_text(i16* %text, i32 %count, %struct.gx_device_txtwrite_s* %tdev) #1 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %i = alloca i32, align 4
  %UTF16 = alloca i16*, align 8
  %UTF8 = alloca [3 x i8], align 1
  store i16* %text, i16** %text.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !23
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %TextFormat = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %0, i32 0, i32 46
  %1 = load i32, i32* %TextFormat, align 4, !tbaa !24
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i16*, i16** %text.addr, align 8, !tbaa !1
  %3 = bitcast i16* %2 to i8*
  %4 = load i32, i32* %count.addr, align 4, !tbaa !23
  %conv = sext i32 %4 to i64
  %5 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %5, i32 0, i32 45
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %call = call i64 @fwrite(i8* %3, i64 2, i64 %conv, %struct._IO_FILE* %6) #6
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i16** %UTF16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i16*, i16** %text.addr, align 8, !tbaa !1
  store i16* %9, i16** %UTF16, align 8, !tbaa !1
  %10 = bitcast [3 x i8]* %UTF8 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %10) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %11 = load i32, i32* %i, align 4, !tbaa !23
  %12 = load i32, i32* %count.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %14 = load i16, i16* %13, align 2, !tbaa !83
  %conv3 = zext i16 %14 to i32
  %cmp4 = icmp slt i32 %conv3, 128
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %16 = load i16, i16* %15, align 2, !tbaa !83
  %conv6 = zext i16 %16 to i32
  %and = and i32 %conv6, 255
  %conv7 = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 0
  store i8 %conv7, i8* %arrayidx, align 1, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i32 0
  %17 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file8 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %17, i32 0, i32 45
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file8, align 8, !tbaa !22
  %call9 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 1, %struct._IO_FILE* %18) #6
  br label %if.end.45

if.else:                                          ; preds = %for.body
  %19 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %20 = load i16, i16* %19, align 2, !tbaa !83
  %conv10 = zext i16 %20 to i32
  %cmp11 = icmp slt i32 %conv10, 2048
  br i1 %cmp11, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else
  %21 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %22 = load i16, i16* %21, align 2, !tbaa !83
  %conv14 = zext i16 %22 to i32
  %shr = ashr i32 %conv14, 6
  %add = add nsw i32 %shr, 192
  %conv15 = trunc i32 %add to i8
  %arrayidx16 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 0
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !5
  %23 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %24 = load i16, i16* %23, align 2, !tbaa !83
  %conv17 = zext i16 %24 to i32
  %and18 = and i32 %conv17, 63
  %add19 = add nsw i32 %and18, 128
  %conv20 = trunc i32 %add19 to i8
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1, !tbaa !5
  %arraydecay22 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i32 0
  %25 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file23 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %25, i32 0, i32 45
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file23, align 8, !tbaa !22
  %call24 = call i64 @fwrite(i8* %arraydecay22, i64 1, i64 2, %struct._IO_FILE* %26) #6
  br label %if.end

if.else.25:                                       ; preds = %if.else
  %27 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %28 = load i16, i16* %27, align 2, !tbaa !83
  %conv26 = zext i16 %28 to i32
  %shr27 = ashr i32 %conv26, 12
  %add28 = add nsw i32 %shr27, 224
  %conv29 = trunc i32 %add28 to i8
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 0
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !5
  %29 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %30 = load i16, i16* %29, align 2, !tbaa !83
  %conv31 = zext i16 %30 to i32
  %shr32 = ashr i32 %conv31, 6
  %and33 = and i32 %shr32, 63
  %add34 = add nsw i32 %and33, 128
  %conv35 = trunc i32 %add34 to i8
  %arrayidx36 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 1
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !5
  %31 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %32 = load i16, i16* %31, align 2, !tbaa !83
  %conv37 = zext i16 %32 to i32
  %and38 = and i32 %conv37, 63
  %add39 = add nsw i32 %and38, 128
  %conv40 = trunc i32 %add39 to i8
  %arrayidx41 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i64 2
  store i8 %conv40, i8* %arrayidx41, align 1, !tbaa !5
  %arraydecay42 = getelementptr inbounds [3 x i8], [3 x i8]* %UTF8, i32 0, i32 0
  %33 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %file43 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %33, i32 0, i32 45
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file43, align 8, !tbaa !22
  %call44 = call i64 @fwrite(i8* %arraydecay42, i64 1, i64 3, %struct._IO_FILE* %34) #6
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.13
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then
  %35 = load i16*, i16** %UTF16, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr, i16** %UTF16, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %36 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast [3 x i8]* %UTF8 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %37) #2
  %38 = bitcast i16** %UTF16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @fclose(%struct._IO_FILE*) #0

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

declare void @rc_free_text_enum(%struct.gs_memory_s*, i8*, i8*) #0

declare i32 @gs_text_enum_init(%struct.gs_text_enum_s*, %struct.gs_text_enum_procs_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #0

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #0

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_resync(%struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s* %pfrom) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfrom.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pfrom, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_resync(%struct.gs_text_enum_s* %0, %struct.gs_text_enum_s* %1) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_process(%struct.gs_text_enum_s* %pte) #1 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %font_base = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %p2 = alloca %struct.gs_point_s, align 8
  %p3 = alloca %struct.gs_point_s, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %2, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !92
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %6, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 4
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !94
  store %struct.gs_font_s* %9, %struct.gs_font_s** %font, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_base_s** %font_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 12
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !95
  %13 = bitcast %struct.gs_font_s* %12 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %13, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %code, align 4, !tbaa !23
  %15 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %15, i32 0, i32 34
  %16 = load i16*, i16** %TextBuffer, align 8, !tbaa !70
  %tobool = icmp ne i16* %16, null
  br i1 %tobool, label %if.end.23, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %21 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %22 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !30
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 0
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !72
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !31
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  %27 = load i32, i32* %size, align 4, !tbaa !96
  %mul = mul i32 %27, 4
  %call = call i8* %21(%struct.gs_memory_s* %25, i32 %mul, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0)) #6
  %28 = bitcast i8* %call to i16*
  %29 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer4 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %29, i32 0, i32 34
  store i16* %28, i16** %TextBuffer4, align 8, !tbaa !70
  %30 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer5 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %30, i32 0, i32 34
  %31 = load i16*, i16** %TextBuffer5, align 8, !tbaa !70
  %tobool6 = icmp ne i16* %31, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %32 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !30
  %stable_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 0
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory9, align 8, !tbaa !72
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !31
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array12, align 8, !tbaa !73
  %37 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !30
  %stable_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory14, align 8, !tbaa !72
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !31
  %41 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %41, i32 0, i32 0
  %size17 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text16, i32 0, i32 2
  %42 = load i32, i32* %size17, align 4, !tbaa !96
  %call18 = call i8* %36(%struct.gs_memory_s* %40, i32 %42, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0)) #6
  %43 = bitcast i8* %call18 to float*
  %44 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %44, i32 0, i32 33
  store float* %43, float** %Widths, align 8, !tbaa !97
  %45 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths19 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %45, i32 0, i32 33
  %46 = load float*, float** %Widths19, align 8, !tbaa !97
  %tobool20 = icmp ne float* %46, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %47, i32 0, i32 11
  %48 = load i32, i32* %FontType, align 4, !tbaa !98
  switch i32 %48, label %sw.default [
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.25
    i32 42, label %sw.bb.25
    i32 3, label %sw.bb.25
    i32 53, label %sw.bb.25
    i32 52, label %sw.bb.25
    i32 54, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.23, %if.end.23, %if.end.23
  %49 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call24 = call i32 @txtwrite_process_cmap_text(%struct.gs_text_enum_s* %49) #6
  store i32 %call24, i32* %code, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.23, %if.end.23, %if.end.23, %if.end.23, %if.end.23, %if.end.23, %if.end.23
  %50 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call26 = call i32 @txtwrite_process_plain_text(%struct.gs_text_enum_s* %50) #6
  store i32 %call26, i32* %code, align 4, !tbaa !23
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.23
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb
  %51 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp eq i32 %51, 0
  br i1 %cmp, label %if.then.27, label %if.end.242

if.then.27:                                       ; preds = %sw.epilog
  %52 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %52, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %53 = load double, double* %x, align 8, !tbaa !103
  %54 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox28 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %54, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox28, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %55 = load double, double* %x29, align 8, !tbaa !107
  %cmp30 = fcmp une double %53, %55
  br i1 %cmp30, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.27
  %56 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox31 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %56, i32 0, i32 23
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox31, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  %57 = load double, double* %y, align 8, !tbaa !108
  %58 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox33 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %58, i32 0, i32 23
  %q34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox33, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q34, i32 0, i32 1
  %59 = load double, double* %y35, align 8, !tbaa !109
  %cmp36 = fcmp une double %57, %59
  br i1 %cmp36, label %if.then.37, label %if.end.236

if.then.37:                                       ; preds = %lor.lhs.false, %if.then.27
  %60 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %60) #2
  %61 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %61) #2
  %62 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %62) #2
  %63 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %63) #2
  %64 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %64) #2
  %65 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %65, i32 0, i32 3
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !110
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 5
  %67 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %68 = bitcast %struct.gs_matrix_s* %m to i8*
  %69 = bitcast %struct.gs_matrix_s* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 24, i32 4, i1 false), !tbaa.struct !111
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !112
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !113
  %70 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %70, i32 0, i32 9
  %call38 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #6
  %71 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox39 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %71, i32 0, i32 23
  %p40 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox39, i32 0, i32 0
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p40, i32 0, i32 0
  %72 = load double, double* %x41, align 8, !tbaa !103
  %73 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox42 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %73, i32 0, i32 23
  %p43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox42, i32 0, i32 0
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p43, i32 0, i32 1
  %74 = load double, double* %y44, align 8, !tbaa !108
  %call45 = call i32 @gs_point_transform(double %72, double %74, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p0) #6
  %75 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox46 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %75, i32 0, i32 23
  %p47 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox46, i32 0, i32 0
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p47, i32 0, i32 0
  %76 = load double, double* %x48, align 8, !tbaa !103
  %77 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox49 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %77, i32 0, i32 23
  %q50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox49, i32 0, i32 1
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q50, i32 0, i32 1
  %78 = load double, double* %y51, align 8, !tbaa !109
  %call52 = call i32 @gs_point_transform(double %76, double %78, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p1) #6
  %79 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox53 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %79, i32 0, i32 23
  %q54 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox53, i32 0, i32 1
  %x55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q54, i32 0, i32 0
  %80 = load double, double* %x55, align 8, !tbaa !107
  %81 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox56 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %81, i32 0, i32 23
  %p57 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox56, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p57, i32 0, i32 1
  %82 = load double, double* %y58, align 8, !tbaa !108
  %call59 = call i32 @gs_point_transform(double %80, double %82, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p2) #6
  %83 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox60 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %83, i32 0, i32 23
  %q61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox60, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q61, i32 0, i32 0
  %84 = load double, double* %x62, align 8, !tbaa !107
  %85 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font_base, align 8, !tbaa !1
  %FontBBox63 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %85, i32 0, i32 23
  %q64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox63, i32 0, i32 1
  %y65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q64, i32 0, i32 1
  %86 = load double, double* %y65, align 8, !tbaa !109
  %call66 = call i32 @gs_point_transform(double %84, double %86, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p3) #6
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %87 = load double, double* %x67, align 8, !tbaa !114
  %x68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %88 = load double, double* %x68, align 8, !tbaa !114
  %cmp69 = fcmp olt double %87, %88
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  %x70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %89 = load double, double* %x70, align 8, !tbaa !114
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %90 = load double, double* %x71, align 8, !tbaa !114
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %89, %cond.true ], [ %90, %cond.false ]
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %91 = load double, double* %x72, align 8, !tbaa !114
  %x73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %92 = load double, double* %x73, align 8, !tbaa !114
  %cmp74 = fcmp olt double %91, %92
  br i1 %cmp74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end
  %x76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %93 = load double, double* %x76, align 8, !tbaa !114
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.end
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %94 = load double, double* %x78, align 8, !tbaa !114
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.75
  %cond80 = phi double [ %93, %cond.true.75 ], [ %94, %cond.false.77 ]
  %cmp81 = fcmp olt double %cond, %cond80
  br i1 %cmp81, label %cond.true.82, label %cond.false.92

cond.true.82:                                     ; preds = %cond.end.79
  %x83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %95 = load double, double* %x83, align 8, !tbaa !114
  %x84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %96 = load double, double* %x84, align 8, !tbaa !114
  %cmp85 = fcmp olt double %95, %96
  br i1 %cmp85, label %cond.true.86, label %cond.false.88

cond.true.86:                                     ; preds = %cond.true.82
  %x87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %97 = load double, double* %x87, align 8, !tbaa !114
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.true.82
  %x89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %98 = load double, double* %x89, align 8, !tbaa !114
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.86
  %cond91 = phi double [ %97, %cond.true.86 ], [ %98, %cond.false.88 ]
  br label %cond.end.102

cond.false.92:                                    ; preds = %cond.end.79
  %x93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %99 = load double, double* %x93, align 8, !tbaa !114
  %x94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %100 = load double, double* %x94, align 8, !tbaa !114
  %cmp95 = fcmp olt double %99, %100
  br i1 %cmp95, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %cond.false.92
  %x97 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %101 = load double, double* %x97, align 8, !tbaa !114
  br label %cond.end.100

cond.false.98:                                    ; preds = %cond.false.92
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %102 = load double, double* %x99, align 8, !tbaa !114
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.96
  %cond101 = phi double [ %101, %cond.true.96 ], [ %102, %cond.false.98 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %cond.end.90
  %cond103 = phi double [ %cond91, %cond.end.90 ], [ %cond101, %cond.end.100 ]
  %103 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %103, i32 0, i32 36
  %104 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %FontBBox_bottomleft = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %104, i32 0, i32 4
  %x104 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft, i32 0, i32 0
  store double %cond103, double* %x104, align 8, !tbaa !115
  %x105 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %105 = load double, double* %x105, align 8, !tbaa !114
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %106 = load double, double* %x106, align 8, !tbaa !114
  %cmp107 = fcmp ogt double %105, %106
  br i1 %cmp107, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %cond.end.102
  %x109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %107 = load double, double* %x109, align 8, !tbaa !114
  br label %cond.end.112

cond.false.110:                                   ; preds = %cond.end.102
  %x111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %108 = load double, double* %x111, align 8, !tbaa !114
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.108
  %cond113 = phi double [ %107, %cond.true.108 ], [ %108, %cond.false.110 ]
  %x114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %109 = load double, double* %x114, align 8, !tbaa !114
  %x115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %110 = load double, double* %x115, align 8, !tbaa !114
  %cmp116 = fcmp ogt double %109, %110
  br i1 %cmp116, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.end.112
  %x118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %111 = load double, double* %x118, align 8, !tbaa !114
  br label %cond.end.121

cond.false.119:                                   ; preds = %cond.end.112
  %x120 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %112 = load double, double* %x120, align 8, !tbaa !114
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi double [ %111, %cond.true.117 ], [ %112, %cond.false.119 ]
  %cmp123 = fcmp ogt double %cond113, %cond122
  br i1 %cmp123, label %cond.true.124, label %cond.false.134

cond.true.124:                                    ; preds = %cond.end.121
  %x125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %113 = load double, double* %x125, align 8, !tbaa !114
  %x126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %114 = load double, double* %x126, align 8, !tbaa !114
  %cmp127 = fcmp ogt double %113, %114
  br i1 %cmp127, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.true.124
  %x129 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %115 = load double, double* %x129, align 8, !tbaa !114
  br label %cond.end.132

cond.false.130:                                   ; preds = %cond.true.124
  %x131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %116 = load double, double* %x131, align 8, !tbaa !114
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.128
  %cond133 = phi double [ %115, %cond.true.128 ], [ %116, %cond.false.130 ]
  br label %cond.end.144

cond.false.134:                                   ; preds = %cond.end.121
  %x135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %117 = load double, double* %x135, align 8, !tbaa !114
  %x136 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %118 = load double, double* %x136, align 8, !tbaa !114
  %cmp137 = fcmp ogt double %117, %118
  br i1 %cmp137, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %cond.false.134
  %x139 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %119 = load double, double* %x139, align 8, !tbaa !114
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.false.134
  %x141 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %120 = load double, double* %x141, align 8, !tbaa !114
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.138
  %cond143 = phi double [ %119, %cond.true.138 ], [ %120, %cond.false.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.end.132
  %cond145 = phi double [ %cond133, %cond.end.132 ], [ %cond143, %cond.end.142 ]
  %121 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state146 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %121, i32 0, i32 36
  %122 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state146, align 8, !tbaa !74
  %FontBBox_topright = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %122, i32 0, i32 5
  %x147 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright, i32 0, i32 0
  store double %cond145, double* %x147, align 8, !tbaa !116
  %y148 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %123 = load double, double* %y148, align 8, !tbaa !117
  %y149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %124 = load double, double* %y149, align 8, !tbaa !117
  %cmp150 = fcmp olt double %123, %124
  br i1 %cmp150, label %cond.true.151, label %cond.false.153

cond.true.151:                                    ; preds = %cond.end.144
  %y152 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %125 = load double, double* %y152, align 8, !tbaa !117
  br label %cond.end.155

cond.false.153:                                   ; preds = %cond.end.144
  %y154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %126 = load double, double* %y154, align 8, !tbaa !117
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.151
  %cond156 = phi double [ %125, %cond.true.151 ], [ %126, %cond.false.153 ]
  %y157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %127 = load double, double* %y157, align 8, !tbaa !117
  %y158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %128 = load double, double* %y158, align 8, !tbaa !117
  %cmp159 = fcmp olt double %127, %128
  br i1 %cmp159, label %cond.true.160, label %cond.false.162

cond.true.160:                                    ; preds = %cond.end.155
  %y161 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %129 = load double, double* %y161, align 8, !tbaa !117
  br label %cond.end.164

cond.false.162:                                   ; preds = %cond.end.155
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %130 = load double, double* %y163, align 8, !tbaa !117
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.162, %cond.true.160
  %cond165 = phi double [ %129, %cond.true.160 ], [ %130, %cond.false.162 ]
  %cmp166 = fcmp olt double %cond156, %cond165
  br i1 %cmp166, label %cond.true.167, label %cond.false.177

cond.true.167:                                    ; preds = %cond.end.164
  %y168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %131 = load double, double* %y168, align 8, !tbaa !117
  %y169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %132 = load double, double* %y169, align 8, !tbaa !117
  %cmp170 = fcmp olt double %131, %132
  br i1 %cmp170, label %cond.true.171, label %cond.false.173

cond.true.171:                                    ; preds = %cond.true.167
  %y172 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %133 = load double, double* %y172, align 8, !tbaa !117
  br label %cond.end.175

cond.false.173:                                   ; preds = %cond.true.167
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %134 = load double, double* %y174, align 8, !tbaa !117
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.173, %cond.true.171
  %cond176 = phi double [ %133, %cond.true.171 ], [ %134, %cond.false.173 ]
  br label %cond.end.187

cond.false.177:                                   ; preds = %cond.end.164
  %y178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %135 = load double, double* %y178, align 8, !tbaa !117
  %y179 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %136 = load double, double* %y179, align 8, !tbaa !117
  %cmp180 = fcmp olt double %135, %136
  br i1 %cmp180, label %cond.true.181, label %cond.false.183

cond.true.181:                                    ; preds = %cond.false.177
  %y182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %137 = load double, double* %y182, align 8, !tbaa !117
  br label %cond.end.185

cond.false.183:                                   ; preds = %cond.false.177
  %y184 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %138 = load double, double* %y184, align 8, !tbaa !117
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.183, %cond.true.181
  %cond186 = phi double [ %137, %cond.true.181 ], [ %138, %cond.false.183 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.end.175
  %cond188 = phi double [ %cond176, %cond.end.175 ], [ %cond186, %cond.end.185 ]
  %139 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state189 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %139, i32 0, i32 36
  %140 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state189, align 8, !tbaa !74
  %FontBBox_bottomleft190 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %140, i32 0, i32 4
  %y191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft190, i32 0, i32 1
  store double %cond188, double* %y191, align 8, !tbaa !118
  %y192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %141 = load double, double* %y192, align 8, !tbaa !117
  %y193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %142 = load double, double* %y193, align 8, !tbaa !117
  %cmp194 = fcmp ogt double %141, %142
  br i1 %cmp194, label %cond.true.195, label %cond.false.197

cond.true.195:                                    ; preds = %cond.end.187
  %y196 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %143 = load double, double* %y196, align 8, !tbaa !117
  br label %cond.end.199

cond.false.197:                                   ; preds = %cond.end.187
  %y198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %144 = load double, double* %y198, align 8, !tbaa !117
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.197, %cond.true.195
  %cond200 = phi double [ %143, %cond.true.195 ], [ %144, %cond.false.197 ]
  %y201 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %145 = load double, double* %y201, align 8, !tbaa !117
  %y202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %146 = load double, double* %y202, align 8, !tbaa !117
  %cmp203 = fcmp ogt double %145, %146
  br i1 %cmp203, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %cond.end.199
  %y205 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %147 = load double, double* %y205, align 8, !tbaa !117
  br label %cond.end.208

cond.false.206:                                   ; preds = %cond.end.199
  %y207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %148 = load double, double* %y207, align 8, !tbaa !117
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.206, %cond.true.204
  %cond209 = phi double [ %147, %cond.true.204 ], [ %148, %cond.false.206 ]
  %cmp210 = fcmp ogt double %cond200, %cond209
  br i1 %cmp210, label %cond.true.211, label %cond.false.221

cond.true.211:                                    ; preds = %cond.end.208
  %y212 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %149 = load double, double* %y212, align 8, !tbaa !117
  %y213 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %150 = load double, double* %y213, align 8, !tbaa !117
  %cmp214 = fcmp ogt double %149, %150
  br i1 %cmp214, label %cond.true.215, label %cond.false.217

cond.true.215:                                    ; preds = %cond.true.211
  %y216 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %151 = load double, double* %y216, align 8, !tbaa !117
  br label %cond.end.219

cond.false.217:                                   ; preds = %cond.true.211
  %y218 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %152 = load double, double* %y218, align 8, !tbaa !117
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.217, %cond.true.215
  %cond220 = phi double [ %151, %cond.true.215 ], [ %152, %cond.false.217 ]
  br label %cond.end.231

cond.false.221:                                   ; preds = %cond.end.208
  %y222 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %153 = load double, double* %y222, align 8, !tbaa !117
  %y223 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %154 = load double, double* %y223, align 8, !tbaa !117
  %cmp224 = fcmp ogt double %153, %154
  br i1 %cmp224, label %cond.true.225, label %cond.false.227

cond.true.225:                                    ; preds = %cond.false.221
  %y226 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %155 = load double, double* %y226, align 8, !tbaa !117
  br label %cond.end.229

cond.false.227:                                   ; preds = %cond.false.221
  %y228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %156 = load double, double* %y228, align 8, !tbaa !117
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.227, %cond.true.225
  %cond230 = phi double [ %155, %cond.true.225 ], [ %156, %cond.false.227 ]
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.end.229, %cond.end.219
  %cond232 = phi double [ %cond220, %cond.end.219 ], [ %cond230, %cond.end.229 ]
  %157 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state233 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %157, i32 0, i32 36
  %158 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state233, align 8, !tbaa !74
  %FontBBox_topright234 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %158, i32 0, i32 5
  %y235 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright234, i32 0, i32 1
  store double %cond232, double* %y235, align 8, !tbaa !85
  %159 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %159) #2
  %160 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %160) #2
  %161 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %161) #2
  %162 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %162) #2
  %163 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %163) #2
  br label %if.end.236

if.end.236:                                       ; preds = %cond.end.231, %lor.lhs.false
  %164 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %165 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %165, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %call237 = call i32 @txt_shift_text_currentpoint(%struct.textw_text_enum_s* %164, %struct.gs_point_s* %total_width) #6
  store i32 %call237, i32* %code, align 4, !tbaa !23
  %166 = load i32, i32* %code, align 4, !tbaa !23
  %cmp238 = icmp ne i32 %166, 0
  br i1 %cmp238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.236
  %167 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.240:                                       ; preds = %if.end.236
  %168 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %169 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %call241 = call i32 @txt_add_fragment(%struct.gx_device_txtwrite_s* %168, %struct.textw_text_enum_s* %169) #6
  store i32 %call241, i32* %code, align 4, !tbaa !23
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.240, %sw.epilog
  %170 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.242, %if.then.239, %sw.default, %if.then.21, %if.then.7
  %171 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast %struct.gs_font_base_s** %font_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_is_width_only(%struct.gs_text_enum_s* %pte) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_current_width(%struct.gs_text_enum_s* %pte, %struct.gs_point_s* %pwidth) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pwidth.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pwidth, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %1 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_current_width(%struct.gs_text_enum_s* %0, %struct.gs_point_s* %1) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_set_cache(%struct.gs_text_enum_s* %pte, double* %pw, i32 %control) #1 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pw.addr = alloca double*, align 8
  %control.addr = alloca i32, align 4
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %pw, double** %pw.addr, align 8, !tbaa !1
  store i32 %control, i32* %control.addr, align 4, !tbaa !5
  %0 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %2, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %3 = load i32, i32* %control.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %5 = load double*, double** %pw.addr, align 8, !tbaa !1
  %6 = load i32, i32* %control.addr, align 4, !tbaa !5
  %call = call i32 @gs_text_set_cache(%struct.gs_text_enum_s* %4, double* %5, i32 %6) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %7, i32 0, i32 31
  %8 = load i32, i32* %cdevproc_callout, align 4, !tbaa !67
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %9 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_result = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %9, i32 0, i32 32
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result, i32 0, i32 0
  %10 = bitcast double* %arraydecay to i8*
  %11 = load double*, double** %pw.addr, align 8, !tbaa !1
  %12 = bitcast double* %11 to i8*
  %call2 = call i8* @memcpy(i8* %10, i8* %12, i64 80) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.1
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %14 = load double*, double** %pw.addr, align 8, !tbaa !1
  %15 = load i32, i32* %control.addr, align 4, !tbaa !5
  %call3 = call i32 @gs_text_set_cache(%struct.gs_text_enum_s* %13, double* %14, i32 %15) #6
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end, %if.then, %sw.bb
  %16 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @textw_text_retry(%struct.gs_text_enum_s* %pte) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_retry(%struct.gs_text_enum_s* %0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @textw_text_release(%struct.gs_text_enum_s* %pte, i8* %cname) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %cname.addr = alloca i8*, align 8
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %tdev = alloca %struct.gx_device_txtwrite_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %2, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !92
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_txtwrite_s*
  store %struct.gx_device_txtwrite_s* %6, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %7 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %7, i32 0, i32 34
  %8 = load i16*, i16** %TextBuffer, align 8, !tbaa !70
  %tobool = icmp ne i16* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %13 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !30
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !31
  %16 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer3 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %16, i32 0, i32 34
  %17 = load i16*, i16** %TextBuffer3, align 8, !tbaa !70
  %18 = bitcast i16* %17 to i8*
  call void %12(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %19, i32 0, i32 33
  %20 = load float*, float** %Widths, align 8, !tbaa !97
  %tobool4 = icmp ne float* %20, null
  br i1 %tobool4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %21 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !30
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !31
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !34
  %25 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !30
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !31
  %28 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths12 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %28, i32 0, i32 33
  %29 = load float*, float** %Widths12, align 8, !tbaa !97
  %30 = bitcast float* %29 to i8*
  call void %24(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0)) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.5, %if.end
  %31 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %31, i32 0, i32 36
  %32 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %tobool14 = icmp ne %struct.text_list_entry_s* %32, null
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.13
  %33 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !30
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !31
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !34
  %37 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !30
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !31
  %40 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state22 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %40, i32 0, i32 36
  %41 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state22, align 8, !tbaa !74
  %42 = bitcast %struct.text_list_entry_s* %41 to i8*
  call void %36(%struct.gs_memory_s* %39, i8* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.15, %if.end.13
  %43 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_text_release(%struct.gs_text_enum_s* %43, i8* %44) #6
  %45 = bitcast %struct.gx_device_txtwrite_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  ret void
}

declare i32 @gs_text_resync(%struct.gs_text_enum_s*, %struct.gs_text_enum_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_process_cmap_text(%struct.gs_text_enum_s* %pte) #1 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %rcode = alloca i32, align 4
  %scan = alloca %struct.gs_text_enum_s, align 8
  %glyph = alloca i64, align 8
  %font_code = alloca i32, align 4
  %font_index = alloca i32, align 4
  %code = alloca i32, align 4
  %subfont = alloca %struct.gs_font_s*, align 8
  %chr = alloca i64, align 8
  %widths = alloca %struct.txt_glyph_widths_s, align 8
  %m3 = alloca %struct.gs_matrix_s, align 4
  %wanted = alloca %struct.gs_point_s, align 8
  %dpt = alloca %struct.gs_point_s, align 8
  %tpt = alloca %struct.gs_point_s, align 8
  %tpt67 = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %2, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %rcode, align 4, !tbaa !23
  %4 = bitcast %struct.gs_text_enum_s* %scan to i8*
  call void @llvm.lifetime.start(i64 448, i8* %4) #2
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_text_enum_s* %scan to i8*
  %7 = bitcast %struct.gs_text_enum_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 448, i32 8, i1 false), !tbaa.struct !119
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  %8 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %font_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.txt_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.start(i64 88, i8* %14) #2
  %15 = bitcast %struct.gs_matrix_s* %m3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #2
  %16 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #2
  %17 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #2
  %18 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 8, i1 false)
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 4
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !94
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %20 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !120
  %call = call i32 %20(%struct.gs_text_enum_s* %scan, i64* %chr, i64* %glyph) #6
  store i32 %call, i32* %font_code, align 4, !tbaa !23
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %21 = load i32, i32* %depth, align 4, !tbaa !121
  %idxprom = sext i32 %21 to i64
  %fstack1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !122
  store %struct.gs_font_s* %22, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %fstack2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %depth3 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack2, i32 0, i32 0
  %23 = load i32, i32* %depth3, align 4, !tbaa !121
  %sub = sub nsw i32 %23, 1
  %idxprom4 = sext i32 %sub to i64
  %fstack5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %items6 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items6, i32 0, i64 %idxprom4
  %index = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx7, i32 0, i32 1
  %24 = load i32, i32* %index, align 4, !tbaa !124
  store i32 %24, i32* %font_index, align 4, !tbaa !23
  %25 = load i32, i32* %font_code, align 4, !tbaa !23
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %orig_font8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 4
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font8, align 8, !tbaa !94
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 16
  %28 = load i32, i32* %WMode, align 4, !tbaa !125
  %29 = load i64, i64* %glyph, align 8, !tbaa !45
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %31 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %31, i32 0, i32 31
  %32 = load i32, i32* %cdevproc_callout, align 4, !tbaa !67
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %33 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_result = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %33, i32 0, i32 32
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %call9 = call i32 @txt_glyph_widths(%struct.gs_font_s* %26, i32 %28, i64 %29, %struct.gs_font_s* %30, %struct.txt_glyph_widths_s* %widths, double* %cond) #6
  store i32 %call9, i32* %code, align 4, !tbaa !23
  %34 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp eq i32 %34, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %35 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout10 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %35, i32 0, i32 31
  store i32 1, i32* %cdevproc_callout10, align 4, !tbaa !67
  %36 = load i64, i64* %glyph, align 8, !tbaa !45
  %37 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %37, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  store i64 %36, i64* %current_glyph, align 8, !tbaa !126
  %38 = load i64, i64* %glyph, align 8, !tbaa !45
  %returned11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 28
  %current_glyph12 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned11, i32 0, i32 1
  store i64 %38, i64* %current_glyph12, align 8, !tbaa !126
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %40 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %40, i32 0, i32 12
  store %struct.gs_font_s* %39, %struct.gs_font_s** %current_font, align 8, !tbaa !95
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %current_font13 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 12
  store %struct.gs_font_s* %41, %struct.gs_font_s** %current_font13, align 8, !tbaa !95
  store i32 3, i32* %rcode, align 4, !tbaa !23
  br label %sw.epilog

if.else:                                          ; preds = %cond.end
  %42 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout14 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %42, i32 0, i32 31
  store i32 0, i32* %cdevproc_callout14, align 4, !tbaa !67
  %index15 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %43 = load i32, i32* %index15, align 4, !tbaa !127
  %44 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %44, i32 0, i32 17
  store i32 %43, i32* %index16, align 4, !tbaa !127
  br label %if.end

if.end:                                           ; preds = %if.else
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 9
  %46 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font17 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %46, i32 0, i32 4
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font17, align 8, !tbaa !94
  %FontMatrix18 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %47, i32 0, i32 9
  %call19 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix18, %struct.gs_matrix_s* %m3) #6
  store i32 %call19, i32* %code, align 4, !tbaa !23
  %48 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %48, i32 0, i32 36
  %49 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %50 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gs_text_enum_s* %50 to %struct.textw_text_enum_s*
  %52 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font20 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %52, i32 0, i32 4
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font20, align 8, !tbaa !94
  %call21 = call i32 @txt_update_text_state(%struct.text_list_entry_s* %49, %struct.textw_text_enum_s* %51, %struct.gs_font_s* %53, %struct.gs_matrix_s* %m3) #6
  store i32 %call21, i32* %code, align 4, !tbaa !23
  %54 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font22 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %54, i32 0, i32 4
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font22, align 8, !tbaa !94
  call void @txt_char_widths_to_uts(%struct.gs_font_s* %55, %struct.txt_glyph_widths_s* %widths) #6
  %real_width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths, i32 0, i32 1
  %xy = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %56 = load double, double* %x, align 8, !tbaa !128
  %57 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state23 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %57, i32 0, i32 36
  %58 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state23, align 8, !tbaa !74
  %size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %58, i32 0, i32 15
  %59 = load double, double* %size, align 8, !tbaa !80
  %mul = fmul double %56, %59
  %real_width24 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths, i32 0, i32 1
  %xy25 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width24, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy25, i32 0, i32 1
  %60 = load double, double* %y, align 8, !tbaa !131
  %61 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state26 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %61, i32 0, i32 36
  %62 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state26, align 8, !tbaa !74
  %size27 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %62, i32 0, i32 15
  %63 = load double, double* %size27, align 8, !tbaa !80
  %mul28 = fmul double %60, %63
  %64 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state29 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %64, i32 0, i32 36
  %65 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state29, align 8, !tbaa !74
  %matrix = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %65, i32 0, i32 10
  %call30 = call i32 @gs_distance_transform(double %mul, double %mul28, %struct.gs_matrix_s* %matrix, %struct.gs_point_s* %wanted) #6
  %x31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %66 = load double, double* %x31, align 8, !tbaa !114
  %67 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned32 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %67, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned32, i32 0, i32 2
  %x33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  %68 = load double, double* %x33, align 8, !tbaa !132
  %add = fadd double %68, %66
  store double %add, double* %x33, align 8, !tbaa !132
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %69 = load double, double* %y34, align 8, !tbaa !117
  %70 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %70, i32 0, i32 28
  %total_width36 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned35, i32 0, i32 2
  %y37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width36, i32 0, i32 1
  %71 = load double, double* %y37, align 8, !tbaa !133
  %add38 = fadd double %71, %69
  store double %add38, double* %y37, align 8, !tbaa !133
  %x39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %72 = load double, double* %x39, align 8, !tbaa !114
  %conv = fptrunc double %72 to float
  %73 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index40 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %73, i32 0, i32 17
  %74 = load i32, i32* %index40, align 4, !tbaa !127
  %sub41 = sub i32 %74, 1
  %idxprom42 = zext i32 %sub41 to i64
  %75 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %75, i32 0, i32 33
  %76 = load float*, float** %Widths, align 8, !tbaa !97
  %arrayidx43 = getelementptr inbounds float, float* %76, i64 %idxprom42
  store float %conv, float* %arrayidx43, align 4, !tbaa !81
  %77 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %77, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %78 = load i32, i32* %operation, align 4, !tbaa !134
  %and = and i32 %78, 64
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %if.end
  %79 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %79) #2
  %80 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text46 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %80, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text46, i32 0, i32 3
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %81 = load double, double* %x47, align 8, !tbaa !135
  %82 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text48 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %82, i32 0, i32 0
  %delta_all49 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text48, i32 0, i32 3
  %y50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all49, i32 0, i32 1
  %83 = load double, double* %y50, align 8, !tbaa !136
  %84 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %84, i32 0, i32 3
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !110
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %85, i32 0, i32 5
  %86 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call51 = call i32 @gs_distance_transform(double %81, double %83, %struct.gs_matrix_s* %86, %struct.gs_point_s* %tpt) #6
  %x52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %87 = load double, double* %x52, align 8, !tbaa !114
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %88 = load double, double* %x53, align 8, !tbaa !114
  %add54 = fadd double %88, %87
  store double %add54, double* %x53, align 8, !tbaa !114
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %89 = load double, double* %y55, align 8, !tbaa !117
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %90 = load double, double* %y56, align 8, !tbaa !117
  %add57 = fadd double %90, %89
  store double %add57, double* %y56, align 8, !tbaa !117
  %91 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.45, %if.end
  %92 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text59 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %92, i32 0, i32 0
  %operation60 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text59, i32 0, i32 0
  %93 = load i32, i32* %operation60, align 4, !tbaa !134
  %and61 = and i32 %93, 128
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.end.58
  %94 = load i64, i64* %chr, align 8, !tbaa !45
  %95 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text63 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %95, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text63, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %96 = load i64, i64* %s_char, align 8, !tbaa !45
  %cmp64 = icmp eq i64 %94, %96
  br i1 %cmp64, label %if.then.66, label %if.end.82

if.then.66:                                       ; preds = %land.lhs.true
  %97 = bitcast %struct.gs_point_s* %tpt67 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %97) #2
  %98 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text68 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %98, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text68, i32 0, i32 4
  %x69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %99 = load double, double* %x69, align 8, !tbaa !137
  %100 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text70 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %100, i32 0, i32 0
  %delta_space71 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text70, i32 0, i32 4
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space71, i32 0, i32 1
  %101 = load double, double* %y72, align 8, !tbaa !138
  %102 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis73 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %102, i32 0, i32 3
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis73, align 8, !tbaa !110
  %ctm74 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 5
  %104 = bitcast %struct.gs_matrix_fixed_s* %ctm74 to %struct.gs_matrix_s*
  %call75 = call i32 @gs_distance_transform(double %99, double %101, %struct.gs_matrix_s* %104, %struct.gs_point_s* %tpt67) #6
  %x76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt67, i32 0, i32 0
  %105 = load double, double* %x76, align 8, !tbaa !114
  %x77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %106 = load double, double* %x77, align 8, !tbaa !114
  %add78 = fadd double %106, %105
  store double %add78, double* %x77, align 8, !tbaa !114
  %y79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt67, i32 0, i32 1
  %107 = load double, double* %y79, align 8, !tbaa !117
  %y80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %108 = load double, double* %y80, align 8, !tbaa !117
  %add81 = fadd double %108, %107
  store double %add81, double* %y80, align 8, !tbaa !117
  %109 = bitcast %struct.gs_point_s* %tpt67 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %109) #2
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.66, %land.lhs.true, %if.end.58
  %x83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %110 = load double, double* %x83, align 8, !tbaa !114
  %111 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned84 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %111, i32 0, i32 28
  %total_width85 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned84, i32 0, i32 2
  %x86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width85, i32 0, i32 0
  %112 = load double, double* %x86, align 8, !tbaa !132
  %add87 = fadd double %112, %110
  store double %add87, double* %x86, align 8, !tbaa !132
  %y88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %113 = load double, double* %y88, align 8, !tbaa !117
  %114 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned89 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %114, i32 0, i32 28
  %total_width90 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned89, i32 0, i32 2
  %y91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width90, i32 0, i32 1
  %115 = load double, double* %y91, align 8, !tbaa !133
  %add92 = fadd double %115, %113
  store double %add92, double* %y91, align 8, !tbaa !133
  %116 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font93 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %116, i32 0, i32 4
  %117 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font93, align 8, !tbaa !94
  %118 = load i64, i64* %glyph, align 8, !tbaa !45
  %119 = load i64, i64* %chr, align 8, !tbaa !45
  %120 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBufferIndex = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %120, i32 0, i32 35
  %121 = load i32, i32* %TextBufferIndex, align 4, !tbaa !71
  %idxprom94 = sext i32 %121 to i64
  %122 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %122, i32 0, i32 34
  %123 = load i16*, i16** %TextBuffer, align 8, !tbaa !70
  %arrayidx95 = getelementptr inbounds i16, i16* %123, i64 %idxprom94
  %call96 = call i32 @get_unicode(%struct.gs_font_s* %117, i64 %118, i64 %119, i16* %arrayidx95) #6
  %124 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBufferIndex97 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %124, i32 0, i32 35
  %125 = load i32, i32* %TextBufferIndex97, align 4, !tbaa !71
  %add98 = add nsw i32 %125, %call96
  store i32 %add98, i32* %TextBufferIndex97, align 4, !tbaa !71
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %126 = load double, double* %x99, align 8, !tbaa !114
  %127 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index100 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %127, i32 0, i32 17
  %128 = load i32, i32* %index100, align 4, !tbaa !127
  %sub101 = sub i32 %128, 1
  %idxprom102 = zext i32 %sub101 to i64
  %129 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths103 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %129, i32 0, i32 33
  %130 = load float*, float** %Widths103, align 8, !tbaa !97
  %arrayidx104 = getelementptr inbounds float, float* %130, i64 %idxprom102
  %131 = load float, float* %arrayidx104, align 4, !tbaa !81
  %conv105 = fpext float %131 to double
  %add106 = fadd double %conv105, %126
  %conv107 = fptrunc double %add106 to float
  store float %conv107, float* %arrayidx104, align 4, !tbaa !81
  br label %sw.epilog

sw.bb.108:                                        ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %for.cond
  %132 = load i32, i32* %font_code, align 4, !tbaa !23
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.82, %if.then
  %133 = load i32, i32* %rcode, align 4, !tbaa !23
  %tobool109 = icmp ne i32 %133, 0
  br i1 %tobool109, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %134 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index110 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %134, i32 0, i32 17
  %135 = load i32, i32* %index110, align 4, !tbaa !127
  %136 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text111 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %136, i32 0, i32 0
  %size112 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text111, i32 0, i32 2
  %137 = load i32, i32* %size112, align 4, !tbaa !96
  %cmp113 = icmp uge i32 %135, %137
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false, %sw.epilog
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.115, %sw.default, %sw.bb.108
  %138 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %138) #2
  %139 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.end(i64 16, i8* %139) #2
  %140 = bitcast %struct.gs_matrix_s* %m3 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %140) #2
  %141 = bitcast %struct.txt_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.end(i64 88, i8* %141) #2
  %142 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %font_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.126 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %148 = load i32, i32* %rcode, align 4, !tbaa !23
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126

cleanup.126:                                      ; preds = %for.end, %cleanup
  %149 = bitcast %struct.gs_text_enum_s* %scan to i8*
  call void @llvm.lifetime.end(i64 448, i8* %149) #2
  %150 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = load i32, i32* %retval
  ret i32 %152
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_process_plain_text(%struct.gs_text_enum_s* %pte) #1 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.textw_text_enum_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %gdata = alloca i64*, align 8
  %glyph = alloca i64, align 8
  %ch = alloca i64, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %operation = alloca i32, align 4
  %widths = alloca %struct.txt_glyph_widths_s, align 8
  %wanted = alloca %struct.gs_point_s, align 8
  %dpt = alloca %struct.gs_point_s, align 8
  %tpt = alloca %struct.gs_point_s, align 8
  %tpt87 = alloca %struct.gs_point_s, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.textw_text_enum_s*
  store %struct.textw_text_enum_s* %2, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 4
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !94
  store %struct.gs_font_s* %5, %struct.gs_font_s** %font, align 8, !tbaa !1
  %6 = bitcast i64** %gdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i64* null, i64** %gdata, align 8, !tbaa !1
  %7 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %12, i32 0, i32 0
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %13 = load i32, i32* %operation1, align 4, !tbaa !134
  store i32 %13, i32* %operation, align 4, !tbaa !23
  %14 = bitcast %struct.txt_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.start(i64 88, i8* %14) #2
  %15 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #2
  %17 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4, !tbaa !23
  %19 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %19, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text2, i32 0, i32 2
  %20 = load i32, i32* %size, align 4, !tbaa !96
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %operation, align 4, !tbaa !23
  %and = and i32 %21, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 17
  %23 = load i32, i32* %index, align 4, !tbaa !127
  %inc = add i32 %23, 1
  store i32 %inc, i32* %index, align 4, !tbaa !127
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text3, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %25 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %26 to i64
  store i64 %conv, i64* %ch, align 8, !tbaa !45
  br label %if.end.30

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %operation, align 4, !tbaa !23
  %and4 = and i32 %27, 20
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.else
  %28 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index7 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %28, i32 0, i32 17
  %29 = load i32, i32* %index7, align 4, !tbaa !127
  %inc8 = add i32 %29, 1
  store i32 %inc8, i32* %index7, align 4, !tbaa !127
  %idxprom9 = zext i32 %29 to i64
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text10 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 0
  %data11 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text10, i32 0, i32 1
  %chars = bitcast %union.sd_* %data11 to i64**
  %31 = load i64*, i64** %chars, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %31, i64 %idxprom9
  %32 = load i64, i64* %arrayidx12, align 8, !tbaa !45
  store i64 %32, i64* %ch, align 8, !tbaa !45
  br label %if.end.29

if.else.13:                                       ; preds = %if.else
  %33 = load i32, i32* %operation, align 4, !tbaa !23
  %and14 = and i32 %33, 40
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.else.13
  %34 = load i32, i32* %operation, align 4, !tbaa !23
  %and17 = and i32 %34, 8
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.then.16
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text20 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %35, i32 0, i32 0
  %data21 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text20, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data21 to i64**
  %36 = load i64*, i64** %glyphs, align 8, !tbaa !1
  %37 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index22 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %37, i32 0, i32 17
  %38 = load i32, i32* %index22, align 4, !tbaa !127
  %inc23 = add i32 %38, 1
  store i32 %inc23, i32* %index22, align 4, !tbaa !127
  %conv24 = zext i32 %38 to i64
  %mul = mul i64 %conv24, 8
  %add.ptr = getelementptr inbounds i64, i64* %36, i64 %mul
  store i64* %add.ptr, i64** %gdata, align 8, !tbaa !1
  br label %if.end

if.else.25:                                       ; preds = %if.then.16
  %39 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text26 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %39, i32 0, i32 0
  %data27 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data27 to i64*
  store i64* %d_glyph, i64** %gdata, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.else.13
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.6
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  %40 = load i64*, i64** %gdata, align 8, !tbaa !1
  %cmp31 = icmp eq i64* %40, null
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %41 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font33 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %41, i32 0, i32 4
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font33, align 8, !tbaa !94
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %43 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !139
  %44 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font34 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %44, i32 0, i32 4
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font34, align 8, !tbaa !94
  %46 = load i64, i64* %ch, align 8, !tbaa !45
  %call = call i64 %43(%struct.gs_font_s* %45, i64 %46, i32 0) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %47 = load i64*, i64** %gdata, align 8, !tbaa !1
  %48 = load i64, i64* %47, align 8, !tbaa !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %48, %cond.false ]
  store i64 %cond, i64* %glyph, align 8, !tbaa !45
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %50, i32 0, i32 16
  %51 = load i32, i32* %WMode, align 4, !tbaa !125
  %52 = load i64, i64* %glyph, align 8, !tbaa !45
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %call35 = call i32 @txt_glyph_widths(%struct.gs_font_s* %49, i32 %51, i64 %52, %struct.gs_font_s* %53, %struct.txt_glyph_widths_s* %widths, double* null) #6
  store i32 %call35, i32* %code, align 4, !tbaa !23
  %54 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %54, i32 0, i32 31
  store i32 0, i32* %cdevproc_callout, align 4, !tbaa !67
  %55 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %55, i32 0, i32 36
  %56 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %57 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_text_enum_s* %57 to %struct.textw_text_enum_s*
  %59 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font36 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %59, i32 0, i32 4
  %60 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font36, align 8, !tbaa !94
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 9
  %call37 = call i32 @txt_update_text_state(%struct.text_list_entry_s* %56, %struct.textw_text_enum_s* %58, %struct.gs_font_s* %60, %struct.gs_matrix_s* %FontMatrix) #6
  store i32 %call37, i32* %code, align 4, !tbaa !23
  %62 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font38 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %62, i32 0, i32 4
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font38, align 8, !tbaa !94
  call void @txt_char_widths_to_uts(%struct.gs_font_s* %63, %struct.txt_glyph_widths_s* %widths) #6
  %real_width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths, i32 0, i32 1
  %xy = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %64 = load double, double* %x, align 8, !tbaa !128
  %65 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state39 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %65, i32 0, i32 36
  %66 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state39, align 8, !tbaa !74
  %size40 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %66, i32 0, i32 15
  %67 = load double, double* %size40, align 8, !tbaa !80
  %mul41 = fmul double %64, %67
  %real_width42 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths, i32 0, i32 1
  %xy43 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width42, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy43, i32 0, i32 1
  %68 = load double, double* %y, align 8, !tbaa !131
  %69 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state44 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %69, i32 0, i32 36
  %70 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state44, align 8, !tbaa !74
  %size45 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %70, i32 0, i32 15
  %71 = load double, double* %size45, align 8, !tbaa !80
  %mul46 = fmul double %68, %71
  %72 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %text_state47 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %72, i32 0, i32 36
  %73 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state47, align 8, !tbaa !74
  %matrix = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %73, i32 0, i32 10
  %call48 = call i32 @gs_distance_transform(double %mul41, double %mul46, %struct.gs_matrix_s* %matrix, %struct.gs_point_s* %wanted) #6
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %74 = load double, double* %x49, align 8, !tbaa !114
  %75 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %75, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %x50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  %76 = load double, double* %x50, align 8, !tbaa !132
  %add = fadd double %76, %74
  store double %add, double* %x50, align 8, !tbaa !132
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %77 = load double, double* %y51, align 8, !tbaa !117
  %78 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned52 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %78, i32 0, i32 28
  %total_width53 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned52, i32 0, i32 2
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width53, i32 0, i32 1
  %79 = load double, double* %y54, align 8, !tbaa !133
  %add55 = fadd double %79, %77
  store double %add55, double* %y54, align 8, !tbaa !133
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %80 = load double, double* %x56, align 8, !tbaa !114
  %conv57 = fptrunc double %80 to float
  %81 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index58 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %81, i32 0, i32 17
  %82 = load i32, i32* %index58, align 4, !tbaa !127
  %sub = sub i32 %82, 1
  %idxprom59 = zext i32 %sub to i64
  %83 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %83, i32 0, i32 33
  %84 = load float*, float** %Widths, align 8, !tbaa !97
  %arrayidx60 = getelementptr inbounds float, float* %84, i64 %idxprom59
  store float %conv57, float* %arrayidx60, align 4, !tbaa !81
  %85 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text61 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %85, i32 0, i32 0
  %operation62 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text61, i32 0, i32 0
  %86 = load i32, i32* %operation62, align 4, !tbaa !134
  %and63 = and i32 %86, 64
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %cond.end
  %87 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %87) #2
  %88 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text66 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %88, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text66, i32 0, i32 3
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %89 = load double, double* %x67, align 8, !tbaa !135
  %90 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text68 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %90, i32 0, i32 0
  %delta_all69 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text68, i32 0, i32 3
  %y70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all69, i32 0, i32 1
  %91 = load double, double* %y70, align 8, !tbaa !136
  %92 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %92, i32 0, i32 3
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !110
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 5
  %94 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call71 = call i32 @gs_distance_transform(double %89, double %91, %struct.gs_matrix_s* %94, %struct.gs_point_s* %tpt) #6
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %95 = load double, double* %x72, align 8, !tbaa !114
  %x73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %96 = load double, double* %x73, align 8, !tbaa !114
  %add74 = fadd double %96, %95
  store double %add74, double* %x73, align 8, !tbaa !114
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %97 = load double, double* %y75, align 8, !tbaa !117
  %y76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %98 = load double, double* %y76, align 8, !tbaa !117
  %add77 = fadd double %98, %97
  store double %add77, double* %y76, align 8, !tbaa !117
  %99 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %99) #2
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.65, %cond.end
  %100 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text79 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %100, i32 0, i32 0
  %operation80 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text79, i32 0, i32 0
  %101 = load i32, i32* %operation80, align 4, !tbaa !134
  %and81 = and i32 %101, 128
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.end.78
  %102 = load i64, i64* %ch, align 8, !tbaa !45
  %103 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text83 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %103, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text83, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %104 = load i64, i64* %s_char, align 8, !tbaa !45
  %cmp84 = icmp eq i64 %102, %104
  br i1 %cmp84, label %if.then.86, label %if.end.102

if.then.86:                                       ; preds = %land.lhs.true
  %105 = bitcast %struct.gs_point_s* %tpt87 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %105) #2
  %106 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text88 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %106, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text88, i32 0, i32 4
  %x89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %107 = load double, double* %x89, align 8, !tbaa !137
  %108 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text90 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %108, i32 0, i32 0
  %delta_space91 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text90, i32 0, i32 4
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space91, i32 0, i32 1
  %109 = load double, double* %y92, align 8, !tbaa !138
  %110 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis93 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %110, i32 0, i32 3
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis93, align 8, !tbaa !110
  %ctm94 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %111, i32 0, i32 5
  %112 = bitcast %struct.gs_matrix_fixed_s* %ctm94 to %struct.gs_matrix_s*
  %call95 = call i32 @gs_distance_transform(double %107, double %109, %struct.gs_matrix_s* %112, %struct.gs_point_s* %tpt87) #6
  %x96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt87, i32 0, i32 0
  %113 = load double, double* %x96, align 8, !tbaa !114
  %x97 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %114 = load double, double* %x97, align 8, !tbaa !114
  %add98 = fadd double %114, %113
  store double %add98, double* %x97, align 8, !tbaa !114
  %y99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt87, i32 0, i32 1
  %115 = load double, double* %y99, align 8, !tbaa !117
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %116 = load double, double* %y100, align 8, !tbaa !117
  %add101 = fadd double %116, %115
  store double %add101, double* %y100, align 8, !tbaa !117
  %117 = bitcast %struct.gs_point_s* %tpt87 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %117) #2
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.86, %land.lhs.true, %if.end.78
  %x103 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %118 = load double, double* %x103, align 8, !tbaa !114
  %119 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned104 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %119, i32 0, i32 28
  %total_width105 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned104, i32 0, i32 2
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width105, i32 0, i32 0
  %120 = load double, double* %x106, align 8, !tbaa !132
  %add107 = fadd double %120, %118
  store double %add107, double* %x106, align 8, !tbaa !132
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %121 = load double, double* %y108, align 8, !tbaa !117
  %122 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned109 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %122, i32 0, i32 28
  %total_width110 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned109, i32 0, i32 2
  %y111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width110, i32 0, i32 1
  %123 = load double, double* %y111, align 8, !tbaa !133
  %add112 = fadd double %123, %121
  store double %add112, double* %y111, align 8, !tbaa !133
  %124 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font113 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %124, i32 0, i32 4
  %125 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font113, align 8, !tbaa !94
  %126 = load i64, i64* %glyph, align 8, !tbaa !45
  %127 = load i64, i64* %ch, align 8, !tbaa !45
  %128 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBufferIndex = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %128, i32 0, i32 35
  %129 = load i32, i32* %TextBufferIndex, align 4, !tbaa !71
  %idxprom114 = sext i32 %129 to i64
  %130 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %130, i32 0, i32 34
  %131 = load i16*, i16** %TextBuffer, align 8, !tbaa !70
  %arrayidx115 = getelementptr inbounds i16, i16* %131, i64 %idxprom114
  %call116 = call i32 @get_unicode(%struct.gs_font_s* %125, i64 %126, i64 %127, i16* %arrayidx115) #6
  %132 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %TextBufferIndex117 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %132, i32 0, i32 35
  %133 = load i32, i32* %TextBufferIndex117, align 4, !tbaa !71
  %add118 = add nsw i32 %133, %call116
  store i32 %add118, i32* %TextBufferIndex117, align 4, !tbaa !71
  %x119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %134 = load double, double* %x119, align 8, !tbaa !114
  %135 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index120 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %135, i32 0, i32 17
  %136 = load i32, i32* %index120, align 4, !tbaa !127
  %sub121 = sub i32 %136, 1
  %idxprom122 = zext i32 %sub121 to i64
  %137 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum, align 8, !tbaa !1
  %Widths123 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %137, i32 0, i32 33
  %138 = load float*, float** %Widths123, align 8, !tbaa !97
  %arrayidx124 = getelementptr inbounds float, float* %138, i64 %idxprom122
  %139 = load float, float* %arrayidx124, align 4, !tbaa !81
  %conv125 = fpext float %139 to double
  %add126 = fadd double %conv125, %134
  %conv127 = fptrunc double %add126 to float
  store float %conv127, float* %arrayidx124, align 4, !tbaa !81
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %140 = load i32, i32* %i, align 4, !tbaa !23
  %inc128 = add nsw i32 %140, 1
  store i32 %inc128, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %141 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %141) #2
  %142 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.end(i64 16, i8* %142) #2
  %143 = bitcast %struct.txt_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.end(i64 88, i8* %143) #2
  %144 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast i64** %gdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.textw_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  ret i32 0
}

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txt_shift_text_currentpoint(%struct.textw_text_enum_s* %penum, %struct.gs_point_s* %wpt) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.textw_text_enum_s*, align 8
  %wpt.addr = alloca %struct.gs_point_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.textw_text_enum_s* %penum, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %wpt, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !140
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !141
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %4 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !142
  %5 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %5, i32 0, i32 1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !140
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !141
  %8 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %8, i32 0, i32 3
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !143
  %10 = bitcast %struct.gs_imager_state_s* %9 to i8*
  %call = call %struct.gs_memory_struct_type_s* %4(%struct.gs_memory_s* %7, i8* %10) #6
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call, @st_gs_state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis3 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %11, i32 0, i32 3
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis3, align 8, !tbaa !143
  %13 = bitcast %struct.gs_imager_state_s* %12 to %struct.gs_state_s*
  store %struct.gs_state_s* %13, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %14 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis4 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %14, i32 0, i32 3
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis4, align 8, !tbaa !143
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call5 = call %struct.gx_path_s* @gx_current_path(%struct.gs_state_s* %16) #6
  %17 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %17, i32 0, i32 29
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !144
  %conv = sitofp i32 %18 to double
  %mul = fmul double %conv, 3.906250e-03
  %19 = load %struct.gs_point_s*, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %19, i32 0, i32 0
  %20 = load double, double* %x6, align 8, !tbaa !114
  %add = fadd double %mul, %20
  %21 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin7 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %21, i32 0, i32 29
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin7, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !145
  %conv8 = sitofp i32 %22 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %23, i32 0, i32 1
  %24 = load double, double* %y10, align 8, !tbaa !117
  %add11 = fadd double %mul9, %24
  %call12 = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %15, %struct.gx_path_s* %call5, double %add, double %add11) #6
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @txt_add_fragment(%struct.gx_device_txtwrite_s* %tdev, %struct.textw_text_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %penum.addr = alloca %struct.textw_text_enum_s*, align 8
  %unsorted_entry = alloca %struct.text_list_entry_s*, align 8
  %t = alloca %struct.text_list_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  store %struct.textw_text_enum_s* %penum, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.text_list_entry_s** %unsorted_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.text_list_entry_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %6 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %7 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !30
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !72
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !31
  %call = call i8* %6(%struct.gs_memory_s* %10, i32 1, i32 168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i32 0, i32 0)) #6
  %11 = bitcast i8* %call to %struct.text_list_entry_s*
  store %struct.text_list_entry_s* %11, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %12 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %tobool = icmp ne %struct.text_list_entry_s* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %13, i32 0, i32 29
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !144
  %conv = sitofp i32 %14 to double
  %mul = fmul double %conv, 3.906250e-03
  %15 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %15, i32 0, i32 36
  %16 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %start = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %16, i32 0, i32 2
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  store double %mul, double* %x4, align 8, !tbaa !76
  %17 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin5 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %17, i32 0, i32 29
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin5, i32 0, i32 1
  %18 = load i32, i32* %y, align 4, !tbaa !145
  %conv6 = sitofp i32 %18 to double
  %mul7 = fmul double %conv6, 3.906250e-03
  %19 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state8 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %19, i32 0, i32 36
  %20 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state8, align 8, !tbaa !74
  %start9 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %20, i32 0, i32 2
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start9, i32 0, i32 1
  store double %mul7, double* %y10, align 8, !tbaa !77
  %21 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state11 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %21, i32 0, i32 36
  %22 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state11, align 8, !tbaa !74
  %start12 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %22, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start12, i32 0, i32 0
  %23 = load double, double* %x13, align 8, !tbaa !76
  %24 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %24, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  %25 = load double, double* %x14, align 8, !tbaa !69
  %add = fadd double %23, %25
  %26 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state15 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %26, i32 0, i32 36
  %27 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state15, align 8, !tbaa !74
  %end = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %27, i32 0, i32 3
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  store double %add, double* %x16, align 8, !tbaa !78
  %28 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state17 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %28, i32 0, i32 36
  %29 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state17, align 8, !tbaa !74
  %start18 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %29, i32 0, i32 2
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start18, i32 0, i32 1
  %30 = load double, double* %y19, align 8, !tbaa !77
  %31 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %returned20 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %31, i32 0, i32 28
  %total_width21 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned20, i32 0, i32 2
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width21, i32 0, i32 1
  %32 = load double, double* %y22, align 8, !tbaa !68
  %add23 = fadd double %30, %32
  %33 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state24 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %33, i32 0, i32 36
  %34 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state24, align 8, !tbaa !74
  %end25 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %34, i32 0, i32 3
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end25, i32 0, i32 1
  store double %add23, double* %y26, align 8, !tbaa !79
  %35 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %35, i32 0, i32 35
  %36 = load i32, i32* %TextBufferIndex, align 4, !tbaa !71
  %37 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state27 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %37, i32 0, i32 36
  %38 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state27, align 8, !tbaa !74
  %Unicode_Text_Size = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %38, i32 0, i32 8
  store i32 %36, i32* %Unicode_Text_Size, align 4, !tbaa !82
  %39 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %40 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state28 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %40, i32 0, i32 36
  %41 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state28, align 8, !tbaa !74
  %42 = bitcast %struct.text_list_entry_s* %39 to i8*
  %43 = bitcast %struct.text_list_entry_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 168, i32 8, i1 false), !tbaa.struct !146
  %44 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !30
  %stable_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 0
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory30, align 8, !tbaa !72
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !31
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_byte_array33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 10
  %48 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array33, align 8, !tbaa !73
  %49 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !30
  %stable_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 0
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory35, align 8, !tbaa !72
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !31
  %53 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex37 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %53, i32 0, i32 35
  %54 = load i32, i32* %TextBufferIndex37, align 4, !tbaa !71
  %call38 = call i8* %48(%struct.gs_memory_s* %52, i32 %54, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0)) #6
  %55 = bitcast i8* %call38 to i16*
  %56 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state39 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %56, i32 0, i32 36
  %57 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state39, align 8, !tbaa !74
  %Unicode_Text = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %57, i32 0, i32 7
  store i16* %55, i16** %Unicode_Text, align 8, !tbaa !35
  %58 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state40 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %58, i32 0, i32 36
  %59 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state40, align 8, !tbaa !74
  %Unicode_Text41 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %59, i32 0, i32 7
  %60 = load i16*, i16** %Unicode_Text41, align 8, !tbaa !35
  %tobool42 = icmp ne i16* %60, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end
  %61 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state45 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %61, i32 0, i32 36
  %62 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state45, align 8, !tbaa !74
  %Unicode_Text46 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %62, i32 0, i32 7
  %63 = load i16*, i16** %Unicode_Text46, align 8, !tbaa !35
  %64 = bitcast i16* %63 to i8*
  %65 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBuffer = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %65, i32 0, i32 34
  %66 = load i16*, i16** %TextBuffer, align 8, !tbaa !70
  %67 = bitcast i16* %66 to i8*
  %68 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex47 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %68, i32 0, i32 35
  %69 = load i32, i32* %TextBufferIndex47, align 4, !tbaa !71
  %conv48 = sext i32 %69 to i64
  %mul49 = mul i64 %conv48, 2
  %call50 = call i8* @memcpy(i8* %64, i8* %67, i64 %mul49) #8
  %70 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !30
  %stable_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 0
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory52, align 8, !tbaa !72
  %non_gc_memory53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory53, align 8, !tbaa !31
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %alloc_byte_array55 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 10
  %74 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array55, align 8, !tbaa !73
  %75 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !30
  %stable_memory57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 0
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory57, align 8, !tbaa !72
  %non_gc_memory58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory58, align 8, !tbaa !31
  %79 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex59 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %79, i32 0, i32 35
  %80 = load i32, i32* %TextBufferIndex59, align 4, !tbaa !71
  %call60 = call i8* %74(%struct.gs_memory_s* %78, i32 %80, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0)) #6
  %81 = bitcast i8* %call60 to float*
  %82 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state61 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %82, i32 0, i32 36
  %83 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state61, align 8, !tbaa !74
  %Widths = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %83, i32 0, i32 6
  store float* %81, float** %Widths, align 8, !tbaa !38
  %84 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state62 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %84, i32 0, i32 36
  %85 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state62, align 8, !tbaa !74
  %Widths63 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %85, i32 0, i32 6
  %86 = load float*, float** %Widths63, align 8, !tbaa !38
  %tobool64 = icmp ne float* %86, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.end.44
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.44
  %87 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state67 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %87, i32 0, i32 36
  %88 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state67, align 8, !tbaa !74
  %Widths68 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %88, i32 0, i32 6
  %89 = load float*, float** %Widths68, align 8, !tbaa !38
  %90 = bitcast float* %89 to i8*
  %91 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %Widths69 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %91, i32 0, i32 33
  %92 = load float*, float** %Widths69, align 8, !tbaa !97
  %93 = bitcast float* %92 to i8*
  %94 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex70 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %94, i32 0, i32 35
  %95 = load i32, i32* %TextBufferIndex70, align 4, !tbaa !71
  %conv71 = sext i32 %95 to i64
  %mul72 = mul i64 %conv71, 4
  %call73 = call i8* @memcpy(i8* %90, i8* %93, i64 %mul72) #8
  %96 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !30
  %stable_memory75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 0
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory75, align 8, !tbaa !72
  %non_gc_memory76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory76, align 8, !tbaa !31
  %procs77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 1
  %alloc_byte_array78 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs77, i32 0, i32 10
  %100 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array78, align 8, !tbaa !73
  %101 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory79, align 8, !tbaa !30
  %stable_memory80 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 0
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory80, align 8, !tbaa !72
  %non_gc_memory81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 3
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory81, align 8, !tbaa !31
  %105 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex82 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %105, i32 0, i32 35
  %106 = load i32, i32* %TextBufferIndex82, align 4, !tbaa !71
  %call83 = call i8* %100(%struct.gs_memory_s* %104, i32 %106, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0)) #6
  %107 = bitcast i8* %call83 to i16*
  %108 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Unicode_Text84 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %108, i32 0, i32 7
  store i16* %107, i16** %Unicode_Text84, align 8, !tbaa !35
  %109 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Unicode_Text85 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %109, i32 0, i32 7
  %110 = load i16*, i16** %Unicode_Text85, align 8, !tbaa !35
  %tobool86 = icmp ne i16* %110, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.66
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.end.66
  %111 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Unicode_Text89 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %111, i32 0, i32 7
  %112 = load i16*, i16** %Unicode_Text89, align 8, !tbaa !35
  %113 = bitcast i16* %112 to i8*
  %114 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBuffer90 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %114, i32 0, i32 34
  %115 = load i16*, i16** %TextBuffer90, align 8, !tbaa !70
  %116 = bitcast i16* %115 to i8*
  %117 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex91 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %117, i32 0, i32 35
  %118 = load i32, i32* %TextBufferIndex91, align 4, !tbaa !71
  %conv92 = sext i32 %118 to i64
  %mul93 = mul i64 %conv92, 2
  %call94 = call i8* @memcpy(i8* %113, i8* %116, i64 %mul93) #8
  %119 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !30
  %stable_memory96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %120, i32 0, i32 0
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory96, align 8, !tbaa !72
  %non_gc_memory97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory97, align 8, !tbaa !31
  %procs98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 1
  %alloc_byte_array99 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs98, i32 0, i32 10
  %123 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array99, align 8, !tbaa !73
  %124 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !30
  %stable_memory101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 0
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory101, align 8, !tbaa !72
  %non_gc_memory102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 3
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory102, align 8, !tbaa !31
  %128 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex103 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %128, i32 0, i32 35
  %129 = load i32, i32* %TextBufferIndex103, align 4, !tbaa !71
  %call104 = call i8* %123(%struct.gs_memory_s* %127, i32 %129, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0)) #6
  %130 = bitcast i8* %call104 to float*
  %131 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Widths105 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %131, i32 0, i32 6
  store float* %130, float** %Widths105, align 8, !tbaa !38
  %132 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Widths106 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %132, i32 0, i32 6
  %133 = load float*, float** %Widths106, align 8, !tbaa !38
  %tobool107 = icmp ne float* %133, null
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %if.end.88
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %if.end.88
  %134 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Widths110 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %134, i32 0, i32 6
  %135 = load float*, float** %Widths110, align 8, !tbaa !38
  %136 = bitcast float* %135 to i8*
  %137 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %Widths111 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %137, i32 0, i32 33
  %138 = load float*, float** %Widths111, align 8, !tbaa !97
  %139 = bitcast float* %138 to i8*
  %140 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %TextBufferIndex112 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %140, i32 0, i32 35
  %141 = load i32, i32* %TextBufferIndex112, align 4, !tbaa !71
  %conv113 = sext i32 %141 to i64
  %mul114 = mul i64 %conv113, 4
  %call115 = call i8* @memcpy(i8* %136, i8* %139, i64 %mul114) #8
  %142 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory116, align 8, !tbaa !30
  %stable_memory117 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 0
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory117, align 8, !tbaa !72
  %non_gc_memory118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 3
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory118, align 8, !tbaa !31
  %procs119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %145, i32 0, i32 1
  %alloc_byte_array120 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs119, i32 0, i32 10
  %146 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array120, align 8, !tbaa !73
  %147 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !30
  %stable_memory122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 0
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory122, align 8, !tbaa !72
  %non_gc_memory123 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 3
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory123, align 8, !tbaa !31
  %151 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state124 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %151, i32 0, i32 36
  %152 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state124, align 8, !tbaa !74
  %FontName = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %152, i32 0, i32 12
  %153 = load i8*, i8** %FontName, align 8, !tbaa !39
  %call125 = call i64 @strlen(i8* %153) #7
  %add126 = add i64 %call125, 1
  %conv127 = trunc i64 %add126 to i32
  %call128 = call i8* %146(%struct.gs_memory_s* %150, i32 %conv127, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0)) #6
  %154 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %FontName129 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %154, i32 0, i32 12
  store i8* %call128, i8** %FontName129, align 8, !tbaa !39
  %155 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %Unicode_Text130 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %155, i32 0, i32 7
  %156 = load i16*, i16** %Unicode_Text130, align 8, !tbaa !35
  %tobool131 = icmp ne i16* %156, null
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %if.end.109
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %if.end.109
  %157 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %FontName134 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %157, i32 0, i32 12
  %158 = load i8*, i8** %FontName134, align 8, !tbaa !39
  %159 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state135 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %159, i32 0, i32 36
  %160 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state135, align 8, !tbaa !74
  %FontName136 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %160, i32 0, i32 12
  %161 = load i8*, i8** %FontName136, align 8, !tbaa !39
  %162 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state137 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %162, i32 0, i32 36
  %163 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state137, align 8, !tbaa !74
  %FontName138 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %163, i32 0, i32 12
  %164 = load i8*, i8** %FontName138, align 8, !tbaa !39
  %call139 = call i64 @strlen(i8* %164) #7
  %mul140 = mul i64 %call139, 2
  %call141 = call i8* @memcpy(i8* %158, i8* %161, i64 %mul140) #8
  %165 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state142 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %165, i32 0, i32 36
  %166 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state142, align 8, !tbaa !74
  %FontName143 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %166, i32 0, i32 12
  %167 = load i8*, i8** %FontName143, align 8, !tbaa !39
  %call144 = call i64 @strlen(i8* %167) #7
  %168 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %FontName145 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %168, i32 0, i32 12
  %169 = load i8*, i8** %FontName145, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, i8* %169, i64 %call144
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %170 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %170, i32 0, i32 43
  %unsorted_text_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 2
  %171 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_text_list, align 8, !tbaa !44
  %tobool146 = icmp ne %struct.text_list_entry_s* %171, null
  br i1 %tobool146, label %if.else, label %if.then.147

if.then.147:                                      ; preds = %if.end.133
  %172 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %173 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData148 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %173, i32 0, i32 43
  %unsorted_text_list149 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData148, i32 0, i32 2
  store %struct.text_list_entry_s* %172, %struct.text_list_entry_s** %unsorted_text_list149, align 8, !tbaa !44
  %174 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %previous = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %174, i32 0, i32 0
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %previous, align 8, !tbaa !41
  %175 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %175, i32 0, i32 1
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %next, align 8, !tbaa !40
  br label %if.end.158

if.else:                                          ; preds = %if.end.133
  %176 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData150 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %176, i32 0, i32 43
  %unsorted_text_list151 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData150, i32 0, i32 2
  %177 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_text_list151, align 8, !tbaa !44
  store %struct.text_list_entry_s* %177, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %178 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  %next152 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %178, i32 0, i32 1
  %179 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next152, align 8, !tbaa !40
  %tobool153 = icmp ne %struct.text_list_entry_s* %179, null
  br i1 %tobool153, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %180 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  %next154 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %180, i32 0, i32 1
  %181 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next154, align 8, !tbaa !40
  store %struct.text_list_entry_s* %181, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %182 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %183 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  %next155 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %183, i32 0, i32 1
  store %struct.text_list_entry_s* %182, %struct.text_list_entry_s** %next155, align 8, !tbaa !40
  %184 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %next156 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %184, i32 0, i32 1
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %next156, align 8, !tbaa !40
  %185 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %t, align 8, !tbaa !1
  %186 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %unsorted_entry, align 8, !tbaa !1
  %previous157 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %186, i32 0, i32 0
  store %struct.text_list_entry_s* %185, %struct.text_list_entry_s** %previous157, align 8, !tbaa !41
  br label %if.end.158

if.end.158:                                       ; preds = %while.end, %if.then.147
  %187 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %188 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call159 = call i32 @txt_add_sorted_fragment(%struct.gx_device_txtwrite_s* %187, %struct.textw_text_enum_s* %188) #6
  store i32 %call159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.158, %if.then.132, %if.then.108, %if.then.87, %if.then.65, %if.then.43, %if.then
  %189 = bitcast %struct.text_list_entry_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast %struct.text_list_entry_s** %unsorted_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = load i32, i32* %retval
  ret i32 %191
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @txt_glyph_widths(%struct.gs_font_s* %font, i32 %wmode, i64 %glyph, %struct.gs_font_s* %orig_font, %struct.txt_glyph_widths_s* %pwidths, double* %cdevproc_result) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %wmode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %orig_font.addr = alloca %struct.gs_font_s*, align 8
  %pwidths.addr = alloca %struct.txt_glyph_widths_s*, align 8
  %cdevproc_result.addr = alloca double*, align 8
  %ofont = alloca %struct.gs_font_s*, align 8
  %info = alloca %struct.gs_glyph_info_s, align 8
  %scale_c = alloca %struct.gs_matrix_s, align 4
  %scale_o = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %rcode = alloca i32, align 4
  %v = alloca %struct.gs_point_s, align 8
  %allow_cdevproc_callout = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %widths1 = alloca %struct.txt_glyph_widths_s, align 8
  %xy = alloca %struct.gs_point_s, align 8
  %widths1118 = alloca %struct.txt_glyph_widths_s, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !23
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !45
  store %struct.gs_font_s* %orig_font, %struct.gs_font_s** %orig_font.addr, align 8, !tbaa !1
  store %struct.txt_glyph_widths_s* %pwidths, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  store double* %cdevproc_result, double** %cdevproc_result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %ofont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %1, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %2 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %2) #2
  %3 = bitcast %struct.gs_matrix_s* %scale_c to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.gs_matrix_s* %scale_o to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %rcode, align 4, !tbaa !23
  %7 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast i32* %allow_cdevproc_callout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType, align 4, !tbaa !98
  %cmp = icmp eq i32 %10, 11
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType1, align 4, !tbaa !98
  %cmp2 = icmp eq i32 %12, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %13 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %13, i32 256, i32 0
  store i32 %cond, i32* %allow_cdevproc_callout, align 4, !tbaa !23
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 11
  %15 = load i32, i32* %FontType3, align 4, !tbaa !98
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %17 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %call = call i32 @glyph_orig_matrix(%struct.gs_font_s* %16, i64 %17, %struct.gs_matrix_s* %scale_c) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %18 = load i32, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %21 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %call8 = call i32 @glyph_orig_matrix(%struct.gs_font_s* %20, i64 %21, %struct.gs_matrix_s* %scale_o) #6
  store i32 %call8, i32* %code, align 4, !tbaa !23
  %22 = load i32, i32* %code, align 4, !tbaa !23
  %cmp9 = icmp slt i32 %22, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %23 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %call12 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %scale_c, double 1.000000e+03, double 1.000000e+03, %struct.gs_matrix_s* %scale_c) #6
  %call13 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %scale_o, double 1.000000e+03, double 1.000000e+03, %struct.gs_matrix_s* %scale_o) #6
  %24 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %24, i32 0, i32 0
  %v14 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v14, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !147
  %25 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width15 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %25, i32 0, i32 0
  %v16 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width15, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v16, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !148
  %26 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %26, i32 0, i32 1
  %v17 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width, i32 0, i32 2
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v17, i32 0, i32 1
  store double 0.000000e+00, double* %y18, align 8, !tbaa !149
  %27 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width19 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %27, i32 0, i32 1
  %v20 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width19, i32 0, i32 2
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v20, i32 0, i32 0
  store double 0.000000e+00, double* %x21, align 8, !tbaa !150
  %28 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %28, i32 0, i32 2
  store i32 0, i32* %replaced_v, align 4, !tbaa !151
  %29 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %cmp22 = icmp eq i64 %29, 2147483647
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.11
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %31 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %32 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %call24 = call i32 @get_missing_width(%struct.gs_font_s* %30, i32 %31, %struct.gs_matrix_s* %scale_c, %struct.txt_glyph_widths_s* %32) #6
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.11
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %34 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !152
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %36 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %37 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl = shl i32 1, %37
  %or = or i32 1, %shl
  %or26 = or i32 %or, 32
  %38 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl27 = shl i32 64, %38
  %or28 = or i32 %or26, %shl27
  %call29 = call i32 %34(%struct.gs_font_s* %35, i64 %36, %struct.gs_matrix_s* null, i32 %or28, %struct.gs_glyph_info_s* %info) #6
  store i32 %call29, i32* %code, align 4, !tbaa !23
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 11
  %40 = load i32, i32* %FontType30, align 4, !tbaa !98
  %cmp31 = icmp ne i32 %40, 53
  br i1 %cmp31, label %land.lhs.true, label %if.else.72

land.lhs.true:                                    ; preds = %if.end.25
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType32 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 11
  %42 = load i32, i32* %FontType32, align 4, !tbaa !98
  %cmp33 = icmp ne i32 %42, 52
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.72

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType35 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 11
  %44 = load i32, i32* %FontType35, align 4, !tbaa !98
  %cmp36 = icmp ne i32 %44, 54
  br i1 %cmp36, label %land.lhs.true.37, label %if.else.72

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %45 = load i32, i32* %code, align 4, !tbaa !23
  %cmp38 = icmp eq i32 %45, -21
  br i1 %cmp38, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %members = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %46 = load i32, i32* %members, align 4, !tbaa !153
  %47 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl39 = shl i32 1, %47
  %and = and i32 %46, %shl39
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.72, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false, %land.lhs.true.37
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %49 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %50 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %call41 = call i32 @get_missing_width(%struct.gs_font_s* %48, i32 %49, %struct.gs_matrix_s* %scale_c, %struct.txt_glyph_widths_s* %50) #6
  store i32 %call41, i32* %code, align 4, !tbaa !23
  %51 = load i32, i32* %code, align 4, !tbaa !23
  %cmp42 = icmp slt i32 %51, 0
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.40
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  store double 0.000000e+00, double* %y44, align 8, !tbaa !117
  br label %if.end.49

if.else:                                          ; preds = %if.then.40
  %52 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width45 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %52, i32 0, i32 0
  %v46 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width45, i32 0, i32 2
  %y47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v46, i32 0, i32 1
  %53 = load double, double* %y47, align 8, !tbaa !147
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  store double %53, double* %y48, align 8, !tbaa !117
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.43
  %54 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool50 = icmp ne i32 %54, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.66

land.lhs.true.51:                                 ; preds = %if.end.49
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType52 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %55, i32 0, i32 11
  %56 = load i32, i32* %FontType52, align 4, !tbaa !98
  %cmp53 = icmp eq i32 %56, 9
  br i1 %cmp53, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.51
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType55 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %57, i32 0, i32 11
  %58 = load i32, i32* %FontType55, align 4, !tbaa !98
  %cmp56 = icmp eq i32 %58, 11
  br i1 %cmp56, label %if.then.57, label %if.else.66

if.then.57:                                       ; preds = %lor.lhs.false.54, %land.lhs.true.51
  %59 = bitcast %struct.txt_glyph_widths_s* %widths1 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %59) #2
  %60 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call58 = call i32 @get_missing_width(%struct.gs_font_s* %60, i32 0, %struct.gs_matrix_s* %scale_c, %struct.txt_glyph_widths_s* %widths1) #6
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %if.then.57
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double 0.000000e+00, double* %x61, align 8, !tbaa !114
  br label %if.end.65

if.else.62:                                       ; preds = %if.then.57
  %Width63 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths1, i32 0, i32 0
  %w = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width63, i32 0, i32 0
  %61 = load double, double* %w, align 8, !tbaa !155
  %div = fdiv double %61, 2.000000e+00
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %div, double* %x64, align 8, !tbaa !114
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.60
  %62 = bitcast %struct.txt_glyph_widths_s* %widths1 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %62) #2
  br label %if.end.71

if.else.66:                                       ; preds = %lor.lhs.false.54, %if.end.49
  %63 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width67 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %63, i32 0, i32 0
  %v68 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width67, i32 0, i32 2
  %x69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v68, i32 0, i32 0
  %64 = load double, double* %x69, align 8, !tbaa !148
  %x70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %64, double* %x70, align 8, !tbaa !114
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.66, %if.end.65
  br label %if.end.132

if.else.72:                                       ; preds = %lor.lhs.false, %land.lhs.true.34, %land.lhs.true, %if.end.25
  %65 = load i32, i32* %code, align 4, !tbaa !23
  %cmp73 = icmp slt i32 %65, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.72
  %66 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.75:                                       ; preds = %if.else.72
  %67 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width76 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %67, i32 0, i32 0
  %68 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %call77 = call i32 @store_glyph_width(%struct.txt_glyph_width_s* %Width76, i32 %68, %struct.gs_matrix_s* %scale_c, %struct.gs_glyph_info_s* %info) #6
  store i32 %call77, i32* %code, align 4, !tbaa !23
  %69 = load i32, i32* %code, align 4, !tbaa !23
  %cmp78 = icmp slt i32 %69, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else.75
  %70 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.else.75
  %71 = load i32, i32* %code, align 4, !tbaa !23
  %72 = load i32, i32* %rcode, align 4, !tbaa !23
  %or81 = or i32 %72, %71
  store i32 %or81, i32* %rcode, align 4, !tbaa !23
  %members82 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %73 = load i32, i32* %members82, align 4, !tbaa !153
  %74 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl83 = shl i32 64, %74
  %and84 = and i32 %73, %shl83
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.92

if.then.86:                                       ; preds = %if.end.80
  %v87 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v87, i32 0, i32 0
  %75 = load double, double* %x88, align 8, !tbaa !156
  %v89 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %y90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v89, i32 0, i32 1
  %76 = load double, double* %y90, align 8, !tbaa !157
  %call91 = call i32 @gs_distance_transform(double %75, double %76, %struct.gs_matrix_s* %scale_c, %struct.gs_point_s* %v) #6
  br label %if.end.95

if.else.92:                                       ; preds = %if.end.80
  %y93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  store double 0.000000e+00, double* %y93, align 8, !tbaa !117
  %x94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double 0.000000e+00, double* %x94, align 8, !tbaa !114
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.86
  %77 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool96 = icmp ne i32 %77, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.130

land.lhs.true.97:                                 ; preds = %if.end.95
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType98 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %78, i32 0, i32 11
  %79 = load i32, i32* %FontType98, align 4, !tbaa !98
  %cmp99 = icmp eq i32 %79, 9
  br i1 %cmp99, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.97
  %80 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType101 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %80, i32 0, i32 11
  %81 = load i32, i32* %FontType101, align 4, !tbaa !98
  %cmp102 = icmp eq i32 %81, 11
  br i1 %cmp102, label %if.then.103, label %if.end.130

if.then.103:                                      ; preds = %lor.lhs.false.100, %land.lhs.true.97
  %members104 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %82 = load i32, i32* %members104, align 4, !tbaa !153
  %83 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl105 = shl i32 1, %83
  %and106 = and i32 %82, %shl105
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.else.117

if.then.108:                                      ; preds = %if.then.103
  %84 = bitcast %struct.gs_point_s* %xy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %84) #2
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 0
  %x109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %85 = load double, double* %x109, align 8, !tbaa !114
  %width110 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width110, i32 0, i64 0
  %y112 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx111, i32 0, i32 1
  %86 = load double, double* %y112, align 8, !tbaa !117
  %call113 = call i32 @gs_distance_transform(double %85, double %86, %struct.gs_matrix_s* %scale_c, %struct.gs_point_s* %xy) #6
  %x114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %87 = load double, double* %x114, align 8, !tbaa !114
  %div115 = fdiv double %87, 2.000000e+00
  %x116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %div115, double* %x116, align 8, !tbaa !114
  %88 = bitcast %struct.gs_point_s* %xy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #2
  br label %if.end.129

if.else.117:                                      ; preds = %if.then.103
  %89 = bitcast %struct.txt_glyph_widths_s* %widths1118 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %89) #2
  %90 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call119 = call i32 @get_missing_width(%struct.gs_font_s* %90, i32 0, %struct.gs_matrix_s* %scale_c, %struct.txt_glyph_widths_s* %widths1118) #6
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %if.else.117
  %x122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double 0.000000e+00, double* %x122, align 8, !tbaa !114
  br label %if.end.128

if.else.123:                                      ; preds = %if.else.117
  %Width124 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %widths1118, i32 0, i32 0
  %w125 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width124, i32 0, i32 0
  %91 = load double, double* %w125, align 8, !tbaa !155
  %div126 = fdiv double %91, 2.000000e+00
  %x127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %div126, double* %x127, align 8, !tbaa !114
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.123, %if.then.121
  %92 = bitcast %struct.txt_glyph_widths_s* %widths1118 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %92) #2
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.108
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %lor.lhs.false.100, %if.end.95
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.71
  %93 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width133 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %93, i32 0, i32 0
  %v134 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width133, i32 0, i32 2
  %94 = bitcast %struct.gs_point_s* %v134 to i8*
  %95 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 16, i32 8, i1 false), !tbaa.struct !90
  %96 = load i32, i32* %code, align 4, !tbaa !23
  %cmp135 = icmp sgt i32 %96, 0
  br i1 %cmp135, label %land.lhs.true.136, label %if.end.151

land.lhs.true.136:                                ; preds = %if.end.132
  %97 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType137 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %97, i32 0, i32 11
  %98 = load i32, i32* %FontType137, align 4, !tbaa !98
  %cmp138 = icmp ne i32 %98, 9
  br i1 %cmp138, label %land.lhs.true.139, label %if.end.151

land.lhs.true.139:                                ; preds = %land.lhs.true.136
  %99 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %FontType140 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %99, i32 0, i32 11
  %100 = load i32, i32* %FontType140, align 4, !tbaa !98
  %cmp141 = icmp ne i32 %100, 11
  br i1 %cmp141, label %if.then.142, label %if.end.151

if.then.142:                                      ; preds = %land.lhs.true.139
  %101 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width143 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %101, i32 0, i32 0
  %w144 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width143, i32 0, i32 0
  store double 0.000000e+00, double* %w144, align 8, !tbaa !155
  %102 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width145 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %102, i32 0, i32 0
  %xy146 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width145, i32 0, i32 1
  %y147 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy146, i32 0, i32 1
  store double 0.000000e+00, double* %y147, align 8, !tbaa !158
  %103 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width148 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %103, i32 0, i32 0
  %xy149 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width148, i32 0, i32 1
  %x150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy149, i32 0, i32 0
  store double 0.000000e+00, double* %x150, align 8, !tbaa !159
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.142, %land.lhs.true.139, %land.lhs.true.136, %if.end.132
  %104 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %cmp152 = icmp eq double* %104, null
  br i1 %cmp152, label %if.then.153, label %if.else.170

if.then.153:                                      ; preds = %if.end.151
  %members154 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  store i32 0, i32* %members154, align 4, !tbaa !153
  %105 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %procs155 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %105, i32 0, i32 20
  %glyph_info156 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs155, i32 0, i32 7
  %106 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info156, align 8, !tbaa !152
  %107 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont, align 8, !tbaa !1
  %108 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %109 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl157 = shl i32 1, %109
  %110 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl158 = shl i32 64, %110
  %or159 = or i32 %shl157, %shl158
  %111 = load i32, i32* %allow_cdevproc_callout, align 4, !tbaa !23
  %or160 = or i32 %or159, %111
  %call161 = call i32 %106(%struct.gs_font_s* %107, i64 %108, %struct.gs_matrix_s* null, i32 %or160, %struct.gs_glyph_info_s* %info) #6
  store i32 %call161, i32* %code, align 4, !tbaa !23
  %members162 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %112 = load i32, i32* %members162, align 4, !tbaa !153
  %and163 = and i32 %112, 256
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.then.153
  %113 = load i32, i32* %allow_cdevproc_callout, align 4, !tbaa !23
  %tobool166 = icmp ne i32 %113, 0
  br i1 %tobool166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.then.165
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.168:                                      ; preds = %if.then.165
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %if.then.153
  br label %if.end.205

if.else.170:                                      ; preds = %if.end.151
  %114 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds double, double* %114, i64 0
  %115 = load double, double* %arrayidx171, align 8, !tbaa !91
  %width172 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width172, i32 0, i64 0
  %x174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx173, i32 0, i32 0
  store double %115, double* %x174, align 8, !tbaa !114
  %116 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds double, double* %116, i64 1
  %117 = load double, double* %arrayidx175, align 8, !tbaa !91
  %width176 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width176, i32 0, i64 0
  %y178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx177, i32 0, i32 1
  store double %117, double* %y178, align 8, !tbaa !117
  %118 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds double, double* %118, i64 6
  %119 = load double, double* %arrayidx179, align 8, !tbaa !91
  %width180 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width180, i32 0, i64 1
  %x182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx181, i32 0, i32 0
  store double %119, double* %x182, align 8, !tbaa !114
  %120 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds double, double* %120, i64 7
  %121 = load double, double* %arrayidx183, align 8, !tbaa !91
  %width184 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width184, i32 0, i64 1
  %y186 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx185, i32 0, i32 1
  store double %121, double* %y186, align 8, !tbaa !117
  %122 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool187 = icmp ne i32 %122, 0
  br i1 %tobool187, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.170
  %123 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds double, double* %123, i64 8
  %124 = load double, double* %arrayidx188, align 8, !tbaa !91
  br label %cond.end

cond.false:                                       ; preds = %if.else.170
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond189 = phi double [ %124, %cond.true ], [ 0.000000e+00, %cond.false ]
  %v190 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %x191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v190, i32 0, i32 0
  store double %cond189, double* %x191, align 8, !tbaa !156
  %125 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool192 = icmp ne i32 %125, 0
  br i1 %tobool192, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %cond.end
  %126 = load double*, double** %cdevproc_result.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds double, double* %126, i64 9
  %127 = load double, double* %arrayidx194, align 8, !tbaa !91
  br label %cond.end.196

cond.false.195:                                   ; preds = %cond.end
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.193
  %cond197 = phi double [ %127, %cond.true.193 ], [ 0.000000e+00, %cond.false.195 ]
  %v198 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %y199 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v198, i32 0, i32 1
  store double %cond197, double* %y199, align 8, !tbaa !157
  %128 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl200 = shl i32 1, %128
  %129 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool201 = icmp ne i32 %129, 0
  %cond202 = select i1 %tobool201, i32 128, i32 0
  %or203 = or i32 %shl200, %cond202
  %members204 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  store i32 %or203, i32* %members204, align 4, !tbaa !153
  store i32 0, i32* %code, align 4, !tbaa !23
  br label %if.end.205

if.end.205:                                       ; preds = %cond.end.196, %if.end.169
  %130 = load i32, i32* %code, align 4, !tbaa !23
  %cmp206 = icmp eq i32 %130, -21
  br i1 %cmp206, label %if.then.212, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %if.end.205
  %members208 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %131 = load i32, i32* %members208, align 4, !tbaa !153
  %132 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %shl209 = shl i32 1, %132
  %and210 = and i32 %131, %shl209
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %if.else.215, label %if.then.212

if.then.212:                                      ; preds = %lor.lhs.false.207, %if.end.205
  %133 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width213 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %133, i32 0, i32 1
  %134 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width214 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %134, i32 0, i32 0
  %135 = bitcast %struct.txt_glyph_width_s* %real_width213 to i8*
  %136 = bitcast %struct.txt_glyph_width_s* %Width214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 40, i32 8, i1 false), !tbaa.struct !160
  br label %if.end.244

if.else.215:                                      ; preds = %lor.lhs.false.207
  %137 = load i32, i32* %code, align 4, !tbaa !23
  %cmp216 = icmp slt i32 %137, 0
  br i1 %cmp216, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %if.else.215
  %138 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.218:                                      ; preds = %if.else.215
  %members219 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 0
  %139 = load i32, i32* %members219, align 4, !tbaa !153
  %and220 = and i32 %139, 192
  %cmp221 = icmp ne i32 %and220, 0
  br i1 %cmp221, label %if.then.222, label %if.else.224

if.then.222:                                      ; preds = %if.else.218
  %140 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v223 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %140, i32 0, i32 2
  store i32 1, i32* %replaced_v223, align 4, !tbaa !151
  br label %if.end.229

if.else.224:                                      ; preds = %if.else.218
  %v225 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %y226 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v225, i32 0, i32 1
  store double 0.000000e+00, double* %y226, align 8, !tbaa !157
  %v227 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %x228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v227, i32 0, i32 0
  store double 0.000000e+00, double* %x228, align 8, !tbaa !156
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.224, %if.then.222
  %141 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width230 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %141, i32 0, i32 1
  %142 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %call231 = call i32 @store_glyph_width(%struct.txt_glyph_width_s* %real_width230, i32 %142, %struct.gs_matrix_s* %scale_o, %struct.gs_glyph_info_s* %info) #6
  store i32 %call231, i32* %code, align 4, !tbaa !23
  %143 = load i32, i32* %code, align 4, !tbaa !23
  %cmp232 = icmp slt i32 %143, 0
  br i1 %cmp232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.229
  %144 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.234:                                       ; preds = %if.end.229
  %145 = load i32, i32* %code, align 4, !tbaa !23
  %146 = load i32, i32* %rcode, align 4, !tbaa !23
  %or235 = or i32 %146, %145
  store i32 %or235, i32* %rcode, align 4, !tbaa !23
  %v236 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %x237 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v236, i32 0, i32 0
  %147 = load double, double* %x237, align 8, !tbaa !156
  %v238 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %y239 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v238, i32 0, i32 1
  %148 = load double, double* %y239, align 8, !tbaa !157
  %149 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width240 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %149, i32 0, i32 1
  %v241 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width240, i32 0, i32 2
  %call242 = call i32 @gs_distance_transform(double %147, double %148, %struct.gs_matrix_s* %scale_o, %struct.gs_point_s* %v241) #6
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.234
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.212
  %150 = load i32, i32* %rcode, align 4, !tbaa !23
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.244, %if.then.233, %if.then.217, %if.else.168, %if.then.167, %if.then.79, %if.then.74, %if.then.23, %if.then.10, %if.then.6, %if.then
  %151 = bitcast i32* %allow_cdevproc_callout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %152) #2
  %153 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast %struct.gs_matrix_s* %scale_o to i8*
  call void @llvm.lifetime.end(i64 24, i8* %155) #2
  %156 = bitcast %struct.gs_matrix_s* %scale_c to i8*
  call void @llvm.lifetime.end(i64 24, i8* %156) #2
  %157 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %157) #2
  %158 = bitcast %struct.gs_font_s** %ofont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = load i32, i32* %retval
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal i32 @txt_update_text_state(%struct.text_list_entry_s* %ppts, %struct.textw_text_enum_s* %penum, %struct.gs_font_s* %ofont, %struct.gs_matrix_s* %pfmat) #1 {
entry:
  %retval = alloca i32, align 4
  %ppts.addr = alloca %struct.text_list_entry_s*, align 8
  %penum.addr = alloca %struct.textw_text_enum_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdev = alloca %struct.gx_device_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %cpt = alloca %struct.gs_fixed_point_s, align 4
  %smat = alloca %struct.gs_matrix_s, align 4
  %tmat = alloca %struct.gs_matrix_s, align 4
  %size = alloca float, align 4
  %c_s = alloca float, align 4
  %w_s = alloca float, align 4
  %mask = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pt = alloca %struct.gs_point_s, align 8
  %pt23 = alloca %struct.gs_point_s, align 8
  %pis91 = alloca %struct.gs_imager_state_s*, align 8
  %font93 = alloca %struct.gs_font_s*, align 8
  %scaled_width = alloca double, align 8
  %saved_width = alloca double, align 8
  %scale = alloca double, align 8
  store %struct.text_list_entry_s* %ppts, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  store %struct.textw_text_enum_s* %penum, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !140
  store %struct.gx_device_s* %2, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %4, i32 0, i32 12
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !161
  store %struct.gs_font_s* %5, %struct.gs_font_s** %font, align 8, !tbaa !1
  %6 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = bitcast %struct.gs_matrix_s* %tmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #2
  %9 = bitcast float* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast float* %c_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store float 0.000000e+00, float* %c_s, align 4, !tbaa !81
  %11 = bitcast float* %w_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store float 0.000000e+00, float* %w_s, align 4, !tbaa !81
  %12 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %mask, align 4, !tbaa !23
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %14, i32 0, i32 5
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !75
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %15, %struct.gs_fixed_point_s* %cpt) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %16 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end:                                           ; preds = %entry
  %18 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %18, i32 0, i32 3
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !143
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %22 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font1 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %22, i32 0, i32 12
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font1, align 8, !tbaa !161
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call2 = call float @txt_calculate_text_size(%struct.gs_imager_state_s* %19, %struct.gs_font_s* %20, %struct.gs_matrix_s* %21, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %tmat, %struct.gs_font_s* %23, %struct.gx_device_s* %24) #6
  store float %call2, float* %size, align 4, !tbaa !81
  %25 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %25, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %26 = load i32, i32* %operation, align 4, !tbaa !162
  %and = and i32 %26, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.17

if.then.3:                                        ; preds = %if.end
  %27 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font4 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %27, i32 0, i32 12
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font4, align 8, !tbaa !161
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %28, i32 0, i32 16
  %29 = load i32, i32* %WMode, align 4, !tbaa !125
  %cmp5 = icmp eq i32 %29, 0
  br i1 %cmp5, label %if.then.6, label %if.else.14

if.then.6:                                        ; preds = %if.then.3
  %30 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #2
  %31 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text7 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %31, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text7, i32 0, i32 3
  %call8 = call i32 @transform_delta_inverse(%struct.gs_point_s* %delta_all, %struct.gs_matrix_s* %smat, %struct.gs_point_s* %pt) #6
  store i32 %call8, i32* %code, align 4, !tbaa !23
  %32 = load i32, i32* %code, align 4, !tbaa !23
  %cmp9 = icmp sge i32 %32, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.6
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %33 = load double, double* %y, align 8, !tbaa !117
  %cmp10 = fcmp oeq double %33, 0.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %34 = load double, double* %x, align 8, !tbaa !114
  %35 = load float, float* %size, align 4, !tbaa !81
  %conv = fpext float %35 to double
  %mul = fmul double %34, %conv
  %conv12 = fptrunc double %mul to float
  store float %conv12, float* %c_s, align 4, !tbaa !81
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %if.then.6
  %36 = load i32, i32* %mask, align 4, !tbaa !23
  %or = or i32 %36, 64
  store i32 %or, i32* %mask, align 4, !tbaa !23
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %37 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #2
  br label %if.end.16

if.else.14:                                       ; preds = %if.then.3
  %38 = load i32, i32* %mask, align 4, !tbaa !23
  %or15 = or i32 %38, 64
  store i32 %or15, i32* %mask, align 4, !tbaa !23
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.end.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %39 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text18 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %39, i32 0, i32 0
  %operation19 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text18, i32 0, i32 0
  %40 = load i32, i32* %operation19, align 4, !tbaa !162
  %and20 = and i32 %40, 128
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.44

if.then.22:                                       ; preds = %if.end.17
  %41 = bitcast %struct.gs_point_s* %pt23 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %41) #2
  %42 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text24 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %42, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text24, i32 0, i32 4
  %call25 = call i32 @transform_delta_inverse(%struct.gs_point_s* %delta_space, %struct.gs_matrix_s* %smat, %struct.gs_point_s* %pt23) #6
  store i32 %call25, i32* %code, align 4, !tbaa !23
  %43 = load i32, i32* %code, align 4, !tbaa !23
  %cmp26 = icmp sge i32 %43, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.41

land.lhs.true.28:                                 ; preds = %if.then.22
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt23, i32 0, i32 1
  %44 = load double, double* %y29, align 8, !tbaa !117
  %cmp30 = fcmp oeq double %44, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.41

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %45 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text33 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %45, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text33, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %46 = load i64, i64* %s_char, align 8, !tbaa !45
  %cmp34 = icmp eq i64 %46, 32
  br i1 %cmp34, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %land.lhs.true.32
  %x37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt23, i32 0, i32 0
  %47 = load double, double* %x37, align 8, !tbaa !114
  %48 = load float, float* %size, align 4, !tbaa !81
  %conv38 = fpext float %48 to double
  %mul39 = fmul double %47, %conv38
  %conv40 = fptrunc double %mul39 to float
  store float %conv40, float* %w_s, align 4, !tbaa !81
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true.32, %land.lhs.true.28, %if.then.22
  %49 = load i32, i32* %mask, align 4, !tbaa !23
  %or42 = or i32 %49, 128
  store i32 %or42, i32* %mask, align 4, !tbaa !23
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.36
  %50 = bitcast %struct.gs_point_s* %pt23 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #2
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.17
  %51 = load float, float* %size, align 4, !tbaa !81
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 0
  %52 = load float, float* %xx, align 4, !tbaa !163
  %div = fdiv float %52, %51
  store float %div, float* %xx, align 4, !tbaa !163
  %53 = load float, float* %size, align 4, !tbaa !81
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 1
  %54 = load float, float* %xy, align 4, !tbaa !164
  %div45 = fdiv float %54, %53
  store float %div45, float* %xy, align 4, !tbaa !164
  %55 = load float, float* %size, align 4, !tbaa !81
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 2
  %56 = load float, float* %yx, align 4, !tbaa !165
  %div46 = fdiv float %56, %55
  store float %div46, float* %yx, align 4, !tbaa !165
  %57 = load float, float* %size, align 4, !tbaa !81
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 3
  %58 = load float, float* %yy, align 4, !tbaa !166
  %div47 = fdiv float %58, %57
  store float %div47, float* %yy, align 4, !tbaa !166
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %59 = load i32, i32* %x48, align 4, !tbaa !167
  %conv49 = sitofp i32 %59 to double
  %mul50 = fmul double %conv49, 3.906250e-03
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 4
  %60 = load float, float* %tx, align 4, !tbaa !113
  %conv51 = fpext float %60 to double
  %add = fadd double %conv51, %mul50
  %conv52 = fptrunc double %add to float
  store float %conv52, float* %tx, align 4, !tbaa !113
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %61 = load i32, i32* %y53, align 4, !tbaa !168
  %conv54 = sitofp i32 %61 to double
  %mul55 = fmul double %conv54, 3.906250e-03
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 5
  %62 = load float, float* %ty, align 4, !tbaa !112
  %conv56 = fpext float %62 to double
  %add57 = fadd double %conv56, %mul55
  %conv58 = fptrunc double %add57 to float
  store float %conv58, float* %ty, align 4, !tbaa !112
  %63 = load float, float* %size, align 4, !tbaa !81
  %conv59 = fpext float %63 to double
  %64 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %size60 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %64, i32 0, i32 15
  store double %conv59, double* %size60, align 8, !tbaa !80
  %65 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %65, i32 0, i32 10
  %66 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %67 = bitcast %struct.gs_matrix_s* %tmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 24, i32 4, i1 false), !tbaa.struct !111
  %68 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis61 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %68, i32 0, i32 3
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis61, align 8, !tbaa !143
  %text_rendering_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 18
  %70 = load i32, i32* %text_rendering_mode, align 4, !tbaa !169
  %71 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %render_mode = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %71, i32 0, i32 9
  store i32 %70, i32* %render_mode, align 4, !tbaa !178
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !141
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 0
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %76 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !141
  %stable_memory63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 0
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory63, align 8, !tbaa !72
  %non_gc_memory64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory64, align 8, !tbaa !31
  %81 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %81, i32 0, i32 22
  %size65 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %82 = load i32, i32* %size65, align 4, !tbaa !179
  %add66 = add i32 %82, 1
  %call67 = call i8* %76(%struct.gs_memory_s* %80, i32 1, i32 %add66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0)) #6
  %83 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %FontName = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %83, i32 0, i32 12
  store i8* %call67, i8** %FontName, align 8, !tbaa !39
  %84 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %FontName68 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %84, i32 0, i32 12
  %85 = load i8*, i8** %FontName68, align 8, !tbaa !39
  %tobool69 = icmp ne i8* %85, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.44
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.71:                                        ; preds = %if.end.44
  %86 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %FontName72 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %86, i32 0, i32 12
  %87 = load i8*, i8** %FontName72, align 8, !tbaa !39
  %88 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name73 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %88, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name73, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %89 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name74 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %89, i32 0, i32 22
  %size75 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name74, i32 0, i32 1
  %90 = load i32, i32* %size75, align 4, !tbaa !179
  %conv76 = zext i32 %90 to i64
  %call77 = call i8* @memcpy(i8* %87, i8* %arraydecay, i64 %conv76) #8
  %91 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name78 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %91, i32 0, i32 22
  %size79 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name78, i32 0, i32 1
  %92 = load i32, i32* %size79, align 4, !tbaa !179
  %idxprom = zext i32 %92 to i64
  %93 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %FontName80 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %93, i32 0, i32 12
  %94 = load i8*, i8** %FontName80, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, i8* %94, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %95 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %WMode81 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %95, i32 0, i32 16
  %96 = load i32, i32* %WMode81, align 4, !tbaa !125
  %97 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %render_mode82 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %97, i32 0, i32 9
  store i32 %96, i32* %render_mode82, align 4, !tbaa !178
  %98 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %98, i32 0, i32 17
  %99 = load i32, i32* %PaintType, align 4, !tbaa !180
  %cmp83 = icmp eq i32 %99, 2
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.146

land.lhs.true.85:                                 ; preds = %if.end.71
  %100 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis86 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %100, i32 0, i32 3
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis86, align 8, !tbaa !143
  %text_rendering_mode87 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 18
  %102 = load i32, i32* %text_rendering_mode87, align 4, !tbaa !169
  %cmp88 = icmp eq i32 %102, 0
  br i1 %cmp88, label %if.then.90, label %if.end.146

if.then.90:                                       ; preds = %land.lhs.true.85
  %103 = bitcast %struct.gs_imager_state_s** %pis91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %104 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis92 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %104, i32 0, i32 3
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis92, align 8, !tbaa !143
  store %struct.gs_imager_state_s* %105, %struct.gs_imager_state_s** %pis91, align 8, !tbaa !1
  %106 = bitcast %struct.gs_font_s** %font93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #2
  %107 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font94 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %107, i32 0, i32 12
  %108 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font94, align 8, !tbaa !161
  store %struct.gs_font_s* %108, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %109 = bitcast double* %scaled_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #2
  %110 = load %struct.gs_font_s*, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %110, i32 0, i32 18
  %111 = load float, float* %StrokeWidth, align 4, !tbaa !181
  %cmp95 = fcmp une float %111, 0.000000e+00
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.90
  %112 = load %struct.gs_font_s*, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %StrokeWidth97 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %112, i32 0, i32 18
  %113 = load float, float* %StrokeWidth97, align 4, !tbaa !181
  %conv98 = fpext float %113 to double
  br label %cond.end

cond.false:                                       ; preds = %if.then.90
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv98, %cond.true ], [ 1.000000e-03, %cond.false ]
  store double %cond, double* %scaled_width, align 8, !tbaa !91
  %114 = bitcast double* %saved_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #2
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis91, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %116 = load float, float* %half_width, align 4, !tbaa !182
  %conv99 = fpext float %116 to double
  store double %conv99, double* %saved_width, align 8, !tbaa !91
  %117 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %118, i32 0, i32 22
  %arrayidx100 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %119 = load float, float* %arrayidx100, align 4, !tbaa !81
  %conv101 = fpext float %119 to double
  %div102 = fdiv double 7.200000e+01, %conv101
  store double %div102, double* %scale, align 8, !tbaa !91
  %120 = load %struct.gs_font_s*, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %120, i32 0, i32 9
  %yy103 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 3
  %121 = load float, float* %yy103, align 4, !tbaa !183
  %cmp104 = fcmp une float %121, 0.000000e+00
  br i1 %cmp104, label %if.then.106, label %if.else.117

if.then.106:                                      ; preds = %cond.end
  %122 = load %struct.gs_font_s*, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %122, i32 0, i32 10
  %yy107 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix, i32 0, i32 3
  %123 = load float, float* %yy107, align 4, !tbaa !184
  %conv108 = fpext float %123 to double
  %call109 = call double @fabs(double %conv108) #9
  %124 = load float, float* %size, align 4, !tbaa !81
  %conv110 = fpext float %124 to double
  %mul111 = fmul double %call109, %conv110
  %yy112 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 3
  %125 = load float, float* %yy112, align 4, !tbaa !166
  %conv113 = fpext float %125 to double
  %mul114 = fmul double %mul111, %conv113
  %126 = load double, double* %scale, align 8, !tbaa !91
  %mul115 = fmul double %mul114, %126
  %127 = load double, double* %scaled_width, align 8, !tbaa !91
  %mul116 = fmul double %127, %mul115
  store double %mul116, double* %scaled_width, align 8, !tbaa !91
  br label %if.end.129

if.else.117:                                      ; preds = %cond.end
  %128 = load %struct.gs_font_s*, %struct.gs_font_s** %font93, align 8, !tbaa !1
  %orig_FontMatrix118 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %128, i32 0, i32 10
  %xy119 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix118, i32 0, i32 1
  %129 = load float, float* %xy119, align 4, !tbaa !185
  %conv120 = fpext float %129 to double
  %call121 = call double @fabs(double %conv120) #9
  %130 = load float, float* %size, align 4, !tbaa !81
  %conv122 = fpext float %130 to double
  %mul123 = fmul double %call121, %conv122
  %xy124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %tmat, i32 0, i32 1
  %131 = load float, float* %xy124, align 4, !tbaa !164
  %conv125 = fpext float %131 to double
  %mul126 = fmul double %mul123, %conv125
  %132 = load double, double* %scale, align 8, !tbaa !91
  %mul127 = fmul double %mul126, %132
  %133 = load double, double* %scaled_width, align 8, !tbaa !91
  %mul128 = fmul double %133, %mul127
  store double %mul128, double* %scaled_width, align 8, !tbaa !91
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.117, %if.then.106
  %134 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %render_mode130 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %134, i32 0, i32 9
  store i32 1, i32* %render_mode130, align 4, !tbaa !178
  %135 = load double, double* %scaled_width, align 8, !tbaa !91
  %136 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %ppts.addr, align 8, !tbaa !1
  %PaintType0Width = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %136, i32 0, i32 14
  store double %135, double* %PaintType0Width, align 8, !tbaa !186
  %137 = load double, double* %scaled_width, align 8, !tbaa !91
  %div131 = fdiv double %137, 2.000000e+00
  %conv132 = fptrunc double %div131 to float
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis91, align 8, !tbaa !1
  %line_params133 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 3
  %half_width134 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params133, i32 0, i32 0
  store float %conv132, float* %half_width134, align 4, !tbaa !182
  %139 = load i32, i32* %code, align 4, !tbaa !23
  %cmp135 = icmp slt i32 %139, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.129
  %140 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.138:                                       ; preds = %if.end.129
  %141 = load double, double* %saved_width, align 8, !tbaa !91
  %conv139 = fptrunc double %141 to float
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis91, align 8, !tbaa !1
  %line_params140 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %142, i32 0, i32 3
  %half_width141 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params140, i32 0, i32 0
  store float %conv139, float* %half_width141, align 4, !tbaa !182
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.138, %if.then.137
  %143 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast double* %saved_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast double* %scaled_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast %struct.gs_font_s** %font93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast %struct.gs_imager_state_s** %pis91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.153 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.146

if.end.146:                                       ; preds = %cleanup.cont, %land.lhs.true.85, %if.end.71
  %148 = load i32, i32* %code, align 4, !tbaa !23
  %cmp147 = icmp slt i32 %148, 0
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.end.146
  %149 = load i32, i32* %code, align 4, !tbaa !23
  br label %cond.end.151

cond.false.150:                                   ; preds = %if.end.146
  %150 = load i32, i32* %mask, align 4, !tbaa !23
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi i32 [ %149, %cond.true.149 ], [ %150, %cond.false.150 ]
  store i32 %cond152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

cleanup.153:                                      ; preds = %cond.end.151, %cleanup, %if.then.70, %if.then
  %151 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast float* %w_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast float* %c_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast float* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast %struct.gs_matrix_s* %tmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %156) #2
  %157 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %157) #2
  %158 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = load i32, i32* %retval
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal void @txt_char_widths_to_uts(%struct.gs_font_s* %font, %struct.txt_glyph_widths_s* %pwidths) #1 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pwidths.addr = alloca %struct.txt_glyph_widths_s*, align 8
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.txt_glyph_widths_s* %pwidths, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 11
  %2 = load i32, i32* %FontType, align 4, !tbaa !98
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 11
  %4 = load i32, i32* %FontType1, align 4, !tbaa !98
  %cmp2 = icmp eq i32 %4, 53
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 11
  %6 = load i32, i32* %FontType4, align 4, !tbaa !98
  %cmp5 = icmp eq i32 %6, 52
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 11
  %8 = load i32, i32* %FontType7, align 4, !tbaa !98
  %cmp8 = icmp eq i32 %8, 54
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %9 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 10
  store %struct.gs_matrix_s* %orig_FontMatrix, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 0
  %12 = load float, float* %xx, align 4, !tbaa !163
  %conv = fpext float %12 to double
  %13 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %13, i32 0, i32 0
  %xy = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %14 = load double, double* %x, align 8, !tbaa !159
  %mul = fmul double %14, %conv
  store double %mul, double* %x, align 8, !tbaa !159
  %15 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width9 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %15, i32 0, i32 0
  %xy10 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width9, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy10, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !158
  %16 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %16, i32 0, i32 1
  %xy11 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy11, i32 0, i32 0
  %17 = load double, double* %x12, align 8, !tbaa !128
  %18 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width13 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %18, i32 0, i32 1
  %xy14 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width13, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy14, i32 0, i32 1
  %19 = load double, double* %y15, align 8, !tbaa !131
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %21 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width16 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %21, i32 0, i32 1
  %xy17 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width16, i32 0, i32 1
  %call = call i32 @gs_distance_transform(double %17, double %19, %struct.gs_matrix_s* %20, %struct.gs_point_s* %xy17) #6
  %22 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.6, %entry
  %23 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width18 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %23, i32 0, i32 0
  %xy19 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width18, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy19, i32 0, i32 0
  %24 = load double, double* %x20, align 8, !tbaa !159
  %div = fdiv double %24, 1.000000e+03
  store double %div, double* %x20, align 8, !tbaa !159
  %25 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width21 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %25, i32 0, i32 0
  %xy22 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width21, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy22, i32 0, i32 1
  %26 = load double, double* %y23, align 8, !tbaa !158
  %div24 = fdiv double %26, 1.000000e+03
  store double %div24, double* %y23, align 8, !tbaa !158
  %27 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width25 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %27, i32 0, i32 1
  %xy26 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width25, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy26, i32 0, i32 0
  %28 = load double, double* %x27, align 8, !tbaa !128
  %div28 = fdiv double %28, 1.000000e+03
  store double %div28, double* %x27, align 8, !tbaa !128
  %29 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width29 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %29, i32 0, i32 1
  %xy30 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width29, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy30, i32 0, i32 1
  %30 = load double, double* %y31, align 8, !tbaa !131
  %div32 = fdiv double %30, 1.000000e+03
  store double %div32, double* %y31, align 8, !tbaa !131
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @get_unicode(%struct.gs_font_s* %font, i64 %glyph, i64 %ch, i16* %Buffer) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %Buffer.addr = alloca i16*, align 8
  %unicode = alloca i64, align 8
  %code = alloca i32, align 4
  %cid = alloca i32, align 4
  %gnstr = alloca %struct.gs_const_string_s, align 8
  %fallback = alloca i16, align 2
  %d0 = alloca i8*, align 8
  %d1 = alloca i8*, align 8
  %d2 = alloca i8*, align 8
  %d3 = alloca i8*, align 8
  %sentry = alloca %struct.single_glyph_list_s*, align 8
  %dentry = alloca %struct.double_glyph_list_s*, align 8
  %tentry = alloca %struct.treble_glyph_list_s*, align 8
  %qentry = alloca %struct.quad_glyph_list_s*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !45
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !45
  store i16* %Buffer, i16** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast i64* %unicode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i16* %fallback to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = load i64, i64* %ch.addr, align 8, !tbaa !45
  %conv = trunc i64 %5 to i16
  store i16 %conv, i16* %fallback, align 2, !tbaa !83
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 20
  %decode_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 5
  %7 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %decode_glyph, align 8, !tbaa !187
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %9 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %10 = load i64, i64* %ch.addr, align 8, !tbaa !45
  %conv1 = trunc i64 %10 to i32
  %call = call i64 %7(%struct.gs_font_s* %8, i64 %9, i32 %conv1) #6
  store i64 %call, i64* %unicode, align 8, !tbaa !45
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %sub = sub i64 %11, 2147483648
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %cid, align 4, !tbaa !23
  %12 = load i64, i64* %unicode, align 8, !tbaa !45
  %cmp = icmp eq i64 %12, -1
  br i1 %cmp, label %if.then, label %if.end.276

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs4, i32 0, i32 9
  %14 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !188
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %16 = load i64, i64* %glyph.addr, align 8, !tbaa !45
  %call5 = call i32 %14(%struct.gs_font_s* %15, i64 %16, %struct.gs_const_string_s* %gnstr) #6
  store i32 %call5, i32* %code, align 4, !tbaa !23
  %17 = load i32, i32* %code, align 4, !tbaa !23
  %cmp6 = icmp sge i32 %17, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.then
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !189
  %cmp8 = icmp eq i32 %18, 7
  br i1 %cmp8, label %if.then.10, label %if.end.54

if.then.10:                                       ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !191
  %call11 = call i32 @memcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i64 3) #7
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.53, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  %20 = bitcast i8** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %22 = load i8*, i8** %data13, align 8, !tbaa !191
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv14 = zext i8 %23 to i32
  %call15 = call i8* @strchr(i8* %21, i32 %conv14) #8
  store i8* %call15, i8** %d0, align 8, !tbaa !1
  %24 = bitcast i8** %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %26 = load i8*, i8** %data16, align 8, !tbaa !191
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 4
  %27 = load i8, i8* %arrayidx17, align 1, !tbaa !5
  %conv18 = zext i8 %27 to i32
  %call19 = call i8* @strchr(i8* %25, i32 %conv18) #8
  store i8* %call19, i8** %d1, align 8, !tbaa !1
  %28 = bitcast i8** %d2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %30 = load i8*, i8** %data20, align 8, !tbaa !191
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 5
  %31 = load i8, i8* %arrayidx21, align 1, !tbaa !5
  %conv22 = zext i8 %31 to i32
  %call23 = call i8* @strchr(i8* %29, i32 %conv22) #8
  store i8* %call23, i8** %d2, align 8, !tbaa !1
  %32 = bitcast i8** %d3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %data24 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %34 = load i8*, i8** %data24, align 8, !tbaa !191
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 6
  %35 = load i8, i8* %arrayidx25, align 1, !tbaa !5
  %conv26 = zext i8 %35 to i32
  %call27 = call i8* @strchr(i8* %33, i32 %conv26) #8
  store i8* %call27, i8** %d3, align 8, !tbaa !1
  %36 = load i8*, i8** %d0, align 8, !tbaa !1
  %cmp28 = icmp ne i8* %36, null
  br i1 %cmp28, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %if.then.12
  %37 = load i8*, i8** %d1, align 8, !tbaa !1
  %cmp31 = icmp ne i8* %37, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %38 = load i8*, i8** %d2, align 8, !tbaa !1
  %cmp34 = icmp ne i8* %38, null
  br i1 %cmp34, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %39 = load i8*, i8** %d3, align 8, !tbaa !1
  %cmp37 = icmp ne i8* %39, null
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true.36
  %40 = load i8*, i8** %d0, align 8, !tbaa !1
  %41 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 12
  %42 = load i8*, i8** %d1, align 8, !tbaa !1
  %43 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast40 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %43 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %shl43 = shl i64 %sub.ptr.sub42, 8
  %add = add nsw i64 %shl, %shl43
  %44 = load i8*, i8** %d2, align 8, !tbaa !1
  %45 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast44 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %45 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %shl47 = shl i64 %sub.ptr.sub46, 4
  %add48 = add nsw i64 %add, %shl47
  %46 = load i8*, i8** %d3, align 8, !tbaa !1
  %47 = load i8*, i8** @get_unicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast49 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %47 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %add52 = add nsw i64 %add48, %sub.ptr.sub51
  store i64 %add52, i64* %unicode, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then.39, %land.lhs.true.36, %land.lhs.true.33, %land.lhs.true.30, %if.then.12
  %48 = bitcast i8** %d3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i8** %d2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i8** %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i8** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then.10
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true, %if.then
  %52 = load i64, i64* %unicode, align 8, !tbaa !45
  %cmp55 = icmp eq i64 %52, -1
  br i1 %cmp55, label %if.then.57, label %if.end.275

if.then.57:                                       ; preds = %if.end.54
  %53 = bitcast %struct.single_glyph_list_s** %sentry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  store %struct.single_glyph_list_s* bitcast (%struct.single_glyph_list_s** @SingleGlyphList to %struct.single_glyph_list_s*), %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %54 = bitcast %struct.double_glyph_list_s** %dentry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  store %struct.double_glyph_list_s* bitcast (%struct.double_glyph_list_s** @DoubleGlyphList to %struct.double_glyph_list_s*), %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %55 = bitcast %struct.treble_glyph_list_s** %tentry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  store %struct.treble_glyph_list_s* bitcast (%struct.treble_glyph_list_s** @TrebleGlyphList to %struct.treble_glyph_list_s*), %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %56 = bitcast %struct.quad_glyph_list_s** %qentry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  store %struct.quad_glyph_list_s* bitcast (%struct.quad_glyph_list_s** @QuadGlyphList to %struct.quad_glyph_list_s*), %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %57 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  store i32 -1, i32* %index, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %if.end.98, %if.then.70, %if.then.57
  %58 = load i32, i32* %index, align 4, !tbaa !23
  %cmp58 = icmp sge i32 %58, 0
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %59 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Glyph = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %59, i32 0, i32 0
  %60 = load i8*, i8** %Glyph, align 8, !tbaa !192
  %cmp60 = icmp ne i8* %60, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %61 = phi i1 [ false, %while.cond ], [ %cmp60, %land.rhs ]
  br i1 %61, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %62 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Glyph62 = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %62, i32 0, i32 0
  %63 = load i8*, i8** %Glyph62, align 8, !tbaa !192
  %arrayidx63 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx63, align 1, !tbaa !5
  %conv64 = sext i8 %64 to i32
  %data65 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %65 = load i8*, i8** %data65, align 8, !tbaa !191
  %arrayidx66 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx66, align 1, !tbaa !5
  %conv67 = zext i8 %66 to i32
  %cmp68 = icmp slt i32 %conv64, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %while.body
  %67 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %67, i32 1
  store %struct.single_glyph_list_s* %incdec.ptr, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  br label %while.cond

if.end.71:                                        ; preds = %while.body
  %68 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Glyph72 = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %68, i32 0, i32 0
  %69 = load i8*, i8** %Glyph72, align 8, !tbaa !192
  %arrayidx73 = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx73, align 1, !tbaa !5
  %conv74 = sext i8 %70 to i32
  %data75 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %71 = load i8*, i8** %data75, align 8, !tbaa !191
  %arrayidx76 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx76, align 1, !tbaa !5
  %conv77 = zext i8 %72 to i32
  %cmp78 = icmp sgt i32 %conv74, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.71
  br label %while.end

if.end.81:                                        ; preds = %if.end.71
  %73 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Glyph82 = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %73, i32 0, i32 0
  %74 = load i8*, i8** %Glyph82, align 8, !tbaa !192
  %call83 = call i64 @strlen(i8* %74) #7
  %size84 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %75 = load i32, i32* %size84, align 4, !tbaa !189
  %conv85 = zext i32 %75 to i64
  %cmp86 = icmp eq i64 %call83, %conv85
  br i1 %cmp86, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %if.end.81
  %data89 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %76 = load i8*, i8** %data89, align 8, !tbaa !191
  %77 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Glyph90 = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %77, i32 0, i32 0
  %78 = load i8*, i8** %Glyph90, align 8, !tbaa !192
  %size91 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %79 = load i32, i32* %size91, align 4, !tbaa !189
  %conv92 = zext i32 %79 to i64
  %call93 = call i32 @memcmp(i8* %76, i8* %78, i64 %conv92) #7
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.88
  store i32 0, i32* %index, align 4, !tbaa !23
  br label %while.end

if.end.97:                                        ; preds = %if.then.88
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.81
  %80 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %incdec.ptr99 = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %80, i32 1
  store %struct.single_glyph_list_s* %incdec.ptr99, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.96, %if.then.80, %land.end
  %81 = load i32, i32* %index, align 4, !tbaa !23
  %cmp100 = icmp ne i32 %81, -1
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %while.end
  %82 = load %struct.single_glyph_list_s*, %struct.single_glyph_list_s** %sentry, align 8, !tbaa !1
  %Unicode = getelementptr inbounds %struct.single_glyph_list_s, %struct.single_glyph_list_s* %82, i32 0, i32 1
  %83 = load i16, i16* %Unicode, align 2, !tbaa !194
  %84 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  store i16 %83, i16* %84, align 2, !tbaa !83
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %while.end
  br label %while.cond.104

while.cond.104:                                   ; preds = %if.end.150, %if.then.121, %if.end.103
  %85 = load i32, i32* %index, align 4, !tbaa !23
  %cmp105 = icmp sge i32 %85, 0
  br i1 %cmp105, label %land.rhs.107, label %land.end.111

land.rhs.107:                                     ; preds = %while.cond.104
  %86 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Glyph108 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %86, i32 0, i32 0
  %87 = load i8*, i8** %Glyph108, align 8, !tbaa !195
  %cmp109 = icmp ne i8* %87, null
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.107, %while.cond.104
  %88 = phi i1 [ false, %while.cond.104 ], [ %cmp109, %land.rhs.107 ]
  br i1 %88, label %while.body.112, label %while.end.152

while.body.112:                                   ; preds = %land.end.111
  %89 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Glyph113 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %89, i32 0, i32 0
  %90 = load i8*, i8** %Glyph113, align 8, !tbaa !195
  %arrayidx114 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx114, align 1, !tbaa !5
  %conv115 = sext i8 %91 to i32
  %data116 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %92 = load i8*, i8** %data116, align 8, !tbaa !191
  %arrayidx117 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx117, align 1, !tbaa !5
  %conv118 = zext i8 %93 to i32
  %cmp119 = icmp slt i32 %conv115, %conv118
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %while.body.112
  %94 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %94, i32 1
  store %struct.double_glyph_list_s* %incdec.ptr122, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  br label %while.cond.104

if.end.123:                                       ; preds = %while.body.112
  %95 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Glyph124 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %95, i32 0, i32 0
  %96 = load i8*, i8** %Glyph124, align 8, !tbaa !195
  %arrayidx125 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx125, align 1, !tbaa !5
  %conv126 = sext i8 %97 to i32
  %data127 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %98 = load i8*, i8** %data127, align 8, !tbaa !191
  %arrayidx128 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx128, align 1, !tbaa !5
  %conv129 = zext i8 %99 to i32
  %cmp130 = icmp sgt i32 %conv126, %conv129
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.123
  br label %while.end.152

if.end.133:                                       ; preds = %if.end.123
  %100 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Glyph134 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %100, i32 0, i32 0
  %101 = load i8*, i8** %Glyph134, align 8, !tbaa !195
  %call135 = call i64 @strlen(i8* %101) #7
  %size136 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %102 = load i32, i32* %size136, align 4, !tbaa !189
  %conv137 = zext i32 %102 to i64
  %cmp138 = icmp eq i64 %call135, %conv137
  br i1 %cmp138, label %if.then.140, label %if.end.150

if.then.140:                                      ; preds = %if.end.133
  %data141 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %103 = load i8*, i8** %data141, align 8, !tbaa !191
  %104 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Glyph142 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %104, i32 0, i32 0
  %105 = load i8*, i8** %Glyph142, align 8, !tbaa !195
  %size143 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %106 = load i32, i32* %size143, align 4, !tbaa !189
  %conv144 = zext i32 %106 to i64
  %call145 = call i32 @memcmp(i8* %103, i8* %105, i64 %conv144) #7
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.140
  store i32 0, i32* %index, align 4, !tbaa !23
  br label %while.end.152

if.end.149:                                       ; preds = %if.then.140
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.133
  %107 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %incdec.ptr151 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %107, i32 1
  store %struct.double_glyph_list_s* %incdec.ptr151, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  br label %while.cond.104

while.end.152:                                    ; preds = %if.then.148, %if.then.132, %land.end.111
  %108 = load i32, i32* %index, align 4, !tbaa !23
  %cmp153 = icmp ne i32 %108, -1
  br i1 %cmp153, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %while.end.152
  %109 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  %110 = bitcast i16* %109 to i8*
  %111 = load %struct.double_glyph_list_s*, %struct.double_glyph_list_s** %dentry, align 8, !tbaa !1
  %Unicode156 = getelementptr inbounds %struct.double_glyph_list_s, %struct.double_glyph_list_s* %111, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %Unicode156, i32 0, i32 0
  %112 = bitcast i16* %arraydecay to i8*
  %call157 = call i8* @memcpy(i8* %110, i8* %112, i64 2) #8
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.158:                                       ; preds = %while.end.152
  br label %while.cond.159

while.cond.159:                                   ; preds = %if.end.205, %if.then.176, %if.end.158
  %113 = load i32, i32* %index, align 4, !tbaa !23
  %cmp160 = icmp sge i32 %113, 0
  br i1 %cmp160, label %land.rhs.162, label %land.end.166

land.rhs.162:                                     ; preds = %while.cond.159
  %114 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Glyph163 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %114, i32 0, i32 0
  %115 = load i8*, i8** %Glyph163, align 8, !tbaa !197
  %cmp164 = icmp ne i8* %115, null
  br label %land.end.166

land.end.166:                                     ; preds = %land.rhs.162, %while.cond.159
  %116 = phi i1 [ false, %while.cond.159 ], [ %cmp164, %land.rhs.162 ]
  br i1 %116, label %while.body.167, label %while.end.207

while.body.167:                                   ; preds = %land.end.166
  %117 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Glyph168 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %117, i32 0, i32 0
  %118 = load i8*, i8** %Glyph168, align 8, !tbaa !197
  %arrayidx169 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx169, align 1, !tbaa !5
  %conv170 = sext i8 %119 to i32
  %data171 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %120 = load i8*, i8** %data171, align 8, !tbaa !191
  %arrayidx172 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx172, align 1, !tbaa !5
  %conv173 = zext i8 %121 to i32
  %cmp174 = icmp slt i32 %conv170, %conv173
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %while.body.167
  %122 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %incdec.ptr177 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %122, i32 1
  store %struct.treble_glyph_list_s* %incdec.ptr177, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  br label %while.cond.159

if.end.178:                                       ; preds = %while.body.167
  %123 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Glyph179 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %123, i32 0, i32 0
  %124 = load i8*, i8** %Glyph179, align 8, !tbaa !197
  %arrayidx180 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx180, align 1, !tbaa !5
  %conv181 = sext i8 %125 to i32
  %data182 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %126 = load i8*, i8** %data182, align 8, !tbaa !191
  %arrayidx183 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx183, align 1, !tbaa !5
  %conv184 = zext i8 %127 to i32
  %cmp185 = icmp sgt i32 %conv181, %conv184
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.178
  br label %while.end.207

if.end.188:                                       ; preds = %if.end.178
  %128 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Glyph189 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %128, i32 0, i32 0
  %129 = load i8*, i8** %Glyph189, align 8, !tbaa !197
  %call190 = call i64 @strlen(i8* %129) #7
  %size191 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %130 = load i32, i32* %size191, align 4, !tbaa !189
  %conv192 = zext i32 %130 to i64
  %cmp193 = icmp eq i64 %call190, %conv192
  br i1 %cmp193, label %if.then.195, label %if.end.205

if.then.195:                                      ; preds = %if.end.188
  %data196 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %131 = load i8*, i8** %data196, align 8, !tbaa !191
  %132 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Glyph197 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %132, i32 0, i32 0
  %133 = load i8*, i8** %Glyph197, align 8, !tbaa !197
  %size198 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %134 = load i32, i32* %size198, align 4, !tbaa !189
  %conv199 = zext i32 %134 to i64
  %call200 = call i32 @memcmp(i8* %131, i8* %133, i64 %conv199) #7
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.195
  store i32 0, i32* %index, align 4, !tbaa !23
  br label %while.end.207

if.end.204:                                       ; preds = %if.then.195
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.188
  %135 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %incdec.ptr206 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %135, i32 1
  store %struct.treble_glyph_list_s* %incdec.ptr206, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  br label %while.cond.159

while.end.207:                                    ; preds = %if.then.203, %if.then.187, %land.end.166
  %136 = load i32, i32* %index, align 4, !tbaa !23
  %cmp208 = icmp ne i32 %136, -1
  br i1 %cmp208, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %while.end.207
  %137 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  %138 = bitcast i16* %137 to i8*
  %139 = load %struct.treble_glyph_list_s*, %struct.treble_glyph_list_s** %tentry, align 8, !tbaa !1
  %Unicode211 = getelementptr inbounds %struct.treble_glyph_list_s, %struct.treble_glyph_list_s* %139, i32 0, i32 1
  %arraydecay212 = getelementptr inbounds [3 x i16], [3 x i16]* %Unicode211, i32 0, i32 0
  %140 = bitcast i16* %arraydecay212 to i8*
  %call213 = call i8* @memcpy(i8* %138, i8* %140, i64 3) #8
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.214:                                       ; preds = %while.end.207
  br label %while.cond.215

while.cond.215:                                   ; preds = %if.end.261, %if.then.232, %if.end.214
  %141 = load i32, i32* %index, align 4, !tbaa !23
  %cmp216 = icmp sge i32 %141, 0
  br i1 %cmp216, label %land.rhs.218, label %land.end.222

land.rhs.218:                                     ; preds = %while.cond.215
  %142 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Glyph219 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %142, i32 0, i32 0
  %143 = load i8*, i8** %Glyph219, align 8, !tbaa !199
  %cmp220 = icmp ne i8* %143, null
  br label %land.end.222

land.end.222:                                     ; preds = %land.rhs.218, %while.cond.215
  %144 = phi i1 [ false, %while.cond.215 ], [ %cmp220, %land.rhs.218 ]
  br i1 %144, label %while.body.223, label %while.end.263

while.body.223:                                   ; preds = %land.end.222
  %145 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Glyph224 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %145, i32 0, i32 0
  %146 = load i8*, i8** %Glyph224, align 8, !tbaa !199
  %arrayidx225 = getelementptr inbounds i8, i8* %146, i64 0
  %147 = load i8, i8* %arrayidx225, align 1, !tbaa !5
  %conv226 = sext i8 %147 to i32
  %data227 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %148 = load i8*, i8** %data227, align 8, !tbaa !191
  %arrayidx228 = getelementptr inbounds i8, i8* %148, i64 0
  %149 = load i8, i8* %arrayidx228, align 1, !tbaa !5
  %conv229 = zext i8 %149 to i32
  %cmp230 = icmp slt i32 %conv226, %conv229
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %while.body.223
  %150 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %incdec.ptr233 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %150, i32 1
  store %struct.quad_glyph_list_s* %incdec.ptr233, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  br label %while.cond.215

if.end.234:                                       ; preds = %while.body.223
  %151 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Glyph235 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %151, i32 0, i32 0
  %152 = load i8*, i8** %Glyph235, align 8, !tbaa !199
  %arrayidx236 = getelementptr inbounds i8, i8* %152, i64 0
  %153 = load i8, i8* %arrayidx236, align 1, !tbaa !5
  %conv237 = sext i8 %153 to i32
  %data238 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %154 = load i8*, i8** %data238, align 8, !tbaa !191
  %arrayidx239 = getelementptr inbounds i8, i8* %154, i64 0
  %155 = load i8, i8* %arrayidx239, align 1, !tbaa !5
  %conv240 = zext i8 %155 to i32
  %cmp241 = icmp sgt i32 %conv237, %conv240
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.234
  br label %while.end.263

if.end.244:                                       ; preds = %if.end.234
  %156 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Glyph245 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %156, i32 0, i32 0
  %157 = load i8*, i8** %Glyph245, align 8, !tbaa !199
  %call246 = call i64 @strlen(i8* %157) #7
  %size247 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %158 = load i32, i32* %size247, align 4, !tbaa !189
  %conv248 = zext i32 %158 to i64
  %cmp249 = icmp eq i64 %call246, %conv248
  br i1 %cmp249, label %if.then.251, label %if.end.261

if.then.251:                                      ; preds = %if.end.244
  %data252 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %159 = load i8*, i8** %data252, align 8, !tbaa !191
  %160 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Glyph253 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %160, i32 0, i32 0
  %161 = load i8*, i8** %Glyph253, align 8, !tbaa !199
  %size254 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %162 = load i32, i32* %size254, align 4, !tbaa !189
  %conv255 = zext i32 %162 to i64
  %call256 = call i32 @memcmp(i8* %159, i8* %161, i64 %conv255) #7
  %cmp257 = icmp eq i32 %call256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.then.251
  store i32 0, i32* %index, align 4, !tbaa !23
  br label %while.end.263

if.end.260:                                       ; preds = %if.then.251
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.244
  %163 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %incdec.ptr262 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %163, i32 1
  store %struct.quad_glyph_list_s* %incdec.ptr262, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  br label %while.cond.215

while.end.263:                                    ; preds = %if.then.259, %if.then.243, %land.end.222
  %164 = load i32, i32* %index, align 4, !tbaa !23
  %cmp264 = icmp ne i32 %164, -1
  br i1 %cmp264, label %if.then.266, label %if.end.270

if.then.266:                                      ; preds = %while.end.263
  %165 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  %166 = bitcast i16* %165 to i8*
  %167 = load %struct.quad_glyph_list_s*, %struct.quad_glyph_list_s** %qentry, align 8, !tbaa !1
  %Unicode267 = getelementptr inbounds %struct.quad_glyph_list_s, %struct.quad_glyph_list_s* %167, i32 0, i32 1
  %arraydecay268 = getelementptr inbounds [4 x i16], [4 x i16]* %Unicode267, i32 0, i32 0
  %168 = bitcast i16* %arraydecay268 to i8*
  %call269 = call i8* @memcpy(i8* %166, i8* %168, i64 4) #8
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.270:                                       ; preds = %while.end.263
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.270, %if.then.266, %if.then.210, %if.then.155, %if.then.102
  %169 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast %struct.quad_glyph_list_s** %qentry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast %struct.treble_glyph_list_s** %tentry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast %struct.double_glyph_list_s** %dentry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast %struct.single_glyph_list_s** %sentry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.278 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.275

if.end.275:                                       ; preds = %cleanup.cont, %if.end.54
  %174 = load i16, i16* %fallback, align 2, !tbaa !83
  %175 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  store i16 %174, i16* %175, align 2, !tbaa !83
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.278

if.end.276:                                       ; preds = %entry
  %176 = load i64, i64* %unicode, align 8, !tbaa !45
  %conv277 = trunc i64 %176 to i16
  %177 = load i16*, i16** %Buffer.addr, align 8, !tbaa !1
  store i16 %conv277, i16* %177, align 2, !tbaa !83
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.278

cleanup.278:                                      ; preds = %if.end.276, %if.end.275, %cleanup
  %178 = bitcast i16* %fallback to i8*
  call void @llvm.lifetime.end(i64 2, i8* %178) #2
  %179 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %179) #2
  %180 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i64* %unicode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = load i32, i32* %retval
  ret i32 %183
}

; Function Attrs: nounwind uwtable
define internal i32 @glyph_orig_matrix(%struct.gs_font_s* %font, i64 %cid, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cid.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  %fidx = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %cid, i64* %cid.addr, align 8, !tbaa !45
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @txtwrite_font_orig_matrix(%struct.gs_font_s* %1, i64 %2, %struct.gs_matrix_s* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %4 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 11
  %6 = load i32, i32* %FontType, align 4, !tbaa !98
  %cmp1 = icmp eq i32 %6, 9
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.then
  %7 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %cmp3 = icmp ult i64 %8, 2147483648
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  store i64 2147483648, i64* %cid.addr, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %10, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %11 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !201
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_s* %12 to %struct.gs_font_base_s*
  %14 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %call5 = call i32 %11(%struct.gs_font_base_s* %13, i64 %14, %struct.gs_glyph_data_s* null, i32* %fidx) #6
  store i32 %call5, i32* %code, align 4, !tbaa !23
  %15 = load i32, i32* %code, align 4, !tbaa !23
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_font_s* %16 to %struct.gs_font_cid0_s*
  %cidata8 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %17, i32 0, i32 29
  %glyph_data9 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata8, i32 0, i32 5
  %18 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data9, align 8, !tbaa !201
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_font_s* %19 to %struct.gs_font_base_s*
  %call10 = call i32 %18(%struct.gs_font_base_s* %20, i64 2147483648, %struct.gs_glyph_data_s* null, i32* %fidx) #6
  store i32 %call10, i32* %code, align 4, !tbaa !23
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !23
  %cmp12 = icmp sge i32 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %23 = load i32, i32* %fidx, align 4, !tbaa !23
  %call14 = call %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s* %22, i32 %23) #6
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call14, i32 0, i32 9
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call15 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %24, %struct.gs_matrix_s* %25) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %26 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %27 = load i32, i32* %code, align 4, !tbaa !23
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  ret i32 %27
}

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @get_missing_width(%struct.gs_font_s* %font, i32 %wmode, %struct.gs_matrix_s* %scale_c, %struct.txt_glyph_widths_s* %pwidths) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %wmode.addr = alloca i32, align 4
  %scale_c.addr = alloca %struct.gs_matrix_s*, align 8
  %pwidths.addr = alloca %struct.txt_glyph_widths_s*, align 8
  %finfo = alloca %struct.gs_font_info_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !23
  store %struct.gs_matrix_s* %scale_c, %struct.gs_matrix_s** %scale_c.addr, align 8, !tbaa !1
  store %struct.txt_glyph_widths_s* %pwidths, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_info_s* %finfo to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %3 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !206
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_font_s* %4, %struct.gs_point_s* null, i32 2048, %struct.gs_font_info_s* %finfo) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %5 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %MissingWidth = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %finfo, i32 0, i32 12
  %8 = load i32, i32* %MissingWidth, align 4, !tbaa !207
  %sub = sub nsw i32 0, %8
  %conv = sitofp i32 %sub to double
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %scale_c.addr, align 8, !tbaa !1
  %10 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %10, i32 0, i32 1
  %xy = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width, i32 0, i32 1
  %call2 = call i32 @gs_distance_transform(double 0.000000e+00, double %conv, %struct.gs_matrix_s* %9, %struct.gs_point_s* %xy) #6
  %11 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %11, i32 0, i32 0
  %xy3 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy3, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !159
  %12 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width4 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %12, i32 0, i32 1
  %xy5 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width4, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy5, i32 0, i32 1
  %13 = load double, double* %y, align 8, !tbaa !131
  %14 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width6 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %14, i32 0, i32 0
  %xy7 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width6, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy7, i32 0, i32 1
  store double %13, double* %y8, align 8, !tbaa !158
  %15 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width9 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %15, i32 0, i32 0
  %xy10 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width9, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy10, i32 0, i32 1
  %16 = load double, double* %y11, align 8, !tbaa !158
  %17 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width12 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %17, i32 0, i32 1
  %w = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width12, i32 0, i32 0
  store double %16, double* %w, align 8, !tbaa !211
  %18 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width13 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %18, i32 0, i32 0
  %w14 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width13, i32 0, i32 0
  store double %16, double* %w14, align 8, !tbaa !155
  %19 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width15 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %19, i32 0, i32 0
  %xy16 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width15, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy16, i32 0, i32 1
  %20 = load double, double* %y17, align 8, !tbaa !158
  %sub18 = fsub double -0.000000e+00, %20
  %div = fdiv double %sub18, 2.000000e+00
  %21 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width19 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %21, i32 0, i32 0
  %v = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width19, i32 0, i32 2
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %div, double* %x20, align 8, !tbaa !148
  %22 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width21 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %22, i32 0, i32 0
  %xy22 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width21, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy22, i32 0, i32 1
  %23 = load double, double* %y23, align 8, !tbaa !158
  %sub24 = fsub double -0.000000e+00, %23
  %24 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width25 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %24, i32 0, i32 0
  %v26 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width25, i32 0, i32 2
  %y27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v26, i32 0, i32 1
  store double %sub24, double* %y27, align 8, !tbaa !147
  br label %if.end.55

if.else:                                          ; preds = %if.end
  %MissingWidth28 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %finfo, i32 0, i32 12
  %25 = load i32, i32* %MissingWidth28, align 4, !tbaa !207
  %conv29 = sitofp i32 %25 to double
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %scale_c.addr, align 8, !tbaa !1
  %27 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width30 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %27, i32 0, i32 1
  %xy31 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width30, i32 0, i32 1
  %call32 = call i32 @gs_distance_transform(double %conv29, double 0.000000e+00, %struct.gs_matrix_s* %26, %struct.gs_point_s* %xy31) #6
  %28 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width33 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %28, i32 0, i32 1
  %xy34 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width33, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy34, i32 0, i32 0
  %29 = load double, double* %x35, align 8, !tbaa !128
  %30 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width36 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %30, i32 0, i32 0
  %xy37 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width36, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy37, i32 0, i32 0
  store double %29, double* %x38, align 8, !tbaa !159
  %31 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width39 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %31, i32 0, i32 0
  %xy40 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width39, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy40, i32 0, i32 1
  store double 0.000000e+00, double* %y41, align 8, !tbaa !158
  %32 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width42 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %32, i32 0, i32 0
  %xy43 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width42, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy43, i32 0, i32 0
  %33 = load double, double* %x44, align 8, !tbaa !159
  %34 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width45 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %34, i32 0, i32 1
  %w46 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %real_width45, i32 0, i32 0
  store double %33, double* %w46, align 8, !tbaa !211
  %35 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width47 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %35, i32 0, i32 0
  %w48 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width47, i32 0, i32 0
  store double %33, double* %w48, align 8, !tbaa !155
  %36 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width49 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %36, i32 0, i32 0
  %v50 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width49, i32 0, i32 2
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v50, i32 0, i32 1
  store double 0.000000e+00, double* %y51, align 8, !tbaa !147
  %37 = load %struct.txt_glyph_widths_s*, %struct.txt_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width52 = getelementptr inbounds %struct.txt_glyph_widths_s, %struct.txt_glyph_widths_s* %37, i32 0, i32 0
  %v53 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %Width52, i32 0, i32 2
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v53, i32 0, i32 0
  store double 0.000000e+00, double* %x54, align 8, !tbaa !148
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.gs_font_info_s* %finfo to i8*
  call void @llvm.lifetime.end(i64 160, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @store_glyph_width(%struct.txt_glyph_width_s* %pwidth, i32 %wmode, %struct.gs_matrix_s* %scale, %struct.gs_glyph_info_s* %pinfo) #1 {
entry:
  %retval = alloca i32, align 4
  %pwidth.addr = alloca %struct.txt_glyph_width_s*, align 8
  %wmode.addr = alloca i32, align 4
  %scale.addr = alloca %struct.gs_matrix_s*, align 8
  %pinfo.addr = alloca %struct.gs_glyph_info_s*, align 8
  %w = alloca double, align 8
  %v = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.txt_glyph_width_s* %pwidth, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !23
  store %struct.gs_matrix_s* %scale, %struct.gs_matrix_s** %scale.addr, align 8, !tbaa !1
  store %struct.gs_glyph_info_s* %pinfo, %struct.gs_glyph_info_s** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %pinfo.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %4 = load double, double* %x, align 8, !tbaa !114
  %5 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %pinfo.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width2, i32 0, i64 %idxprom1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx3, i32 0, i32 1
  %7 = load double, double* %y, align 8, !tbaa !117
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %scale.addr, align 8, !tbaa !1
  %9 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %9, i32 0, i32 1
  %call = call i32 @gs_distance_transform(double %4, double %7, %struct.gs_matrix_s* %8, %struct.gs_point_s* %xy) #6
  %10 = load i32, i32* %wmode.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %xy4 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %11, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy4, i32 0, i32 1
  %12 = load double, double* %y5, align 8, !tbaa !212
  store double %12, double* %w, align 8, !tbaa !91
  %13 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %xy6 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %13, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy6, i32 0, i32 0
  %14 = load double, double* %x7, align 8, !tbaa !213
  store double %14, double* %v, align 8, !tbaa !91
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %xy8 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %15, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy8, i32 0, i32 0
  %16 = load double, double* %x9, align 8, !tbaa !213
  store double %16, double* %w, align 8, !tbaa !91
  %17 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %xy10 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %17, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy10, i32 0, i32 1
  %18 = load double, double* %y11, align 8, !tbaa !212
  store double %18, double* %v, align 8, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load double, double* %v, align 8, !tbaa !91
  %cmp = fcmp une double %19, 0.000000e+00
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %20 = load double, double* %w, align 8, !tbaa !91
  %21 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %w14 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %21, i32 0, i32 0
  store double %20, double* %w14, align 8, !tbaa !214
  %22 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %pinfo.addr, align 8, !tbaa !1
  %v15 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %22, i32 0, i32 2
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v15, i32 0, i32 0
  %23 = load double, double* %x16, align 8, !tbaa !156
  %24 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %pinfo.addr, align 8, !tbaa !1
  %v17 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %24, i32 0, i32 2
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v17, i32 0, i32 1
  %25 = load double, double* %y18, align 8, !tbaa !157
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %scale.addr, align 8, !tbaa !1
  %27 = load %struct.txt_glyph_width_s*, %struct.txt_glyph_width_s** %pwidth.addr, align 8, !tbaa !1
  %v19 = getelementptr inbounds %struct.txt_glyph_width_s, %struct.txt_glyph_width_s* %27, i32 0, i32 2
  %call20 = call i32 @gs_distance_transform(double %23, double %25, %struct.gs_matrix_s* %26, %struct.gs_point_s* %v19) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12
  %28 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @txtwrite_font_orig_matrix(%struct.gs_font_s* %font, i64 %cid, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cid.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %base_font = alloca %struct.gs_font_s*, align 8
  %fidx = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %cid, i64* %cid.addr, align 8, !tbaa !45
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 11
  %2 = load i32, i32* %FontType, align 4, !tbaa !98
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 42, label %sw.bb
    i32 11, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 9, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 53, label %sw.bb.1
    i32 52, label %sw.bb.1
    i32 54, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gs_make_identity(%struct.gs_matrix_s* %3) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %4 = bitcast %struct.gs_font_s** %base_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %5, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 7
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !215
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 7
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %base2, align 8, !tbaa !215
  store %struct.gs_font_s* %10, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType3, align 4, !tbaa !98
  %cmp4 = icmp eq i32 %12, 3
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType5, align 4, !tbaa !98
  %cmp6 = icmp eq i32 %14, 53
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType8 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 11
  %16 = load i32, i32* %FontType8, align 4, !tbaa !98
  %cmp9 = icmp eq i32 %16, 52
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 11
  %18 = load i32, i32* %FontType11, align 4, !tbaa !98
  %cmp12 = icmp eq i32 %18, 54
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %while.end
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 9
  %21 = bitcast %struct.gs_matrix_s* %19 to i8*
  %22 = bitcast %struct.gs_matrix_s* %FontMatrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 24, i32 4, i1 false), !tbaa.struct !111
  br label %if.end.55

if.else:                                          ; preds = %lor.lhs.false.10
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 10
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix, i32 0, i32 0
  %24 = load float, float* %xx, align 4, !tbaa !216
  %cmp13 = fcmp une float %24, 0.000000e+00
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.else
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %orig_FontMatrix15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 10
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix15, i32 0, i32 1
  %26 = load float, float* %xy, align 4, !tbaa !185
  %cmp16 = fcmp une float %26, 0.000000e+00
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %orig_FontMatrix18 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 10
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix18, i32 0, i32 2
  %28 = load float, float* %yx, align 4, !tbaa !217
  %cmp19 = fcmp une float %28, 0.000000e+00
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %orig_FontMatrix21 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 10
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix21, i32 0, i32 3
  %30 = load float, float* %yy, align 4, !tbaa !184
  %cmp22 = fcmp une float %30, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false.14, %if.else
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %orig_FontMatrix24 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %32, i32 0, i32 10
  %33 = bitcast %struct.gs_matrix_s* %31 to i8*
  %34 = bitcast %struct.gs_matrix_s* %orig_FontMatrix24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !111
  br label %if.end.54

if.else.25:                                       ; preds = %lor.lhs.false.20
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix26 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %35, i32 0, i32 9
  %xx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix26, i32 0, i32 0
  %36 = load float, float* %xx27, align 4, !tbaa !218
  %conv = fpext float %36 to double
  %cmp28 = fcmp oeq double %conv, 0x3F40000000000000
  br i1 %cmp28, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %if.else.25
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 9
  %xy31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix30, i32 0, i32 1
  %38 = load float, float* %xy31, align 4, !tbaa !219
  %cmp32 = fcmp oeq float %38, 0.000000e+00
  br i1 %cmp32, label %land.lhs.true.34, label %if.else.53

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix35 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 9
  %yx36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix35, i32 0, i32 2
  %40 = load float, float* %yx36, align 4, !tbaa !220
  %cmp37 = fcmp oeq float %40, 0.000000e+00
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.53

land.lhs.true.39:                                 ; preds = %land.lhs.true.34
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix40 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 9
  %yy41 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix40, i32 0, i32 3
  %42 = load float, float* %yy41, align 4, !tbaa !183
  %cmp42 = fcmp olt float %42, 0.000000e+00
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.39
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix44 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 9
  %yy45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix44, i32 0, i32 3
  %44 = load float, float* %yy45, align 4, !tbaa !183
  %sub = fsub float -0.000000e+00, %44
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.39
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 9
  %yy47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix46, i32 0, i32 3
  %46 = load float, float* %yy47, align 4, !tbaa !183
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %46, %cond.false ]
  %conv48 = fpext float %cond to double
  %cmp49 = fcmp oeq double %conv48, 0x3F40000000000000
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %cond.end
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %FontMatrix52 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %48, i32 0, i32 9
  %49 = bitcast %struct.gs_matrix_s* %47 to i8*
  %50 = bitcast %struct.gs_matrix_s* %FontMatrix52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 4, i1 false), !tbaa.struct !111
  br label %if.end

if.else.53:                                       ; preds = %cond.end, %land.lhs.true.34, %land.lhs.true, %if.else.25
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_make_scaling(double 1.000000e-03, double 1.000000e-03, %struct.gs_matrix_s* %51) #6
  br label %if.end

if.end:                                           ; preds = %if.else.53, %if.then.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then.23
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %52 = bitcast %struct.gs_font_s** %base_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType56 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %53, i32 0, i32 11
  %54 = load i32, i32* %FontType56, align 4, !tbaa !98
  %cmp57 = icmp eq i32 %54, 9
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.82

land.lhs.true.59:                                 ; preds = %if.end.55
  %55 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %cmp60 = icmp ne i64 %55, -1
  br i1 %cmp60, label %if.then.62, label %if.end.82

if.then.62:                                       ; preds = %land.lhs.true.59
  %56 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %cmp63 = icmp ult i64 %57, 2147483648
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  store i64 2147483648, i64* %cid.addr, align 8, !tbaa !45
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.62
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gs_font_s* %58 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %59, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %60 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !201
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gs_font_s* %61 to %struct.gs_font_base_s*
  %63 = load i64, i64* %cid.addr, align 8, !tbaa !45
  %call67 = call i32 %60(%struct.gs_font_base_s* %62, i64 %63, %struct.gs_glyph_data_s* null, i32* %fidx) #6
  store i32 %call67, i32* %code, align 4, !tbaa !23
  %64 = load i32, i32* %code, align 4, !tbaa !23
  %cmp68 = icmp slt i32 %64, 0
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.66
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gs_font_s* %65 to %struct.gs_font_cid0_s*
  %cidata71 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %66, i32 0, i32 29
  %glyph_data72 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata71, i32 0, i32 5
  %67 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data72, align 8, !tbaa !201
  %68 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gs_font_s* %68 to %struct.gs_font_base_s*
  %call73 = call i32 %67(%struct.gs_font_base_s* %69, i64 2147483648, %struct.gs_glyph_data_s* null, i32* %fidx) #6
  store i32 %call73, i32* %code, align 4, !tbaa !23
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.end.66
  %70 = load i32, i32* %code, align 4, !tbaa !23
  %cmp75 = icmp sge i32 %70, 0
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.end.74
  %71 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %72 = load i32, i32* %fidx, align 4, !tbaa !23
  %call78 = call %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s* %71, i32 %72) #6
  %FontMatrix79 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call78, i32 0, i32 9
  %73 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call80 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix79, %struct.gs_matrix_s* %73, %struct.gs_matrix_s* %74) #6
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.end.74
  %75 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.59, %if.end.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.82, %sw.bb
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s*, i32) #0

declare void @gs_make_identity(%struct.gs_matrix_s*) #0

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal float @txt_calculate_text_size(%struct.gs_imager_state_s* %pis, %struct.gs_font_s* %ofont, %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %tmat, %struct.gs_font_s* %font, %struct.gx_device_s* %pdev) #1 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %smat.addr = alloca %struct.gs_matrix_s*, align 8
  %tmat.addr = alloca %struct.gs_matrix_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %orig_matrix = alloca %struct.gs_matrix_s, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %size = alloca float, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %smat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %tmat, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %orig_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast double* %sx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !81
  %conv = fpext float %3 to double
  %div = fdiv double %conv, 7.200000e+01
  store double %div, double* %sx, align 8, !tbaa !91
  %4 = bitcast double* %sy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %6 = load float, float* %arrayidx2, align 4, !tbaa !81
  %conv3 = fpext float %6 to double
  %div4 = fdiv double %conv3, 7.200000e+01
  store double %div4, double* %sy, align 8, !tbaa !91
  %7 = bitcast float* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %call = call i32 @txtwrite_font_orig_matrix(%struct.gs_font_s* %8, i64 -1, %struct.gs_matrix_s* %orig_matrix) #6
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %smat.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %orig_matrix, %struct.gs_matrix_s* %9) #6
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %smat.addr, align 8, !tbaa !1
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %smat.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %10, %struct.gs_matrix_s* %11, %struct.gs_matrix_s* %12) #6
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 5
  %15 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %16 = bitcast %struct.gs_matrix_s* %13 to i8*
  %17 = bitcast %struct.gs_matrix_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 4, i1 false), !tbaa.struct !111
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !112
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !113
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %smat.addr, align 8, !tbaa !1
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %20, %struct.gs_matrix_s* %21, %struct.gs_matrix_s* %22) #6
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 2
  %24 = load float, float* %yx, align 4, !tbaa !165
  %conv8 = fpext float %24 to double
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %yx9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 2
  %26 = load float, float* %yx9, align 4, !tbaa !165
  %conv10 = fpext float %26 to double
  %mul = fmul double %conv8, %conv10
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 3
  %28 = load float, float* %yy, align 4, !tbaa !166
  %conv11 = fpext float %28 to double
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %yy12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 3
  %30 = load float, float* %yy12, align 4, !tbaa !166
  %conv13 = fpext float %30 to double
  %mul14 = fmul double %conv11, %conv13
  %add = fadd double %mul, %mul14
  %call15 = call double @sqrt(double %add) #8
  %31 = load double, double* %sy, align 8, !tbaa !91
  %div16 = fdiv double %call15, %31
  %conv17 = fptrunc double %div16 to float
  store float %conv17, float* %size, align 4, !tbaa !81
  %32 = load float, float* %size, align 4, !tbaa !81
  %conv18 = fpext float %32 to double
  %cmp = fcmp olt double %conv18, 1.000000e-02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 0
  %34 = load float, float* %xx, align 4, !tbaa !163
  %conv20 = fpext float %34 to double
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %xx21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 0
  %36 = load float, float* %xx21, align 4, !tbaa !163
  %conv22 = fpext float %36 to double
  %mul23 = fmul double %conv20, %conv22
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 1
  %38 = load float, float* %xy, align 4, !tbaa !164
  %conv24 = fpext float %38 to double
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %tmat.addr, align 8, !tbaa !1
  %xy25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 1
  %40 = load float, float* %xy25, align 4, !tbaa !164
  %conv26 = fpext float %40 to double
  %mul27 = fmul double %conv24, %conv26
  %add28 = fadd double %mul23, %mul27
  %call29 = call double @sqrt(double %add28) #8
  %41 = load double, double* %sx, align 8, !tbaa !91
  %div30 = fdiv double %call29, %41
  %conv31 = fptrunc double %div30 to float
  store float %conv31, float* %size, align 4, !tbaa !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %42 = load float, float* %size, align 4, !tbaa !81
  %conv32 = fpext float %42 to double
  %cmp33 = fcmp olt double %conv32, 1.000000e-02
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end
  store float 1.000000e+00, float* %size, align 4, !tbaa !81
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end
  %43 = load float, float* %size, align 4, !tbaa !81
  %44 = bitcast float* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast double* %sy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast double* %sx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.gs_matrix_s* %orig_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %47) #2
  ret float %43
}

; Function Attrs: nounwind uwtable
define internal i32 @transform_delta_inverse(%struct.gs_point_s* %pdelta, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %ppt) #1 {
entry:
  %retval = alloca i32, align 4
  %pdelta.addr = alloca %struct.gs_point_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %code = alloca i32, align 4
  %delta = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_point_s* %pdelta, %struct.gs_point_s** %pdelta.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_point_s*, %struct.gs_point_s** %pdelta.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !114
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %pdelta.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i32 0, i32 1
  %4 = load double, double* %y, align 8, !tbaa !117
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %6 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform_inverse(double %2, double %4, %struct.gs_matrix_s* %5, %struct.gs_point_s* %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !23
  %7 = bitcast %struct.gs_point_s* %delta to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 1
  %11 = load double, double* %y1, align 8, !tbaa !117
  %cmp2 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %12, i32 0, i32 0
  %13 = load double, double* %x5, align 8, !tbaa !114
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_distance_transform(double %13, double 0.000000e+00, %struct.gs_matrix_s* %14, %struct.gs_point_s* %delta) #6
  store i32 %call6, i32* %code, align 4, !tbaa !23
  %15 = load i32, i32* %code, align 4, !tbaa !23
  %cmp7 = icmp slt i32 %15, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta, i32 0, i32 0
  %16 = load double, double* %x10, align 8, !tbaa !114
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %pdelta.addr, align 8, !tbaa !1
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 0
  %18 = load double, double* %x11, align 8, !tbaa !114
  %sub = fsub double %16, %18
  %call12 = call double @fabs(double %sub) #9
  %cmp13 = fcmp olt double %call12, 1.000000e-02
  br i1 %cmp13, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.9
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta, i32 0, i32 1
  %19 = load double, double* %y14, align 8, !tbaa !117
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %pdelta.addr, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 1
  %21 = load double, double* %y15, align 8, !tbaa !117
  %sub16 = fsub double %19, %21
  %call17 = call double @fabs(double %sub16) #9
  %cmp18 = fcmp olt double %call17, 1.000000e-02
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  %22 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i32 0, i32 1
  store double 0.000000e+00, double* %y20, align 8, !tbaa !117
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.8, %if.then.3, %if.then
  %23 = bitcast %struct.gs_point_s* %delta to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #2
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

declare i32 @gs_moveto_aux(%struct.gs_imager_state_s*, %struct.gx_path_s*, double, double) #0

declare %struct.gx_path_s* @gx_current_path(%struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @txt_add_sorted_fragment(%struct.gx_device_txtwrite_s* %tdev, %struct.textw_text_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_txtwrite_s*, align 8
  %penum.addr = alloca %struct.textw_text_enum_s*, align 8
  %Y_List = alloca %struct.page_text_list_s*, align 8
  %X_List = alloca %struct.text_list_entry_s*, align 8
  %Y_Entry = alloca %struct.page_text_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_txtwrite_s* %tdev, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  store %struct.textw_text_enum_s* %penum, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %0, i32 0, i32 43
  %y_ordered_list = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData, i32 0, i32 1
  %1 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list, align 8, !tbaa !21
  %tobool = icmp ne %struct.page_text_list_s* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !72
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %6 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !73
  %7 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !30
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !72
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !31
  %call = call i8* %6(%struct.gs_memory_s* %10, i32 1, i32 48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0)) #6
  %11 = bitcast i8* %call to %struct.page_text_list_s*
  %12 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData4 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %12, i32 0, i32 43
  %y_ordered_list5 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData4, i32 0, i32 1
  store %struct.page_text_list_s* %11, %struct.page_text_list_s** %y_ordered_list5, align 8, !tbaa !21
  %13 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData6 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %13, i32 0, i32 43
  %y_ordered_list7 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData6, i32 0, i32 1
  %14 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list7, align 8, !tbaa !21
  %tobool8 = icmp ne %struct.page_text_list_s* %14, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData10 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %15, i32 0, i32 43
  %y_ordered_list11 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData10, i32 0, i32 1
  %16 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list11, align 8, !tbaa !21
  %17 = bitcast %struct.page_text_list_s* %16 to i8*
  %call12 = call i8* @memset(i8* %17, i32 0, i64 48) #8
  %18 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %18, i32 0, i32 36
  %19 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state, align 8, !tbaa !74
  %20 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData13 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %20, i32 0, i32 43
  %y_ordered_list14 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData13, i32 0, i32 1
  %21 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list14, align 8, !tbaa !21
  %x_ordered_list = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %21, i32 0, i32 5
  store %struct.text_list_entry_s* %19, %struct.text_list_entry_s** %x_ordered_list, align 8, !tbaa !25
  %22 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData15 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %22, i32 0, i32 43
  %y_ordered_list16 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData15, i32 0, i32 1
  %23 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list16, align 8, !tbaa !21
  %previous = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %23, i32 0, i32 0
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %previous, align 8, !tbaa !43
  %24 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData17 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %24, i32 0, i32 43
  %y_ordered_list18 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData17, i32 0, i32 1
  %25 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list18, align 8, !tbaa !21
  %next = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %25, i32 0, i32 1
  store %struct.page_text_list_s* null, %struct.page_text_list_s** %next, align 8, !tbaa !42
  %26 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData19 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %26, i32 0, i32 43
  %y_ordered_list20 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData19, i32 0, i32 1
  %27 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list20, align 8, !tbaa !21
  %start = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %27, i32 0, i32 2
  %28 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state21 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %28, i32 0, i32 36
  %29 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state21, align 8, !tbaa !74
  %start22 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %29, i32 0, i32 2
  %30 = bitcast %struct.gs_point_s* %start to i8*
  %31 = bitcast %struct.gs_point_s* %start22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !90
  br label %if.end.234

if.else:                                          ; preds = %entry
  %32 = bitcast %struct.page_text_list_s** %Y_List to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData23 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %33, i32 0, i32 43
  %y_ordered_list24 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData23, i32 0, i32 1
  %34 = load %struct.page_text_list_s*, %struct.page_text_list_s** %y_ordered_list24, align 8, !tbaa !21
  store %struct.page_text_list_s* %34, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %35 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %next25 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %35, i32 0, i32 1
  %36 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next25, align 8, !tbaa !42
  %tobool26 = icmp ne %struct.page_text_list_s* %36, null
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %37, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start27, i32 0, i32 1
  %38 = load double, double* %y, align 8, !tbaa !87
  %39 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state28 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %39, i32 0, i32 36
  %40 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state28, align 8, !tbaa !74
  %start29 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %40, i32 0, i32 2
  %y30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start29, i32 0, i32 1
  %41 = load double, double* %y30, align 8, !tbaa !77
  %cmp = fcmp olt double %38, %41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %next31 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %43, i32 0, i32 1
  %44 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next31, align 8, !tbaa !42
  store %struct.page_text_list_s* %44, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %start32 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %45, i32 0, i32 2
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start32, i32 0, i32 1
  %46 = load double, double* %y33, align 8, !tbaa !87
  %47 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state34 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %47, i32 0, i32 36
  %48 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state34, align 8, !tbaa !74
  %start35 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %48, i32 0, i32 2
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start35, i32 0, i32 1
  %49 = load double, double* %y36, align 8, !tbaa !77
  %cmp37 = fcmp oeq double %46, %49
  br i1 %cmp37, label %if.then.38, label %if.else.148

if.then.38:                                       ; preds = %while.end
  %50 = bitcast %struct.text_list_entry_s** %X_List to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %x_ordered_list39 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %51, i32 0, i32 5
  %52 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %x_ordered_list39, align 8, !tbaa !25
  store %struct.text_list_entry_s* %52, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.50, %if.then.38
  %53 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %next41 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %53, i32 0, i32 1
  %54 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next41, align 8, !tbaa !40
  %tobool42 = icmp ne %struct.text_list_entry_s* %54, null
  br i1 %tobool42, label %land.rhs.43, label %land.end.49

land.rhs.43:                                      ; preds = %while.cond.40
  %55 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %start44 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %55, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start44, i32 0, i32 0
  %56 = load double, double* %x, align 8, !tbaa !76
  %57 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state45 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %57, i32 0, i32 36
  %58 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state45, align 8, !tbaa !74
  %start46 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %58, i32 0, i32 2
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start46, i32 0, i32 0
  %59 = load double, double* %x47, align 8, !tbaa !76
  %cmp48 = fcmp olt double %56, %59
  br label %land.end.49

land.end.49:                                      ; preds = %land.rhs.43, %while.cond.40
  %60 = phi i1 [ false, %while.cond.40 ], [ %cmp48, %land.rhs.43 ]
  br i1 %60, label %while.body.50, label %while.end.52

while.body.50:                                    ; preds = %land.end.49
  %61 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %next51 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %61, i32 0, i32 1
  %62 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next51, align 8, !tbaa !40
  store %struct.text_list_entry_s* %62, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  br label %while.cond.40

while.end.52:                                     ; preds = %land.end.49
  %63 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %start53 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %63, i32 0, i32 2
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start53, i32 0, i32 0
  %64 = load double, double* %x54, align 8, !tbaa !76
  %65 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state55 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %65, i32 0, i32 36
  %66 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state55, align 8, !tbaa !74
  %start56 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %66, i32 0, i32 2
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start56, i32 0, i32 0
  %67 = load double, double* %x57, align 8, !tbaa !76
  %cmp58 = fcmp ogt double %64, %67
  br i1 %cmp58, label %if.then.59, label %if.else.79

if.then.59:                                       ; preds = %while.end.52
  %68 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %69 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state60 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %69, i32 0, i32 36
  %70 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state60, align 8, !tbaa !74
  %next61 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %70, i32 0, i32 1
  store %struct.text_list_entry_s* %68, %struct.text_list_entry_s** %next61, align 8, !tbaa !40
  %71 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %previous62 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %71, i32 0, i32 0
  %72 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous62, align 8, !tbaa !41
  %73 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state63 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %73, i32 0, i32 36
  %74 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state63, align 8, !tbaa !74
  %previous64 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %74, i32 0, i32 0
  store %struct.text_list_entry_s* %72, %struct.text_list_entry_s** %previous64, align 8, !tbaa !41
  %75 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state65 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %75, i32 0, i32 36
  %76 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state65, align 8, !tbaa !74
  %77 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %previous66 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %77, i32 0, i32 0
  store %struct.text_list_entry_s* %76, %struct.text_list_entry_s** %previous66, align 8, !tbaa !41
  %78 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state67 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %78, i32 0, i32 36
  %79 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state67, align 8, !tbaa !74
  %previous68 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %79, i32 0, i32 0
  %80 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous68, align 8, !tbaa !41
  %tobool69 = icmp ne %struct.text_list_entry_s* %80, null
  br i1 %tobool69, label %if.else.73, label %if.then.70

if.then.70:                                       ; preds = %if.then.59
  %81 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state71 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %81, i32 0, i32 36
  %82 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state71, align 8, !tbaa !74
  %83 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %x_ordered_list72 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %83, i32 0, i32 5
  store %struct.text_list_entry_s* %82, %struct.text_list_entry_s** %x_ordered_list72, align 8, !tbaa !25
  br label %if.end.78

if.else.73:                                       ; preds = %if.then.59
  %84 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state74 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %84, i32 0, i32 36
  %85 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state74, align 8, !tbaa !74
  %86 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state75 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %86, i32 0, i32 36
  %87 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state75, align 8, !tbaa !74
  %previous76 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %87, i32 0, i32 0
  %88 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %previous76, align 8, !tbaa !41
  %next77 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %88, i32 0, i32 1
  store %struct.text_list_entry_s* %85, %struct.text_list_entry_s** %next77, align 8, !tbaa !40
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.73, %if.then.70
  br label %if.end.96

if.else.79:                                       ; preds = %while.end.52
  %89 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %90 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state80 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %90, i32 0, i32 36
  %91 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state80, align 8, !tbaa !74
  %previous81 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %91, i32 0, i32 0
  store %struct.text_list_entry_s* %89, %struct.text_list_entry_s** %previous81, align 8, !tbaa !41
  %92 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %next82 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %92, i32 0, i32 1
  %93 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next82, align 8, !tbaa !40
  %94 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state83 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %94, i32 0, i32 36
  %95 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state83, align 8, !tbaa !74
  %next84 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %95, i32 0, i32 1
  store %struct.text_list_entry_s* %93, %struct.text_list_entry_s** %next84, align 8, !tbaa !40
  %96 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state85 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %96, i32 0, i32 36
  %97 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state85, align 8, !tbaa !74
  %98 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %X_List, align 8, !tbaa !1
  %next86 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %98, i32 0, i32 1
  store %struct.text_list_entry_s* %97, %struct.text_list_entry_s** %next86, align 8, !tbaa !40
  %99 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state87 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %99, i32 0, i32 36
  %100 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state87, align 8, !tbaa !74
  %next88 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %100, i32 0, i32 1
  %101 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next88, align 8, !tbaa !40
  %tobool89 = icmp ne %struct.text_list_entry_s* %101, null
  br i1 %tobool89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %if.else.79
  %102 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state91 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %102, i32 0, i32 36
  %103 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state91, align 8, !tbaa !74
  %104 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state92 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %104, i32 0, i32 36
  %105 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state92, align 8, !tbaa !74
  %next93 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %105, i32 0, i32 1
  %106 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %next93, align 8, !tbaa !40
  %previous94 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %106, i32 0, i32 0
  store %struct.text_list_entry_s* %103, %struct.text_list_entry_s** %previous94, align 8, !tbaa !41
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %if.else.79
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.78
  %107 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state97 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %107, i32 0, i32 36
  %108 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state97, align 8, !tbaa !74
  %FontBBox_bottomleft = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %108, i32 0, i32 4
  %y98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft, i32 0, i32 1
  %109 = load double, double* %y98, align 8, !tbaa !118
  %110 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MinY = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %110, i32 0, i32 3
  %111 = load float, float* %MinY, align 4, !tbaa !89
  %conv = fpext float %111 to double
  %cmp99 = fcmp olt double %109, %conv
  br i1 %cmp99, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %if.end.96
  %112 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state102 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %112, i32 0, i32 36
  %113 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state102, align 8, !tbaa !74
  %FontBBox_bottomleft103 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %113, i32 0, i32 4
  %y104 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft103, i32 0, i32 1
  %114 = load double, double* %y104, align 8, !tbaa !118
  %conv105 = fptrunc double %114 to float
  %115 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MinY106 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %115, i32 0, i32 3
  store float %conv105, float* %MinY106, align 4, !tbaa !89
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.101, %if.end.96
  %116 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state108 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %116, i32 0, i32 36
  %117 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state108, align 8, !tbaa !74
  %FontBBox_bottomleft109 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %117, i32 0, i32 4
  %y110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft109, i32 0, i32 1
  %118 = load double, double* %y110, align 8, !tbaa !118
  %119 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MaxY = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %119, i32 0, i32 4
  %120 = load float, float* %MaxY, align 4, !tbaa !88
  %conv111 = fpext float %120 to double
  %cmp112 = fcmp ogt double %118, %conv111
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %if.end.107
  %121 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state115 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %121, i32 0, i32 36
  %122 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state115, align 8, !tbaa !74
  %FontBBox_bottomleft116 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %122, i32 0, i32 4
  %y117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft116, i32 0, i32 1
  %123 = load double, double* %y117, align 8, !tbaa !118
  %conv118 = fptrunc double %123 to float
  %124 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MaxY119 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %124, i32 0, i32 4
  store float %conv118, float* %MaxY119, align 4, !tbaa !88
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.114, %if.end.107
  %125 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state121 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %125, i32 0, i32 36
  %126 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state121, align 8, !tbaa !74
  %FontBBox_topright = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %126, i32 0, i32 5
  %y122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright, i32 0, i32 1
  %127 = load double, double* %y122, align 8, !tbaa !85
  %128 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MinY123 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %128, i32 0, i32 3
  %129 = load float, float* %MinY123, align 4, !tbaa !89
  %conv124 = fpext float %129 to double
  %cmp125 = fcmp olt double %127, %conv124
  br i1 %cmp125, label %if.then.127, label %if.end.133

if.then.127:                                      ; preds = %if.end.120
  %130 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state128 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %130, i32 0, i32 36
  %131 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state128, align 8, !tbaa !74
  %FontBBox_topright129 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %131, i32 0, i32 5
  %y130 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright129, i32 0, i32 1
  %132 = load double, double* %y130, align 8, !tbaa !85
  %conv131 = fptrunc double %132 to float
  %133 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MinY132 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %133, i32 0, i32 3
  store float %conv131, float* %MinY132, align 4, !tbaa !89
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.127, %if.end.120
  %134 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state134 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %134, i32 0, i32 36
  %135 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state134, align 8, !tbaa !74
  %FontBBox_topright135 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %135, i32 0, i32 5
  %y136 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright135, i32 0, i32 1
  %136 = load double, double* %y136, align 8, !tbaa !85
  %137 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MaxY137 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %137, i32 0, i32 4
  %138 = load float, float* %MaxY137, align 4, !tbaa !88
  %conv138 = fpext float %138 to double
  %cmp139 = fcmp ogt double %136, %conv138
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.133
  %139 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state142 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %139, i32 0, i32 36
  %140 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state142, align 8, !tbaa !74
  %FontBBox_topright143 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %140, i32 0, i32 5
  %y144 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright143, i32 0, i32 1
  %141 = load double, double* %y144, align 8, !tbaa !85
  %conv145 = fptrunc double %141 to float
  %142 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %MaxY146 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %142, i32 0, i32 4
  store float %conv145, float* %MaxY146, align 4, !tbaa !88
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.141, %if.end.133
  %143 = bitcast %struct.text_list_entry_s** %X_List to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  br label %if.end.230

if.else.148:                                      ; preds = %while.end
  %144 = bitcast %struct.page_text_list_s** %Y_Entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #2
  %145 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory149 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory149, align 8, !tbaa !30
  %stable_memory150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 0
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory150, align 8, !tbaa !72
  %non_gc_memory151 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory151, align 8, !tbaa !31
  %procs152 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 1
  %alloc_byte_array153 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs152, i32 0, i32 10
  %149 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array153, align 8, !tbaa !73
  %150 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %memory154 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory154, align 8, !tbaa !30
  %stable_memory155 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %151, i32 0, i32 0
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory155, align 8, !tbaa !72
  %non_gc_memory156 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 3
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory156, align 8, !tbaa !31
  %call157 = call i8* %149(%struct.gs_memory_s* %153, i32 1, i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #6
  %154 = bitcast i8* %call157 to %struct.page_text_list_s*
  store %struct.page_text_list_s* %154, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %155 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %tobool158 = icmp ne %struct.page_text_list_s* %155, null
  br i1 %tobool158, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %if.else.148
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.160:                                       ; preds = %if.else.148
  %156 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state161 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %156, i32 0, i32 36
  %157 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state161, align 8, !tbaa !74
  %158 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %x_ordered_list162 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %158, i32 0, i32 5
  store %struct.text_list_entry_s* %157, %struct.text_list_entry_s** %x_ordered_list162, align 8, !tbaa !25
  %159 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %start163 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %159, i32 0, i32 2
  %160 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state164 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %160, i32 0, i32 36
  %161 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state164, align 8, !tbaa !74
  %start165 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %161, i32 0, i32 2
  %162 = bitcast %struct.gs_point_s* %start163 to i8*
  %163 = bitcast %struct.gs_point_s* %start165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 16, i32 8, i1 false), !tbaa.struct !90
  %164 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state166 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %164, i32 0, i32 36
  %165 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state166, align 8, !tbaa !74
  %FontBBox_bottomleft167 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %165, i32 0, i32 4
  %y168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft167, i32 0, i32 1
  %166 = load double, double* %y168, align 8, !tbaa !118
  %167 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state169 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %167, i32 0, i32 36
  %168 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state169, align 8, !tbaa !74
  %FontBBox_topright170 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %168, i32 0, i32 5
  %y171 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright170, i32 0, i32 1
  %169 = load double, double* %y171, align 8, !tbaa !85
  %cmp172 = fcmp ogt double %166, %169
  br i1 %cmp172, label %if.then.174, label %if.else.185

if.then.174:                                      ; preds = %if.end.160
  %170 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state175 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %170, i32 0, i32 36
  %171 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state175, align 8, !tbaa !74
  %FontBBox_topright176 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %171, i32 0, i32 5
  %y177 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright176, i32 0, i32 1
  %172 = load double, double* %y177, align 8, !tbaa !85
  %conv178 = fptrunc double %172 to float
  %173 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %MinY179 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %173, i32 0, i32 3
  store float %conv178, float* %MinY179, align 4, !tbaa !89
  %174 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state180 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %174, i32 0, i32 36
  %175 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state180, align 8, !tbaa !74
  %FontBBox_bottomleft181 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %175, i32 0, i32 4
  %y182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft181, i32 0, i32 1
  %176 = load double, double* %y182, align 8, !tbaa !118
  %conv183 = fptrunc double %176 to float
  %177 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %MaxY184 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %177, i32 0, i32 4
  store float %conv183, float* %MaxY184, align 4, !tbaa !88
  br label %if.end.196

if.else.185:                                      ; preds = %if.end.160
  %178 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state186 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %178, i32 0, i32 36
  %179 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state186, align 8, !tbaa !74
  %FontBBox_topright187 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %179, i32 0, i32 5
  %y188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_topright187, i32 0, i32 1
  %180 = load double, double* %y188, align 8, !tbaa !85
  %conv189 = fptrunc double %180 to float
  %181 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %MaxY190 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %181, i32 0, i32 4
  store float %conv189, float* %MaxY190, align 4, !tbaa !88
  %182 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state191 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %182, i32 0, i32 36
  %183 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state191, align 8, !tbaa !74
  %FontBBox_bottomleft192 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %183, i32 0, i32 4
  %y193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_bottomleft192, i32 0, i32 1
  %184 = load double, double* %y193, align 8, !tbaa !118
  %conv194 = fptrunc double %184 to float
  %185 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %MinY195 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %185, i32 0, i32 3
  store float %conv194, float* %MinY195, align 4, !tbaa !89
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.185, %if.then.174
  %186 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %start197 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %186, i32 0, i32 2
  %y198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start197, i32 0, i32 1
  %187 = load double, double* %y198, align 8, !tbaa !87
  %188 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state199 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %188, i32 0, i32 36
  %189 = load %struct.text_list_entry_s*, %struct.text_list_entry_s** %text_state199, align 8, !tbaa !74
  %start200 = getelementptr inbounds %struct.text_list_entry_s, %struct.text_list_entry_s* %189, i32 0, i32 2
  %y201 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start200, i32 0, i32 1
  %190 = load double, double* %y201, align 8, !tbaa !77
  %cmp202 = fcmp ogt double %187, %190
  br i1 %cmp202, label %if.then.204, label %if.else.218

if.then.204:                                      ; preds = %if.end.196
  %191 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %192 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %next205 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %192, i32 0, i32 1
  store %struct.page_text_list_s* %191, %struct.page_text_list_s** %next205, align 8, !tbaa !42
  %193 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %previous206 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %193, i32 0, i32 0
  %194 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous206, align 8, !tbaa !43
  %195 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %previous207 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %195, i32 0, i32 0
  store %struct.page_text_list_s* %194, %struct.page_text_list_s** %previous207, align 8, !tbaa !43
  %196 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %197 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %previous208 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %197, i32 0, i32 0
  store %struct.page_text_list_s* %196, %struct.page_text_list_s** %previous208, align 8, !tbaa !43
  %198 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %previous209 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %198, i32 0, i32 0
  %199 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous209, align 8, !tbaa !43
  %tobool210 = icmp ne %struct.page_text_list_s* %199, null
  br i1 %tobool210, label %if.else.214, label %if.then.211

if.then.211:                                      ; preds = %if.then.204
  %200 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %201 = load %struct.gx_device_txtwrite_s*, %struct.gx_device_txtwrite_s** %tdev.addr, align 8, !tbaa !1
  %PageData212 = getelementptr inbounds %struct.gx_device_txtwrite_s, %struct.gx_device_txtwrite_s* %201, i32 0, i32 43
  %y_ordered_list213 = getelementptr inbounds %struct.page_text_s, %struct.page_text_s* %PageData212, i32 0, i32 1
  store %struct.page_text_list_s* %200, %struct.page_text_list_s** %y_ordered_list213, align 8, !tbaa !21
  br label %if.end.217

if.else.214:                                      ; preds = %if.then.204
  %202 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %203 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %previous215 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %203, i32 0, i32 0
  %204 = load %struct.page_text_list_s*, %struct.page_text_list_s** %previous215, align 8, !tbaa !43
  %next216 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %204, i32 0, i32 1
  store %struct.page_text_list_s* %202, %struct.page_text_list_s** %next216, align 8, !tbaa !42
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.211
  br label %if.end.229

if.else.218:                                      ; preds = %if.end.196
  %205 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %next219 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %205, i32 0, i32 1
  %206 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next219, align 8, !tbaa !42
  %207 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %next220 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %207, i32 0, i32 1
  store %struct.page_text_list_s* %206, %struct.page_text_list_s** %next220, align 8, !tbaa !42
  %208 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %209 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %previous221 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %209, i32 0, i32 0
  store %struct.page_text_list_s* %208, %struct.page_text_list_s** %previous221, align 8, !tbaa !43
  %210 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %211 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_List, align 8, !tbaa !1
  %next222 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %211, i32 0, i32 1
  store %struct.page_text_list_s* %210, %struct.page_text_list_s** %next222, align 8, !tbaa !42
  %212 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %next223 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %212, i32 0, i32 1
  %213 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next223, align 8, !tbaa !42
  %tobool224 = icmp ne %struct.page_text_list_s* %213, null
  br i1 %tobool224, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %if.else.218
  %214 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %215 = load %struct.page_text_list_s*, %struct.page_text_list_s** %Y_Entry, align 8, !tbaa !1
  %next226 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %215, i32 0, i32 1
  %216 = load %struct.page_text_list_s*, %struct.page_text_list_s** %next226, align 8, !tbaa !42
  %previous227 = getelementptr inbounds %struct.page_text_list_s, %struct.page_text_list_s* %216, i32 0, i32 0
  store %struct.page_text_list_s* %214, %struct.page_text_list_s** %previous227, align 8, !tbaa !43
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %if.else.218
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.end.217
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.229, %if.then.159
  %217 = bitcast %struct.page_text_list_s** %Y_Entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.231 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.230

if.end.230:                                       ; preds = %cleanup.cont, %if.end.147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.231

cleanup.231:                                      ; preds = %if.end.230, %cleanup
  %218 = bitcast %struct.page_text_list_s** %Y_List to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %cleanup.dest.232 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.232, label %unreachable [
    i32 0, label %cleanup.cont.233
    i32 1, label %return
  ]

cleanup.cont.233:                                 ; preds = %cleanup.231
  br label %if.end.234

if.end.234:                                       ; preds = %cleanup.cont.233, %if.end
  %219 = load %struct.textw_text_enum_s*, %struct.textw_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text_state235 = getelementptr inbounds %struct.textw_text_enum_s, %struct.textw_text_enum_s* %219, i32 0, i32 36
  store %struct.text_list_entry_s* null, %struct.text_list_entry_s** %text_state235, align 8, !tbaa !74
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.234, %cleanup.231, %if.then.9
  %220 = load i32, i32* %retval
  ret i32 %220

unreachable:                                      ; preds = %cleanup.231
  unreachable
}

declare i32 @gs_text_current_width(%struct.gs_text_enum_s*, %struct.gs_point_s*) #0

declare i32 @gs_text_set_cache(%struct.gs_text_enum_s*, double*, i32) #0

declare i32 @gs_text_retry(%struct.gs_text_enum_s*) #0

declare void @gs_text_release(%struct.gs_text_enum_s*, i8*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !8, i64 1728}
!7 = !{!"gx_device_txtwrite_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !20, i64 1728, !3, i64 1752, !2, i64 5848, !8, i64 5856}
!8 = !{!"int", !3, i64 0}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !8, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !8, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"page_text_s", !8, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!7, !2, i64 1736}
!22 = !{!7, !2, i64 5848}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !8, i64 5856}
!25 = !{!26, !2, i64 40}
!26 = !{!"page_text_list_s", !2, i64 0, !2, i64 8, !27, i64 16, !29, i64 32, !29, i64 36, !2, i64 40}
!27 = !{!"gs_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"double", !3, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!7, !2, i64 24}
!31 = !{!32, !2, i64 200}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!32, !2, i64 24}
!35 = !{!36, !2, i64 88}
!36 = !{!"text_list_entry_s", !2, i64 0, !2, i64 8, !27, i64 16, !27, i64 32, !27, i64 48, !27, i64 64, !2, i64 80, !2, i64 88, !8, i64 96, !8, i64 100, !37, i64 104, !2, i64 128, !2, i64 136, !8, i64 144, !28, i64 152, !28, i64 160}
!37 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!38 = !{!36, !2, i64 80}
!39 = !{!36, !2, i64 136}
!40 = !{!36, !2, i64 8}
!41 = !{!36, !2, i64 0}
!42 = !{!26, !2, i64 8}
!43 = !{!26, !2, i64 0}
!44 = !{!7, !2, i64 1744}
!45 = !{!10, !10, i64 0}
!46 = !{!47, !2, i64 0}
!47 = !{!"gs_param_string_s", !2, i64 0, !8, i64 8, !8, i64 12}
!48 = !{!47, !8, i64 8}
!49 = !{!47, !8, i64 12}
!50 = !{!51, !8, i64 960}
!51 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!52 = !{!53, !2, i64 0}
!53 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !8, i64 16}
!54 = !{!55, !2, i64 56}
!55 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!56 = !{!32, !2, i64 72}
!57 = !{!58, !10, i64 160}
!58 = !{!"textw_text_enum_s", !59, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !9, i64 160, !2, i64 184, !2, i64 192, !10, i64 200, !8, i64 208, !60, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !61, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !27, i64 360, !10, i64 376, !8, i64 384, !60, i64 388, !27, i64 400, !62, i64 416, !63, i64 448, !8, i64 456, !8, i64 460, !3, i64 464, !2, i64 544, !2, i64 552, !8, i64 560, !2, i64 568}
!59 = !{!"gs_text_params_s", !8, i64 0, !3, i64 8, !8, i64 16, !27, i64 24, !27, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !8, i64 80}
!60 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!61 = !{!"gx_font_stack_s", !8, i64 0, !3, i64 8}
!62 = !{!"gs_text_returned_s", !10, i64 0, !10, i64 8, !27, i64 16}
!63 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!64 = !{!58, !2, i64 168}
!65 = !{!58, !2, i64 176}
!66 = !{!58, !8, i64 456}
!67 = !{!58, !8, i64 460}
!68 = !{!58, !28, i64 440}
!69 = !{!58, !28, i64 432}
!70 = !{!58, !2, i64 552}
!71 = !{!58, !8, i64 560}
!72 = !{!32, !2, i64 0}
!73 = !{!32, !2, i64 88}
!74 = !{!58, !2, i64 568}
!75 = !{!58, !2, i64 120}
!76 = !{!36, !28, i64 16}
!77 = !{!36, !28, i64 24}
!78 = !{!36, !28, i64 32}
!79 = !{!36, !28, i64 40}
!80 = !{!36, !28, i64 160}
!81 = !{!29, !29, i64 0}
!82 = !{!36, !8, i64 96}
!83 = !{!12, !12, i64 0}
!84 = !{!20, !2, i64 8}
!85 = !{!36, !28, i64 72}
!86 = !{!7, !8, i64 832}
!87 = !{!26, !28, i64 24}
!88 = !{!26, !29, i64 36}
!89 = !{!26, !29, i64 32}
!90 = !{i64 0, i64 8, !91, i64 8, i64 8, !91}
!91 = !{!28, !28, i64 0}
!92 = !{!93, !2, i64 88}
!93 = !{!"gs_text_enum_s", !59, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !9, i64 160, !2, i64 184, !2, i64 192, !10, i64 200, !8, i64 208, !60, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !61, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !27, i64 360, !10, i64 376, !8, i64 384, !60, i64 388, !27, i64 400, !62, i64 416}
!94 = !{!93, !2, i64 112}
!95 = !{!93, !2, i64 192}
!96 = !{!93, !8, i64 16}
!97 = !{!58, !2, i64 544}
!98 = !{!99, !3, i64 128}
!99 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !100, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !37, i64 80, !37, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !29, i64 156, !8, i64 160, !101, i64 168, !102, i64 272, !102, i64 324}
!100 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!101 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!102 = !{!"gs_font_name_s", !3, i64 0, !8, i64 48}
!103 = !{!104, !28, i64 376}
!104 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !100, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !37, i64 80, !37, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !29, i64 156, !8, i64 160, !101, i64 168, !102, i64 272, !102, i64 324, !105, i64 376, !106, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!105 = !{!"gs_rect_s", !27, i64 0, !27, i64 16}
!106 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!107 = !{!104, !28, i64 392}
!108 = !{!104, !28, i64 384}
!109 = !{!104, !28, i64 400}
!110 = !{!93, !2, i64 104}
!111 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !81, i64 20, i64 4, !81}
!112 = !{!37, !29, i64 20}
!113 = !{!37, !29, i64 16}
!114 = !{!27, !28, i64 0}
!115 = !{!36, !28, i64 48}
!116 = !{!36, !28, i64 64}
!117 = !{!27, !28, i64 8}
!118 = !{!36, !28, i64 56}
!119 = !{i64 0, i64 4, !23, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !23, i64 24, i64 8, !91, i64 32, i64 8, !91, i64 40, i64 8, !91, i64 48, i64 8, !91, i64 56, i64 8, !45, i64 56, i64 8, !45, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !23, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !45, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !45, i64 208, i64 4, !23, i64 212, i64 4, !23, i64 216, i64 4, !23, i64 224, i64 8, !1, i64 232, i64 4, !23, i64 236, i64 4, !23, i64 240, i64 4, !23, i64 248, i64 96, !5, i64 344, i64 4, !23, i64 348, i64 4, !23, i64 352, i64 4, !23, i64 360, i64 8, !91, i64 368, i64 8, !91, i64 376, i64 8, !45, i64 384, i64 4, !23, i64 388, i64 4, !23, i64 392, i64 4, !23, i64 400, i64 8, !91, i64 408, i64 8, !91, i64 416, i64 8, !45, i64 424, i64 8, !45, i64 432, i64 8, !91, i64 440, i64 8, !91}
!120 = !{!99, !2, i64 256}
!121 = !{!93, !8, i64 240}
!122 = !{!123, !2, i64 0}
!123 = !{!"gx_font_stack_item_s", !2, i64 0, !8, i64 8}
!124 = !{!123, !8, i64 8}
!125 = !{!99, !8, i64 148}
!126 = !{!93, !10, i64 424}
!127 = !{!93, !8, i64 232}
!128 = !{!129, !28, i64 48}
!129 = !{!"txt_glyph_widths_s", !130, i64 0, !130, i64 40, !8, i64 80}
!130 = !{!"txt_glyph_width_s", !28, i64 0, !27, i64 8, !27, i64 24}
!131 = !{!129, !28, i64 56}
!132 = !{!93, !28, i64 432}
!133 = !{!93, !28, i64 440}
!134 = !{!93, !8, i64 0}
!135 = !{!93, !28, i64 24}
!136 = !{!93, !28, i64 32}
!137 = !{!93, !28, i64 40}
!138 = !{!93, !28, i64 48}
!139 = !{!99, !2, i64 200}
!140 = !{!58, !2, i64 88}
!141 = !{!51, !2, i64 24}
!142 = !{!32, !2, i64 128}
!143 = !{!58, !2, i64 104}
!144 = !{!58, !8, i64 448}
!145 = !{!58, !8, i64 452}
!146 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !91, i64 24, i64 8, !91, i64 32, i64 8, !91, i64 40, i64 8, !91, i64 48, i64 8, !91, i64 56, i64 8, !91, i64 64, i64 8, !91, i64 72, i64 8, !91, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 4, !23, i64 100, i64 4, !23, i64 104, i64 4, !81, i64 108, i64 4, !81, i64 112, i64 4, !81, i64 116, i64 4, !81, i64 120, i64 4, !81, i64 124, i64 4, !81, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 4, !23, i64 152, i64 8, !91, i64 160, i64 8, !91}
!147 = !{!129, !28, i64 32}
!148 = !{!129, !28, i64 24}
!149 = !{!129, !28, i64 72}
!150 = !{!129, !28, i64 64}
!151 = !{!129, !8, i64 80}
!152 = !{!99, !2, i64 224}
!153 = !{!154, !8, i64 0}
!154 = !{!"gs_glyph_info_s", !8, i64 0, !3, i64 8, !27, i64 40, !105, i64 56, !8, i64 88, !2, i64 96}
!155 = !{!129, !28, i64 0}
!156 = !{!154, !28, i64 40}
!157 = !{!154, !28, i64 48}
!158 = !{!129, !28, i64 16}
!159 = !{!129, !28, i64 8}
!160 = !{i64 0, i64 8, !91, i64 8, i64 8, !91, i64 16, i64 8, !91, i64 24, i64 8, !91, i64 32, i64 8, !91}
!161 = !{!58, !2, i64 192}
!162 = !{!58, !8, i64 0}
!163 = !{!37, !29, i64 0}
!164 = !{!37, !29, i64 4}
!165 = !{!37, !29, i64 8}
!166 = !{!37, !29, i64 12}
!167 = !{!63, !8, i64 0}
!168 = !{!63, !8, i64 4}
!169 = !{!170, !8, i64 252}
!170 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !171, i64 24, !8, i64 128, !173, i64 132, !8, i64 168, !27, i64 176, !27, i64 192, !8, i64 208, !8, i64 212, !12, i64 216, !3, i64 220, !174, i64 224, !174, i64 228, !175, i64 232, !10, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !29, i64 296, !63, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !29, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !176, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !177, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !177, i64 1336}
!171 = !{!"gx_line_params_s", !29, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !8, i64 36, !37, i64 40, !172, i64 64}
!172 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !29, i64 12, !8, i64 16, !29, i64 20, !8, i64 24, !8, i64 28, !29, i64 32}
!173 = !{!"gs_matrix_fixed_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!174 = !{!"gs_transparency_source_s", !29, i64 0}
!175 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!176 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!177 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !10, i64 16, !3, i64 24}
!178 = !{!36, !8, i64 100}
!179 = !{!99, !8, i64 372}
!180 = !{!99, !8, i64 152}
!181 = !{!99, !29, i64 156}
!182 = !{!170, !29, i64 24}
!183 = !{!99, !29, i64 92}
!184 = !{!99, !29, i64 116}
!185 = !{!99, !29, i64 108}
!186 = !{!36, !28, i64 152}
!187 = !{!99, !2, i64 208}
!188 = !{!99, !2, i64 240}
!189 = !{!190, !8, i64 8}
!190 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!191 = !{!190, !2, i64 0}
!192 = !{!193, !2, i64 0}
!193 = !{!"single_glyph_list_s", !2, i64 0, !12, i64 8}
!194 = !{!193, !12, i64 8}
!195 = !{!196, !2, i64 0}
!196 = !{!"double_glyph_list_s", !2, i64 0, !3, i64 8}
!197 = !{!198, !2, i64 0}
!198 = !{!"treble_glyph_list_s", !2, i64 0, !3, i64 8}
!199 = !{!200, !2, i64 0}
!200 = !{!"quad_glyph_list_s", !2, i64 0, !3, i64 8}
!201 = !{!202, !2, i64 528}
!202 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !100, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !37, i64 80, !37, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !29, i64 156, !8, i64 160, !101, i64 168, !102, i64 272, !102, i64 324, !105, i64 376, !106, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !203, i64 448}
!203 = !{!"gs_font_cid0_data_s", !204, i64 0, !10, i64 56, !2, i64 64, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!204 = !{!"gs_font_cid_data_s", !205, i64 0, !8, i64 40, !8, i64 44, !8, i64 48}
!205 = !{!"gs_cid_system_info_s", !190, i64 0, !190, i64 16, !8, i64 32}
!206 = !{!99, !2, i64 184}
!207 = !{!208, !8, i64 60}
!208 = !{!"gs_font_info_s", !8, i64 0, !8, i64 4, !8, i64 8, !209, i64 12, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !29, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !190, i64 88, !190, i64 104, !190, i64 120, !190, i64 136, !8, i64 152}
!209 = !{!"gs_int_rect_s", !210, i64 0, !210, i64 8}
!210 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!211 = !{!129, !28, i64 40}
!212 = !{!130, !28, i64 16}
!213 = !{!130, !28, i64 8}
!214 = !{!130, !28, i64 0}
!215 = !{!99, !2, i64 64}
!216 = !{!99, !29, i64 104}
!217 = !{!99, !29, i64 112}
!218 = !{!99, !29, i64 80}
!219 = !{!99, !29, i64 84}
!220 = !{!99, !29, i64 88}
