; ModuleID = './gdevfpng.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.gx_device_fpng_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 }
%struct.fpng_buffer_s = type { i32, i32, [1 x i8] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@fpng_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @fpng_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @fpng_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @fpng_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"fpng\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_fpng_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 } { i32 18480, %struct.gx_device_procs_s* @fpng_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @fpng_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"DownScaleFactor\00", align 1
@fpng_print_page.pngsig = internal constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"IHDR\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fpng_init_buffer\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"zalloc (fpng_process)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"zfree (fpng_process)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @fpng_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %fdev = alloca %struct.gx_device_fpng_s*, align 8
  %head = alloca [13 x i8], align 1
  %process = alloca %struct.gx_process_page_options_s, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_fpng_s*
  store %struct.gx_device_fpng_s* %2, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %3 = bitcast [13 x i8]* %head to i8*
  call void @llvm.lifetime.start(i64 13, i8* %3) #2
  %4 = bitcast %struct.gx_process_page_options_s* %process to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #2
  %5 = bitcast %struct.gx_process_page_options_s* %process to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 48, i32 8, i1 false)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @fpng_print_page.pngsig, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %6) #4
  %arrayidx = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 0
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !5
  %9 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %9, i32 0, i32 68
  %10 = load i32, i32* %downscale_factor, align 4, !tbaa !22
  %call1 = call i32 @gx_downscaler_scale_rounded(i32 %8, i32 %10) #4
  call void @big32(i8* %arrayidx, i32 %call1) #4
  %arrayidx2 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 4
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 14
  %12 = load i32, i32* %height, align 4, !tbaa !24
  %13 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %downscale_factor3 = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %13, i32 0, i32 68
  %14 = load i32, i32* %downscale_factor3, align 4, !tbaa !22
  %call4 = call i32 @gx_downscaler_scale_rounded(i32 %12, i32 %14) #4
  call void @big32(i8* %arrayidx2, i32 %call4) #4
  %arrayidx5 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 8
  store i8 8, i8* %arrayidx5, align 1, !tbaa !25
  %arrayidx6 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 9
  store i8 2, i8* %arrayidx6, align 1, !tbaa !25
  %arrayidx7 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 10
  store i8 0, i8* %arrayidx7, align 1, !tbaa !25
  %arrayidx8 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 11
  store i8 0, i8* %arrayidx8, align 1, !tbaa !25
  %arrayidx9 = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i64 12
  store i8 0, i8* %arrayidx9, align 1, !tbaa !25
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %head, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @putchunk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay, i32 13, %struct._IO_FILE* %15) #4
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %process, i32 0, i32 0
  store i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* @fpng_init_buffer, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !26
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %process, i32 0, i32 1
  store void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* @fpng_free_buffer, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !28
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %process, i32 0, i32 2
  store i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* @fpng_process, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !29
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %process, i32 0, i32 3
  store i32 (i8*, %struct.gx_device_s*, i8*)* @fpng_output, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !30
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %17 = bitcast %struct._IO_FILE* %16 to i8*
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %process, i32 0, i32 4
  store i8* %17, i8** %arg, align 8, !tbaa !31
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_printer_s* %18 to %struct.gx_device_s*
  %20 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %downscale_factor10 = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %20, i32 0, i32 68
  %21 = load i32, i32* %downscale_factor10, align 4, !tbaa !22
  %call11 = call i32 @gx_downscaler_process_page(%struct.gx_device_s* %19, %struct.gx_process_page_options_s* %process, i32 %21) #4
  %22 = bitcast %struct.gx_process_page_options_s* %process to i8*
  call void @llvm.lifetime.end(i64 48, i8* %22) #2
  %23 = bitcast [13 x i8]* %head to i8*
  call void @llvm.lifetime.end(i64 13, i8* %23) #2
  %24 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call11
}

declare i32 @gx_default_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

