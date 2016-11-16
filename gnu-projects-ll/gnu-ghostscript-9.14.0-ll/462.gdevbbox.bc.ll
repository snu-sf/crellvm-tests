; ModuleID = './gdevbbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
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
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
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
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.bbox_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gs_matrix_s, %struct.gx_clip_path_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32 }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"gx_device_bbox\00", align 1
@device_bbox_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @device_bbox_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_bbox = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1832, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_bbox_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bbox\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_bbox_device = constant %struct.gx_device_bbox_s { i32 1832, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 8387607, i32 8387607, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x41026E0760000000, float 0x41026E0760000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 4.000000e+03, float 4.000000e+03], [2 x float] [float 4.000000e+03, float 4.000000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @bbox_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_upright_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @bbox_output_page, i32 (%struct.gx_device_s*)* @bbox_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @bbox_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @bbox_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @bbox_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bbox_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bbox_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @bbox_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @bbox_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @bbox_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @bbox_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @bbox_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @bbox_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @bbox_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @bbox_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @bbox_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @bbox_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @bbox_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @bbox_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @bbox_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @bbox_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @bbox_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @bbox_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 1, i32 1, %struct.gx_device_bbox_procs_s zeroinitializer, i8* null, i32 0, %struct.gs_fixed_rect_s zeroinitializer, i64 0, i64 0, i64 0 }, align 8
@box_procs_default = internal constant %struct.gx_device_bbox_procs_s { i32 (i8*)* @bbox_default_init_box, void (i8*, %struct.gs_fixed_rect_s*)* @bbox_default_get_box, void (i8*, i32, i32, i32, i32)* @bbox_default_add_rect, i32 (i8*, %struct.gs_fixed_rect_s*)* @bbox_default_in_rect }, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@device_bbox_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1776 }], align 2
@.str.3 = private unnamed_addr constant [29 x i8] c"bbox_close_device(composite)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"./base/gdevbbox.c\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%%%%HiResBoundingBox: %f %f %f %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"PageBoundingBox\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"WhiteIsOpaque\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gs_null_device = external constant %struct.gx_device_null_s, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"bbox_stroke_path\00", align 1
@bbox_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @bbox_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @bbox_image_end_image, i32 (%struct.gx_image_enum_common_s*)* @bbox_image_flush, i32 (%struct.gx_image_enum_common_s*, i8*)* @bbox_image_planes_wanted }, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"bbox_image_begin\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"bbox_image_enum\00", align 1
@bbox_image_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @bbox_image_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_bbox_image_enum = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 632, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bbox_image_enum_reloc_ptrs to i8*) }, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@bbox_image_enum_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 592 }, %struct.gc_ptr_element_s { i16 0, i16 600 }], align 2
@.str.12 = private unnamed_addr constant [23 x i8] c"bbox_create_compositor\00", align 1
@box_procs_forward = internal constant %struct.gx_device_bbox_procs_s { i32 (i8*)* @bbox_forward_init_box, void (i8*, %struct.gs_fixed_rect_s*)* @bbox_forward_get_box, void (i8*, i32, i32, i32, i32)* @bbox_forward_add_rect, i32 (i8*, %struct.gs_fixed_rect_s*)* @bbox_forward_in_rect }, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"bbox_text_begin\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_open_device(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %free_standing = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 44
  %4 = load i32, i32* %free_standing, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_forward_s*
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %6) #5
  %7 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %7, i32 0, i32 46
  %8 = bitcast %struct.gx_device_bbox_procs_s* %box_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.gx_device_bbox_procs_s* @box_procs_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !22
  %9 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_bbox_s* %9 to i8*
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %11, i32 0, i32 47
  store i8* %10, i8** %box_proc_data, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs1 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %12, i32 0, i32 46
  %init_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs1, i32 0, i32 0
  %13 = load i32 (i8*)*, i32 (i8*)** %init_box, align 8, !tbaa !24
  %14 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* @box_procs_default, i32 0, i32 0), align 8, !tbaa !25
  %cmp = icmp eq i32 (i8*)* %13, %14
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs3 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %15, i32 0, i32 46
  %init_box4 = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs3, i32 0, i32 0
  %16 = load i32 (i8*)*, i32 (i8*)** %init_box4, align 8, !tbaa !24
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data5 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 47
  %18 = load i8*, i8** %box_proc_data5, align 8, !tbaa !23
  %call = call i32 %16(i8* %18) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 43
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %21, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tobool7 = icmp ne %struct.gx_device_s* %23, null
  br i1 %tobool7, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.6
  %24 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %forward_open_close = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %24, i32 0, i32 45
  %25 = load i32, i32* %forward_open_close, align 4, !tbaa !27
  %tobool8 = icmp ne i32 %25, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call9 = call i32 @gs_opendevice(%struct.gx_device_s* %26) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call9, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %27 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  call void @bbox_copy_params(%struct.gx_device_bbox_s* %27, i32 1) #5
  %28 = load i32, i32* %code, align 4, !tbaa !28
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret i32 %28
}

