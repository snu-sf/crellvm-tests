; ModuleID = './gdevlprn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, {}*, {}*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_get_bits_params_s = type opaque
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
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gx_device_lprn_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct._Bubble = type { %struct._Bubble*, %struct.gs_int_rect_s }

@.str = private unnamed_addr constant [11 x i8] c"ManualFeed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NegativePrint\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"RITOff\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"BlockLine\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BlockWidth\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"BlockHeight\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ShowBubble\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"lprn_print_image(ImageBuf)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"lprn_print_iamge(TmpBuf)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"lprn_print_image(bubbleTbl)\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"lprn_print_image(bubbleBuffer)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @lprn_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 70
  %call1 = call i32 @param_write_bool(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32* %ManualFeed) #3
  store i32 %call1, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %11, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %13, i32 0, i32 71
  %call5 = call i32 @param_write_bool(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32* %NegativePrint) #3
  store i32 %call5, i32* %ncode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %14 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %14, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %16, i32 0, i32 72
  %call9 = call i32 @param_write_bool(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32* %Tumble) #3
  store i32 %call9, i32* %ncode, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %17 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %17, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %RITOff = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %19, i32 0, i32 73
  %call13 = call i32 @param_write_bool(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32* %RITOff) #3
  store i32 %call13, i32* %ncode, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %20 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %20, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %22, i32 0, i32 76
  %call17 = call i32 @param_write_int(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32* %BlockLine) #3
  store i32 %call17, i32* %ncode, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %23 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %23, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %25, i32 0, i32 81
  %call21 = call i32 @param_write_int(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32* %nBw) #3
  store i32 %call21, i32* %ncode, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %26 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %26, i32* %code, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %28, i32 0, i32 82
  %call25 = call i32 @param_write_int(%struct.gs_param_list_s* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %nBh) #3
  store i32 %call25, i32* %ncode, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %29 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %29, i32* %code, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 85
  %call29 = call i32 @param_write_bool(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32* %ShowBubble) #3
  store i32 %call29, i32* %ncode, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %32 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %32, i32* %code, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then
  %34 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @lprn_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %ManualFeed = alloca i32, align 4
  %NegativePrint = alloca i32, align 4
  %Tumble = alloca i32, align 4
  %RITOff = alloca i32, align 4
  %BlockLine = alloca i32, align 4
  %BlockWidth = alloca i32, align 4
  %BlockHeight = alloca i32, align 4
  %ShowBubble = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ManualFeed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ManualFeed1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %7, i32 0, i32 70
  %8 = load i32, i32* %ManualFeed1, align 4, !tbaa !7
  store i32 %8, i32* %ManualFeed, align 4, !tbaa !5
  %9 = bitcast i32* %NegativePrint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint2 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 71
  %11 = load i32, i32* %NegativePrint2, align 4, !tbaa !23
  store i32 %11, i32* %NegativePrint, align 4, !tbaa !5
  %12 = bitcast i32* %Tumble to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble3 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %13, i32 0, i32 72
  %14 = load i32, i32* %Tumble3, align 4, !tbaa !24
  store i32 %14, i32* %Tumble, align 4, !tbaa !5
  %15 = bitcast i32* %RITOff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %RITOff4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %16, i32 0, i32 73
  %17 = load i32, i32* %RITOff4, align 4, !tbaa !25
  store i32 %17, i32* %RITOff, align 4, !tbaa !5
  %18 = bitcast i32* %BlockLine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine5 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %19, i32 0, i32 76
  %20 = load i32, i32* %BlockLine5, align 4, !tbaa !26
  store i32 %20, i32* %BlockLine, align 4, !tbaa !5
  %21 = bitcast i32* %BlockWidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %22, i32 0, i32 81
  %23 = load i32, i32* %nBw, align 4, !tbaa !27
  store i32 %23, i32* %BlockWidth, align 4, !tbaa !5
  %24 = bitcast i32* %BlockHeight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %25, i32 0, i32 82
  %26 = load i32, i32* %nBh, align 4, !tbaa !28
  store i32 %26, i32* %BlockHeight, align 4, !tbaa !5
  %27 = bitcast i32* %ShowBubble to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble6 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %28, i32 0, i32 85
  %29 = load i32, i32* %ShowBubble6, align 4, !tbaa !29
  store i32 %29, i32* %ShowBubble, align 4, !tbaa !5
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32* %ManualFeed) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %31, i32 0, i32 0
  %32 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !30
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %32, i32 0, i32 7
  %33 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !32
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %param_name, align 8, !tbaa !1
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %ecode, align 4, !tbaa !5
  %call7 = call i32 %33(%struct.gs_param_list_s* %34, i8* %35, i32 %36) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call8 = call i32 @param_read_bool(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32* %NegativePrint) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %38, i32 0, i32 0
  %39 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs11, align 8, !tbaa !30
  %signal_error12 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %39, i32 0, i32 7
  %40 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error12, align 8, !tbaa !32
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %param_name, align 8, !tbaa !1
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %ecode, align 4, !tbaa !5
  %call13 = call i32 %40(%struct.gs_param_list_s* %41, i8* %42, i32 %43) #3
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call15 = call i32 @param_read_bool(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32* %Tumble) #3
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs18, align 8, !tbaa !30
  %signal_error19 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error19, align 8, !tbaa !32
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %param_name, align 8, !tbaa !1
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %ecode, align 4, !tbaa !5
  %call20 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.14
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call22 = call i32 @param_read_bool(%struct.gs_param_list_s* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32* %RITOff) #3
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.21
  %52 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %52, i32 0, i32 0
  %53 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs25, align 8, !tbaa !30
  %signal_error26 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %53, i32 0, i32 7
  %54 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error26, align 8, !tbaa !32
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %param_name, align 8, !tbaa !1
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %ecode, align 4, !tbaa !5
  %call27 = call i32 %54(%struct.gs_param_list_s* %55, i8* %56, i32 %57) #3
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.21
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call29 = call i32 @param_read_int(%struct.gs_param_list_s* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32* %BlockWidth) #3
  store i32 %call29, i32* %code, align 4, !tbaa !5
  switch i32 %call29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end.28
  %59 = load i32, i32* %BlockWidth, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %59, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.32

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end.32:                                        ; preds = %if.then.31
  br label %bwidthe

sw.default:                                       ; preds = %if.end.28
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %ecode, align 4, !tbaa !5
  br label %bwidthe