declare i32 @gx_default_create_buf_device(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #0

declare i32 @gx_default_size_buf_device(%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32) #0

declare i32 @gx_default_setup_buf_device(%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32) #0

declare void @gx_default_destroy_buf_device(%struct.gx_device_s*) #0

declare void @gx_default_get_space_params(%struct.gx_device_printer_s*, %struct.gdev_space_params_s*) #0

declare i32 @gx_default_start_render_thread(%struct.gdev_prn_start_render_params_s*) #0

declare i32 @gx_default_open_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_close_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_buffer_page(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @fpng_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_fpng_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_fpng_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_fpng_s*
  store %struct.gx_device_fpng_s* %2, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %ecode, align 4, !tbaa !32
  %5 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %5, i32 0, i32 68
  %6 = load i32, i32* %downscale_factor, align 4, !tbaa !22
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %downscale_factor1 = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %7, i32 0, i32 68
  store i32 1, i32* %downscale_factor1, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %downscale_factor2 = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %9, i32 0, i32 68
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32* %downscale_factor2) #4
  store i32 %call, i32* %code, align 4, !tbaa !32
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %10, i32* %ecode, align 4, !tbaa !32
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call6 = call i32 @gdev_prn_get_params(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #4
  store i32 %call6, i32* %code, align 4, !tbaa !32
  %13 = load i32, i32* %code, align 4, !tbaa !32
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %14, i32* %ecode, align 4, !tbaa !32
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %15 = load i32, i32* %ecode, align 4, !tbaa !32
  %16 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_device_fpng_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @fpng_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_fpng_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %dsf = alloca i32, align 4
  %param_name = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_fpng_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_fpng_s*
  store %struct.gx_device_fpng_s* %2, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %6, i32 0, i32 68
  %7 = load i32, i32* %downscale_factor, align 4, !tbaa !22
  store i32 %7, i32* %dsf, align 4, !tbaa !32
  %8 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i32 0, i32* %ecode, align 4, !tbaa !32
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32* %dsf) #4
  store i32 %call, i32* %code, align 4, !tbaa !32
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %10 = load i32, i32* %dsf, align 4, !tbaa !32
  %cmp = icmp sge i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !32
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %11, i32* %ecode, align 4, !tbaa !32
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !33
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !35
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %param_name, align 8, !tbaa !1
  %17 = load i32, i32* %ecode, align 4, !tbaa !32
  %call1 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, i32 %17) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %18, %struct.gs_param_list_s* %19) #4
  store i32 %call2, i32* %code, align 4, !tbaa !32
  %20 = load i32, i32* %code, align 4, !tbaa !32
  %cmp3 = icmp slt i32 %20, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.epilog
  %21 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %21, i32* %ecode, align 4, !tbaa !32
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %sw.epilog
  %22 = load i32, i32* %dsf, align 4, !tbaa !32
  %23 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %pdev, align 8, !tbaa !1
  %downscale_factor6 = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %23, i32 0, i32 68
  store i32 %22, i32* %downscale_factor6, align 4, !tbaa !22
  %24 = load i32, i32* %ecode, align 4, !tbaa !32
  %25 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gx_device_fpng_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %24
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @fpng_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_fpng_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !32
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !32
  %0 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_fpng_s*
  store %struct.gx_device_fpng_s* %2, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %3 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !32
  %cmp = icmp eq i32 %3, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %4, i32 0, i32 68
  %5 = load i32, i32* %downscale_factor, align 4, !tbaa !22
  %6 = load i32, i32* %size.addr, align 4, !tbaa !32
  %call = call i32 @gx_downscaler_adjust_bandheight(i32 %5, i32 %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !32
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !32
  %call1 = call i32 @gdev_prn_dev_spec_op(%struct.gx_device_s* %7, i32 %8, i8* %9, i32 %10) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_downscaler_adjust_bandheight(i32, i32) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @big32(i8* %buf, i32 %v) #1 {
entry:
  %buf.addr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !32
  %0 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr = lshr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !25
  %2 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !25
  %4 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr5 = lshr i32 %4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !25
  %6 = load i32, i32* %v.addr, align 4, !tbaa !32
  %and9 = and i32 %6, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !25
  ret void
}

declare i32 @gx_downscaler_scale_rounded(i32, i32) #0