declare void @gx_upright_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !28
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %free_standing = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 44
  %4 = load i32, i32* %free_standing, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  call void @gx_device_bbox_bbox(%struct.gx_device_bbox_s* %6, %struct.gs_rect_s* %bbox) #5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 391) #5
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !29
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %11 = load double, double* %x, align 8, !tbaa !31
  %call = call double @floor(double %11) #6
  %conv = fptosi double %call to i32
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %12 = load double, double* %y, align 8, !tbaa !35
  %call3 = call double @floor(double %12) #6
  %conv4 = fptosi double %call3 to i32
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %13 = load double, double* %x5, align 8, !tbaa !36
  %call6 = call double @ceil(double %13) #6
  %conv7 = fptosi double %call6 to i32
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 1
  %14 = load double, double* %y9, align 8, !tbaa !37
  %call10 = call double @ceil(double %14) #6
  %conv11 = fptosi double %call10 to i32
  %call12 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %conv, i32 %conv4, i32 %conv7, i32 %conv11) #5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !29
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 393) #5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !29
  %p15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p15, i32 0, i32 0
  %19 = load double, double* %x16, align 8, !tbaa !31
  %p17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p17, i32 0, i32 1
  %20 = load double, double* %y18, align 8, !tbaa !35
  %q19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q19, i32 0, i32 0
  %21 = load double, double* %x20, align 8, !tbaa !36
  %q21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q21, i32 0, i32 1
  %22 = load double, double* %y22, align 8, !tbaa !37
  %call23 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), double %19, double %20, double %21, double %22) #5
  %23 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %num_copies.addr, align 4, !tbaa !28
  %26 = load i32, i32* %flush.addr, align 4, !tbaa !28
  %call24 = call i32 @gx_forward_output_page(%struct.gx_device_s* %24, i32 %25, i32 %26) #5
  %27 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 %call24
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_close_device(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %6, i32 0, i32 46
  %init_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 0
  %7 = load i32 (i8*)*, i32 (i8*)** %init_box, align 8, !tbaa !24
  %8 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* @box_procs_default, i32 0, i32 0), align 8, !tbaa !25
  %cmp = icmp ne i32 (i8*)* %7, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %10, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %forward_open_close = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %11, i32 0, i32 45
  %12 = load i32, i32* %forward_open_close, align 4, !tbaa !27
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %13) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !29
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to i8*
  call void %16(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #5
  %21 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gx_device_s* %23, null
  br i1 %tobool3, label %land.lhs.true.4, label %cond.false.9

land.lhs.true.4:                                  ; preds = %if.else
  %24 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %forward_open_close5 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %24, i32 0, i32 45
  %25 = load i32, i32* %forward_open_close5, align 4, !tbaa !27
  %tobool6 = icmp ne i32 %25, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %land.lhs.true.4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call8 = call i32 @gs_closedevice(%struct.gx_device_s* %26) #5
  br label %cond.end.10

cond.false.9:                                     ; preds = %land.lhs.true.4, %if.else
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i32 [ %call8, %cond.true.7 ], [ 0, %cond.false.9 ]
  store i32 %cond11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.10, %cond.end
  %27 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i64 %color, i64* %color.addr, align 8, !tbaa !41
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !42
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !28
  %12 = load i32, i32* %y.addr, align 4, !tbaa !28
  %13 = load i32, i32* %w.addr, align 4, !tbaa !28
  %14 = load i32, i32* %h.addr, align 4, !tbaa !28
  %15 = load i64, i64* %color.addr, align 8, !tbaa !41
  %call = call i32 %9(%struct.gx_device_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i64 %15) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %16 = load i64, i64* %color.addr, align 8, !tbaa !41
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 52
  %18 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp1 = icmp ne i64 %16, %18
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %19, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %20 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %21 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %21, i32 0, i32 47
  %22 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %23 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %23, 8
  %24 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl2 = shl i32 %24, 8
  %25 = load i32, i32* %x.addr, align 4, !tbaa !28
  %26 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %25, %26
  %shl3 = shl i32 %add, 8
  %27 = load i32, i32* %y.addr, align 4, !tbaa !28
  %28 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add4 = add nsw i32 %27, %28
  %shl5 = shl i32 %add4, 8
  call void %20(i8* %22, i32 %shl, i32 %shl2, i32 %shl3, i32 %shl5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %29 = load i32, i32* %code, align 4, !tbaa !28
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !28
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !41
  store i64 %one, i64* %one.addr, align 8, !tbaa !41
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !45
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i32, i32* %x.addr, align 4, !tbaa !28
  %16 = load i32, i32* %y.addr, align 4, !tbaa !28
  %17 = load i32, i32* %w.addr, align 4, !tbaa !28
  %18 = load i32, i32* %h.addr, align 4, !tbaa !28
  %19 = load i64, i64* %zero.addr, align 8, !tbaa !41
  %20 = load i64, i64* %one.addr, align 8, !tbaa !41
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i64 %19, i64 %20) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %21 = load i64, i64* %one.addr, align 8, !tbaa !41
  %cmp1 = icmp ne i64 %21, -1
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %22 = load i64, i64* %one.addr, align 8, !tbaa !41
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 52
  %24 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp ne i64 %22, %24
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %25 = load i64, i64* %zero.addr, align 8, !tbaa !41
  %cmp3 = icmp ne i64 %25, -1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %26 = load i64, i64* %zero.addr, align 8, !tbaa !41
  %27 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent5 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %27, i32 0, i32 52
  %28 = load i64, i64* %transparent5, align 8, !tbaa !43
  %cmp6 = icmp ne i64 %26, %28
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true
  %29 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %29, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %30 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %31 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %31, i32 0, i32 47
  %32 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %33 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %33, 8
  %34 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl7 = shl i32 %34, 8
  %35 = load i32, i32* %x.addr, align 4, !tbaa !28
  %36 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %35, %36
  %shl8 = shl i32 %add, 8
  %37 = load i32, i32* %y.addr, align 4, !tbaa !28
  %38 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add9 = add nsw i32 %37, %38
  %shl10 = shl i32 %add9, 8
  call void %30(i8* %32, i32 %shl, i32 %shl7, i32 %shl8, i32 %shl10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %lor.lhs.false
  %39 = load i32, i32* %code, align 4, !tbaa !28
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !28
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !46
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i32, i32* %x.addr, align 4, !tbaa !28
  %16 = load i32, i32* %y.addr, align 4, !tbaa !28
  %17 = load i32, i32* %w.addr, align 4, !tbaa !28
  %18 = load i32, i32* %h.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %19 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %19, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %20 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %21 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %21, i32 0, i32 47
  %22 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %23 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %23, 8
  %24 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %24, 8
  %25 = load i32, i32* %x.addr, align 4, !tbaa !28
  %26 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %25, %26
  %shl2 = shl i32 %add, 8
  %27 = load i32, i32* %y.addr, align 4, !tbaa !28
  %28 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %27, %28
  %shl4 = shl i32 %add3, 8
  call void %20(i8* %22, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %29 = load i32, i32* %code, align 4, !tbaa !28
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %fbox = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %bba = alloca %struct.gs_param_float_array_s, align 8
  %bbox = alloca [4 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_rect_s* %fbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_forward_get_params(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %7 = bitcast %struct.gs_param_float_array_s* %bba to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %11, i32 0, i32 47
  %12 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %cmp1 = icmp eq i8* %12, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox3 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %13, i32 0, i32 49
  %14 = bitcast %struct.gs_fixed_rect_s* %fbox to i8*
  %15 = bitcast %struct.gs_fixed_rect_s* %bbox3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 4, i1 false), !tbaa.struct !47
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %16 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %16, i32 0, i32 46
  %get_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 1
  %17 = load void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, %struct.gs_fixed_rect_s*)** %get_box, align 8, !tbaa !48
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data4 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %18, i32 0, i32 47
  %19 = load i8*, i8** %box_proc_data4, align 8, !tbaa !23
  call void %17(i8* %19, %struct.gs_fixed_rect_s* %fbox) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !49
  %conv = sitofp i32 %20 to double
  %mul = fmul double %conv, 3.906250e-03
  %conv6 = fptrunc double %mul to float
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  store float %conv6, float* %arrayidx, align 4, !tbaa !50
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !52
  %conv8 = sitofp i32 %21 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  %conv10 = fptrunc double %mul9 to float
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  store float %conv10, float* %arrayidx11, align 4, !tbaa !50
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %22 = load i32, i32* %x12, align 4, !tbaa !53
  %conv13 = sitofp i32 %22 to double
  %mul14 = fmul double %conv13, 3.906250e-03
  %conv15 = fptrunc double %mul14 to float
  %arrayidx16 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  store float %conv15, float* %arrayidx16, align 4, !tbaa !50
  %q17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q17, i32 0, i32 1
  %23 = load i32, i32* %y18, align 4, !tbaa !54
  %conv19 = sitofp i32 %23 to double
  %mul20 = fmul double %conv19, 3.906250e-03
  %conv21 = fptrunc double %mul20 to float
  %arrayidx22 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  store float %conv21, float* %arrayidx22, align 4, !tbaa !50
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  store float* %arraydecay, float** %data, align 8, !tbaa !55
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !57
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !58
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call23 = call i32 @param_write_float_array(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_float_array_s* %bba) #5
  store i32 %call23, i32* %code, align 4, !tbaa !28
  %25 = load i32, i32* %code, align 4, !tbaa !28
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.5
  %26 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.5
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %white_is_opaque = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %28, i32 0, i32 48
  %call28 = call i32 @param_write_bool(%struct.gs_param_list_s* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32* %white_is_opaque) #5
  store i32 %call28, i32* %code, align 4, !tbaa !28
  %29 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.then
  %30 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  %31 = bitcast %struct.gs_param_float_array_s* %bba to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #2
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gs_fixed_rect_s* %fbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #2
  %34 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %white_is_opaque = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %bba = alloca %struct.gs_param_float_array_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %ecode, align 4, !tbaa !28
  %5 = bitcast i32* %white_is_opaque to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %white_is_opaque1 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %6, i32 0, i32 48
  %7 = load i32, i32* %white_is_opaque1, align 4, !tbaa !59
  store i32 %7, i32* %white_is_opaque, align 4, !tbaa !28
  %8 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.gs_param_float_array_s* %bba to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_float_array(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_float_array_s* %bba) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %11 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !57
  %cmp = icmp ne i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !28
  br label %e

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %13, i32* %ecode, align 4, !tbaa !28
  br label %e

e:                                                ; preds = %sw.default, %if.then
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !60
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %15, i32 0, i32 7
  %16 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !62
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %param_name, align 8, !tbaa !1
  %19 = load i32, i32* %ecode, align 4, !tbaa !28
  %call2 = call i32 %16(%struct.gs_param_list_s* %17, i8* %18, i32 %19) #5
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %e
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  store float* null, float** %data, align 8, !tbaa !55
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.3, %if.end
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call4 = call i32 @param_read_bool(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32* %white_is_opaque) #5
  store i32 %call4, i32* %code, align 4, !tbaa !28
  switch i32 %call4, label %sw.default.5 [
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.9
  ]

sw.default.5:                                     ; preds = %sw.epilog
  %21 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %21, i32* %ecode, align 4, !tbaa !28
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs6, align 8, !tbaa !60
  %signal_error7 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %23, i32 0, i32 7
  %24 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error7, align 8, !tbaa !62
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %param_name, align 8, !tbaa !1
  %27 = load i32, i32* %ecode, align 4, !tbaa !28
  %call8 = call i32 %24(%struct.gs_param_list_s* %25, i8* %26, i32 %27) #5
  br label %sw.bb.9

sw.bb.9:                                          ; preds = %sw.epilog, %sw.epilog, %sw.default.5
  br label %sw.epilog.10

sw.epilog.10:                                     ; preds = %sw.bb.9
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call11 = call i32 @gx_forward_put_params(%struct.gx_device_s* %28, %struct.gs_param_list_s* %29) #5
  store i32 %call11, i32* %code, align 4, !tbaa !28
  %30 = load i32, i32* %ecode, align 4, !tbaa !28
  %cmp12 = icmp slt i32 %30, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.epilog.10
  %31 = load i32, i32* %ecode, align 4, !tbaa !28
  store i32 %31, i32* %code, align 4, !tbaa !28
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %sw.epilog.10
  %32 = load i32, i32* %code, align 4, !tbaa !28
  %cmp15 = icmp sge i32 %32, 0
  br i1 %cmp15, label %if.then.16, label %if.end.38

if.then.16:                                       ; preds = %if.end.14
  %data17 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  %33 = load float*, float** %data17, align 8, !tbaa !55
  %cmp18 = icmp ne float* %33, null
  br i1 %cmp18, label %if.then.19, label %if.end.36

if.then.19:                                       ; preds = %if.then.16
  %34 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %34, i32 0, i32 46
  %init_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 0
  %35 = load i32 (i8*)*, i32 (i8*)** %init_box, align 8, !tbaa !24
  %36 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %36, i32 0, i32 47
  %37 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %call20 = call i32 %35(i8* %37) #5
  %38 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs21 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %38, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs21, i32 0, i32 2
  %39 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %40 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data22 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %40, i32 0, i32 47
  %41 = load i8*, i8** %box_proc_data22, align 8, !tbaa !23
  %data23 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  %42 = load float*, float** %data23, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds float, float* %42, i64 0
  %43 = load float, float* %arrayidx, align 4, !tbaa !50
  %mul = fmul float %43, 2.560000e+02
  %conv = fptosi float %mul to i32
  %data24 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  %44 = load float*, float** %data24, align 8, !tbaa !55
  %arrayidx25 = getelementptr inbounds float, float* %44, i64 1
  %45 = load float, float* %arrayidx25, align 4, !tbaa !50
  %mul26 = fmul float %45, 2.560000e+02
  %conv27 = fptosi float %mul26 to i32
  %data28 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  %46 = load float*, float** %data28, align 8, !tbaa !55
  %arrayidx29 = getelementptr inbounds float, float* %46, i64 2
  %47 = load float, float* %arrayidx29, align 4, !tbaa !50
  %mul30 = fmul float %47, 2.560000e+02
  %conv31 = fptosi float %mul30 to i32
  %data32 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %bba, i32 0, i32 0
  %48 = load float*, float** %data32, align 8, !tbaa !55
  %arrayidx33 = getelementptr inbounds float, float* %48, i64 3
  %49 = load float, float* %arrayidx33, align 4, !tbaa !50
  %mul34 = fmul float %49, 2.560000e+02
  %conv35 = fptosi float %mul34 to i32
  call void %39(i8* %41, i32 %conv, i32 %conv27, i32 %conv31, i32 %conv35) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.19, %if.then.16
  %50 = load i32, i32* %white_is_opaque, align 4, !tbaa !28
  %51 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %white_is_opaque37 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %51, i32 0, i32 48
  store i32 %50, i32* %white_is_opaque37, align 4, !tbaa !59
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end.14
  %52 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %53 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %53, i32 0, i32 9
  %54 = load i32, i32* %is_open, align 4, !tbaa !64
  call void @bbox_copy_params(%struct.gx_device_bbox_s* %52, i32 %54) #5
  %55 = load i32, i32* %code, align 4, !tbaa !28
  %56 = bitcast %struct.gs_param_float_array_s* %bba to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #2
  %57 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast i32* %white_is_opaque to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  ret i32 %55
}

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #1 {
entry:
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
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !28
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i64 %color, i64* %color.addr, align 8, !tbaa !41
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !65
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !28
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i32, i32* %x.addr, align 4, !tbaa !28
  %16 = load i32, i32* %y.addr, align 4, !tbaa !28
  %17 = load i32, i32* %w.addr, align 4, !tbaa !28
  %18 = load i32, i32* %h.addr, align 4, !tbaa !28
  %19 = load i64, i64* %color.addr, align 8, !tbaa !41
  %20 = load i32, i32* %depth.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i64 %19, i32 %20) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %21 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %21, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %22 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 47
  %24 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %25 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %25, 8
  %26 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %26, 8
  %27 = load i32, i32* %x.addr, align 4, !tbaa !28
  %28 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %27, %28
  %shl2 = shl i32 %add, 8
  %29 = load i32, i32* %y.addr, align 4, !tbaa !28
  %30 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %29, %30
  %shl4 = shl i32 %add3, 8
  call void %22(i8* %24, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %31 = load i32, i32* %code, align 4, !tbaa !28
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %fill_path = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, align 8
  %code = alloca i32, align 4
  %ibox = alloca %struct.gs_fixed_rect_s, align 4
  %adjust = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  %ibox30 = alloca %struct.gs_fixed_rect_s, align 4
  %adjust31 = alloca %struct.gs_fixed_point_s, align 4
  %devc = alloca %struct.gx_device_color_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** getelementptr inbounds (%struct.gx_device_null_s, %struct.gx_device_null_s* @gs_null_device, i32 0, i32 42, i32 24), align 8, !tbaa !66
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_path1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path1, align 8, !tbaa !68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* [ %8, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_path_s* %12, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %14 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_clip_path_s* %15, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %16, %struct.gs_fixed_rect_s* %ibox) #5
  %17 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %adjust5 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %17, i32 0, i32 1
  %18 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %19 = bitcast %struct.gs_fixed_point_s* %adjust5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 4, i1 false), !tbaa.struct !69
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !70
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %21 = load i32, i32* %x6, align 4, !tbaa !49
  %sub = sub nsw i32 %21, %20
  store i32 %sub, i32* %x6, align 4, !tbaa !49
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !71
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %23 = load i32, i32* %y8, align 4, !tbaa !52
  %sub9 = sub nsw i32 %23, %22
  store i32 %sub9, i32* %y8, align 4, !tbaa !52
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %24 = load i32, i32* %x10, align 4, !tbaa !70
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %25 = load i32, i32* %x11, align 4, !tbaa !53
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %x11, align 4, !tbaa !53
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  %26 = load i32, i32* %y12, align 4, !tbaa !71
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 1
  %27 = load i32, i32* %y14, align 4, !tbaa !54
  %add15 = add nsw i32 %27, %26
  store i32 %add15, i32* %y14, align 4, !tbaa !54
  %28 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %28, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %29 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %30 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %30, i32 0, i32 47
  %31 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %p16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 0
  %32 = load i32, i32* %x17, align 4, !tbaa !49
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %33 = load i32, i32* %y19, align 4, !tbaa !52
  %q20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q20, i32 0, i32 0
  %34 = load i32, i32* %x21, align 4, !tbaa !53
  %q22 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q22, i32 0, i32 1
  %35 = load i32, i32* %y23, align 4, !tbaa !54
  call void %29(i8* %31, i32 %32, i32 %33, i32 %34, i32 %35) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %36 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #2
  br label %cleanup.106

if.else:                                          ; preds = %cond.end
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 0
  %39 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp25 = icmp eq %struct.gx_device_color_type_s* %39, @gx_dc_type_data_pure
  br i1 %cmp25, label %land.lhs.true, label %land.lhs.true.27

land.lhs.true:                                    ; preds = %if.else
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %41 = load i64, i64* %pure, align 8, !tbaa !41
  %42 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %42, i32 0, i32 52
  %43 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp26 = icmp eq i64 %41, %43
  br i1 %cmp26, label %if.else.104, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %land.lhs.true, %if.else
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call28 = call i32 @gx_path_is_void(%struct.gx_path_s* %44) #5
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.else.104, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  %45 = bitcast %struct.gs_fixed_rect_s* %ibox30 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #2
  %46 = bitcast %struct.gs_fixed_point_s* %adjust31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call32 = call i32 @gx_path_bbox(%struct.gx_path_s* %47, %struct.gs_fixed_rect_s* %ibox30) #5
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.35:                                        ; preds = %if.then.29
  %48 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %adjust36 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %48, i32 0, i32 1
  %49 = bitcast %struct.gs_fixed_point_s* %adjust31 to i8*
  %50 = bitcast %struct.gs_fixed_point_s* %adjust36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 4, i1 false), !tbaa.struct !69
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust31, i32 0, i32 0
  %51 = load i32, i32* %x37, align 4, !tbaa !70
  %p38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 0
  %52 = load i32, i32* %x39, align 4, !tbaa !49
  %sub40 = sub nsw i32 %52, %51
  store i32 %sub40, i32* %x39, align 4, !tbaa !49
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust31, i32 0, i32 1
  %53 = load i32, i32* %y41, align 4, !tbaa !71
  %p42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p42, i32 0, i32 1
  %54 = load i32, i32* %y43, align 4, !tbaa !52
  %sub44 = sub nsw i32 %54, %53
  store i32 %sub44, i32* %y43, align 4, !tbaa !52
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust31, i32 0, i32 0
  %55 = load i32, i32* %x45, align 4, !tbaa !70
  %q46 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q46, i32 0, i32 0
  %56 = load i32, i32* %x47, align 4, !tbaa !53
  %add48 = add nsw i32 %56, %55
  store i32 %add48, i32* %x47, align 4, !tbaa !53
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust31, i32 0, i32 1
  %57 = load i32, i32* %y49, align 4, !tbaa !71
  %q50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q50, i32 0, i32 1
  %58 = load i32, i32* %y51, align 4, !tbaa !54
  %add52 = add nsw i32 %58, %57
  store i32 %add52, i32* %y51, align 4, !tbaa !54
  %59 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs53 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %59, i32 0, i32 46
  %in_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs53, i32 0, i32 3
  %60 = load i32 (i8*, %struct.gs_fixed_rect_s*)*, i32 (i8*, %struct.gs_fixed_rect_s*)** %in_rect, align 8, !tbaa !79
  %61 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data54 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %61, i32 0, i32 47
  %62 = load i8*, i8** %box_proc_data54, align 8, !tbaa !23
  %call55 = call i32 %60(i8* %62, %struct.gs_fixed_rect_s* %ibox30) #5
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.35
  %63 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %67 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %69 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call58 = call i32 %63(%struct.gx_device_s* %64, %struct.gs_imager_state_s* %65, %struct.gx_path_s* %66, %struct.gx_fill_params_s* %67, %struct.gx_device_color_s* %68, %struct.gx_clip_path_s* %69) #5
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.59:                                        ; preds = %if.end.35
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp60 = icmp ne %struct.gx_device_s* %70, null
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.end.59
  %71 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %cmp62 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %71, @gx_default_fill_path
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.61
  %72 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %74 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %75 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %76 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %77 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %78 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call64 = call i32 %72(%struct.gx_device_s* %73, %struct.gs_imager_state_s* %74, %struct.gx_path_s* %75, %struct.gx_fill_params_s* %76, %struct.gx_device_color_s* %77, %struct.gx_clip_path_s* %78) #5
  store i32 %call64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.65:                                        ; preds = %land.lhs.true.61, %if.end.59
  %79 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %83 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %85 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call66 = call i32 %79(%struct.gx_device_s* %80, %struct.gs_imager_state_s* %81, %struct.gx_path_s* %82, %struct.gx_fill_params_s* %83, %struct.gx_device_color_s* %84, %struct.gx_clip_path_s* %85) #5
  store i32 %call66, i32* %code, align 4, !tbaa !28
  %86 = load i32, i32* %code, align 4, !tbaa !28
  %cmp67 = icmp slt i32 %86, 0
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  %87 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.69:                                        ; preds = %if.end.65
  %88 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp70 = icmp ne %struct.gx_clip_path_s* %88, null
  br i1 %cmp70, label %land.lhs.true.71, label %if.else.89

land.lhs.true.71:                                 ; preds = %if.end.69
  %89 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p72, i32 0, i32 0
  %90 = load i32, i32* %x73, align 4, !tbaa !49
  %p74 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p74, i32 0, i32 1
  %91 = load i32, i32* %y75, align 4, !tbaa !52
  %q76 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q76, i32 0, i32 0
  %92 = load i32, i32* %x77, align 4, !tbaa !53
  %q78 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q78, i32 0, i32 1
  %93 = load i32, i32* %y79, align 4, !tbaa !54
  %call80 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %89, i32 %90, i32 %91, i32 %92, i32 %93) #5
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.else.89, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.71
  %94 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %94) #2
  %95 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %95, i32 0, i32 50
  %96 = load i64, i64* %black, align 8, !tbaa !80
  %colors83 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure84 = bitcast %union._c* %colors83 to i64*
  store i64 %96, i64* %pure84, align 8, !tbaa !41
  %type85 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type85, align 8, !tbaa !72
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !81
  %97 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target86 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %97, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target86, align 8, !tbaa !26
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %100 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %101 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %102 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call87 = call i32 @gx_default_fill_path(%struct.gx_device_s* %98, %struct.gs_imager_state_s* %99, %struct.gx_path_s* %100, %struct.gx_fill_params_s* %101, %struct.gx_device_color_s* %devc, %struct.gx_clip_path_s* %102) #5
  store i32 %call87, i32* %code, align 4, !tbaa !28
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %104 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target88 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %104, i32 0, i32 43
  store %struct.gx_device_s* %103, %struct.gx_device_s** %target88, align 8, !tbaa !26
  %105 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %105) #2
  br label %if.end.101