bwidthe:                                          ; preds = %sw.default, %if.end.32
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %61, i32 0, i32 0
  %62 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs33, align 8, !tbaa !30
  %signal_error34 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %62, i32 0, i32 7
  %63 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error34, align 8, !tbaa !32
  %64 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %65 = load i8*, i8** %param_name, align 8, !tbaa !1
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %ecode, align 4, !tbaa !5
  %call35 = call i32 %63(%struct.gs_param_list_s* %64, i8* %65, i32 %66) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %bwidthe, %if.end.28, %if.else
  %67 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call36 = call i32 @param_read_int(%struct.gs_param_list_s* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32* %BlockLine) #3
  store i32 %call36, i32* %code, align 4, !tbaa !5
  switch i32 %call36, label %sw.default.42 [
    i32 0, label %sw.bb.37
    i32 1, label %sw.epilog.46
  ]

sw.bb.37:                                         ; preds = %sw.epilog
  %68 = load i32, i32* %BlockLine, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %68, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %sw.bb.37
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.41

if.else.40:                                       ; preds = %sw.bb.37
  br label %sw.epilog.46

if.end.41:                                        ; preds = %if.then.39
  br label %crowe

sw.default.42:                                    ; preds = %sw.epilog
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %ecode, align 4, !tbaa !5
  br label %crowe

crowe:                                            ; preds = %sw.default.42, %if.end.41
  %70 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %70, i32 0, i32 0
  %71 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs43, align 8, !tbaa !30
  %signal_error44 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %71, i32 0, i32 7
  %72 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error44, align 8, !tbaa !32
  %73 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %param_name, align 8, !tbaa !1
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %ecode, align 4, !tbaa !5
  %call45 = call i32 %72(%struct.gs_param_list_s* %73, i8* %74, i32 %75) #3
  br label %sw.epilog.46

sw.epilog.46:                                     ; preds = %crowe, %sw.epilog, %if.else.40
  %76 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call47 = call i32 @param_read_int(%struct.gs_param_list_s* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %BlockHeight) #3
  store i32 %call47, i32* %code, align 4, !tbaa !5
  switch i32 %call47, label %sw.default.53 [
    i32 0, label %sw.bb.48
    i32 1, label %sw.epilog.57
  ]

sw.bb.48:                                         ; preds = %sw.epilog.46
  %77 = load i32, i32* %BlockHeight, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %77, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.bb.48
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.52

if.else.51:                                       ; preds = %sw.bb.48
  br label %sw.epilog.57

if.end.52:                                        ; preds = %if.then.50
  br label %bheighte

sw.default.53:                                    ; preds = %sw.epilog.46
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %ecode, align 4, !tbaa !5
  br label %bheighte

bheighte:                                         ; preds = %sw.default.53, %if.end.52
  %79 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs54 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %79, i32 0, i32 0
  %80 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs54, align 8, !tbaa !30
  %signal_error55 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %80, i32 0, i32 7
  %81 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error55, align 8, !tbaa !32
  %82 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %83 = load i8*, i8** %param_name, align 8, !tbaa !1
  %84 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %84, i32* %ecode, align 4, !tbaa !5
  %call56 = call i32 %81(%struct.gs_param_list_s* %82, i8* %83, i32 %84) #3
  br label %sw.epilog.57

sw.epilog.57:                                     ; preds = %bheighte, %sw.epilog.46, %if.else.51
  %85 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call58 = call i32 @param_read_bool(%struct.gs_param_list_s* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32* %ShowBubble) #3
  store i32 %call58, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %sw.epilog.57
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs61 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %86, i32 0, i32 0
  %87 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs61, align 8, !tbaa !30
  %signal_error62 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %87, i32 0, i32 7
  %88 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error62, align 8, !tbaa !32
  %89 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %90 = load i8*, i8** %param_name, align 8, !tbaa !1
  %91 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %91, i32* %ecode, align 4, !tbaa !5
  %call63 = call i32 %88(%struct.gs_param_list_s* %89, i8* %90, i32 %91) #3
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %sw.epilog.57
  %92 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %92, 0
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %93 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.64
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %95 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call68 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %94, %struct.gs_param_list_s* %95) #3
  store i32 %call68, i32* %code, align 4, !tbaa !5
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %96, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.67
  %98 = load i32, i32* %ManualFeed, align 4, !tbaa !5
  %99 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ManualFeed72 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %99, i32 0, i32 70
  store i32 %98, i32* %ManualFeed72, align 4, !tbaa !7
  %100 = load i32, i32* %NegativePrint, align 4, !tbaa !5
  %101 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint73 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %101, i32 0, i32 71
  store i32 %100, i32* %NegativePrint73, align 4, !tbaa !23
  %102 = load i32, i32* %Tumble, align 4, !tbaa !5
  %103 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble74 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %103, i32 0, i32 72
  store i32 %102, i32* %Tumble74, align 4, !tbaa !24
  %104 = load i32, i32* %RITOff, align 4, !tbaa !5
  %105 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %RITOff75 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %105, i32 0, i32 73
  store i32 %104, i32* %RITOff75, align 4, !tbaa !25
  %106 = load i32, i32* %BlockLine, align 4, !tbaa !5
  %107 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine76 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %107, i32 0, i32 76
  store i32 %106, i32* %BlockLine76, align 4, !tbaa !26
  %108 = load i32, i32* %BlockWidth, align 4, !tbaa !5
  %109 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw77 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %109, i32 0, i32 81
  store i32 %108, i32* %nBw77, align 4, !tbaa !27
  %110 = load i32, i32* %BlockHeight, align 4, !tbaa !5
  %111 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh78 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %111, i32 0, i32 82
  store i32 %110, i32* %nBh78, align 4, !tbaa !28
  %112 = load i32, i32* %ShowBubble, align 4, !tbaa !5
  %113 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble79 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %113, i32 0, i32 85
  store i32 %112, i32* %ShowBubble79, align 4, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.70, %if.then.66
  %114 = bitcast i32* %ShowBubble to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %BlockHeight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %BlockWidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %BlockLine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %RITOff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %Tumble to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %NegativePrint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %ManualFeed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind uwtable