; Function Attrs: nounwind uwtable
define internal void @putchunk(i8* %tag, i8* %data, i32 %size, %struct._IO_FILE* %file) #1 {
entry:
  %tag.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %sum = alloca i32, align 4
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @write_big32(i32 %1, %struct._IO_FILE* %2) #4
  %3 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %3, i64 1, i64 4, %struct._IO_FILE* %4) #4
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !32
  %conv = sext i32 %6 to i64
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call1 = call i64 @fwrite(i8* %5, i64 1, i64 %conv, %struct._IO_FILE* %7) #4
  %call2 = call i64 @crc32(i64 0, i8* null, i32 0) #4
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %sum, align 4, !tbaa !32
  %8 = load i32, i32* %sum, align 4, !tbaa !32
  %conv4 = zext i32 %8 to i64
  %9 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call5 = call i64 @crc32(i64 %conv4, i8* %9, i32 4) #4
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %sum, align 4, !tbaa !32
  %10 = load i32, i32* %sum, align 4, !tbaa !32
  %conv7 = zext i32 %10 to i64
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !32
  %call8 = call i64 @crc32(i64 %conv7, i8* %11, i32 %12) #4
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %sum, align 4, !tbaa !32
  %13 = load i32, i32* %sum, align 4, !tbaa !32
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @write_big32(i32 %13, %struct._IO_FILE* %14) #4
  %15 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fpng_init_buffer(i8* %arg, %struct.gx_device_s* %dev, %struct.gs_memory_s* %mem, i32 %w, i32 %h, i8** %pbuffer) #1 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pbuffer.addr = alloca i8**, align 8
  %buffer = alloca %struct.fpng_buffer_s*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !32
  store i32 %h, i32* %h.addr, align 4, !tbaa !32
  store i8** %pbuffer, i8*** %pbuffer.addr, align 8, !tbaa !1
  %0 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %w.addr, align 4, !tbaa !32
  %mul = mul nsw i32 %2, 3
  %add = add nsw i32 %mul, 1
  %3 = load i32, i32* %h.addr, align 4, !tbaa !32
  %mul1 = mul nsw i32 %add, %3
  %conv = sext i32 %mul1 to i64
  %call = call i64 @deflateBound(%struct.z_stream_s* null, i64 %conv) #4
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %size, align 4, !tbaa !32
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size, align 4, !tbaa !32
  %conv3 = sext i32 %7 to i64
  %add4 = add i64 12, %conv3
  %conv5 = trunc i64 %add4 to i32
  %call6 = call i8* %5(%struct.gs_memory_s* %6, i32 %conv5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #4
  %8 = bitcast i8* %call6 to %struct.fpng_buffer_s*
  store %struct.fpng_buffer_s* %8, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %9 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %10 = bitcast %struct.fpng_buffer_s* %9 to i8*
  %11 = load i8**, i8*** %pbuffer.addr, align 8, !tbaa !1
  store i8* %10, i8** %11, align 8, !tbaa !1
  %12 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %cmp = icmp eq %struct.fpng_buffer_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %size, align 4, !tbaa !32
  %14 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %14, i32 0, i32 0
  store i32 %13, i32* %size8, align 4, !tbaa !40
  %15 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %compressed = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %15, i32 0, i32 1
  store i32 0, i32* %compressed, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @fpng_free_buffer(i8* %arg, %struct.gx_device_s* %dev, %struct.gs_memory_s* %mem, i8* %buffer) #1 {
entry:
  %arg.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %buffer.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fpng_process(i8* %arg, %struct.gx_device_s* %dev, %struct.gx_device_s* %bdev, %struct.gs_int_rect_s* %rect, i8* %buffer_) #1 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_int_rect_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %fdev = alloca %struct.gx_device_fpng_s*, align 8
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %w = alloca i32, align 4
  %raster = alloca i32, align 4
  %h = alloca i32, align 4
  %x7 = alloca i32, align 4
  %y8 = alloca i32, align 4
  %p9 = alloca i8*, align 8
  %sub10 = alloca i8, align 1
  %paeth = alloca i8, align 1
  %firstband = alloca i32, align 4
  %lastband = alloca i32, align 4
  %my_rect = alloca %struct.gs_int_rect_s, align 4
  %stream = alloca %struct.z_stream_s, align 8
  %err = alloca i32, align 4
  %page_height = alloca i32, align 4
  %buffer = alloca %struct.fpng_buffer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %rect, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_fpng_s*
  store %struct.gx_device_fpng_s* %3, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %4) #2
  %5 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %6, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !44
  %8 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %8, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4, !tbaa !47
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %w, align 4, !tbaa !32
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4, !tbaa !48
  %mul = mul nsw i32 %12, 3
  %mul2 = mul nsw i32 %mul, 8
  %add = add nsw i32 %mul2, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !32
  %13 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q3, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !50
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %16, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 1
  %17 = load i32, i32* %y5, align 4, !tbaa !51
  %sub6 = sub nsw i32 %15, %17
  store i32 %sub6, i32* %h, align 4, !tbaa !32
  %18 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i8** %p9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  call void @llvm.lifetime.start(i64 1, i8* %sub10) #2
  store i8 1, i8* %sub10, align 1, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %paeth) #2
  store i8 4, i8* %paeth, align 1, !tbaa !25
  %21 = bitcast i32* %firstband to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %22, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p11, i32 0, i32 1
  %23 = load i32, i32* %y12, align 4, !tbaa !51
  %cmp = icmp eq i32 %23, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %firstband, align 4, !tbaa !32
  %24 = bitcast i32* %lastband to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast %struct.gs_int_rect_s* %my_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #2
  %26 = bitcast %struct.z_stream_s* %stream to i8*
  call void @llvm.lifetime.start(i64 112, i8* %26) #2
  %27 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %page_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !52
  %31 = load %struct.gx_device_fpng_s*, %struct.gx_device_fpng_s** %fdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_fpng_s, %struct.gx_device_fpng_s* %31, i32 0, i32 68
  %32 = load i32, i32* %downscale_factor, align 4, !tbaa !22
  %call = call i32 @gx_downscaler_scale_rounded(i32 %30, i32 %32) #4
  store i32 %call, i32* %page_height, align 4, !tbaa !32
  %33 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load i8*, i8** %buffer_.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.fpng_buffer_s*
  store %struct.fpng_buffer_s* %35, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %36 = load i32, i32* %h, align 4, !tbaa !32
  %cmp13 = icmp sle i32 %36, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %37 = load i32, i32* %w, align 4, !tbaa !32
  %cmp15 = icmp sle i32 %37, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %38 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %38, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 1
  %39 = load i32, i32* %y18, align 4, !tbaa !50
  %40 = load i32, i32* %page_height, align 4, !tbaa !32
  %sub19 = sub nsw i32 %40, 1
  %cmp20 = icmp eq i32 %39, %sub19
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %lastband, align 4, !tbaa !32
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 1101070353, i64* %options, align 8, !tbaa !53
  %p22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 0
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p22, i32 0, i32 0
  store i32 0, i32* %x23, align 4, !tbaa !47
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 1
  store i32 0, i32* %y25, align 4, !tbaa !51
  %41 = load i32, i32* %w, align 4, !tbaa !32
  %q26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q26, i32 0, i32 0
  store i32 %41, i32* %x27, align 4, !tbaa !44
  %42 = load i32, i32* %h, align 4, !tbaa !32
  %q28 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q28, i32 0, i32 1
  store i32 %42, i32* %y29, align 4, !tbaa !50
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %44 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !55
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %call30 = call i32 %44(%struct.gx_device_s* %45, %struct.gs_int_rect_s* %my_rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #4
  store i32 %call30, i32* %code, align 4, !tbaa !32
  %46 = load i32, i32* %code, align 4, !tbaa !32
  %cmp31 = icmp slt i32 %46, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end
  %47 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  %48 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %48, i8** %p9, align 8, !tbaa !1
  %49 = load i32, i32* %raster, align 4, !tbaa !32
  %50 = load i32, i32* %h, align 4, !tbaa !32
  %sub35 = sub nsw i32 %50, 1
  %mul36 = mul nsw i32 %49, %sub35
  %51 = load i8*, i8** %p9, align 8, !tbaa !1
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  store i8* %add.ptr, i8** %p9, align 8, !tbaa !1
  %52 = load i32, i32* %h, align 4, !tbaa !32
  %sub37 = sub nsw i32 %52, 1
  store i32 %sub37, i32* %y8, align 4, !tbaa !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %if.end.34
  %53 = load i32, i32* %y8, align 4, !tbaa !32
  %cmp38 = icmp sgt i32 %53, 0
  br i1 %cmp38, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %w, align 4, !tbaa !32
  %sub40 = sub nsw i32 %54, 1
  %mul41 = mul nsw i32 3, %sub40
  %55 = load i8*, i8** %p9, align 8, !tbaa !1
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %55, i64 %idx.ext42
  store i8* %add.ptr43, i8** %p9, align 8, !tbaa !1
  %56 = load i32, i32* %w, align 4, !tbaa !32
  %sub44 = sub nsw i32 %56, 1
  store i32 %sub44, i32* %x7, align 4, !tbaa !32
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body
  %57 = load i32, i32* %x7, align 4, !tbaa !32
  %cmp46 = icmp sgt i32 %57, 0
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %58 = load i8*, i8** %p9, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i32, i32* %raster, align 4, !tbaa !32
  %call50 = call i32 @paeth_predict(i8* %add.ptr49, i32 %59) #4
  %60 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx51, align 1, !tbaa !25
  %conv52 = zext i8 %61 to i32
  %sub53 = sub nsw i32 %conv52, %call50
  %conv54 = trunc i32 %sub53 to i8
  store i8 %conv54, i8* %arrayidx51, align 1, !tbaa !25
  %62 = load i8*, i8** %p9, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i32, i32* %raster, align 4, !tbaa !32
  %call56 = call i32 @paeth_predict(i8* %add.ptr55, i32 %63) #4
  %64 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx57, align 1, !tbaa !25
  %conv58 = zext i8 %65 to i32
  %sub59 = sub nsw i32 %conv58, %call56
  %conv60 = trunc i32 %sub59 to i8
  store i8 %conv60, i8* %arrayidx57, align 1, !tbaa !25
  %66 = load i8*, i8** %p9, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i32, i32* %raster, align 4, !tbaa !32
  %call62 = call i32 @paeth_predict(i8* %add.ptr61, i32 %67) #4
  %68 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx63, align 1, !tbaa !25
  %conv64 = zext i8 %69 to i32
  %sub65 = sub nsw i32 %conv64, %call62
  %conv66 = trunc i32 %sub65 to i8
  store i8 %conv66, i8* %arrayidx63, align 1, !tbaa !25
  %70 = load i8*, i8** %p9, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i8, i8* %70, i64 -3
  store i8* %add.ptr67, i8** %p9, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %71 = load i32, i32* %x7, align 4, !tbaa !32
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %x7, align 4, !tbaa !32
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  %72 = load i32, i32* %raster, align 4, !tbaa !32
  %sub68 = sub nsw i32 0, %72
  %idxprom = sext i32 %sub68 to i64
  %73 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %73, i64 %idxprom
  %74 = load i8, i8* %arrayidx69, align 1, !tbaa !25
  %conv70 = zext i8 %74 to i32
  %75 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx71, align 1, !tbaa !25
  %conv72 = zext i8 %76 to i32
  %sub73 = sub nsw i32 %conv72, %conv70
  %conv74 = trunc i32 %sub73 to i8
  store i8 %conv74, i8* %arrayidx71, align 1, !tbaa !25
  %77 = load i32, i32* %raster, align 4, !tbaa !32
  %sub75 = sub nsw i32 1, %77
  %idxprom76 = sext i32 %sub75 to i64
  %78 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %78, i64 %idxprom76
  %79 = load i8, i8* %arrayidx77, align 1, !tbaa !25
  %conv78 = zext i8 %79 to i32
  %80 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx79, align 1, !tbaa !25
  %conv80 = zext i8 %81 to i32
  %sub81 = sub nsw i32 %conv80, %conv78
  %conv82 = trunc i32 %sub81 to i8
  store i8 %conv82, i8* %arrayidx79, align 1, !tbaa !25
  %82 = load i32, i32* %raster, align 4, !tbaa !32
  %sub83 = sub nsw i32 2, %82
  %idxprom84 = sext i32 %sub83 to i64
  %83 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %83, i64 %idxprom84
  %84 = load i8, i8* %arrayidx85, align 1, !tbaa !25
  %conv86 = zext i8 %84 to i32
  %85 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %85, i64 2
  %86 = load i8, i8* %arrayidx87, align 1, !tbaa !25
  %conv88 = zext i8 %86 to i32
  %sub89 = sub nsw i32 %conv88, %conv86
  %conv90 = trunc i32 %sub89 to i8
  store i8 %conv90, i8* %arrayidx87, align 1, !tbaa !25
  %87 = load i32, i32* %raster, align 4, !tbaa !32
  %88 = load i8*, i8** %p9, align 8, !tbaa !1
  %idx.ext91 = sext i32 %87 to i64
  %idx.neg = sub i64 0, %idx.ext91
  %add.ptr92 = getelementptr inbounds i8, i8* %88, i64 %idx.neg
  store i8* %add.ptr92, i8** %p9, align 8, !tbaa !1
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end
  %89 = load i32, i32* %y8, align 4, !tbaa !32
  %dec94 = add nsw i32 %89, -1
  store i32 %dec94, i32* %y8, align 4, !tbaa !32
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %90 = load i32, i32* %w, align 4, !tbaa !32
  %sub96 = sub nsw i32 %90, 1
  %mul97 = mul nsw i32 3, %sub96
  %91 = load i8*, i8** %p9, align 8, !tbaa !1
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %91, i64 %idx.ext98
  store i8* %add.ptr99, i8** %p9, align 8, !tbaa !1
  %92 = load i32, i32* %w, align 4, !tbaa !32
  %sub100 = sub nsw i32 %92, 1
  store i32 %sub100, i32* %x7, align 4, !tbaa !32
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.124, %for.end.95
  %93 = load i32, i32* %x7, align 4, !tbaa !32
  %cmp102 = icmp sgt i32 %93, 0
  br i1 %cmp102, label %for.body.104, label %for.end.126

for.body.104:                                     ; preds = %for.cond.101
  %94 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %94, i64 -1
  %95 = load i8, i8* %arrayidx105, align 1, !tbaa !25
  %conv106 = zext i8 %95 to i32
  %96 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %96, i64 2
  %97 = load i8, i8* %arrayidx107, align 1, !tbaa !25
  %conv108 = zext i8 %97 to i32
  %sub109 = sub nsw i32 %conv108, %conv106
  %conv110 = trunc i32 %sub109 to i8
  store i8 %conv110, i8* %arrayidx107, align 1, !tbaa !25
  %98 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %98, i64 -2
  %99 = load i8, i8* %arrayidx111, align 1, !tbaa !25
  %conv112 = zext i8 %99 to i32
  %100 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %100, i64 1
  %101 = load i8, i8* %arrayidx113, align 1, !tbaa !25
  %conv114 = zext i8 %101 to i32
  %sub115 = sub nsw i32 %conv114, %conv112
  %conv116 = trunc i32 %sub115 to i8
  store i8 %conv116, i8* %arrayidx113, align 1, !tbaa !25
  %102 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %102, i64 -3
  %103 = load i8, i8* %arrayidx117, align 1, !tbaa !25
  %conv118 = zext i8 %103 to i32
  %104 = load i8*, i8** %p9, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx119, align 1, !tbaa !25
  %conv120 = zext i8 %105 to i32
  %sub121 = sub nsw i32 %conv120, %conv118
  %conv122 = trunc i32 %sub121 to i8
  store i8 %conv122, i8* %arrayidx119, align 1, !tbaa !25
  %106 = load i8*, i8** %p9, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i8, i8* %106, i64 -3
  store i8* %add.ptr123, i8** %p9, align 8, !tbaa !1
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.104
  %107 = load i32, i32* %x7, align 4, !tbaa !32
  %dec125 = add nsw i32 %107, -1
  store i32 %dec125, i32* %x7, align 4, !tbaa !32
  br label %for.cond.101

for.end.126:                                      ; preds = %for.cond.101
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 8
  store i8* (i8*, i32, i32)* @zalloc, i8* (i8*, i32, i32)** %zalloc, align 8, !tbaa !56
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 9
  store void (i8*, i8*)* @zfree, void (i8*, i8*)** %zfree, align 8, !tbaa !58
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %110 = bitcast %struct.gs_memory_s* %109 to i8*
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 10
  store i8* %110, i8** %opaque, align 8, !tbaa !60
  %call127 = call i32 @deflateInit_(%struct.z_stream_s* %stream, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 112) #4
  store i32 %call127, i32* %err, align 4, !tbaa !32
  %111 = load i32, i32* %err, align 4, !tbaa !32
  %cmp128 = icmp ne i32 %111, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %for.end.126
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.131:                                       ; preds = %for.end.126
  %data132 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data132, i32 0, i64 0
  %112 = load i8*, i8** %arrayidx133, align 8, !tbaa !1
  store i8* %112, i8** %p9, align 8, !tbaa !1
  %113 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %data134 = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %113, i32 0, i32 2
  %arrayidx135 = getelementptr inbounds [1 x i8], [1 x i8]* %data134, i32 0, i64 0
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arrayidx135, i8** %next_out, align 8, !tbaa !61
  %114 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %114, i32 0, i32 0
  %115 = load i32, i32* %size, align 4, !tbaa !40
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 %115, i32* %avail_out, align 4, !tbaa !62
  %116 = load i32, i32* %firstband, align 4, !tbaa !32
  %tobool = icmp ne i32 %116, 0
  br i1 %tobool, label %if.end.143, label %if.then.136

if.then.136:                                      ; preds = %if.end.131
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %sub10, i8** %next_in, align 8, !tbaa !63
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 1, i32* %avail_in, align 4, !tbaa !64
  %call137 = call i32 @deflate(%struct.z_stream_s* %stream, i32 3) #4
  %117 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %data138 = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %117, i32 0, i32 2
  %arrayidx139 = getelementptr inbounds [1 x i8], [1 x i8]* %data138, i32 0, i64 0
  %next_out140 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arrayidx139, i8** %next_out140, align 8, !tbaa !61
  %118 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %size141 = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %118, i32 0, i32 0
  %119 = load i32, i32* %size141, align 4, !tbaa !40
  %avail_out142 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 %119, i32* %avail_out142, align 4, !tbaa !62
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 5
  store i64 0, i64* %total_out, align 8, !tbaa !65
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %if.end.131
  %next_in144 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %sub10, i8** %next_in144, align 8, !tbaa !63
  %120 = load i32, i32* %h, align 4, !tbaa !32
  %sub145 = sub nsw i32 %120, 1
  store i32 %sub145, i32* %y8, align 4, !tbaa !32
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.163, %if.end.143
  %121 = load i32, i32* %y8, align 4, !tbaa !32
  %cmp147 = icmp sge i32 %121, 0
  br i1 %cmp147, label %for.body.149, label %for.end.165

for.body.149:                                     ; preds = %for.cond.146
  %avail_in150 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 1, i32* %avail_in150, align 4, !tbaa !64
  %call151 = call i32 @deflate(%struct.z_stream_s* %stream, i32 0) #4
  %122 = load i8*, i8** %p9, align 8, !tbaa !1
  %next_in152 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %122, i8** %next_in152, align 8, !tbaa !63
  %123 = load i32, i32* %w, align 4, !tbaa !32
  %mul153 = mul nsw i32 %123, 3
  %avail_in154 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 %mul153, i32* %avail_in154, align 4, !tbaa !64
  %124 = load i32, i32* %y8, align 4, !tbaa !32
  %cmp155 = icmp eq i32 %124, 0
  br i1 %cmp155, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.149
  %125 = load i32, i32* %lastband, align 4, !tbaa !32
  %tobool157 = icmp ne i32 %125, 0
  %cond = select i1 %tobool157, i32 4, i32 3
  br label %cond.end

cond.false:                                       ; preds = %for.body.149
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond158 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  %call159 = call i32 @deflate(%struct.z_stream_s* %stream, i32 %cond158) #4
  %126 = load i32, i32* %raster, align 4, !tbaa !32
  %127 = load i8*, i8** %p9, align 8, !tbaa !1
  %idx.ext160 = sext i32 %126 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %127, i64 %idx.ext160
  store i8* %add.ptr161, i8** %p9, align 8, !tbaa !1
  %next_in162 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %paeth, i8** %next_in162, align 8, !tbaa !63
  br label %for.inc.163

for.inc.163:                                      ; preds = %cond.end
  %128 = load i32, i32* %y8, align 4, !tbaa !32
  %dec164 = add nsw i32 %128, -1
  store i32 %dec164, i32* %y8, align 4, !tbaa !32
  br label %for.cond.146

for.end.165:                                      ; preds = %for.cond.146
  %call166 = call i32 @deflateEnd(%struct.z_stream_s* %stream) #4
  %total_out167 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 5
  %129 = load i64, i64* %total_out167, align 8, !tbaa !65
  %conv168 = trunc i64 %129 to i32
  %130 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %compressed = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %130, i32 0, i32 1
  store i32 %conv168, i32* %compressed, align 4, !tbaa !42
  %131 = load i32, i32* %code, align 4, !tbaa !32
  store i32 %131, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.165, %if.then.130, %if.then.33, %if.then
  %132 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast i32* %page_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast %struct.z_stream_s* %stream to i8*
  call void @llvm.lifetime.end(i64 112, i8* %135) #2
  %136 = bitcast %struct.gs_int_rect_s* %my_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %136) #2
  %137 = bitcast i32* %lastband to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %firstband to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  call void @llvm.lifetime.end(i64 1, i8* %paeth) #2
  call void @llvm.lifetime.end(i64 1, i8* %sub10) #2
  %139 = bitcast i8** %p9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %145) #2
  %146 = bitcast %struct.gx_device_fpng_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal i32 @fpng_output(i8* %arg, %struct.gx_device_s* %dev, i8* %buffer_) #1 {