if.else.89:                                       ; preds = %land.lhs.true.71, %if.end.69
  %106 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs90 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %106, i32 0, i32 46
  %add_rect91 = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs90, i32 0, i32 2
  %107 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect91, align 8, !tbaa !44
  %108 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data92 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %108, i32 0, i32 47
  %109 = load i8*, i8** %box_proc_data92, align 8, !tbaa !23
  %p93 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %x94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 0
  %110 = load i32, i32* %x94, align 4, !tbaa !49
  %p95 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 0
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p95, i32 0, i32 1
  %111 = load i32, i32* %y96, align 4, !tbaa !52
  %q97 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q97, i32 0, i32 0
  %112 = load i32, i32* %x98, align 4, !tbaa !53
  %q99 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox30, i32 0, i32 1
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q99, i32 0, i32 1
  %113 = load i32, i32* %y100, align 4, !tbaa !54
  call void %107(i8* %109, i32 %110, i32 %111, i32 %112, i32 %113) #5
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.89, %if.then.82
  %114 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %if.end.101, %if.then.68, %if.then.63, %if.then.57, %if.then.34
  %115 = bitcast %struct.gs_fixed_point_s* %adjust31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast %struct.gs_fixed_rect_s* %ibox30 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %116) #2
  br label %cleanup.106

if.else.104:                                      ; preds = %land.lhs.true.27, %land.lhs.true
  %117 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !1
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %119 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %120 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %121 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %122 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %123 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call105 = call i32 %117(%struct.gx_device_s* %118, %struct.gs_imager_state_s* %119, %struct.gx_path_s* %120, %struct.gx_fill_params_s* %121, %struct.gx_device_color_s* %122, %struct.gx_clip_path_s* %123) #5
  store i32 %call105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %if.else.104, %cleanup.102, %cleanup
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %ibox = alloca %struct.gs_fixed_rect_s, align 4
  %expand = alloca %struct.gs_fixed_point_s, align 4
  %spath = alloca %struct.gx_path_s*, align 8
  %code20 = alloca i32, align 4
  %devc = alloca %struct.gx_device_color_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 25
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !82
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_path_s* %12, %struct.gx_stroke_params_s* %13, %struct.gx_device_color_s* %14, %struct.gx_clip_path_s* %15) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 0
  %17 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %17, @gx_dc_type_data_pure
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %19 = load i64, i64* %pure, align 8, !tbaa !41
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 52
  %21 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp eq i64 %19, %21
  br i1 %cmp2, label %if.end.72, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %22 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #2
  %23 = bitcast %struct.gs_fixed_point_s* %expand to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call3 = call i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s* %24, %struct.gx_path_s* %25, %struct.gs_fixed_point_s* %expand) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %if.then
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_path_bbox(%struct.gx_path_s* %26, %struct.gs_fixed_rect_s* %ibox) #5
  %cmp7 = icmp sge i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expand, i32 0, i32 0
  %27 = load i32, i32* %x, align 4, !tbaa !70
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %28 = load i32, i32* %x9, align 4, !tbaa !49
  %sub = sub nsw i32 %28, %27
  store i32 %sub, i32* %x9, align 4, !tbaa !49
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expand, i32 0, i32 1
  %29 = load i32, i32* %y, align 4, !tbaa !71
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 1
  %30 = load i32, i32* %y11, align 4, !tbaa !52
  %sub12 = sub nsw i32 %30, %29
  store i32 %sub12, i32* %y11, align 4, !tbaa !52
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expand, i32 0, i32 0
  %31 = load i32, i32* %x13, align 4, !tbaa !70
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %32 = load i32, i32* %x14, align 4, !tbaa !53
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %x14, align 4, !tbaa !53
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expand, i32 0, i32 1
  %33 = load i32, i32* %y15, align 4, !tbaa !71
  %q16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q16, i32 0, i32 1
  %34 = load i32, i32* %y17, align 4, !tbaa !54
  %add18 = add nsw i32 %34, %33
  store i32 %add18, i32* %y17, align 4, !tbaa !54
  br label %if.end.42

if.else:                                          ; preds = %land.lhs.true.5, %if.then
  %35 = bitcast %struct.gx_path_s** %spath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %call19 = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #5
  store %struct.gx_path_s* %call19, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %38 = bitcast i32* %code20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  store i32 0, i32* %code20, align 4, !tbaa !28
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_path_s* %39, null
  br i1 %tobool, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call22 = call i32 @gx_imager_stroke_add(%struct.gx_path_s* %40, %struct.gx_path_s* %41, %struct.gx_device_s* %42, %struct.gs_imager_state_s* %43) #5
  store i32 %call22, i32* %code20, align 4, !tbaa !28
  br label %if.end

if.else.23:                                       ; preds = %if.else
  store i32 -1, i32* %code20, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.21
  %44 = load i32, i32* %code20, align 4, !tbaa !28
  %cmp24 = icmp sge i32 %44, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %call26 = call i32 @gx_path_bbox(%struct.gx_path_s* %45, %struct.gs_fixed_rect_s* %ibox) #5
  store i32 %call26, i32* %code20, align 4, !tbaa !28
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end
  %46 = load i32, i32* %code20, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %46, 0
  br i1 %cmp28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.end.27
  %p30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p30, i32 0, i32 1
  store i32 -2147483648, i32* %y31, align 4, !tbaa !52
  %p32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p32, i32 0, i32 0
  store i32 -2147483648, i32* %x33, align 4, !tbaa !49
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 1
  store i32 2147483647, i32* %y35, align 4, !tbaa !54
  %q36 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q36, i32 0, i32 0
  store i32 2147483647, i32* %x37, align 4, !tbaa !53
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.29, %if.end.27
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %tobool39 = icmp ne %struct.gx_path_s* %47, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  %49 = bitcast i32* %code20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast %struct.gx_path_s** %spath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.8
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp43 = icmp ne %struct.gx_clip_path_s* %51, null
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.62

land.lhs.true.44:                                 ; preds = %if.end.42
  %52 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p45 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p45, i32 0, i32 0
  %53 = load i32, i32* %x46, align 4, !tbaa !49
  %p47 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p47, i32 0, i32 1
  %54 = load i32, i32* %y48, align 4, !tbaa !52
  %q49 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q49, i32 0, i32 0
  %55 = load i32, i32* %x50, align 4, !tbaa !53
  %q51 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q51, i32 0, i32 1
  %56 = load i32, i32* %y52, align 4, !tbaa !54
  %call53 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %52, i32 %53, i32 %54, i32 %55, i32 %56) #5
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.62, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.44
  %57 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %57) #2
  %58 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %58, i32 0, i32 50
  %59 = load i64, i64* %black, align 8, !tbaa !80
  %colors56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure57 = bitcast %union._c* %colors56 to i64*
  store i64 %59, i64* %pure57, align 8, !tbaa !41
  %type58 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type58, align 8, !tbaa !72
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !81
  %60 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target59 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %60, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target59, align 8, !tbaa !26
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %63 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %64 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %65 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call60 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %61, %struct.gs_imager_state_s* %62, %struct.gx_path_s* %63, %struct.gx_stroke_params_s* %64, %struct.gx_device_color_s* %devc, %struct.gx_clip_path_s* %65) #5
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %67 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target61 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %67, i32 0, i32 43
  store %struct.gx_device_s* %66, %struct.gx_device_s** %target61, align 8, !tbaa !26
  %68 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %68) #2
  br label %if.end.71

if.else.62:                                       ; preds = %land.lhs.true.44, %if.end.42
  %69 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %69, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %70 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %71 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %71, i32 0, i32 47
  %72 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %p63 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p63, i32 0, i32 0
  %73 = load i32, i32* %x64, align 4, !tbaa !49
  %p65 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p65, i32 0, i32 1
  %74 = load i32, i32* %y66, align 4, !tbaa !52
  %q67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q67, i32 0, i32 0
  %75 = load i32, i32* %x68, align 4, !tbaa !53
  %q69 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q69, i32 0, i32 1
  %76 = load i32, i32* %y70, align 4, !tbaa !54
  call void %70(i8* %72, i32 %73, i32 %74, i32 %75, i32 %76) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.62, %if.then.55
  %77 = bitcast %struct.gs_fixed_point_s* %expand to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %78) #2
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true
  %79 = load i32, i32* %code, align 4, !tbaa !28
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
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
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !28
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !28
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !93
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i32, i32* %x.addr, align 4, !tbaa !28
  %16 = load i32, i32* %y.addr, align 4, !tbaa !28
  %17 = load i32, i32* %w.addr, align 4, !tbaa !28
  %18 = load i32, i32* %h.addr, align 4, !tbaa !28
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %20 = load i32, i32* %depth.addr, align 4, !tbaa !28
  %21 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_color_s* %19, i32 %20, i32 %21, %struct.gx_clip_path_s* %22) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_clip_path_s* %23, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %24 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %25, 8
  %26 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl2 = shl i32 %26, 8
  %27 = load i32, i32* %x.addr, align 4, !tbaa !28
  %28 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %27, %28
  %shl3 = shl i32 %add, 8
  %29 = load i32, i32* %y.addr, align 4, !tbaa !28
  %30 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add4 = add nsw i32 %29, %30
  %shl5 = shl i32 %add4, 8
  %call6 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %24, i32 %shl, i32 %shl2, i32 %shl3, i32 %shl5) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %31 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target7 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %31, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target7, align 8, !tbaa !26
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %34 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %35 = load i32, i32* %raster.addr, align 4, !tbaa !28
  %36 = load i64, i64* %id.addr, align 8, !tbaa !41
  %37 = load i32, i32* %x.addr, align 4, !tbaa !28
  %38 = load i32, i32* %y.addr, align 4, !tbaa !28
  %39 = load i32, i32* %w.addr, align 4, !tbaa !28
  %40 = load i32, i32* %h.addr, align 4, !tbaa !28
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %42 = load i32, i32* %depth.addr, align 4, !tbaa !28
  %43 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %32, i8* %33, i32 %34, i32 %35, i64 %36, i32 %37, i32 %38, i32 %39, i32 %40, %struct.gx_device_color_s* %41, i32 %42, i32 %43, %struct.gx_clip_path_s* %44) #5
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %46 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target9 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %46, i32 0, i32 43
  store %struct.gx_device_s* %45, %struct.gx_device_s** %target9, align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %47 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %47, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %48 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %49 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %49, i32 0, i32 47
  %50 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %51 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl10 = shl i32 %51, 8
  %52 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl11 = shl i32 %52, 8
  %53 = load i32, i32* %x.addr, align 4, !tbaa !28
  %54 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add12 = add nsw i32 %53, %54
  %shl13 = shl i32 %add12, 8
  %55 = load i32, i32* %y.addr, align 4, !tbaa !28
  %56 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add14 = add nsw i32 %55, %56
  %shl15 = shl i32 %add14, 8
  call void %48(i8* %50, i32 %shl10, i32 %shl11, i32 %shl13, i32 %shl15) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %57 = load i32, i32* %code, align 4, !tbaa !28
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %xminl = alloca i32, align 4
  %xmaxl = alloca i32, align 4
  %xminr = alloca i32, align 4
  %xmaxr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !28
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !28
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !94
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %12 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %13 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %14 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %15 = load i32, i32* %swap_axes.addr, align 4, !tbaa !28
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %17 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_fixed_edge_s* %11, %struct.gs_fixed_edge_s* %12, i32 %13, i32 %14, i32 %15, %struct.gx_device_color_s* %16, i32 %17) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %19, @gx_dc_type_data_pure
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %21 = load i64, i64* %pure, align 8, !tbaa !41
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %22, i32 0, i32 52
  %23 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp eq i64 %21, %23
  br i1 %cmp2, label %if.end.73, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %24 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %26 = load i32, i32* %y, align 4, !tbaa !95
  %27 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %cmp3 = icmp eq i32 %26, %27
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %if.then
  %28 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start5 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %28, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start5, i32 0, i32 0
  %29 = load i32, i32* %x, align 4, !tbaa !97
  br label %cond.end.8

cond.false.6:                                     ; preds = %if.then
  %30 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %31 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %call7 = call i32 @edge_x_at_y(%struct.gs_fixed_edge_s* %30, i32 %31) #5
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.4
  %cond9 = phi i32 [ %29, %cond.true.4 ], [ %call7, %cond.false.6 ]
  store i32 %cond9, i32* %x0l, align 4, !tbaa !28
  %32 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %33, i32 0, i32 1
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %34 = load i32, i32* %y10, align 4, !tbaa !98
  %35 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %cmp11 = icmp eq i32 %34, %35
  br i1 %cmp11, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.end.8
  %36 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end13 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %36, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end13, i32 0, i32 0
  %37 = load i32, i32* %x14, align 4, !tbaa !99
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.8
  %38 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %39 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %call16 = call i32 @edge_x_at_y(%struct.gs_fixed_edge_s* %38, i32 %39) #5
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.12
  %cond18 = phi i32 [ %37, %cond.true.12 ], [ %call16, %cond.false.15 ]
  store i32 %cond18, i32* %x1l, align 4, !tbaa !28
  %40 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start19 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %41, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start19, i32 0, i32 1
  %42 = load i32, i32* %y20, align 4, !tbaa !95
  %43 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %cmp21 = icmp eq i32 %42, %43
  br i1 %cmp21, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.end.17
  %44 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start23 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %44, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start23, i32 0, i32 0
  %45 = load i32, i32* %x24, align 4, !tbaa !97
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end.17
  %46 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %47 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %call26 = call i32 @edge_x_at_y(%struct.gs_fixed_edge_s* %46, i32 %47) #5
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.22
  %cond28 = phi i32 [ %45, %cond.true.22 ], [ %call26, %cond.false.25 ]
  store i32 %cond28, i32* %x0r, align 4, !tbaa !28
  %48 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end29 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %49, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end29, i32 0, i32 1
  %50 = load i32, i32* %y30, align 4, !tbaa !98
  %51 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %cmp31 = icmp eq i32 %50, %51
  br i1 %cmp31, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.end.27
  %52 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end33 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %52, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end33, i32 0, i32 0
  %53 = load i32, i32* %x34, align 4, !tbaa !99
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.end.27
  %54 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %55 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %call36 = call i32 @edge_x_at_y(%struct.gs_fixed_edge_s* %54, i32 %55) #5
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.32
  %cond38 = phi i32 [ %53, %cond.true.32 ], [ %call36, %cond.false.35 ]
  store i32 %cond38, i32* %x1r, align 4, !tbaa !28
  %56 = bitcast i32* %xminl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load i32, i32* %x0l, align 4, !tbaa !28
  %58 = load i32, i32* %x1l, align 4, !tbaa !28
  %cmp39 = icmp slt i32 %57, %58
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.end.37
  %59 = load i32, i32* %x0l, align 4, !tbaa !28
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end.37
  %60 = load i32, i32* %x1l, align 4, !tbaa !28
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi i32 [ %59, %cond.true.40 ], [ %60, %cond.false.41 ]
  store i32 %cond43, i32* %xminl, align 4, !tbaa !28
  %61 = bitcast i32* %xmaxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i32, i32* %x0l, align 4, !tbaa !28
  %63 = load i32, i32* %x1l, align 4, !tbaa !28
  %cmp44 = icmp sgt i32 %62, %63
  br i1 %cmp44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.end.42
  %64 = load i32, i32* %x0l, align 4, !tbaa !28
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end.42
  %65 = load i32, i32* %x1l, align 4, !tbaa !28
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %64, %cond.true.45 ], [ %65, %cond.false.46 ]
  store i32 %cond48, i32* %xmaxl, align 4, !tbaa !28
  %66 = bitcast i32* %xminr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i32, i32* %x0r, align 4, !tbaa !28
  %68 = load i32, i32* %x1r, align 4, !tbaa !28
  %cmp49 = icmp slt i32 %67, %68
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.47
  %69 = load i32, i32* %x0r, align 4, !tbaa !28
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.47
  %70 = load i32, i32* %x1r, align 4, !tbaa !28
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %69, %cond.true.50 ], [ %70, %cond.false.51 ]
  store i32 %cond53, i32* %xminr, align 4, !tbaa !28
  %71 = bitcast i32* %xmaxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i32, i32* %x0r, align 4, !tbaa !28
  %73 = load i32, i32* %x1r, align 4, !tbaa !28
  %cmp54 = icmp sgt i32 %72, %73
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.52
  %74 = load i32, i32* %x0r, align 4, !tbaa !28
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.52
  %75 = load i32, i32* %x1r, align 4, !tbaa !28
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ %74, %cond.true.55 ], [ %75, %cond.false.56 ]
  store i32 %cond58, i32* %xmaxr, align 4, !tbaa !28
  %76 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load i32, i32* %xminl, align 4, !tbaa !28
  %78 = load i32, i32* %xminr, align 4, !tbaa !28
  %cmp59 = icmp slt i32 %77, %78
  br i1 %cmp59, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.57
  %79 = load i32, i32* %xminl, align 4, !tbaa !28
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.57
  %80 = load i32, i32* %xminr, align 4, !tbaa !28
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi i32 [ %79, %cond.true.60 ], [ %80, %cond.false.61 ]
  store i32 %cond63, i32* %x0, align 4, !tbaa !28
  %81 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load i32, i32* %xmaxl, align 4, !tbaa !28
  %83 = load i32, i32* %xmaxr, align 4, !tbaa !28
  %cmp64 = icmp sgt i32 %82, %83
  br i1 %cmp64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.62
  %84 = load i32, i32* %xmaxl, align 4, !tbaa !28
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.62
  %85 = load i32, i32* %xmaxr, align 4, !tbaa !28
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %84, %cond.true.65 ], [ %85, %cond.false.66 ]
  store i32 %cond68, i32* %x1, align 4, !tbaa !28
  %86 = load i32, i32* %swap_axes.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %cond.end.67
  %87 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %87, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %88 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %89 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %89, i32 0, i32 47
  %90 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %91 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %92 = load i32, i32* %x0, align 4, !tbaa !28
  %93 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  %94 = load i32, i32* %x1, align 4, !tbaa !28
  call void %88(i8* %90, i32 %91, i32 %92, i32 %93, i32 %94) #5
  br label %if.end