define i32 @lprn_print_image(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %y = alloca i32, align 4
  %bpl = alloca i32, align 4
  %bbtbl = alloca %struct._Bubble*, align 8
  %bbl = alloca %struct._Bubble*, align 8
  %i = alloca i32, align 4
  %ri = alloca i32, align 4
  %rmin = alloca i32, align 4
  %read_y = alloca i32, align 4
  %code = alloca i32, align 4
  %bubbleBuffer = alloca %struct._Bubble*, align 8
  %maxBx = alloca i32, align 4
  %maxBy = alloca i32, align 4
  %maxY = alloca i32, align 4
  %start_y_block = alloca i32, align 4
  %num_y_blocks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast %struct._Bubble** %bbtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %rmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %read_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %14 = bitcast %struct._Bubble** %bubbleBuffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %maxBy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %start_y_block to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %start_y_block, align 4, !tbaa !5
  %19 = bitcast i32* %num_y_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %num_y_blocks, align 4, !tbaa !5
  %20 = load i32, i32* %bpl, align 4, !tbaa !5
  %21 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %21, i32 0, i32 81
  %22 = load i32, i32* %nBw, align 4, !tbaa !27
  %add = add nsw i32 %20, %22
  %sub = sub nsw i32 %add, 1
  %23 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %23, i32 0, i32 81
  %24 = load i32, i32* %nBw1, align 4, !tbaa !27
  %div = sdiv i32 %sub, %24
  store i32 %div, i32* %maxBx, align 4, !tbaa !5
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height, align 4, !tbaa !34
  %27 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %27, i32 0, i32 82
  %28 = load i32, i32* %nBh, align 4, !tbaa !28
  %add2 = add nsw i32 %26, %28
  %sub3 = sub nsw i32 %add2, 1
  %29 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %29, i32 0, i32 82
  %30 = load i32, i32* %nBh4, align 4, !tbaa !28
  %div5 = sdiv i32 %sub3, %30
  store i32 %div5, i32* %maxBy, align 4, !tbaa !5
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 76
  %32 = load i32, i32* %BlockLine, align 4, !tbaa !26
  %33 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh6 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %33, i32 0, i32 82
  %34 = load i32, i32* %nBh6, align 4, !tbaa !28
  %div7 = sdiv i32 %32, %34
  %35 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh8 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %35, i32 0, i32 82
  %36 = load i32, i32* %nBh8, align 4, !tbaa !28
  %mul = mul nsw i32 %div7, %36
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !37
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !37
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %41 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !36
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !37
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !37
  %46 = load i32, i32* %bpl, align 4, !tbaa !5
  %47 = load i32, i32* %maxY, align 4, !tbaa !5
  %call13 = call i8* %41(%struct.gs_memory_s* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #3
  %48 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ImageBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %48, i32 0, i32 77
  store i8* %call13, i8** %ImageBuf, align 8, !tbaa !41
  %tobool = icmp ne i8* %call13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !36
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !37
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !37
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %alloc_byte_array18 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 10
  %53 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array18, align 8, !tbaa !40
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !36
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !37
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !37
  %58 = load i32, i32* %bpl, align 4, !tbaa !5
  %59 = load i32, i32* %maxY, align 4, !tbaa !5
  %call22 = call i8* %53(%struct.gs_memory_s* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #3
  %60 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %60, i32 0, i32 78
  store i8* %call22, i8** %TmpBuf, align 8, !tbaa !42
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !36
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !37
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !37
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %alloc_byte_array30 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 10
  %65 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array30, align 8, !tbaa !40
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !36
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !37
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !37
  %70 = load i32, i32* %maxBx, align 4, !tbaa !5
  %call34 = call i8* %65(%struct.gs_memory_s* %69, i32 8, i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #3
  %71 = bitcast i8* %call34 to %struct._Bubble**
  %72 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %72, i32 0, i32 83
  store %struct._Bubble** %71, %struct._Bubble*** %bubbleTbl, align 8, !tbaa !43
  %tobool35 = icmp ne %struct._Bubble** %71, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.25
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.25
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !36
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !37
  %non_gc_memory40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory40, align 8, !tbaa !37
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 1
  %alloc_byte_array42 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 10
  %77 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array42, align 8, !tbaa !40
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !36
  %non_gc_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory44, align 8, !tbaa !37
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !37
  %82 = load i32, i32* %maxBx, align 4, !tbaa !5
  %call46 = call i8* %77(%struct.gs_memory_s* %81, i32 24, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #3
  %83 = bitcast i8* %call46 to %struct._Bubble*
  store %struct._Bubble* %83, %struct._Bubble** %bubbleBuffer, align 8, !tbaa !1
  %tobool47 = icmp ne %struct._Bubble* %83, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.37
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.37
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %85 = load i32, i32* %maxBx, align 4, !tbaa !5
  %cmp = icmp slt i32 %84, %85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %86 to i64
  %87 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl50 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %87, i32 0, i32 83
  %88 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl50, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %88, i64 %idxprom
  store %struct._Bubble* null, %struct._Bubble** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load %struct._Bubble*, %struct._Bubble** %bubbleBuffer, align 8, !tbaa !1
  store %struct._Bubble* %90, %struct._Bubble** %bbtbl, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.60, %for.end
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %92 = load i32, i32* %maxBx, align 4, !tbaa !5
  %sub52 = sub nsw i32 %92, 1
  %cmp53 = icmp slt i32 %91, %sub52
  br i1 %cmp53, label %for.body.54, label %for.end.62

for.body.54:                                      ; preds = %for.cond.51
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %add55 = add nsw i32 %93, 1
  %idxprom56 = sext i32 %add55 to i64
  %94 = load %struct._Bubble*, %struct._Bubble** %bbtbl, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %94, i64 %idxprom56
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %95 to i64
  %96 = load %struct._Bubble*, %struct._Bubble** %bbtbl, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %96, i64 %idxprom58
  %next = getelementptr inbounds %struct._Bubble, %struct._Bubble* %arrayidx59, i32 0, i32 0
  store %struct._Bubble* %arrayidx57, %struct._Bubble** %next, align 8, !tbaa !44
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.54
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %97, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !5
  br label %for.cond.51

for.end.62:                                       ; preds = %for.cond.51
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %98 to i64
  %99 = load %struct._Bubble*, %struct._Bubble** %bbtbl, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %99, i64 %idxprom63
  %next65 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %arrayidx64, i32 0, i32 0
  store %struct._Bubble* null, %struct._Bubble** %next65, align 8, !tbaa !44
  %100 = load %struct._Bubble*, %struct._Bubble** %bbtbl, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %100, i64 0
  %101 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %freeBubbleList = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %101, i32 0, i32 84
  store %struct._Bubble* %arrayidx66, %struct._Bubble** %freeBubbleList, align 8, !tbaa !48
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.106, %for.end.62
  %102 = load i32, i32* %y, align 4, !tbaa !5
  %103 = load i32, i32* %maxBy, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %102, %103
  br i1 %cmp68, label %for.body.69, label %for.end.108

for.body.69:                                      ; preds = %for.cond.67
  %104 = load i32, i32* %num_y_blocks, align 4, !tbaa !5
  %105 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh70 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %105, i32 0, i32 82
  %106 = load i32, i32* %nBh70, align 4, !tbaa !28
  %add71 = add nsw i32 %104, %106
  %107 = load i32, i32* %maxY, align 4, !tbaa !5
  %cmp72 = icmp sgt i32 %add71, %107
  br i1 %cmp72, label %if.then.73, label %if.end.94

if.then.73:                                       ; preds = %for.body.69
  %108 = load i32, i32* %start_y_block, align 4, !tbaa !5
  %109 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh74 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %109, i32 0, i32 82
  %110 = load i32, i32* %nBh74, align 4, !tbaa !28
  %add75 = add nsw i32 %108, %110
  store i32 %add75, i32* %rmin, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.87, %if.then.73
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %112 = load i32, i32* %maxBx, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %111, %112
  br i1 %cmp77, label %for.body.78, label %for.end.89

for.body.78:                                      ; preds = %for.cond.76
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %113 to i64
  %114 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl80 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %114, i32 0, i32 83
  %115 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl80, align 8, !tbaa !43
  %arrayidx81 = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %115, i64 %idxprom79
  %116 = load %struct._Bubble*, %struct._Bubble** %arrayidx81, align 8, !tbaa !1
  store %struct._Bubble* %116, %struct._Bubble** %bbl, align 8, !tbaa !1
  %117 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %cmp82 = icmp ne %struct._Bubble* %117, null
  br i1 %cmp82, label %land.lhs.true, label %if.end.86

land.lhs.true:                                    ; preds = %for.body.78
  %118 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect = getelementptr inbounds %struct._Bubble, %struct._Bubble* %118, i32 0, i32 1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect, i32 0, i32 0
  %y83 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %119 = load i32, i32* %y83, align 4, !tbaa !49
  %120 = load i32, i32* %rmin, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %119, %120
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true
  %121 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %123 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  call void @lprn_bubble_flush(%struct.gx_device_printer_s* %121, %struct._IO_FILE* %122, %struct._Bubble* %123) #3
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.lhs.true, %for.body.78
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc88 = add nsw i32 %124, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.end.89:                                       ; preds = %for.cond.76
  %125 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh90 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %125, i32 0, i32 82
  %126 = load i32, i32* %nBh90, align 4, !tbaa !28
  %127 = load i32, i32* %num_y_blocks, align 4, !tbaa !5
  %sub91 = sub nsw i32 %127, %126
  store i32 %sub91, i32* %num_y_blocks, align 4, !tbaa !5
  %128 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh92 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %128, i32 0, i32 82
  %129 = load i32, i32* %nBh92, align 4, !tbaa !28
  %130 = load i32, i32* %start_y_block, align 4, !tbaa !5
  %add93 = add nsw i32 %130, %129
  store i32 %add93, i32* %start_y_block, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.89, %for.body.69
  %131 = load i32, i32* %start_y_block, align 4, !tbaa !5
  %132 = load i32, i32* %num_y_blocks, align 4, !tbaa !5
  %add95 = add nsw i32 %131, %132
  store i32 %add95, i32* %ri, align 4, !tbaa !5
  %133 = load i32, i32* %ri, align 4, !tbaa !5
  %134 = load i32, i32* %maxY, align 4, !tbaa !5
  %rem = srem i32 %133, %134
  store i32 %rem, i32* %read_y, align 4, !tbaa !5
  %135 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %136 = load i32, i32* %ri, align 4, !tbaa !5
  %137 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ImageBuf96 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %137, i32 0, i32 77
  %138 = load i8*, i8** %ImageBuf96, align 8, !tbaa !41
  %139 = load i32, i32* %bpl, align 4, !tbaa !5
  %140 = load i32, i32* %read_y, align 4, !tbaa !5
  %mul97 = mul nsw i32 %139, %140
  %idx.ext = sext i32 %mul97 to i64
  %add.ptr = getelementptr inbounds i8, i8* %138, i64 %idx.ext
  %141 = load i32, i32* %bpl, align 4, !tbaa !5
  %142 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh98 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %142, i32 0, i32 82
  %143 = load i32, i32* %nBh98, align 4, !tbaa !28
  %mul99 = mul nsw i32 %141, %143
  %call100 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %135, i32 %136, i8* %add.ptr, i32 %mul99) #3
  store i32 %call100, i32* %code, align 4, !tbaa !5
  %144 = load i32, i32* %code, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %144, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.94
  %145 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.94
  %146 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh104 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %146, i32 0, i32 82
  %147 = load i32, i32* %nBh104, align 4, !tbaa !28
  %148 = load i32, i32* %num_y_blocks, align 4, !tbaa !5
  %add105 = add nsw i32 %148, %147
  store i32 %add105, i32* %num_y_blocks, align 4, !tbaa !5
  %149 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %151 = load i32, i32* %start_y_block, align 4, !tbaa !5
  %152 = load i32, i32* %num_y_blocks, align 4, !tbaa !5
  call void @lprn_process_line(%struct.gx_device_printer_s* %149, %struct._IO_FILE* %150, i32 %151, i32 %152) #3
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.103
  %153 = load i32, i32* %y, align 4, !tbaa !5
  %inc107 = add nsw i32 %153, 1
  store i32 %inc107, i32* %y, align 4, !tbaa !5
  br label %for.cond.67

for.end.108:                                      ; preds = %for.cond.67
  %154 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  call void @lprn_bubble_flush_all(%struct.gx_device_printer_s* %154, %struct._IO_FILE* %155) #3
  %156 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %156, i32 0, i32 3
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !36
  %non_gc_memory110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %157, i32 0, i32 3
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory110, align 8, !tbaa !37
  %non_gc_memory111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory111, align 8, !tbaa !37
  %procs112 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %159, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs112, i32 0, i32 2
  %160 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !50
  %161 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %161, i32 0, i32 3
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !36
  %non_gc_memory114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 3
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory114, align 8, !tbaa !37
  %non_gc_memory115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %163, i32 0, i32 3
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory115, align 8, !tbaa !37
  %165 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ImageBuf116 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %165, i32 0, i32 77
  %166 = load i8*, i8** %ImageBuf116, align 8, !tbaa !41
  call void %160(%struct.gs_memory_s* %164, i8* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #3
  %167 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %167, i32 0, i32 3
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !36
  %non_gc_memory118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory118, align 8, !tbaa !37
  %non_gc_memory119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory119, align 8, !tbaa !37
  %procs120 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 1
  %free_object121 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs120, i32 0, i32 2
  %171 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object121, align 8, !tbaa !50
  %172 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory122 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory122, align 8, !tbaa !36
  %non_gc_memory123 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory123, align 8, !tbaa !37
  %non_gc_memory124 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory124, align 8, !tbaa !37
  %176 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf125 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %176, i32 0, i32 78
  %177 = load i8*, i8** %TmpBuf125, align 8, !tbaa !42
  call void %171(%struct.gs_memory_s* %175, i8* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #3
  %178 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %178, i32 0, i32 3
  %179 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory126, align 8, !tbaa !36
  %non_gc_memory127 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %179, i32 0, i32 3
  %180 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory127, align 8, !tbaa !37
  %non_gc_memory128 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %180, i32 0, i32 3
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory128, align 8, !tbaa !37
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %181, i32 0, i32 1
  %free_object130 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 2
  %182 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object130, align 8, !tbaa !50
  %183 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %183, i32 0, i32 3
  %184 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !36
  %non_gc_memory132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %184, i32 0, i32 3
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory132, align 8, !tbaa !37
  %non_gc_memory133 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %185, i32 0, i32 3
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory133, align 8, !tbaa !37
  %187 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl134 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %187, i32 0, i32 83
  %188 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl134, align 8, !tbaa !43
  %189 = bitcast %struct._Bubble** %188 to i8*
  call void %182(%struct.gs_memory_s* %186, i8* %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #3
  %190 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %190, i32 0, i32 3
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !36
  %non_gc_memory136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %191, i32 0, i32 3
  %192 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory136, align 8, !tbaa !37
  %non_gc_memory137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %192, i32 0, i32 3
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory137, align 8, !tbaa !37
  %procs138 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %193, i32 0, i32 1
  %free_object139 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs138, i32 0, i32 2
  %194 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object139, align 8, !tbaa !50
  %195 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %195, i32 0, i32 3
  %196 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8, !tbaa !36
  %non_gc_memory141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory141, align 8, !tbaa !37
  %non_gc_memory142 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory142, align 8, !tbaa !37
  %199 = load %struct._Bubble*, %struct._Bubble** %bubbleBuffer, align 8, !tbaa !1
  %200 = bitcast %struct._Bubble* %199 to i8*
  call void %194(%struct.gs_memory_s* %198, i8* %200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #3
  %201 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %201, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.108, %if.then.102, %if.then.48, %if.then.36, %if.then.24, %if.then
  %202 = bitcast i32* %num_y_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %start_y_block to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %maxBy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct._Bubble** %bubbleBuffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %read_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %rmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast %struct._Bubble** %bbtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = load i32, i32* %retval
  ret i32 %218
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @lprn_bubble_flush(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, %struct._Bubble* %bbl) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bbl.addr = alloca %struct._Bubble*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bx = alloca i32, align 4
  %p = alloca i8*, align 8
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %bpl = alloca i32, align 4
  %x7 = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %maxY = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store %struct._Bubble* %bbl, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect = getelementptr inbounds %struct._Bubble, %struct._Bubble* %8, i32 0, i32 1
  %p1 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !51
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 81
  %11 = load i32, i32* %nBw, align 4, !tbaa !27
  %div = sdiv i32 %9, %11
  store i32 %div, i32* %bx0, align 4, !tbaa !5
  %12 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect2 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %13, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %14 = load i32, i32* %x3, align 4, !tbaa !52
  %15 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %15, i32 0, i32 81
  %16 = load i32, i32* %nBw4, align 4, !tbaa !27
  %add = add nsw i32 %14, %16
  %sub = sub nsw i32 %add, 1
  %17 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw5 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %17, i32 0, i32 81
  %18 = load i32, i32* %nBw5, align 4, !tbaa !27
  %div6 = sdiv i32 %sub, %18
  store i32 %div6, i32* %bx1, align 4, !tbaa !5
  %19 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %21, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %22 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect8 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %23, i32 0, i32 1
  %p9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect8, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p9, i32 0, i32 0
  %24 = load i32, i32* %x10, align 4, !tbaa !51
  %mul = mul nsw i32 %24, 8
  store i32 %mul, i32* %x7, align 4, !tbaa !5
  %25 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect11 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %26, i32 0, i32 1
  %p12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect11, i32 0, i32 0
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p12, i32 0, i32 1
  %27 = load i32, i32* %y13, align 4, !tbaa !49
  store i32 %27, i32* %y, align 4, !tbaa !5
  %28 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect14 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %29, i32 0, i32 1
  %q15 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect14, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q15, i32 0, i32 0
  %30 = load i32, i32* %x16, align 4, !tbaa !52
  %31 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect17 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %31, i32 0, i32 1
  %p18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect17, i32 0, i32 0
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p18, i32 0, i32 0
  %32 = load i32, i32* %x19, align 4, !tbaa !51
  %sub20 = sub nsw i32 %30, %32
  %add21 = add nsw i32 %sub20, 1
  %mul22 = mul nsw i32 %add21, 8
  store i32 %mul22, i32* %width, align 4, !tbaa !5
  %33 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect23 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %34, i32 0, i32 1
  %q24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect23, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q24, i32 0, i32 1
  %35 = load i32, i32* %y25, align 4, !tbaa !53
  %36 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect26 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %36, i32 0, i32 1
  %p27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect26, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p27, i32 0, i32 1
  %37 = load i32, i32* %y28, align 4, !tbaa !49
  %sub29 = sub nsw i32 %35, %37
  %add30 = add nsw i32 %sub29, 1
  store i32 %add30, i32* %height, align 4, !tbaa !5
  %38 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %39, i32 0, i32 76
  %40 = load i32, i32* %BlockLine, align 4, !tbaa !26
  %41 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %41, i32 0, i32 82
  %42 = load i32, i32* %nBh, align 4, !tbaa !28
  %div31 = sdiv i32 %40, %42
  %43 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh32 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %43, i32 0, i32 82
  %44 = load i32, i32* %nBh32, align 4, !tbaa !28
  %mul33 = mul nsw i32 %div31, %44
  store i32 %mul33, i32* %maxY, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %46 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %47 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ImageBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %47, i32 0, i32 77
  %48 = load i8*, i8** %ImageBuf, align 8, !tbaa !41
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %add34 = add nsw i32 %49, %50
  %51 = load i32, i32* %maxY, align 4, !tbaa !5
  %rem = srem i32 %add34, %51
  %52 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul35 = mul nsw i32 %rem, %52
  %idx.ext = sext i32 %mul35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %54 = load i32, i32* %width, align 4, !tbaa !5
  %div37 = sdiv i32 %54, 8
  %cmp38 = icmp slt i32 %53, %div37
  br i1 %cmp38, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %55 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %55, i32 0, i32 71
  %56 = load i32, i32* %NegativePrint, align 4, !tbaa !23
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.39
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext40 = sext i32 %58 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %57, i64 %idx.ext40
  %59 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect42 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %59, i32 0, i32 1
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect42, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 0
  %60 = load i32, i32* %x44, align 4, !tbaa !51
  %idx.ext45 = sext i32 %60 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr41, i64 %idx.ext45
  %61 = load i8, i8* %add.ptr46, align 1, !tbaa !54
  %conv = zext i8 %61 to i32
  %neg = xor i32 %conv, -1
  %conv47 = trunc i32 %neg to i8
  %62 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %62, i32 0, i32 78
  %63 = load i8*, i8** %TmpBuf, align 8, !tbaa !42
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %65 = load i32, i32* %width, align 4, !tbaa !5
  %mul48 = mul nsw i32 %64, %65
  %div49 = sdiv i32 %mul48, 8
  %idx.ext50 = sext i32 %div49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %63, i64 %idx.ext50
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext52 = sext i32 %66 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr51, i64 %idx.ext52
  store i8 %conv47, i8* %add.ptr53, align 1, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %for.body.39
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext54 = sext i32 %68 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %67, i64 %idx.ext54
  %69 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %brect56 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %69, i32 0, i32 1
  %p57 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect56, i32 0, i32 0
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p57, i32 0, i32 0
  %70 = load i32, i32* %x58, align 4, !tbaa !51
  %idx.ext59 = sext i32 %70 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr55, i64 %idx.ext59
  %71 = load i8, i8* %add.ptr60, align 1, !tbaa !54
  %72 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf61 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %72, i32 0, i32 78
  %73 = load i8*, i8** %TmpBuf61, align 8, !tbaa !42
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %75 = load i32, i32* %width, align 4, !tbaa !5
  %mul62 = mul nsw i32 %74, %75
  %div63 = sdiv i32 %mul62, 8
  %idx.ext64 = sext i32 %div63 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %73, i64 %idx.ext64
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext66 = sext i32 %76 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr65, i64 %idx.ext66
  store i8 %71, i8* %add.ptr67, align 1, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %78, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %79 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %image_out = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %79, i32 0, i32 68
  %80 = load void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)** %image_out, align 8, !tbaa !55
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %83 = load i32, i32* %x7, align 4, !tbaa !5
  %84 = load i32, i32* %y, align 4, !tbaa !5
  %85 = load i32, i32* %width, align 4, !tbaa !5
  %86 = load i32, i32* %height, align 4, !tbaa !5
  call void %80(%struct.gx_device_printer_s* %81, %struct._IO_FILE* %82, i32 %83, i32 %84, i32 %85, i32 %86) #3
  %87 = load i32, i32* %bx0, align 4, !tbaa !5
  store i32 %87, i32* %bx, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.75, %for.end.70
  %88 = load i32, i32* %bx, align 4, !tbaa !5
  %89 = load i32, i32* %bx1, align 4, !tbaa !5
  %cmp72 = icmp sle i32 %88, %89
  br i1 %cmp72, label %for.body.74, label %for.end.77

for.body.74:                                      ; preds = %for.cond.71
  %90 = load i32, i32* %bx, align 4, !tbaa !5
  %idxprom = sext i32 %90 to i64
  %91 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %91, i32 0, i32 83
  %92 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %92, i64 %idxprom
  store %struct._Bubble* null, %struct._Bubble** %arrayidx, align 8, !tbaa !1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.74
  %93 = load i32, i32* %bx, align 4, !tbaa !5
  %inc76 = add nsw i32 %93, 1
  store i32 %inc76, i32* %bx, align 4, !tbaa !5
  br label %for.cond.71

for.end.77:                                       ; preds = %for.cond.71
  %94 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %freeBubbleList = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %94, i32 0, i32 84
  %95 = load %struct._Bubble*, %struct._Bubble** %freeBubbleList, align 8, !tbaa !48
  %96 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._Bubble, %struct._Bubble* %96, i32 0, i32 0
  store %struct._Bubble* %95, %struct._Bubble** %next, align 8, !tbaa !44
  %97 = load %struct._Bubble*, %struct._Bubble** %bbl.addr, align 8, !tbaa !1
  %98 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %freeBubbleList78 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %98, i32 0, i32 84
  store %struct._Bubble* %97, %struct._Bubble** %freeBubbleList78, align 8, !tbaa !48
  %99 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  ret void
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @lprn_process_line(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %r, i32 %h) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %r.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %bx = alloca i32, align 4
  %bInBlack = alloca i32, align 4
  %bBlack = alloca i32, align 4
  %start = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxBx = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %r, i32* %r.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %bInBlack to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bBlack to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %9, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %10 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %bpl, align 4, !tbaa !5
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 81
  %13 = load i32, i32* %nBw, align 4, !tbaa !27
  %add = add nsw i32 %11, %13
  %sub = sub nsw i32 %add, 1
  %14 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %14, i32 0, i32 81
  %15 = load i32, i32* %nBw1, align 4, !tbaa !27
  %div = sdiv i32 %sub, %15
  store i32 %div, i32* %maxBx, align 4, !tbaa !5
  store i32 0, i32* %bInBlack, align 4, !tbaa !5
  store i32 0, i32* %bx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %bx, align 4, !tbaa !5
  %17 = load i32, i32* %maxBx, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %19 = load i32, i32* %r.addr, align 4, !tbaa !5
  %20 = load i32, i32* %h.addr, align 4, !tbaa !5
  %21 = load i32, i32* %bx, align 4, !tbaa !5
  %call2 = call i32 @lprn_is_black(%struct.gx_device_printer_s* %18, i32 %19, i32 %20, i32 %21) #3
  store i32 %call2, i32* %bBlack, align 4, !tbaa !5
  %22 = load i32, i32* %bInBlack, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %bBlack, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %23, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %24 = load i32, i32* %bx, align 4, !tbaa !5
  store i32 %24, i32* %start, align 4, !tbaa !5
  store i32 1, i32* %bInBlack, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %bBlack, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %25, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %bInBlack, align 4, !tbaa !5
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %28 = load i32, i32* %r.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load i32, i32* %start, align 4, !tbaa !5
  %31 = load i32, i32* %bx, align 4, !tbaa !5
  call void @lprn_rect_add(%struct.gx_device_printer_s* %26, %struct._IO_FILE* %27, i32 %28, i32 %29, i32 %30, i32 %31) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %32 = load i32, i32* %bx, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %bx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %bInBlack, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %33, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.end
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %36 = load i32, i32* %r.addr, align 4, !tbaa !5
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %38 = load i32, i32* %start, align 4, !tbaa !5
  %39 = load i32, i32* %bx, align 4, !tbaa !5
  %sub11 = sub nsw i32 %39, 1
  call void @lprn_rect_add(%struct.gx_device_printer_s* %34, %struct._IO_FILE* %35, i32 %36, i32 %37, i32 %38, i32 %sub11) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.end
  %40 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %bBlack to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %bInBlack to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lprn_bubble_flush_all(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %i = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxBx = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %4 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %bpl, align 4, !tbaa !5
  %9 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %9, i32 0, i32 81
  %10 = load i32, i32* %nBw, align 4, !tbaa !27
  %add = add nsw i32 %8, %10
  %sub = sub nsw i32 %add, 1
  %11 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %11, i32 0, i32 81
  %12 = load i32, i32* %nBw1, align 4, !tbaa !27
  %div = sdiv i32 %sub, %12
  store i32 %div, i32* %maxBx, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %maxBx, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %16, i32 0, i32 83
  %17 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %17, i64 %idxprom
  %18 = load %struct._Bubble*, %struct._Bubble** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._Bubble* %18, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %21 to i64
  %22 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %22, i32 0, i32 83
  %23 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl4, align 8, !tbaa !43
  %arrayidx5 = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %23, i64 %idxprom3
  %24 = load %struct._Bubble*, %struct._Bubble** %arrayidx5, align 8, !tbaa !1
  call void @lprn_bubble_flush(%struct.gx_device_printer_s* %19, %struct._IO_FILE* %20, %struct._Bubble* %24) #3
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %26 = bitcast i32* %maxBx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lprn_is_black(%struct.gx_device_printer_s* %pdev, i32 %r, i32 %h, i32 %bx) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %r.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %bh = alloca i32, align 4
  %bpl = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %y0 = alloca i32, align 4
  %p = alloca i8*, align 8
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %r, i32* %r.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %4, i32 0, i32 82
  %5 = load i32, i32* %nBh, align 4, !tbaa !28
  store i32 %5, i32* %bh, align 4, !tbaa !5
  %6 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %8, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %14, i32 0, i32 76
  %15 = load i32, i32* %BlockLine, align 4, !tbaa !26
  %16 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %16, i32 0, i32 82
  %17 = load i32, i32* %nBh1, align 4, !tbaa !28
  %div = sdiv i32 %15, %17
  %18 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh2 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %18, i32 0, i32 82
  %19 = load i32, i32* %nBh2, align 4, !tbaa !28
  %mul = mul nsw i32 %div, %19
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %20 = load i32, i32* %r.addr, align 4, !tbaa !5
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %20, %21
  %22 = load i32, i32* %bh, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %22
  %23 = load i32, i32* %maxY, align 4, !tbaa !5
  %rem = srem i32 %sub, %23
  store i32 %rem, i32* %y0, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %25 = load i32, i32* %bh, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %y0, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %add3 = add nsw i32 %26, %27
  %28 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul4 = mul nsw i32 %add3, %28
  %29 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 81
  %31 = load i32, i32* %nBw, align 4, !tbaa !27
  %mul5 = mul nsw i32 %29, %31
  %add6 = add nsw i32 %mul4, %mul5
  %idxprom = sext i32 %add6 to i64
  %32 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ImageBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %32, i32 0, i32 77
  %33 = load i8*, i8** %ImageBuf, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %idxprom
  store i8* %arrayidx, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %35 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw8 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %35, i32 0, i32 81
  %36 = load i32, i32* %nBw8, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %34, %36
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom11 = sext i32 %37 to i64
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %38, i64 %idxprom11
  %39 = load i8, i8* %arrayidx12, align 1, !tbaa !54
  %conv = zext i8 %39 to i32
  %cmp13 = icmp ne i32 %conv, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %inc16 = add nsw i32 %41, 1
  store i32 %inc16, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.17, %if.then
  %42 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @lprn_rect_add(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp, i32 %r, i32 %h, i32 %start, i32 %end) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %r.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i = alloca i32, align 4
  %bbl = alloca %struct._Bubble*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %r, i32* %r.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %start, i32* %start.addr, align 4, !tbaa !5
  store i32 %end, i32* %end.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %start.addr, align 4, !tbaa !5
  %5 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %5, i32 0, i32 81
  %6 = load i32, i32* %nBw, align 4, !tbaa !27
  %mul = mul nsw i32 %4, %6
  store i32 %mul, i32* %x0, align 4, !tbaa !5
  %7 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %end.addr, align 4, !tbaa !5
  %9 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %9, i32 0, i32 81
  %10 = load i32, i32* %nBw1, align 4, !tbaa !27
  %mul2 = mul nsw i32 %8, %10
  %sub = sub nsw i32 %mul2, 1
  store i32 %sub, i32* %x1, align 4, !tbaa !5
  %11 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %r.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %12, %13
  %14 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %14, i32 0, i32 82
  %15 = load i32, i32* %nBh, align 4, !tbaa !28
  %sub3 = sub nsw i32 %add, %15
  store i32 %sub3, i32* %y0, align 4, !tbaa !5
  %16 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %y0, align 4, !tbaa !5
  %18 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %18, i32 0, i32 82
  %19 = load i32, i32* %nBh4, align 4, !tbaa !28
  %add5 = add nsw i32 %17, %19
  %sub6 = sub nsw i32 %add5, 1
  store i32 %sub6, i32* %y1, align 4, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i32, i32* %start.addr, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %23, i32 0, i32 83
  %24 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %24, i64 %idxprom
  %25 = load %struct._Bubble*, %struct._Bubble** %arrayidx, align 8, !tbaa !1
  store %struct._Bubble* %25, %struct._Bubble** %bbl, align 8, !tbaa !1
  %cmp = icmp ne %struct._Bubble* %25, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %26 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect = getelementptr inbounds %struct._Bubble, %struct._Bubble* %26, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %27 = load i32, i32* %y, align 4, !tbaa !53
  %28 = load i32, i32* %y0, align 4, !tbaa !5
  %sub7 = sub nsw i32 %28, 1
  %cmp8 = icmp eq i32 %27, %sub7
  br i1 %cmp8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %29 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect10 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %29, i32 0, i32 1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect10, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %30 = load i32, i32* %x, align 4, !tbaa !51
  %31 = load i32, i32* %x0, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %30, %31
  br i1 %cmp11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %32 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect13 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %32, i32 0, i32 1
  %q14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect13, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q14, i32 0, i32 0
  %33 = load i32, i32* %x15, align 4, !tbaa !52
  %34 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %33, %34
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.12
  %35 = load i32, i32* %y1, align 4, !tbaa !5
  %36 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect17 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %36, i32 0, i32 1
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect17, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 1
  store i32 %35, i32* %y19, align 4, !tbaa !53
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %entry
  %37 = load i32, i32* %start.addr, align 4, !tbaa !5
  store i32 %37, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %39 = load i32, i32* %end.addr, align 4, !tbaa !5
  %cmp20 = icmp sle i32 %38, %39
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl22 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %41, i32 0, i32 83
  %42 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl22, align 8, !tbaa !43
  %arrayidx23 = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %42, i64 %idxprom21
  %43 = load %struct._Bubble*, %struct._Bubble** %arrayidx23, align 8, !tbaa !1
  %cmp24 = icmp ne %struct._Bubble* %43, null
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %for.body
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %46 to i64
  %47 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl27 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %47, i32 0, i32 83
  %48 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl27, align 8, !tbaa !43
  %arrayidx28 = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %48, i64 %idxprom26
  %49 = load %struct._Bubble*, %struct._Bubble** %arrayidx28, align 8, !tbaa !1
  call void @lprn_bubble_flush(%struct.gx_device_printer_s* %44, %struct._IO_FILE* %45, %struct._Bubble* %49) #3
  br label %if.end

if.end:                                           ; preds = %if.then.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %52 = load i32, i32* %x0, align 4, !tbaa !5
  %53 = load i32, i32* %x1, align 4, !tbaa !5
  %54 = load i32, i32* %y0, align 4, !tbaa !5
  %55 = load i32, i32* %y1, align 4, !tbaa !5
  call void @lprn_bubble_gen(%struct.gx_device_printer_s* %51, i32 %52, i32 %53, i32 %54, i32 %55) #3
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %if.then
  %56 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lprn_bubble_gen(%struct.gx_device_printer_s* %pdev, i32 %x0, i32 %x1, i32 %y0, i32 %y1) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %bbl = alloca %struct._Bubble*, align 8
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %bx = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %freeBubbleList = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %7, i32 0, i32 84
  %8 = load %struct._Bubble*, %struct._Bubble** %freeBubbleList, align 8, !tbaa !48
  store %struct._Bubble* %8, %struct._Bubble** %bbl, align 8, !tbaa !1
  %9 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._Bubble, %struct._Bubble* %9, i32 0, i32 0
  %10 = load %struct._Bubble*, %struct._Bubble** %next, align 8, !tbaa !44
  %11 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %freeBubbleList1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %11, i32 0, i32 84
  store %struct._Bubble* %10, %struct._Bubble** %freeBubbleList1, align 8, !tbaa !48
  %12 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %13 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect = getelementptr inbounds %struct._Bubble, %struct._Bubble* %13, i32 0, i32 1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %12, i32* %x, align 4, !tbaa !51
  %14 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %15 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect2 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %15, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %14, i32* %x3, align 4, !tbaa !52
  %16 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %17 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect4 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %17, i32 0, i32 1
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 1
  store i32 %16, i32* %y, align 4, !tbaa !49
  %18 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %19 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %brect6 = getelementptr inbounds %struct._Bubble, %struct._Bubble* %19, i32 0, i32 1
  %q7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %brect6, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q7, i32 0, i32 1
  store i32 %18, i32* %y8, align 4, !tbaa !53
  %20 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %21, i32 0, i32 81
  %22 = load i32, i32* %nBw, align 4, !tbaa !27
  %div = sdiv i32 %20, %22
  store i32 %div, i32* %bx0, align 4, !tbaa !5
  %23 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw9 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %24, i32 0, i32 81
  %25 = load i32, i32* %nBw9, align 4, !tbaa !27
  %add = add nsw i32 %23, %25
  %sub = sub nsw i32 %add, 1
  %26 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBw10 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %26, i32 0, i32 81
  %27 = load i32, i32* %nBw10, align 4, !tbaa !27
  %div11 = sdiv i32 %sub, %27
  store i32 %div11, i32* %bx1, align 4, !tbaa !5
  %28 = load i32, i32* %bx0, align 4, !tbaa !5
  store i32 %28, i32* %bx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load i32, i32* %bx, align 4, !tbaa !5
  %30 = load i32, i32* %bx1, align 4, !tbaa !5
  %cmp = icmp sle i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._Bubble*, %struct._Bubble** %bbl, align 8, !tbaa !1
  %32 = load i32, i32* %bx, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %bubbleTbl = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %33, i32 0, i32 83
  %34 = load %struct._Bubble**, %struct._Bubble*** %bubbleTbl, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct._Bubble*, %struct._Bubble** %34, i64 %idxprom
  store %struct._Bubble* %31, %struct._Bubble** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %bx, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %bx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct._Bubble** %bbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 18484}
!8 = !{!"gx_device_lprn_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568}
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
!23 = !{!8, !6, i64 18488}
!24 = !{!8, !6, i64 18492}
!25 = !{!8, !6, i64 18496}
!26 = !{!8, !6, i64 18508}
!27 = !{!8, !6, i64 18544}
!28 = !{!8, !6, i64 18548}
!29 = !{!8, !6, i64 18568}
!30 = !{!31, !2, i64 0}
!31 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!32 = !{!33, !2, i64 56}
!33 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!34 = !{!35, !6, i64 836}
!35 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!36 = !{!35, !2, i64 24}
!37 = !{!38, !2, i64 200}
!38 = !{!"gs_memory_s", !2, i64 0, !39, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!40 = !{!38, !2, i64 88}
!41 = !{!8, !2, i64 18512}
!42 = !{!8, !2, i64 18520}
!43 = !{!8, !2, i64 18552}
!44 = !{!45, !2, i64 0}
!45 = !{!"_Bubble", !2, i64 0, !46, i64 8}
!46 = !{!"gs_int_rect_s", !47, i64 0, !47, i64 8}
!47 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!48 = !{!8, !2, i64 18560}
!49 = !{!45, !6, i64 12}
!50 = !{!38, !2, i64 24}
!51 = !{!45, !6, i64 8}
!52 = !{!45, !6, i64 16}
!53 = !{!45, !6, i64 20}
!54 = !{!3, !3, i64 0}
!55 = !{!8, !2, i64 18472}