entry:
  %arg.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca %struct.fpng_buffer_s*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %file, align 8, !tbaa !1
  %3 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %buffer_.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.fpng_buffer_s*
  store %struct.fpng_buffer_s* %5, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %6 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %data, i32 0, i64 0
  %7 = load %struct.fpng_buffer_s*, %struct.fpng_buffer_s** %buffer, align 8, !tbaa !1
  %compressed = getelementptr inbounds %struct.fpng_buffer_s, %struct.fpng_buffer_s* %7, i32 0, i32 1
  %8 = load i32, i32* %compressed, align 4, !tbaa !42
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  call void @putchunk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %arrayidx, i32 %8, %struct._IO_FILE* %9) #4
  %10 = bitcast %struct.fpng_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i32 0
}

declare i32 @gx_downscaler_process_page(%struct.gx_device_s*, %struct.gx_process_page_options_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @write_big32(i32 %v, %struct._IO_FILE* %file) #1 {
entry:
  %v.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i32 %v, i32* %v.addr, align 4, !tbaa !32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr = ashr i32 %0, 24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %shr, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr1 = ashr i32 %2, 16
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %shr1, %struct._IO_FILE* %3) #4
  %4 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr3 = ashr i32 %4, 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %shr3, %struct._IO_FILE* %5) #4
  %6 = load i32, i32* %v.addr, align 4, !tbaa !32
  %shr5 = ashr i32 %6, 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 %shr5, %struct._IO_FILE* %7) #4
  ret void
}