if.else:                                          ; preds = %cond.end.67
  %95 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs70 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %95, i32 0, i32 46
  %add_rect71 = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs70, i32 0, i32 2
  %96 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect71, align 8, !tbaa !44
  %97 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data72 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %97, i32 0, i32 47
  %98 = load i8*, i8** %box_proc_data72, align 8, !tbaa !23
  %99 = load i32, i32* %x0, align 4, !tbaa !28
  %100 = load i32, i32* %ybot.addr, align 4, !tbaa !28
  %101 = load i32, i32* %x1, align 4, !tbaa !28
  %102 = load i32, i32* %ytop.addr, align 4, !tbaa !28
  call void %96(i8* %98, i32 %99, i32 %100, i32 %101, i32 %102) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.69
  %103 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %xmaxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %xminr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %xmaxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %xminl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %land.lhs.true
  %113 = load i32, i32* %code, align 4, !tbaa !28
  %114 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !28
  store i32 %py, i32* %py.addr, align 4, !tbaa !28
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !28
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !28
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !28
  store i32 %by, i32* %by.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !100
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i32, i32* %px.addr, align 4, !tbaa !28
  %12 = load i32, i32* %py.addr, align 4, !tbaa !28
  %13 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %14 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %15 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %16 = load i32, i32* %by.addr, align 4, !tbaa !28
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, %struct.gx_device_color_s* %17, i32 %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 0
  %20 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %20, @gx_dc_type_data_pure
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %22 = load i64, i64* %pure, align 8, !tbaa !41
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 52
  %24 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp eq i64 %22, %24
  br i1 %cmp2, label %if.end.35, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %25 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  br label %do.body

do.body:                                          ; preds = %if.then
  %29 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %cmp3 = icmp sle i32 %29, 0
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %do.body
  %30 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp5 = icmp sle i32 %30, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %31 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %32 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %add = add nsw i32 %31, %32
  store i32 %add, i32* %xmin, align 4, !tbaa !28
  store i32 0, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %33 = load i32, i32* %ax.addr, align 4, !tbaa !28
  store i32 %33, i32* %xmin, align 4, !tbaa !28
  %34 = load i32, i32* %bx.addr, align 4, !tbaa !28
  store i32 %34, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.13

if.else.7:                                        ; preds = %do.body
  %35 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp8 = icmp sle i32 %35, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  %36 = load i32, i32* %bx.addr, align 4, !tbaa !28
  store i32 %36, i32* %xmin, align 4, !tbaa !28
  %37 = load i32, i32* %ax.addr, align 4, !tbaa !28
  store i32 %37, i32* %xmax, align 4, !tbaa !28
  br label %if.end.12

if.else.10:                                       ; preds = %if.else.7
  store i32 0, i32* %xmin, align 4, !tbaa !28
  %38 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %39 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %add11 = add nsw i32 %38, %39
  store i32 %add11, i32* %xmax, align 4, !tbaa !28
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %40 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %cmp15 = icmp sle i32 %40, 0
  br i1 %cmp15, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %do.body.14
  %41 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp17 = icmp sle i32 %41, 0
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.then.16
  %42 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %43 = load i32, i32* %by.addr, align 4, !tbaa !28
  %add19 = add nsw i32 %42, %43
  store i32 %add19, i32* %ymin, align 4, !tbaa !28
  store i32 0, i32* %ymax, align 4, !tbaa !28
  br label %if.end.21

if.else.20:                                       ; preds = %if.then.16
  %44 = load i32, i32* %ay.addr, align 4, !tbaa !28
  store i32 %44, i32* %ymin, align 4, !tbaa !28
  %45 = load i32, i32* %by.addr, align 4, !tbaa !28
  store i32 %45, i32* %ymax, align 4, !tbaa !28
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.28

if.else.22:                                       ; preds = %do.body.14
  %46 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp23 = icmp sle i32 %46, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.22
  %47 = load i32, i32* %by.addr, align 4, !tbaa !28
  store i32 %47, i32* %ymin, align 4, !tbaa !28
  %48 = load i32, i32* %ay.addr, align 4, !tbaa !28
  store i32 %48, i32* %ymax, align 4, !tbaa !28
  br label %if.end.27

if.else.25:                                       ; preds = %if.else.22
  store i32 0, i32* %ymin, align 4, !tbaa !28
  %49 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %50 = load i32, i32* %by.addr, align 4, !tbaa !28
  %add26 = add nsw i32 %49, %50
  store i32 %add26, i32* %ymax, align 4, !tbaa !28
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.21
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %51 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %51, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %52 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %53 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %53, i32 0, i32 47
  %54 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %55 = load i32, i32* %px.addr, align 4, !tbaa !28
  %56 = load i32, i32* %xmin, align 4, !tbaa !28
  %add31 = add nsw i32 %55, %56
  %57 = load i32, i32* %py.addr, align 4, !tbaa !28
  %58 = load i32, i32* %ymin, align 4, !tbaa !28
  %add32 = add nsw i32 %57, %58
  %59 = load i32, i32* %px.addr, align 4, !tbaa !28
  %60 = load i32, i32* %xmax, align 4, !tbaa !28
  %add33 = add nsw i32 %59, %60
  %61 = load i32, i32* %py.addr, align 4, !tbaa !28
  %62 = load i32, i32* %ymax, align 4, !tbaa !28
  %add34 = add nsw i32 %61, %62
  call void %52(i8* %54, i32 %add31, i32 %add32, i32 %add33, i32 %add34) #5
  %63 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.30, %land.lhs.true
  %67 = load i32, i32* %code, align 4, !tbaa !28
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !28
  store i32 %py, i32* %py.addr, align 4, !tbaa !28
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !28
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !28
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !28
  store i32 %by, i32* %by.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 29
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !101
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i32, i32* %px.addr, align 4, !tbaa !28
  %12 = load i32, i32* %py.addr, align 4, !tbaa !28
  %13 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %14 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %15 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %16 = load i32, i32* %by.addr, align 4, !tbaa !28
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, %struct.gx_device_color_s* %17, i32 %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 0
  %20 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %20, @gx_dc_type_data_pure
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %22 = load i64, i64* %pure, align 8, !tbaa !41
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 52
  %24 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp eq i64 %22, %24
  br i1 %cmp2, label %if.end.51, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %25 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  br label %do.body

do.body:                                          ; preds = %if.then
  %29 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %cmp3 = icmp sle i32 %29, 0
  br i1 %cmp3, label %if.then.4, label %if.else.12

if.then.4:                                        ; preds = %do.body
  %30 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp5 = icmp sle i32 %30, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %31 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %32 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp7 = icmp slt i32 %31, %32
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.then.6
  %33 = load i32, i32* %ax.addr, align 4, !tbaa !28
  br label %cond.end.10

cond.false.9:                                     ; preds = %if.then.6
  %34 = load i32, i32* %bx.addr, align 4, !tbaa !28
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %33, %cond.true.8 ], [ %34, %cond.false.9 ]
  store i32 %cond11, i32* %xmin, align 4, !tbaa !28
  store i32 0, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %35 = load i32, i32* %ax.addr, align 4, !tbaa !28
  store i32 %35, i32* %xmin, align 4, !tbaa !28
  %36 = load i32, i32* %bx.addr, align 4, !tbaa !28
  store i32 %36, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.10
  br label %if.end.22

if.else.12:                                       ; preds = %do.body
  %37 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp13 = icmp sle i32 %37, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  %38 = load i32, i32* %bx.addr, align 4, !tbaa !28
  store i32 %38, i32* %xmin, align 4, !tbaa !28
  %39 = load i32, i32* %ax.addr, align 4, !tbaa !28
  store i32 %39, i32* %xmax, align 4, !tbaa !28
  br label %if.end.21

if.else.15:                                       ; preds = %if.else.12
  store i32 0, i32* %xmin, align 4, !tbaa !28
  %40 = load i32, i32* %ax.addr, align 4, !tbaa !28
  %41 = load i32, i32* %bx.addr, align 4, !tbaa !28
  %cmp16 = icmp sgt i32 %40, %41
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.else.15
  %42 = load i32, i32* %ax.addr, align 4, !tbaa !28
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.else.15
  %43 = load i32, i32* %bx.addr, align 4, !tbaa !28
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ %42, %cond.true.17 ], [ %43, %cond.false.18 ]
  store i32 %cond20, i32* %xmax, align 4, !tbaa !28
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end.19, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  %44 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %cmp24 = icmp sle i32 %44, 0
  br i1 %cmp24, label %if.then.25, label %if.else.35

if.then.25:                                       ; preds = %do.body.23
  %45 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp26 = icmp sle i32 %45, 0
  br i1 %cmp26, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.then.25
  %46 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %47 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %46, %47
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.then.27
  %48 = load i32, i32* %ay.addr, align 4, !tbaa !28
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.then.27
  %49 = load i32, i32* %by.addr, align 4, !tbaa !28
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %48, %cond.true.29 ], [ %49, %cond.false.30 ]
  store i32 %cond32, i32* %ymin, align 4, !tbaa !28
  store i32 0, i32* %ymax, align 4, !tbaa !28
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.25
  %50 = load i32, i32* %ay.addr, align 4, !tbaa !28
  store i32 %50, i32* %ymin, align 4, !tbaa !28
  %51 = load i32, i32* %by.addr, align 4, !tbaa !28
  store i32 %51, i32* %ymax, align 4, !tbaa !28
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %cond.end.31
  br label %if.end.45

if.else.35:                                       ; preds = %do.body.23
  %52 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp36 = icmp sle i32 %52, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.35
  %53 = load i32, i32* %by.addr, align 4, !tbaa !28
  store i32 %53, i32* %ymin, align 4, !tbaa !28
  %54 = load i32, i32* %ay.addr, align 4, !tbaa !28
  store i32 %54, i32* %ymax, align 4, !tbaa !28
  br label %if.end.44

if.else.38:                                       ; preds = %if.else.35
  store i32 0, i32* %ymin, align 4, !tbaa !28
  %55 = load i32, i32* %ay.addr, align 4, !tbaa !28
  %56 = load i32, i32* %by.addr, align 4, !tbaa !28
  %cmp39 = icmp sgt i32 %55, %56
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.else.38
  %57 = load i32, i32* %ay.addr, align 4, !tbaa !28
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.else.38
  %58 = load i32, i32* %by.addr, align 4, !tbaa !28
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi i32 [ %57, %cond.true.40 ], [ %58, %cond.false.41 ]
  store i32 %cond43, i32* %ymax, align 4, !tbaa !28
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.42, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.34
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %59 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %59, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %60 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %61 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %61, i32 0, i32 47
  %62 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %63 = load i32, i32* %px.addr, align 4, !tbaa !28
  %64 = load i32, i32* %xmin, align 4, !tbaa !28
  %add = add nsw i32 %63, %64
  %65 = load i32, i32* %py.addr, align 4, !tbaa !28
  %66 = load i32, i32* %ymin, align 4, !tbaa !28
  %add48 = add nsw i32 %65, %66
  %67 = load i32, i32* %px.addr, align 4, !tbaa !28
  %68 = load i32, i32* %xmax, align 4, !tbaa !28
  %add49 = add nsw i32 %67, %68
  %69 = load i32, i32* %py.addr, align 4, !tbaa !28
  %70 = load i32, i32* %ymax, align 4, !tbaa !28
  %add50 = add nsw i32 %69, %70
  call void %60(i8* %62, i32 %add, i32 %add48, i32 %add49, i32 %add50) #5
  %71 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.47, %land.lhs.true
  %75 = load i32, i32* %code, align 4, !tbaa !28
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_draw_thin_line(%struct.gx_device_s* %dev, i32 %fx0, i32 %fy0, i32 %fx1, i32 %fy1, %struct.gx_device_color_s* %pdevc, i32 %lop, i32 %adjustx, i32 %adjusty) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fx0.addr = alloca i32, align 4
  %fy0.addr = alloca i32, align 4
  %fx1.addr = alloca i32, align 4
  %fy1.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %adjustx.addr = alloca i32, align 4
  %adjusty.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %fx0, i32* %fx0.addr, align 4, !tbaa !28
  store i32 %fy0, i32* %fy0.addr, align 4, !tbaa !28
  store i32 %fx1, i32* %fx1.addr, align 4, !tbaa !28
  store i32 %fy1, i32* %fy1.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  store i32 %adjustx, i32* %adjustx.addr, align 4, !tbaa !28
  store i32 %adjusty, i32* %adjusty.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 30
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !102
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i32, i32* %fx0.addr, align 4, !tbaa !28
  %12 = load i32, i32* %fy0.addr, align 4, !tbaa !28
  %13 = load i32, i32* %fx1.addr, align 4, !tbaa !28
  %14 = load i32, i32* %fy0.addr, align 4, !tbaa !28
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %16 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %17 = load i32, i32* %adjustx.addr, align 4, !tbaa !28
  %18 = load i32, i32* %adjusty.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, %struct.gx_device_color_s* %15, i32 %16, i32 %17, i32 %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 0
  %20 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %20, @gx_dc_type_data_pure
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %22 = load i64, i64* %pure, align 8, !tbaa !41
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 52
  %24 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp2 = icmp eq i64 %22, %24
  br i1 %cmp2, label %if.end.12, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %25 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  br label %do.body

do.body:                                          ; preds = %if.then
  %29 = load i32, i32* %fx0.addr, align 4, !tbaa !28
  %30 = load i32, i32* %fx1.addr, align 4, !tbaa !28
  %cmp3 = icmp slt i32 %29, %30
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %31 = load i32, i32* %fx0.addr, align 4, !tbaa !28
  store i32 %31, i32* %xmin, align 4, !tbaa !28
  %32 = load i32, i32* %fx1.addr, align 4, !tbaa !28
  store i32 %32, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %do.body
  %33 = load i32, i32* %fx1.addr, align 4, !tbaa !28
  store i32 %33, i32* %xmin, align 4, !tbaa !28
  %34 = load i32, i32* %fx0.addr, align 4, !tbaa !28
  store i32 %34, i32* %xmax, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %35 = load i32, i32* %fy0.addr, align 4, !tbaa !28
  %36 = load i32, i32* %fy1.addr, align 4, !tbaa !28
  %cmp6 = icmp slt i32 %35, %36
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body.5
  %37 = load i32, i32* %fy0.addr, align 4, !tbaa !28
  store i32 %37, i32* %ymin, align 4, !tbaa !28
  %38 = load i32, i32* %fy1.addr, align 4, !tbaa !28
  store i32 %38, i32* %ymax, align 4, !tbaa !28
  br label %if.end.9

if.else.8:                                        ; preds = %do.body.5
  %39 = load i32, i32* %fy1.addr, align 4, !tbaa !28
  store i32 %39, i32* %ymin, align 4, !tbaa !28
  %40 = load i32, i32* %fy0.addr, align 4, !tbaa !28
  store i32 %40, i32* %ymax, align 4, !tbaa !28
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.cond.10

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %41 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %41, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %42 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %43 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %43, i32 0, i32 47
  %44 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %45 = load i32, i32* %xmin, align 4, !tbaa !28
  %46 = load i32, i32* %ymin, align 4, !tbaa !28
  %47 = load i32, i32* %xmax, align 4, !tbaa !28
  %48 = load i32, i32* %ymax, align 4, !tbaa !28
  call void %42(i8* %44, i32 %45, i32 %46, i32 %47, i32 %48) #5
  %49 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %land.lhs.true
  %53 = load i32, i32* %code, align 4, !tbaa !28
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  ret i32 %53
}

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !41
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !41
  store i32 %px, i32* %px.addr, align 4, !tbaa !28
  store i32 %py, i32* %py.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %9 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !103
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %12 = load i32, i32* %x.addr, align 4, !tbaa !28
  %13 = load i32, i32* %y.addr, align 4, !tbaa !28
  %14 = load i32, i32* %w.addr, align 4, !tbaa !28
  %15 = load i32, i32* %h.addr, align 4, !tbaa !28
  %16 = load i64, i64* %color0.addr, align 8, !tbaa !41
  %17 = load i64, i64* %color1.addr, align 8, !tbaa !41
  %18 = load i32, i32* %px.addr, align 4, !tbaa !28
  %19 = load i32, i32* %py.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gx_strip_bitmap_s* %11, i32 %12, i32 %13, i32 %14, i32 %15, i64 %16, i64 %17, i32 %18, i32 %19) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %21 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %22, i32 0, i32 47
  %23 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %24 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %24, 8
  %25 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %25, 8
  %26 = load i32, i32* %x.addr, align 4, !tbaa !28
  %27 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %26, %27
  %shl2 = shl i32 %add, 8
  %28 = load i32, i32* %y.addr, align 4, !tbaa !28
  %29 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %28, %29
  %shl4 = shl i32 %add3, 8
  call void %21(i8* %23, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %30 = load i32, i32* %code, align 4, !tbaa !28
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #1 {
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
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !28
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !28
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !28
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !104
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %12 = load i32, i32* %sourcex.addr, align 4, !tbaa !28
  %13 = load i32, i32* %sraster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %16 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %17 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %18 = load i32, i32* %x.addr, align 4, !tbaa !28
  %19 = load i32, i32* %y.addr, align 4, !tbaa !28
  %20 = load i32, i32* %w.addr, align 4, !tbaa !28
  %21 = load i32, i32* %h.addr, align 4, !tbaa !28
  %22 = load i32, i32* %phase_x.addr, align 4, !tbaa !28
  %23 = load i32, i32* %phase_y.addr, align 4, !tbaa !28
  %24 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i64* %15, %struct.gx_strip_bitmap_s* %16, i64* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %25 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %25, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %26 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %27 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %27, i32 0, i32 47
  %28 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %29 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %29, 8
  %30 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %30, 8
  %31 = load i32, i32* %x.addr, align 4, !tbaa !28
  %32 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %31, %32
  %shl2 = shl i32 %add, 8
  %33 = load i32, i32* %y.addr, align 4, !tbaa !28
  %34 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %33, %34
  %shl4 = shl i32 %add3, 8
  call void %26(i8* %28, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %35 = load i32, i32* %code, align 4, !tbaa !28
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #1 {
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
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %begin_typed_image = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, align 8
  %wanted = alloca [65 x i8], align 16
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %5 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @bbox_image_begin(%struct.gs_imager_state_s* %2, %struct.gs_matrix_s* %3, %struct.gs_image_common_s* %4, %struct.gs_int_rect_s* %5, %struct.gx_clip_path_s* %6, %struct.gs_memory_s* %7, %struct.bbox_image_enum_s** %pbe) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %8 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

if.end:                                           ; preds = %entry
  %10 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %12, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %14, i32 0, i32 43
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %15, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %16 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast [65 x i8]* %wanted to i8*
  call void @llvm.lifetime.start(i64 65, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %18, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %19, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !1
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %begin_typed_image3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 37
  %21 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image3, align 8, !tbaa !105
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %21, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %22 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %26 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %27 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %31 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %31, i32 0, i32 11
  %call5 = call i32 %22(%struct.gx_device_s* %23, %struct.gs_imager_state_s* %24, %struct.gs_matrix_s* %25, %struct.gs_image_common_s* %26, %struct.gs_int_rect_s* %27, %struct.gx_device_color_s* %28, %struct.gx_clip_path_s* %29, %struct.gs_memory_s* %30, %struct.gx_image_enum_common_s** %target_info) #5
  store i32 %call5, i32* %code, align 4, !tbaa !28
  %32 = load i32, i32* %code, align 4, !tbaa !28
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %33 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %34 = bitcast %struct.bbox_image_enum_s* %33 to %struct.gx_image_enum_common_s*
  %call7 = call i32 @bbox_image_end_image(%struct.gx_image_enum_common_s* %34, i32 0) #5
  %35 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %36 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %37 = bitcast %struct.bbox_image_enum_s* %36 to %struct.gx_image_enum_common_s*
  %38 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_image_common_s* %38 to %struct.gs_data_image_s*
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call9 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %37, %struct.gs_data_image_s* %39, %struct.gx_image_enum_procs_s* @bbox_image_enum_procs, %struct.gx_device_s* %40, i32 0, i32 0) #5
  store i32 %call9, i32* %code, align 4, !tbaa !28
  %41 = load i32, i32* %code, align 4, !tbaa !28
  %cmp10 = icmp slt i32 %41, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %42 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %43 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  call void @bbox_image_copy_target_info(%struct.bbox_image_enum_s* %43) #5
  %44 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info13 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %44, i32 0, i32 11
  %45 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info13, align 8, !tbaa !106
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %wanted, i32 0, i32 0
  %call14 = call i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s* %45, i8* %arraydecay) #5
  %46 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %params_are_const = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %46, i32 0, i32 12
  store i32 %call14, i32* %params_are_const, align 4, !tbaa !108
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.6
  %47 = bitcast [65 x i8]* %wanted to i8*
  call void @llvm.lifetime.end(i64 65, i8* %47) #2
  %48 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %51 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %52 = bitcast %struct.bbox_image_enum_s* %51 to %struct.gx_image_enum_common_s*
  %53 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %52, %struct.gx_image_enum_common_s** %53, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

cleanup.18:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cindev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cindev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %temp_cdev = alloca %struct.gx_device_s*, align 8
  %bbcdev = alloca %struct.gx_device_bbox_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cindev, %struct.gx_device_s** %cindev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %target, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %7, %struct.gx_device_s** %8, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

if.end:                                           ; preds = %entry
  %9 = bitcast %struct.gx_device_s** %temp_cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct.gx_device_bbox_s** %bbcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 40
  %13 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !109
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %15 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %cindev.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.gx_device_s* %14, %struct.gx_device_s** %temp_cdev, %struct.gs_composite_s* %15, %struct.gs_imager_state_s* %16, %struct.gs_memory_s* %17, %struct.gx_device_s* %18) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %19 = load i32, i32* %code, align 4, !tbaa !28
  %cmp2 = icmp slt i32 %19, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_cdev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_device_s* %20, %21
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %22, %struct.gx_device_s** %23, align 8, !tbaa !1
  %24 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 9
  %26 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !110
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call7 = call i8* %26(%struct.gs_memory_s* %27, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_bbox to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #5
  %28 = bitcast i8* %call7 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %28, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %29 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gx_device_bbox_s* %29, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_cdev, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 4
  %31 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !111
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_cdev, align 8, !tbaa !1
  %call11 = call i32 %31(%struct.gx_device_s* %32) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.5
  %33 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  call void @gx_device_bbox_init(%struct.gx_device_bbox_s* %33, %struct.gx_device_s* %34, %struct.gs_memory_s* %35) #5
  %36 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_bbox_s* %36 to %struct.gx_device_forward_s*
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %temp_cdev, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %37, %struct.gx_device_s* %38) #5
  %39 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %39, i32 0, i32 46
  %40 = bitcast %struct.gx_device_bbox_procs_s* %box_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%struct.gx_device_bbox_procs_s* @box_procs_forward to i8*), i64 32, i32 8, i1 false), !tbaa.struct !22
  %41 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_bbox_s* %41 to i8*
  %43 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %43, i32 0, i32 47
  store i8* %42, i8** %box_proc_data, align 8, !tbaa !23
  %44 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbcdev, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_bbox_s* %44 to %struct.gx_device_s*
  %46 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %45, %struct.gx_device_s** %46, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.9, %if.then.4
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_bbox_s** %bbcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_s** %temp_cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  br label %cleanup.15

cleanup.15:                                       ; preds = %cleanup, %if.then
  %50 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_text_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gs_text_enum_s** %ppenum) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %ppenum.addr = alloca %struct.gs_text_enum_s**, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppenum, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %12 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_text_begin(%struct.gx_device_s* %4, %struct.gs_imager_state_s* %5, %struct.gs_text_params_s* %6, %struct.gs_font_s* %7, %struct.gx_path_s* %8, %struct.gx_device_color_s* %9, %struct.gx_clip_path_s* %10, %struct.gs_memory_s* %11, %struct.gs_text_enum_s** %12) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %13, i32 0, i32 43
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  %cmp = icmp ne %struct.gx_device_s* %14, null
  br i1 %cmp, label %if.then, label %if.end.55

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %15 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %16 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %15, align 8, !tbaa !1
  %imaging_dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %16, i32 0, i32 2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !112
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_s* %17, %18
  br i1 %cmp1, label %if.then.2, label %if.end.52

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %19, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %21 = load i64, i64* %ref_count, align 8, !tbaa !118
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !118
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  br label %if.end

if.end:                                           ; preds = %do.end.8, %do.body.3
  br label %do.cond.9

do.cond.9:                                        ; preds = %if.end
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %22 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %22, align 8, !tbaa !1
  %imaging_dev12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 2
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev12, align 8, !tbaa !112
  %tobool13 = icmp ne %struct.gx_device_s* %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.48