declare i64 @crc32(i64, i8*, i32) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i64 @deflateBound(%struct.z_stream_s*, i64) #0

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @paeth_predict(i8* %d, i32 %raster) #3 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i32, align 4
  %pa = alloca i32, align 4
  %pb = alloca i32, align 4
  %pc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !32
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 -3
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %a, align 4, !tbaa !32
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %raster.addr, align 4, !tbaa !32
  %sub = sub nsw i32 0, %4
  %idxprom = sext i32 %sub to i64
  %5 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !25
  %conv2 = zext i8 %6 to i32
  store i32 %conv2, i32* %b, align 4, !tbaa !32
  %7 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !32
  %sub3 = sub nsw i32 -3, %8
  %idxprom4 = sext i32 %sub3 to i64
  %9 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1, !tbaa !25
  %conv6 = zext i8 %10 to i32
  store i32 %conv6, i32* %c, align 4, !tbaa !32
  %11 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %a, align 4, !tbaa !32
  %13 = load i32, i32* %b, align 4, !tbaa !32
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %c, align 4, !tbaa !32
  %sub7 = sub nsw i32 %add, %14
  store i32 %sub7, i32* %p, align 4, !tbaa !32
  %15 = bitcast i32* %pa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %pb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %pc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %p, align 4, !tbaa !32
  %19 = load i32, i32* %a, align 4, !tbaa !32
  %sub8 = sub nsw i32 %18, %19
  store i32 %sub8, i32* %pa, align 4, !tbaa !32
  %20 = load i32, i32* %pa, align 4, !tbaa !32
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %pa, align 4, !tbaa !32
  %sub10 = sub nsw i32 0, %21
  store i32 %sub10, i32* %pa, align 4, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %p, align 4, !tbaa !32
  %23 = load i32, i32* %b, align 4, !tbaa !32
  %sub11 = sub nsw i32 %22, %23
  store i32 %sub11, i32* %pb, align 4, !tbaa !32
  %24 = load i32, i32* %pb, align 4, !tbaa !32
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %25 = load i32, i32* %pb, align 4, !tbaa !32
  %sub15 = sub nsw i32 0, %25
  store i32 %sub15, i32* %pb, align 4, !tbaa !32
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %26 = load i32, i32* %p, align 4, !tbaa !32
  %27 = load i32, i32* %c, align 4, !tbaa !32
  %sub17 = sub nsw i32 %26, %27
  store i32 %sub17, i32* %pc, align 4, !tbaa !32
  %28 = load i32, i32* %pc, align 4, !tbaa !32
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %29 = load i32, i32* %pc, align 4, !tbaa !32
  %sub21 = sub nsw i32 0, %29
  store i32 %sub21, i32* %pc, align 4, !tbaa !32
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %30 = load i32, i32* %pa, align 4, !tbaa !32
  %31 = load i32, i32* %pb, align 4, !tbaa !32
  %cmp23 = icmp sle i32 %30, %31
  br i1 %cmp23, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.22
  %32 = load i32, i32* %pa, align 4, !tbaa !32
  %33 = load i32, i32* %pc, align 4, !tbaa !32
  %cmp25 = icmp sle i32 %32, %33
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %a, align 4, !tbaa !32
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %land.lhs.true, %if.end.22
  %35 = load i32, i32* %pb, align 4, !tbaa !32
  %36 = load i32, i32* %pc, align 4, !tbaa !32
  %cmp29 = icmp sle i32 %35, %36
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %37 = load i32, i32* %b, align 4, !tbaa !32
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %38 = load i32, i32* %c, align 4, !tbaa !32
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31, %if.then.27
  %39 = bitcast i32* %pc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %pb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %pa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i8* @zalloc(i8* %mem_, i32 %items, i32 %size) #1 {