if.then.14:                                       ; preds = %do.body.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %25 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %25, align 8, !tbaa !1
  %imaging_dev19 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev19, align 8, !tbaa !112
  %rc20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 7
  %ref_count21 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 0
  %28 = load i64, i64* %ref_count21, align 8, !tbaa !118
  %add = add nsw i64 %28, -1
  store i64 %add, i64* %ref_count21, align 8, !tbaa !118
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.18
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %29 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %29, align 8, !tbaa !1
  %imaging_dev24 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 2
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev24, align 8, !tbaa !112
  %rc25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 7
  %ref_count26 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc25, i32 0, i32 0
  %32 = load i64, i64* %ref_count26, align 8, !tbaa !118
  %tobool27 = icmp ne i64 %32, 0
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %do.end.23
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %33 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %34 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %33, align 8, !tbaa !1
  %imaging_dev33 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %34, i32 0, i32 2
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev33, align 8, !tbaa !112
  %rc34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !119
  %37 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %38 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %37, align 8, !tbaa !1
  %imaging_dev35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %38, i32 0, i32 2
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev35, align 8, !tbaa !112
  %rc36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 7
  %memory37 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc36, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !120
  %41 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %42 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %41, align 8, !tbaa !1
  %imaging_dev38 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %42, i32 0, i32 2
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev38, align 8, !tbaa !112
  %44 = bitcast %struct.gx_device_s* %43 to i8*
  call void %36(%struct.gs_memory_s* %40, i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.end.32
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %if.end.47

if.else:                                          ; preds = %do.end.23
  br label %do.body.44

do.body.44:                                       ; preds = %if.else
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body.11
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %47 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %46, align 8, !tbaa !1
  %imaging_dev51 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %47, i32 0, i32 2
  store %struct.gx_device_s* %45, %struct.gx_device_s** %imaging_dev51, align 8, !tbaa !112
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.50, %do.body
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %entry
  %48 = load i32, i32* %code, align 4, !tbaa !28
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %6, i32 0, i32 46
  %init_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 0
  %7 = load i32 (i8*)*, i32 (i8*)** %init_box, align 8, !tbaa !24
  %8 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %8, i32 0, i32 47
  %9 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %call = call i32 %7(i8* %9) #5
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 61
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !121
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 %12(%struct.gx_device_s* %13, %struct.gs_imager_state_s* %14, %struct.gx_device_color_s* %15) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #1 {
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
  %planar_height.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !28
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !28
  store i64 %id, i64* %id.addr, align 8, !tbaa !41
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !28
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !28
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !28
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 69
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !122
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %12 = load i32, i32* %sourcex.addr, align 4, !tbaa !28
  %13 = load i32, i32* %sraster.addr, align 4, !tbaa !28
  %14 = load i64, i64* %id.addr, align 8, !tbaa !41
  %15 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %16 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %17 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %18 = load i32, i32* %x.addr, align 4, !tbaa !28
  %19 = load i32, i32* %y.addr, align 4, !tbaa !28
  %20 = load i32, i32* %w.addr, align 4, !tbaa !28
  %21 = load i32, i32* %h.addr, align 4, !tbaa !28
  %22 = load i32, i32* %phase_x.addr, align 4, !tbaa !28
  %23 = load i32, i32* %phase_y.addr, align 4, !tbaa !28
  %24 = load i32, i32* %lop.addr, align 4, !tbaa !28
  %25 = load i32, i32* %planar_height.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i64* %15, %struct.gx_strip_bitmap_s* %16, i64* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %26 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %26, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %27 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %28 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %28, i32 0, i32 47
  %29 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %30 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %30, 8
  %31 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %31, 8
  %32 = load i32, i32* %x.addr, align 4, !tbaa !28
  %33 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %32, %33
  %shl2 = shl i32 %add, 8
  %34 = load i32, i32* %y.addr, align 4, !tbaa !28
  %35 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %34, %35
  %shl4 = shl i32 %add3, 8
  call void %27(i8* %29, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %36 = load i32, i32* %code, align 4, !tbaa !28
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor0.addr = alloca %struct.gx_device_color_s*, align 8
  %pdcolor1.addr = alloca %struct.gx_device_color_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !28
  store i32 %py, i32* %py.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 70
  %9 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !123
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %12 = load i32, i32* %x.addr, align 4, !tbaa !28
  %13 = load i32, i32* %y.addr, align 4, !tbaa !28
  %14 = load i32, i32* %w.addr, align 4, !tbaa !28
  %15 = load i32, i32* %h.addr, align 4, !tbaa !28
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %18 = load i32, i32* %px.addr, align 4, !tbaa !28
  %19 = load i32, i32* %py.addr, align 4, !tbaa !28
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gx_strip_bitmap_s* %11, i32 %12, i32 %13, i32 %14, i32 %15, %struct.gx_device_color_s* %16, %struct.gx_device_color_s* %17, i32 %18, i32 %19) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %21 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %22, i32 0, i32 47
  %23 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %24 = load i32, i32* %x.addr, align 4, !tbaa !28
  %shl = shl i32 %24, 8
  %25 = load i32, i32* %y.addr, align 4, !tbaa !28
  %shl1 = shl i32 %25, 8
  %26 = load i32, i32* %x.addr, align 4, !tbaa !28
  %27 = load i32, i32* %w.addr, align 4, !tbaa !28
  %add = add nsw i32 %26, %27
  %shl2 = shl i32 %add, 8
  %28 = load i32, i32* %y.addr, align 4, !tbaa !28
  %29 = load i32, i32* %h.addr, align 4, !tbaa !28
  %add3 = add nsw i32 %28, %29
  %shl4 = shl i32 %add3, 8
  call void %21(i8* %23, i32 %shl, i32 %shl1, i32 %shl2, i32 %shl4) #5
  %30 = load i32, i32* %code, align 4, !tbaa !28
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @bbox_default_init_box(i8* %pdata) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %pr = alloca %struct.gs_fixed_rect_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_rect_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 49
  store %struct.gs_fixed_rect_s* %bbox, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 2147483647, i32* %y, align 4, !tbaa !52
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 2147483647, i32* %x, align 4, !tbaa !49
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i32 -2147483648, i32* %y2, align 4, !tbaa !54
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %8, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 0
  store i32 -2147483648, i32* %x4, align 4, !tbaa !53
  %9 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %9, i32 0, i32 51
  %10 = load i64, i64* %white, align 8, !tbaa !124
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %11, i32 0, i32 52
  %12 = load i64, i64* %transparent, align 8, !tbaa !43
  %cmp = icmp ne i64 %10, %12
  %conv = zext i1 %cmp to i32
  %13 = bitcast %struct.gs_fixed_rect_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @bbox_default_get_box(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 49
  %5 = bitcast %struct.gs_fixed_rect_s* %3 to i8*
  %6 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 4, i1 false), !tbaa.struct !47
  %7 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @bbox_default_add_rect(i8* %pdata, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %pr = alloca %struct.gs_fixed_rect_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !28
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !28
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !28
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_rect_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 49
  store %struct.gs_fixed_rect_s* %bbox, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %5 = load i32, i32* %x0.addr, align 4, !tbaa !28
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !49
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !28
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %9, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %8, i32* %x2, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %y0.addr, align 4, !tbaa !28
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %12 = load i32, i32* %y, align 4, !tbaa !52
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %y0.addr, align 4, !tbaa !28
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  store i32 %13, i32* %y7, align 4, !tbaa !52
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i32, i32* %x1.addr, align 4, !tbaa !28
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %17 = load i32, i32* %x9, align 4, !tbaa !53
  %cmp10 = icmp sgt i32 %15, %17
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %18 = load i32, i32* %x1.addr, align 4, !tbaa !28
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 0
  store i32 %18, i32* %x13, align 4, !tbaa !53
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %20 = load i32, i32* %y1.addr, align 4, !tbaa !28
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q15, i32 0, i32 1
  %22 = load i32, i32* %y16, align 4, !tbaa !54
  %cmp17 = icmp sgt i32 %20, %22
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.14
  %23 = load i32, i32* %y1.addr, align 4, !tbaa !28
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr, align 8, !tbaa !1
  %q19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q19, i32 0, i32 1
  store i32 %23, i32* %y20, align 4, !tbaa !54
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.14
  %25 = bitcast %struct.gs_fixed_rect_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bbox_default_in_rect(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !54
  %5 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %5, i32 0, i32 49
  %q1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1, i32 0, i32 1
  %6 = load i32, i32* %y2, align 4, !tbaa !125
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !53
  %9 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox4 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %9, i32 0, i32 49
  %q5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox4, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q5, i32 0, i32 0
  %10 = load i32, i32* %x6, align 4, !tbaa !126
  %cmp7 = icmp sle i32 %8, %10
  br i1 %cmp7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %12 = load i32, i32* %y9, align 4, !tbaa !52
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox10 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %13, i32 0, i32 49
  %p11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox10, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 1
  %14 = load i32, i32* %y12, align 4, !tbaa !127
  %cmp13 = icmp sge i32 %12, %14
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.8
  %15 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %15, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 0
  %16 = load i32, i32* %x15, align 4, !tbaa !49
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %bbox16 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 49
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 0
  %18 = load i32, i32* %x18, align 4, !tbaa !128
  %cmp19 = icmp sge i32 %16, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.8, %land.lhs.true, %entry
  %19 = phi i1 [ false, %land.lhs.true.8 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %20 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @gx_device_bbox_init(%struct.gx_device_bbox_s* %dev, %struct.gx_device_s* %target, %struct.gs_memory_s* %mem) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_bbox_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_bbox_s* %dev, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_bbox_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %4, %cond.true ], [ %5, %cond.false ]
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_bbox_s* @gs_bbox_device to %struct.gx_device_s*), %struct.gs_memory_s* %cond, i32 1) #5
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gx_device_s* %6, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_bbox_s* %7 to %struct.gx_device_forward_s*
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %8) #5
  %9 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %9, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !129
  %10 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %10, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !130
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %11, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !131
  %12 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %12, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !132
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %13, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !133
  %14 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %14, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !134
  %15 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %15, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !135
  %16 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %16, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !136
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !137
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %18, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !138
  %19 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %19, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 54
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_forward_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !139
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 42
  %include_color_space = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 55
  store i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space, align 8, !tbaa !140
  %21 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %21, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 59
  store i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !141
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %22, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs14, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !142
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 60
  store %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !143
  %24 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_bbox_s* %24 to %struct.gx_device_forward_s*
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %25, %struct.gx_device_s* %26) #5
  br label %if.end

if.else:                                          ; preds = %cond.end
  %27 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_bbox_s* %27 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %28) #5
  %29 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_bbox_s* %29 to %struct.gx_device_forward_s*
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %30) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %31, i32 0, i32 46
  %32 = bitcast %struct.gx_device_bbox_procs_s* %box_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast (%struct.gx_device_bbox_procs_s* @box_procs_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !22
  %33 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_bbox_s* %33 to i8*
  %35 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %35, i32 0, i32 47
  store i8* %34, i8** %box_proc_data, align 8, !tbaa !23
  %36 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  call void @bbox_copy_params(%struct.gx_device_bbox_s* %36, i32 0) #5
  %37 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %free_standing = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %37, i32 0, i32 44
  store i32 0, i32* %free_standing, align 4, !tbaa !5
  ret void
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #0

declare void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s*) #0

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #0

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #0

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #0

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_forward_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_forward_fill_rectangle_hl_color(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_forward_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #0

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #0

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #0

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #0

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal void @bbox_copy_params(%struct.gx_device_bbox_s* %bdev, i32 %remap_colors) #1 {
entry:
  %bdev.addr = alloca %struct.gx_device_bbox_s*, align 8
  %remap_colors.addr = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_bbox_s* %bdev, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  store i32 %remap_colors, i32* %remap_colors.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %1, i32 0, i32 43
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %2, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_bbox_s* %4 to %struct.gx_device_s*
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %5, %struct.gx_device_s* %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %remap_colors.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_bbox_s* %8 to %struct.gx_device_s*
  %call = call i64 @gx_device_black(%struct.gx_device_s* %9) #5
  %10 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %10, i32 0, i32 50
  store i64 %call, i64* %black, align 8, !tbaa !80
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_bbox_s* %11 to %struct.gx_device_s*
  %call2 = call i64 @gx_device_white(%struct.gx_device_s* %12) #5
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %13, i32 0, i32 51
  store i64 %call2, i64* %white, align 8, !tbaa !124
  %14 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white_is_opaque = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %14, i32 0, i32 48
  %15 = load i32, i32* %white_is_opaque, align 4, !tbaa !59
  %tobool3 = icmp ne i32 %15, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %16 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white4 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %16, i32 0, i32 51
  %17 = load i64, i64* %white4, align 8, !tbaa !124
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %17, %cond.false ]
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %18, i32 0, i32 52
  store i64 %cond, i64* %transparent, align 8, !tbaa !43
  br label %if.end.5

if.end.5:                                         ; preds = %cond.end, %if.end
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_bbox_fwd_open_close(%struct.gx_device_bbox_s* %dev, i32 %forward_open_close) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_bbox_s*, align 8
  %forward_open_close.addr = alloca i32, align 4
  store %struct.gx_device_bbox_s* %dev, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  store i32 %forward_open_close, i32* %forward_open_close.addr, align 4, !tbaa !28
  %0 = load i32, i32* %forward_open_close.addr, align 4, !tbaa !28
  %1 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %forward_open_close1 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %1, i32 0, i32 45
  store i32 %0, i32* %forward_open_close1, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_bbox_set_white_opaque(%struct.gx_device_bbox_s* %bdev, i32 %white_is_opaque) #1 {
entry:
  %bdev.addr = alloca %struct.gx_device_bbox_s*, align 8
  %white_is_opaque.addr = alloca i32, align 4
  store %struct.gx_device_bbox_s* %bdev, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  store i32 %white_is_opaque, i32* %white_is_opaque.addr, align 4, !tbaa !28
  %0 = load i32, i32* %white_is_opaque.addr, align 4, !tbaa !28
  %1 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white_is_opaque1 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %1, i32 0, i32 48
  store i32 %0, i32* %white_is_opaque1, align 4, !tbaa !59
  %2 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white_is_opaque2 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %2, i32 0, i32 48
  %3 = load i32, i32* %white_is_opaque2, align 4, !tbaa !59
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %4, i32 0, i32 51
  %5 = load i64, i64* %white, align 8, !tbaa !124
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %5, %cond.false ]
  %6 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev.addr, align 8, !tbaa !1
  %transparent = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %6, i32 0, i32 52
  store i64 %cond, i64* %transparent, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_bbox_release(%struct.gx_device_bbox_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_bbox_s*, align 8
  store %struct.gx_device_bbox_s* %dev, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_bbox_s* %0 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %1, %struct.gx_device_s* null) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_bbox_bbox(%struct.gx_device_bbox_s* %dev, %struct.gs_rect_s* %pbbox) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_bbox_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %dbox = alloca %struct.gs_rect_s, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_bbox_s* %dev, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %1, i32 0, i32 46
  %get_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 1
  %2 = load void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, %struct.gs_fixed_rect_s*)** %get_box, align 8, !tbaa !48
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 47
  %4 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  call void %2(i8* %4, %struct.gs_fixed_rect_s* %bbox) #5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !49
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !53
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !52
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 1
  %8 = load i32, i32* %y4, align 4, !tbaa !54
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %9, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q6, i32 0, i32 1
  store double 0.000000e+00, double* %y7, align 8, !tbaa !37
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 0
  store double 0.000000e+00, double* %x9, align 8, !tbaa !36
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %11, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p10, i32 0, i32 1
  store double 0.000000e+00, double* %y11, align 8, !tbaa !35
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 0
  store double 0.000000e+00, double* %x13, align 8, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %13 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %13) #2
  %14 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #2
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 0
  %15 = load i32, i32* %x15, align 4, !tbaa !49
  %conv = sitofp i32 %15 to double
  %mul = fmul double %conv, 3.906250e-03
  %p16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p16, i32 0, i32 0
  store double %mul, double* %x17, align 8, !tbaa !31
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %16 = load i32, i32* %y19, align 4, !tbaa !52
  %conv20 = sitofp i32 %16 to double
  %mul21 = fmul double %conv20, 3.906250e-03
  %p22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p22, i32 0, i32 1
  store double %mul21, double* %y23, align 8, !tbaa !35
  %q24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q24, i32 0, i32 0
  %17 = load i32, i32* %x25, align 4, !tbaa !53
  %conv26 = sitofp i32 %17 to double
  %mul27 = fmul double %conv26, 3.906250e-03
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 0
  store double %mul27, double* %x29, align 8, !tbaa !36
  %q30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q30, i32 0, i32 1
  %18 = load i32, i32* %y31, align 4, !tbaa !54
  %conv32 = sitofp i32 %18 to double
  %mul33 = fmul double %conv32, 3.906250e-03
  %q34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q34, i32 0, i32 1
  store double %mul33, double* %y35, align 8, !tbaa !37
  %19 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %dev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_bbox_s* %19 to %struct.gx_device_s*
  call void @gs_deviceinitialmatrix(%struct.gx_device_s* %20, %struct.gs_matrix_s* %mat) #5
  %21 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %call = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %dbox, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %21) #5
  %22 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #2
  %23 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #2
  ret void
}

declare void @gs_deviceinitialmatrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

declare void @gx_device_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #0

declare i64 @gx_device_black(%struct.gx_device_s*) #0

declare i64 @gx_device_white(%struct.gx_device_s*) #0