entry:
  %mem_.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  store i8* %mem_, i8** %mem_.addr, align 8, !tbaa !1
  store i32 %items, i32* %items.addr, align 4, !tbaa !32
  store i32 %size, i32* %size.addr, align 4, !tbaa !32
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %mem_.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load i32, i32* %items.addr, align 4, !tbaa !32
  %7 = load i32, i32* %size.addr, align 4, !tbaa !32
  %mul = mul i32 %6, %7
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %mul, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #4
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @zfree(i8* %mem_, i8* %address) #1 {
entry:
  %mem_.addr = alloca i8*, align 8
  %address.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store i8* %mem_, i8** %mem_.addr, align 8, !tbaa !1
  store i8* %address, i8** %address.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %mem_.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load i8*, i8** %address.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #4
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #0

declare i32 @deflate(%struct.z_stream_s*, i32) #0

declare i32 @deflateEnd(%struct.z_stream_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 832}
!6 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
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
!19 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !20, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!20 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!22 = !{!23, !7, i64 18472}
!23 = !{!"gx_device_fpng_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472}
!24 = !{!6, !7, i64 836}
!25 = !{!3, !3, i64 0}
!26 = !{!27, !2, i64 0}
!27 = !{!"gx_process_page_options_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40}
!28 = !{!27, !2, i64 8}
!29 = !{!27, !2, i64 16}
!30 = !{!27, !2, i64 24}
!31 = !{!27, !2, i64 32}
!32 = !{!7, !7, i64 0}
!33 = !{!34, !2, i64 0}
!34 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!35 = !{!36, !2, i64 56}
!36 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!37 = !{!38, !2, i64 64}
!38 = !{!"gs_memory_s", !2, i64 0, !39, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!40 = !{!41, !7, i64 0}
!41 = !{!"fpng_buffer_s", !7, i64 0, !7, i64 4, !3, i64 8}
!42 = !{!41, !7, i64 4}
!43 = !{!38, !2, i64 24}
!44 = !{!45, !7, i64 8}
!45 = !{!"gs_int_rect_s", !46, i64 0, !46, i64 8}
!46 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!47 = !{!45, !7, i64 0}
!48 = !{!49, !7, i64 832}
!49 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!50 = !{!45, !7, i64 12}
!51 = !{!45, !7, i64 4}
!52 = !{!49, !7, i64 836}
!53 = !{!54, !9, i64 0}
!54 = !{!"gs_get_bits_params_s", !9, i64 0, !3, i64 8, !7, i64 520, !7, i64 524, !7, i64 528}
!55 = !{!49, !2, i64 1448}
!56 = !{!57, !2, i64 64}
!57 = !{!"z_stream_s", !2, i64 0, !7, i64 8, !9, i64 16, !2, i64 24, !7, i64 32, !9, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !7, i64 88, !9, i64 96, !9, i64 104}
!58 = !{!57, !2, i64 72}
!59 = !{!49, !2, i64 24}
!60 = !{!57, !2, i64 80}
!61 = !{!57, !2, i64 24}
!62 = !{!57, !7, i64 32}
!63 = !{!57, !2, i64 0}
!64 = !{!57, !7, i64 8}
!65 = !{!57, !9, i64 40}