declare i32 @gs_opendevice(%struct.gx_device_s*) #0

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare i32 @gx_forward_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @edge_x_at_y(%struct.gs_fixed_edge_s* %edge, i32 %y) #1 {
entry:
  %edge.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %y.addr = alloca i32, align 4
  store %struct.gs_fixed_edge_s* %edge, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !28
  %0 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %0, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !99
  %2 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %2, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !97
  %sub = sub nsw i32 %1, %3
  %4 = load i32, i32* %y.addr, align 4, !tbaa !28
  %5 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %start2 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %5, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2, i32 0, i32 1
  %6 = load i32, i32* %y3, align 4, !tbaa !95
  %sub4 = sub nsw i32 %4, %6
  %7 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %end5 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %7, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end5, i32 0, i32 1
  %8 = load i32, i32* %y6, align 4, !tbaa !98
  %9 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %start7 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %9, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start7, i32 0, i32 1
  %10 = load i32, i32* %y8, align 4, !tbaa !95
  %sub9 = sub nsw i32 %8, %10
  %call = call i32 @fixed_mult_quo(i32 %sub, i32 %sub4, i32 %sub9) #5
  %11 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %edge.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %11, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %12 = load i32, i32* %x11, align 4, !tbaa !97
  %add = add nsw i32 %call, %12
  ret i32 %add
}

declare i32 @fixed_mult_quo(i32, i32, i32) #0

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #0

declare i32 @gx_path_is_void(%struct.gx_path_s*) #0

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #0

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #0

declare i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_fixed_point_s*) #0

declare %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s*, %struct.gs_memory_s*, i8*) #0

declare i32 @gx_imager_stroke_add(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #0

declare void @gx_path_free(%struct.gx_path_s*, i8*) #0

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_begin(%struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.bbox_image_enum_s** %ppbe) #1 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %ppbe.addr = alloca %struct.bbox_image_enum_s**, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  %size = alloca %struct.gs_int_point_s, align 4
  %code20 = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.bbox_image_enum_s** %ppbe, %struct.bbox_image_enum_s*** %ppbe.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_matrix_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 5
  %5 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %5, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %6, i32 0, i32 1
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mat) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %7, %struct.gs_matrix_s* %mat) #5
  store i32 %call2, i32* %code, align 4, !tbaa !28
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.5:                                         ; preds = %lor.lhs.false
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %10 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !144
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call6 = call i8* %10(%struct.gs_memory_s* %11, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_bbox_image_enum to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %12 = bitcast i8* %call6 to %struct.bbox_image_enum_s*
  store %struct.bbox_image_enum_s* %12, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %13 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.bbox_image_enum_s* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.9:                                         ; preds = %if.end.5
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %15 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %15, i32 0, i32 3
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory10, align 8, !tbaa !145
  %16 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %16, i32 0, i32 9
  %17 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %18 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 4, i1 false), !tbaa.struct !146
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %20 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %pcpath11 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %20, i32 0, i32 10
  store %struct.gx_clip_path_s* %19, %struct.gx_clip_path_s** %pcpath11, align 8, !tbaa !147
  %21 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %21, i32 0, i32 11
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !106
  %22 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %params_are_const = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %22, i32 0, i32 12
  store i32 0, i32* %params_are_const, align 4, !tbaa !108
  %23 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_int_rect_s* %23, null
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %24 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %24, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %25 = load i32, i32* %x, align 4, !tbaa !148
  %26 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %26, i32 0, i32 13
  store i32 %25, i32* %x0, align 4, !tbaa !150
  %27 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %27, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %28 = load i32, i32* %x13, align 4, !tbaa !151
  %29 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %29, i32 0, i32 14
  store i32 %28, i32* %x1, align 4, !tbaa !152
  %30 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %30, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p14, i32 0, i32 1
  %31 = load i32, i32* %y, align 4, !tbaa !153
  %32 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %32, i32 0, i32 15
  store i32 %31, i32* %y15, align 4, !tbaa !154
  %33 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q16 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %33, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q16, i32 0, i32 1
  %34 = load i32, i32* %y17, align 4, !tbaa !155
  %35 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %35, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p18, i32 0, i32 1
  %36 = load i32, i32* %y19, align 4, !tbaa !153
  %sub = sub nsw i32 %34, %36
  %37 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %37, i32 0, i32 16
  store i32 %sub, i32* %height, align 4, !tbaa !156
  br label %if.end.33

if.else:                                          ; preds = %if.end.9
  %38 = bitcast %struct.gs_int_point_s* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = bitcast i32* %code20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %40, i32 0, i32 0
  %41 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !157
  %source_size = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %41, i32 0, i32 2
  %42 = load i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)** %source_size, align 8, !tbaa !159
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %44 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %call21 = call i32 %42(%struct.gs_imager_state_s* %43, %struct.gs_image_common_s* %44, %struct.gs_int_point_s* %size) #5
  store i32 %call21, i32* %code20, align 4, !tbaa !28
  %45 = load i32, i32* %code20, align 4, !tbaa !28
  %cmp22 = icmp slt i32 %45, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %49 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %50 = bitcast %struct.bbox_image_enum_s* %49 to i8*
  call void %47(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %51 = load i32, i32* %code20, align 4, !tbaa !28
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else
  %52 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x026 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %52, i32 0, i32 13
  store i32 0, i32* %x026, align 4, !tbaa !150
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %53 = load i32, i32* %x27, align 4, !tbaa !161
  %54 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x128 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %54, i32 0, i32 14
  store i32 %53, i32* %x128, align 4, !tbaa !152
  %55 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y29 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %55, i32 0, i32 15
  store i32 0, i32* %y29, align 4, !tbaa !154
  %y30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %56 = load i32, i32* %y30, align 4, !tbaa !162
  %57 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %height31 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %57, i32 0, i32 16
  store i32 %56, i32* %height31, align 4, !tbaa !156
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.23
  %58 = bitcast i32* %code20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gs_int_point_s* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %if.then.12
  %60 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %61 = load %struct.bbox_image_enum_s**, %struct.bbox_image_enum_s*** %ppbe.addr, align 8, !tbaa !1
  store %struct.bbox_image_enum_s* %60, %struct.bbox_image_enum_s** %61, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %cleanup, %if.then.8, %if.then.4
  %62 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %63) #2
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !28
  %0 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.bbox_image_enum_s*
  store %struct.bbox_image_enum_s* %2, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !28
  %4 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %4, i32 0, i32 11
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !106
  %tobool = icmp ne %struct.gx_image_enum_common_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info1 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %6, i32 0, i32 11
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info1, align 8, !tbaa !106
  %8 = load i32, i32* %draw_last.addr, align 4, !tbaa !28
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #5
  %9 = load i32, i32* %code, align 4, !tbaa !28
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i32 %9
}

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal void @bbox_image_copy_target_info(%struct.bbox_image_enum_s* %pbe) #1 {
entry:
  %pbe.addr = alloca %struct.bbox_image_enum_s*, align 8
  %target_info = alloca %struct.gx_image_enum_common_s*, align 8
  store %struct.bbox_image_enum_s* %pbe, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_common_s** %target_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %target_info1 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %1, i32 0, i32 11
  %2 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info1, align 8, !tbaa !106
  store %struct.gx_image_enum_common_s* %2, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %3 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %3, i32 0, i32 6
  %4 = load i32, i32* %num_planes, align 4, !tbaa !163
  %5 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %num_planes2 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %5, i32 0, i32 6
  store i32 %4, i32* %num_planes2, align 4, !tbaa !165
  %6 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i32 0
  %7 = bitcast i32* %arraydecay to i8*
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %plane_depths3 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %8, i32 0, i32 7
  %arraydecay4 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths3, i32 0, i32 0
  %9 = bitcast i32* %arraydecay4 to i8*
  %10 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %num_planes5 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %10, i32 0, i32 6
  %11 = load i32, i32* %num_planes5, align 4, !tbaa !165
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memcpy(i8* %7, i8* %9, i64 %mul) #7
  %12 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %12, i32 0, i32 8
  %arraydecay6 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i32 0
  %13 = bitcast i32* %arraydecay6 to i8*
  %14 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %plane_widths7 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %14, i32 0, i32 8
  %arraydecay8 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths7, i32 0, i32 0
  %15 = bitcast i32* %arraydecay8 to i8*
  %16 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe.addr, align 8, !tbaa !1
  %num_planes9 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %16, i32 0, i32 6
  %17 = load i32, i32* %num_planes9, align 4, !tbaa !165
  %conv10 = sext i32 %17 to i64
  %mul11 = mul i64 %conv10, 4
  %call12 = call i8* @memcpy(i8* %13, i8* %15, i64 %mul11) #7
  %18 = bitcast %struct.gx_image_enum_common_s** %target_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret void
}

declare i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s*, i8*) #0

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #0

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %sbox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  %corners = alloca [4 x %struct.gs_point_s], align 16
  %ibox = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %x059 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !28
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !166
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %5, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %7, i32 0, i32 43
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !26
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %9 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_image_enum_common_s* %10 to %struct.bbox_image_enum_s*
  store %struct.bbox_image_enum_s* %11, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %12 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %pcpath2 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %13, i32 0, i32 10
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath2, align 8, !tbaa !147
  store %struct.gx_clip_path_s* %14, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %15 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #2
  %16 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %16) #2
  %17 = bitcast [4 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.start(i64 64, i8* %17) #2
  %18 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #2
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %20, i32 0, i32 11
  %21 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !106
  %22 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %23 = load i32, i32* %height.addr, align 4, !tbaa !28
  %24 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %21, %struct.gx_image_plane_s* %22, i32 %23, i32* %24) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %25 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp ne i32 %25, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %26 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %params_are_const = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %26, i32 0, i32 12
  %27 = load i32, i32* %params_are_const, align 4, !tbaa !108
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %28 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  call void @bbox_image_copy_target_info(%struct.bbox_image_enum_s* %28) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %29 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %29, i32 0, i32 13
  %30 = load i32, i32* %x0, align 4, !tbaa !150
  %conv = sitofp i32 %30 to double
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !31
  %31 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %31, i32 0, i32 15
  %32 = load i32, i32* %y, align 4, !tbaa !154
  %conv3 = sitofp i32 %32 to double
  %p4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p4, i32 0, i32 1
  store double %conv3, double* %y5, align 8, !tbaa !35
  %33 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %33, i32 0, i32 14
  %34 = load i32, i32* %x1, align 4, !tbaa !152
  %conv6 = sitofp i32 %34 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv6, double* %x7, align 8, !tbaa !36
  %35 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y8 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %35, i32 0, i32 15
  %36 = load i32, i32* %y8, align 4, !tbaa !154
  %37 = load i32, i32* %height.addr, align 4, !tbaa !28
  %add = add nsw i32 %36, %37
  %38 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %38, i32 0, i32 16
  %39 = load i32, i32* %height9, align 4, !tbaa !156
  %cmp10 = icmp slt i32 %add, %39
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %40 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y12 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %40, i32 0, i32 15
  %41 = load i32, i32* %y12, align 4, !tbaa !154
  %42 = load i32, i32* %height.addr, align 4, !tbaa !28
  %add13 = add nsw i32 %41, %42
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %43 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %height14 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %43, i32 0, i32 16
  %44 = load i32, i32* %height14, align 4, !tbaa !156
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add13, %cond.true ], [ %44, %cond.false ]
  %45 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %45, i32 0, i32 15
  store i32 %cond, i32* %y15, align 4, !tbaa !154
  %conv16 = sitofp i32 %cond to double
  %q17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q17, i32 0, i32 1
  store double %conv16, double* %y18, align 8, !tbaa !37
  %46 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %46, i32 0, i32 9
  %arraydecay = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i32 0
  %call19 = call i32 @gs_bbox_transform_only(%struct.gs_rect_s* %sbox, %struct.gs_matrix_s* %matrix, %struct.gs_point_s* %arraydecay) #5
  %arraydecay20 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i32 0
  %call21 = call i32 @gs_points_bbox(%struct.gs_point_s* %arraydecay20, %struct.gs_rect_s* %dbox) #5
  %p22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p22, i32 0, i32 0
  %47 = load double, double* %x23, align 8, !tbaa !31
  %mul = fmul double %47, 2.560000e+02
  %conv24 = fptosi double %mul to i32
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 0
  store i32 %conv24, i32* %x26, align 4, !tbaa !49
  %p27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p27, i32 0, i32 1
  %48 = load double, double* %y28, align 8, !tbaa !35
  %mul29 = fmul double %48, 2.560000e+02
  %conv30 = fptosi double %mul29 to i32
  %p31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 1
  store i32 %conv30, i32* %y32, align 4, !tbaa !52
  %q33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q33, i32 0, i32 0
  %49 = load double, double* %x34, align 8, !tbaa !36
  %mul35 = fmul double %49, 2.560000e+02
  %conv36 = fptosi double %mul35 to i32
  %q37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q37, i32 0, i32 0
  store i32 %conv36, i32* %x38, align 4, !tbaa !53
  %q39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q39, i32 0, i32 1
  %50 = load double, double* %y40, align 8, !tbaa !37
  %mul41 = fmul double %50, 2.560000e+02
  %conv42 = fptosi double %mul41 to i32
  %q43 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q43, i32 0, i32 1
  store i32 %conv42, i32* %y44, align 4, !tbaa !54
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %cmp45 = icmp ne %struct.gx_clip_path_s* %51, null
  br i1 %cmp45, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %cond.end
  %52 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %p48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p48, i32 0, i32 0
  %53 = load i32, i32* %x49, align 4, !tbaa !49
  %p50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p50, i32 0, i32 1
  %54 = load i32, i32* %y51, align 4, !tbaa !52
  %q52 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q52, i32 0, i32 0
  %55 = load i32, i32* %x53, align 4, !tbaa !53
  %q54 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q54, i32 0, i32 1
  %56 = load i32, i32* %y55, align 4, !tbaa !54
  %call56 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %52, i32 %53, i32 %54, i32 %55, i32 %56) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.47
  %57 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %57) #2
  %58 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %58) #2
  %59 = bitcast i32* %x059 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %arrayidx = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %60 = load double, double* %x60, align 8, !tbaa !167
  %mul61 = fmul double %60, 2.560000e+02
  %conv62 = fptosi double %mul61 to i32
  store i32 %conv62, i32* %x059, align 4, !tbaa !28
  %61 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %arrayidx63 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %y64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx63, i32 0, i32 1
  %62 = load double, double* %y64, align 8, !tbaa !168
  %mul65 = fmul double %62, 2.560000e+02
  %conv66 = fptosi double %mul65 to i32
  store i32 %conv66, i32* %y0, align 4, !tbaa !28
  %63 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %arrayidx67 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 2
  %x68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx67, i32 0, i32 0
  %64 = load double, double* %x68, align 8, !tbaa !167
  %mul69 = fmul double %64, 2.560000e+02
  %conv70 = fptosi double %mul69 to i32
  %65 = load i32, i32* %x059, align 4, !tbaa !28
  %sub = sub nsw i32 %conv70, %65
  store i32 %sub, i32* %bx2, align 4, !tbaa !28
  %66 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %arrayidx71 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 2
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx71, i32 0, i32 1
  %67 = load double, double* %y72, align 8, !tbaa !168
  %mul73 = fmul double %67, 2.560000e+02
  %conv74 = fptosi double %mul73 to i32
  %68 = load i32, i32* %y0, align 4, !tbaa !28
  %sub75 = sub nsw i32 %conv74, %68
  store i32 %sub75, i32* %by2, align 4, !tbaa !28
  %69 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %69, %struct.gx_device_s* %70) #5
  %71 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %71, i32 0, i32 50
  %72 = load i64, i64* %black, align 8, !tbaa !80
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %72, i64* %pure, align 8, !tbaa !41
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !72
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !81
  %73 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target76 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %73, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target76, align 8, !tbaa !26
  %74 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %75 = load i32, i32* %x059, align 4, !tbaa !28
  %76 = load i32, i32* %y0, align 4, !tbaa !28
  %arrayidx77 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 1
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx77, i32 0, i32 0
  %77 = load double, double* %x78, align 8, !tbaa !167
  %mul79 = fmul double %77, 2.560000e+02
  %conv80 = fptosi double %mul79 to i32
  %78 = load i32, i32* %x059, align 4, !tbaa !28
  %sub81 = sub nsw i32 %conv80, %78
  %arrayidx82 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 1
  %y83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx82, i32 0, i32 1
  %79 = load double, double* %y83, align 8, !tbaa !168
  %mul84 = fmul double %79, 2.560000e+02
  %conv85 = fptosi double %mul84 to i32
  %80 = load i32, i32* %y0, align 4, !tbaa !28
  %sub86 = sub nsw i32 %conv85, %80
  %81 = load i32, i32* %bx2, align 4, !tbaa !28
  %82 = load i32, i32* %by2, align 4, !tbaa !28
  %call87 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %74, i32 %75, i32 %76, i32 %sub81, i32 %sub86, i32 %81, i32 %82, %struct.gx_device_color_s* %devc, i32 252) #5
  %83 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %84 = load i32, i32* %x059, align 4, !tbaa !28
  %85 = load i32, i32* %y0, align 4, !tbaa !28
  %arrayidx88 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 3
  %x89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx88, i32 0, i32 0
  %86 = load double, double* %x89, align 8, !tbaa !167
  %mul90 = fmul double %86, 2.560000e+02
  %conv91 = fptosi double %mul90 to i32
  %87 = load i32, i32* %x059, align 4, !tbaa !28
  %sub92 = sub nsw i32 %conv91, %87
  %arrayidx93 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 3
  %y94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx93, i32 0, i32 1
  %88 = load double, double* %y94, align 8, !tbaa !168
  %mul95 = fmul double %88, 2.560000e+02
  %conv96 = fptosi double %mul95 to i32
  %89 = load i32, i32* %y0, align 4, !tbaa !28
  %sub97 = sub nsw i32 %conv96, %89
  %90 = load i32, i32* %bx2, align 4, !tbaa !28
  %91 = load i32, i32* %by2, align 4, !tbaa !28
  %call98 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %83, i32 %84, i32 %85, i32 %sub92, i32 %sub97, i32 %90, i32 %91, %struct.gx_device_color_s* %devc, i32 252) #5
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %93 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %target99 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %93, i32 0, i32 43
  store %struct.gx_device_s* %92, %struct.gx_device_s** %target99, align 8, !tbaa !26
  %94 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %x059 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %98) #2
  %99 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %99) #2
  br label %if.end.108

if.else:                                          ; preds = %land.lhs.true.47, %cond.end
  %100 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %100, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %101 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %102 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %102, i32 0, i32 47
  %103 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %p100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p100, i32 0, i32 0
  %104 = load i32, i32* %x101, align 4, !tbaa !49
  %p102 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p102, i32 0, i32 1
  %105 = load i32, i32* %y103, align 4, !tbaa !52
  %q104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q104, i32 0, i32 0
  %106 = load i32, i32* %x105, align 4, !tbaa !53
  %q106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q106, i32 0, i32 1
  %107 = load i32, i32* %y107, align 4, !tbaa !54
  call void %101(i8* %103, i32 %104, i32 %105, i32 %106, i32 %107) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.58
  %108 = load i32, i32* %code, align 4, !tbaa !28
  %109 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #2
  %111 = bitcast [4 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.end(i64 64, i8* %111) #2
  %112 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %112) #2
  %113 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %113) #2
  %114 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_flush(%struct.gx_image_enum_common_s* %info) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  %target_info = alloca %struct.gx_image_enum_common_s*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.bbox_image_enum_s*
  store %struct.bbox_image_enum_s* %2, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %3 = bitcast %struct.gx_image_enum_common_s** %target_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info1 = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %4, i32 0, i32 11
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info1, align 8, !tbaa !106
  store %struct.gx_image_enum_common_s* %5, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_image_enum_common_s* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !1
  %call = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %7) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %8 = bitcast %struct.gx_image_enum_common_s** %target_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_planes_wanted(%struct.gx_image_enum_common_s* %info, i8* %wanted) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %wanted.addr = alloca i8*, align 8
  %pbe = alloca %struct.bbox_image_enum_s*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8* %wanted, i8** %wanted.addr, align 8, !tbaa !1
  %0 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.bbox_image_enum_s*
  store %struct.bbox_image_enum_s* %2, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %3 = load %struct.bbox_image_enum_s*, %struct.bbox_image_enum_s** %pbe, align 8, !tbaa !1
  %target_info = getelementptr inbounds %struct.bbox_image_enum_s, %struct.bbox_image_enum_s* %3, i32 0, i32 11
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %target_info, align 8, !tbaa !106
  %5 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s* %4, i8* %5) #5
  %6 = bitcast %struct.bbox_image_enum_s** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 %call
}

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #0

declare i32 @gs_bbox_transform_only(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

declare i32 @gs_points_bbox(%struct.gs_point_s*, %struct.gs_rect_s*) #0

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #0

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_image_flush(%struct.gx_image_enum_common_s*) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @bbox_forward_init_box(i8* %pdata) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 46
  %init_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 0
  %4 = load i32 (i8*)*, i32 (i8*)** %init_box, align 8, !tbaa !24
  %5 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %5, i32 0, i32 47
  %6 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %call = call i32 %4(i8* %6) #5
  %7 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @bbox_forward_get_box(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 46
  %get_box = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 1
  %4 = load void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, %struct.gs_fixed_rect_s*)** %get_box, align 8, !tbaa !48
  %5 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %5, i32 0, i32 47
  %6 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void %4(i8* %6, %struct.gs_fixed_rect_s* %7) #5
  %8 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bbox_forward_add_rect(i8* %pdata, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !28
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !28
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !28
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 46
  %add_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 2
  %4 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %add_rect, align 8, !tbaa !44
  %5 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %5, i32 0, i32 47
  %6 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %7 = load i32, i32* %x0.addr, align 4, !tbaa !28
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !28
  %9 = load i32, i32* %x1.addr, align 4, !tbaa !28
  %10 = load i32, i32* %y1.addr, align 4, !tbaa !28
  call void %4(i8* %6, i32 %7, i32 %8, i32 %9, i32 %10) #5
  %11 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_forward_in_rect(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %bdev = alloca %struct.gx_device_bbox_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %2, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %3, i32 0, i32 46
  %in_rect = getelementptr inbounds %struct.gx_device_bbox_procs_s, %struct.gx_device_bbox_procs_s* %box_procs, i32 0, i32 3
  %4 = load i32 (i8*, %struct.gs_fixed_rect_s*)*, i32 (i8*, %struct.gs_fixed_rect_s*)** %in_rect, align 8, !tbaa !79
  %5 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bdev, align 8, !tbaa !1
  %box_proc_data = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %5, i32 0, i32 47
  %6 = load i8*, i8** %box_proc_data, align 8, !tbaa !23
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %call = call i32 %4(i8* %6, %struct.gs_fixed_rect_s* %7) #5
  %8 = bitcast %struct.gx_device_bbox_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 %call
}

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 1736}
!6 = !{!"gx_device_bbox_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !7, i64 1736, !7, i64 1740, !19, i64 1744, !2, i64 1776, !7, i64 1784, !20, i64 1788, !9, i64 1808, !9, i64 1816, !9, i64 1824}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!"gx_device_bbox_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!20 = !{!"gs_fixed_rect_s", !21, i64 0, !21, i64 8}
!21 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!22 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!23 = !{!6, !2, i64 1776}
!24 = !{!6, !2, i64 1744}
!25 = !{!19, !2, i64 0}
!26 = !{!6, !2, i64 1728}
!27 = !{!6, !7, i64 1740}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !2, i64 24}
!30 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!31 = !{!32, !34, i64 0}
!32 = !{!"gs_rect_s", !33, i64 0, !33, i64 16}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !3, i64 0}
!35 = !{!32, !34, i64 8}
!36 = !{!32, !34, i64 16}
!37 = !{!32, !34, i64 24}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_memory_s", !2, i64 0, !40, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!40 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!41 = !{!9, !9, i64 0}
!42 = !{!30, !2, i64 1200}
!43 = !{!6, !9, i64 1824}
!44 = !{!6, !2, i64 1760}
!45 = !{!30, !2, i64 1216}
!46 = !{!30, !2, i64 1224}
!47 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28}
!48 = !{!6, !2, i64 1752}
!49 = !{!20, !7, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !3, i64 0}
!52 = !{!20, !7, i64 4}
!53 = !{!20, !7, i64 8}
!54 = !{!20, !7, i64 12}
!55 = !{!56, !2, i64 0}
!56 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!57 = !{!56, !7, i64 8}
!58 = !{!56, !7, i64 12}
!59 = !{!6, !7, i64 1784}
!60 = !{!61, !2, i64 0}
!61 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!62 = !{!63, !2, i64 56}
!63 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!64 = !{!6, !7, i64 84}
!65 = !{!30, !2, i64 1312}
!66 = !{!67, !2, i64 1336}
!67 = !{!"gx_device_null_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728}
!68 = !{!30, !2, i64 1336}
!69 = !{i64 0, i64 4, !28, i64 4, i64 4, !28}
!70 = !{!21, !7, i64 0}
!71 = !{!21, !7, i64 4}
!72 = !{!73, !2, i64 0}
!73 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !74, i64 352, !7, i64 360, !75, i64 368, !77, i64 632}
!74 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!75 = !{!"gs_client_color_s", !2, i64 0, !76, i64 8}
!76 = !{!"gs_paint_color_s", !3, i64 0}
!77 = !{!"_mask", !78, i64 0, !9, i64 8, !2, i64 16}
!78 = !{!"mp_", !7, i64 0, !7, i64 4}
!79 = !{!6, !2, i64 1768}
!80 = !{!6, !9, i64 1808}
!81 = !{!73, !7, i64 360}
!82 = !{!30, !2, i64 1344}
!83 = !{!84, !2, i64 8}
!84 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !85, i64 24, !7, i64 128, !88, i64 132, !7, i64 168, !33, i64 176, !33, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !89, i64 224, !89, i64 228, !90, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !51, i64 296, !21, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !51, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !91, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !92, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !92, i64 1336}
!85 = !{!"gx_line_params_s", !51, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !7, i64 36, !86, i64 40, !87, i64 64}
!86 = !{!"gs_matrix_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20}
!87 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !51, i64 12, !7, i64 16, !51, i64 20, !7, i64 24, !7, i64 28, !51, i64 32}
!88 = !{!"gs_matrix_fixed_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!89 = !{!"gs_transparency_source_s", !51, i64 0}
!90 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!91 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!92 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!93 = !{!30, !2, i64 1352}
!94 = !{!30, !2, i64 1360}
!95 = !{!96, !7, i64 4}
!96 = !{!"gs_fixed_edge_s", !21, i64 0, !21, i64 8}
!97 = !{!96, !7, i64 0}
!98 = !{!96, !7, i64 12}
!99 = !{!96, !7, i64 8}
!100 = !{!30, !2, i64 1368}
!101 = !{!30, !2, i64 1376}
!102 = !{!30, !2, i64 1384}
!103 = !{!30, !2, i64 1416}
!104 = !{!30, !2, i64 1424}
!105 = !{!30, !2, i64 1440}
!106 = !{!107, !2, i64 600}
!107 = !{!"bbox_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !3, i64 48, !3, i64 308, !86, i64 568, !2, i64 592, !2, i64 600, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624}
!108 = !{!107, !7, i64 608}
!109 = !{!30, !2, i64 1464}
!110 = !{!39, !2, i64 80}
!111 = !{!30, !2, i64 1176}
!112 = !{!113, !2, i64 96}
!113 = !{!"gs_text_enum_s", !114, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !8, i64 160, !2, i64 184, !2, i64 192, !9, i64 200, !7, i64 208, !115, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !116, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !33, i64 360, !9, i64 376, !7, i64 384, !115, i64 388, !33, i64 400, !117, i64 416}
!114 = !{!"gs_text_params_s", !7, i64 0, !3, i64 8, !7, i64 16, !33, i64 24, !33, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !7, i64 80}
!115 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!116 = !{!"gx_font_stack_s", !7, i64 0, !3, i64 8}
!117 = !{!"gs_text_returned_s", !9, i64 0, !9, i64 8, !33, i64 16}
!118 = !{!30, !9, i64 56}
!119 = !{!30, !2, i64 72}
!120 = !{!30, !2, i64 64}
!121 = !{!30, !2, i64 1632}
!122 = !{!30, !2, i64 1696}
!123 = !{!30, !2, i64 1704}
!124 = !{!6, !9, i64 1816}
!125 = !{!6, !7, i64 1800}
!126 = !{!6, !7, i64 1796}
!127 = !{!6, !7, i64 1792}
!128 = !{!6, !7, i64 1788}
!129 = !{!6, !2, i64 1152}
!130 = !{!6, !2, i64 1184}
!131 = !{!6, !2, i64 1192}
!132 = !{!6, !2, i64 1264}
!133 = !{!6, !2, i64 1288}
!134 = !{!6, !2, i64 1536}
!135 = !{!6, !2, i64 1544}
!136 = !{!6, !2, i64 1552}
!137 = !{!6, !2, i64 1560}
!138 = !{!6, !2, i64 1664}
!139 = !{!6, !2, i64 1576}
!140 = !{!6, !2, i64 1584}
!141 = !{!6, !2, i64 1616}
!142 = !{!6, !2, i64 1296}
!143 = !{!6, !2, i64 1624}
!144 = !{!39, !2, i64 72}
!145 = !{!107, !2, i64 24}
!146 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 4, !50, i64 20, i64 4, !50}
!147 = !{!107, !2, i64 592}
!148 = !{!149, !7, i64 0}
!149 = !{!"gs_int_rect_s", !74, i64 0, !74, i64 8}
!150 = !{!107, !7, i64 612}
!151 = !{!149, !7, i64 8}
!152 = !{!107, !7, i64 616}
!153 = !{!149, !7, i64 4}
!154 = !{!107, !7, i64 620}
!155 = !{!149, !7, i64 12}
!156 = !{!107, !7, i64 624}
!157 = !{!158, !2, i64 0}
!158 = !{!"gs_image_common_s", !2, i64 0, !86, i64 8}
!159 = !{!160, !2, i64 16}
!160 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48}
!161 = !{!74, !7, i64 0}
!162 = !{!74, !7, i64 4}
!163 = !{!164, !7, i64 44}
!164 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !3, i64 48, !3, i64 308}
!165 = !{!107, !7, i64 44}
!166 = !{!164, !2, i64 16}
!167 = !{!33, !34, i64 0}
!168 = !{!33, !34, i64 8}
