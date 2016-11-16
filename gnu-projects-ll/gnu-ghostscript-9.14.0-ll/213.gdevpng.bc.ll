; ModuleID = './gdevpng.bc'
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
%struct.gx_device_png_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 }
%struct.gx_device_pngalpha_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_downscaler_s = type { %struct.gx_device_s*, i32, i32, i32, i32, i8*, i32, i32*, i8*, i8*, i32, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, %struct.gs_get_bits_params_s, i32 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.png_text_struct = type { i32, i8*, i8*, i64, i64, i8*, i8* }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@prn_bg_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [8 x i8] c"pngmono\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_pngmono_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@png16_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pc_4bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pc_4bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"png16\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_png16_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @png16_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 4, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@png256_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pc_8bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pc_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"png256\00", align 1
@gs_png256_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @png256_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 5, i32 5, i32 6, i32 6, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@pnggray_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_get_params_downscale, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_put_params_downscale, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"pnggray\00", align 1
@gs_pnggray_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @pnggray_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@pngmonod_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_get_params_downscale_mfs, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_put_params_downscale_mfs, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"pngmonod\00", align 1
@gs_pngmonod_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @pngmonod_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page_monod, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@png16m_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_get_params_downscale, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @png_put_params_downscale, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"png16m\00", align 1
@gs_png16m_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @png16m_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@png48_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"png48\00", align 1
@gs_png48_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @png48_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 48, i8 -1, i32 0, i32 65535, i32 1, i32 65536, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0 }, align 8
@pngalpha_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pngalpha_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pngalpha_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @pngalpha_decode_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pngalpha_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pngalpha_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @pngalpha_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevRGB_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevRGB_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @pngalpha_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @pngalpha_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pngalpha_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @pngalpha_put_image, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"pngalpha\00", align 1
@gs_pngalpha_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 } { i32 18488, %struct.gx_device_procs_s* @pngalpha_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 32, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 4, i32 4 }, i32 0, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @png_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 0, i32 16777215 }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"DownScaleFactor\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"MinFeatureSize\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"BackgroundColor\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"copy_alpha(lin)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"copy_alpha(lout)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"png raster buffer\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"1.5.13\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%s %d.%02d\00", align 1
@gs_product = external constant i8*, align 8
@gs_revision = external constant i64, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @png_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_printer_s* %0 to %struct.gx_device_png_s*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @do_png_print_page(%struct.gx_device_png_s* %1, %struct._IO_FILE* %2, i32 0) #6
  ret i32 %call
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

; Function Attrs: nounwind uwtable
define internal i32 @png_print_page_monod(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_printer_s* %0 to %struct.gx_device_png_s*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @do_png_print_page(%struct.gx_device_png_s* %1, %struct._IO_FILE* %2, i32 1) #6
  ret i32 %call
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @pc_4bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @pc_4bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i64 @pc_8bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @pc_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @png_get_params_downscale(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_png_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_png_s*
  store %struct.gx_device_png_s* %2, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %5 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %5, i32 0, i32 68
  %6 = load i32, i32* %downscale_factor, align 4, !tbaa !7
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %downscale_factor1 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %7, i32 0, i32 68
  store i32 1, i32* %downscale_factor1, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %downscale_factor2 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %9, i32 0, i32 68
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32* %downscale_factor2) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %ecode, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call6 = call i32 @gdev_prn_get_params(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %ecode, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %15 = load i32, i32* %ecode, align 4, !tbaa !5
  %16 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @png_put_params_downscale(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_png_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %dsf = alloca i32, align 4
  %param_name = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_png_s*
  store %struct.gx_device_png_s* %2, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %6, i32 0, i32 68
  %7 = load i32, i32* %downscale_factor, align 4, !tbaa !7
  store i32 %7, i32* %dsf, align 4, !tbaa !5
  %8 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32* %dsf) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %10 = load i32, i32* %dsf, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %ecode, align 4, !tbaa !5
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !23
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !25
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %param_name, align 8, !tbaa !1
  %17 = load i32, i32* %ecode, align 4, !tbaa !5
  %call1 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, i32 %17) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %18, %struct.gs_param_list_s* %19) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %20, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.epilog
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %ecode, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %sw.epilog
  %22 = load i32, i32* %dsf, align 4, !tbaa !5
  %23 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %downscale_factor6 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %23, i32 0, i32 68
  store i32 %22, i32* %downscale_factor6, align 4, !tbaa !7
  %24 = load i32, i32* %ecode, align 4, !tbaa !5
  %25 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @png_get_params_downscale_mfs(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_png_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_png_s*
  store %struct.gx_device_png_s* %2, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %min_feature_size = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %6, i32 0, i32 69
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %min_feature_size) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @png_get_params_downscale(%struct.gx_device_s* %8, %struct.gs_param_list_s* %9) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %ecode, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %ecode, align 4, !tbaa !5
  %13 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @png_put_params_downscale_mfs(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_png_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %mfs = alloca i32, align 4
  %param_name = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_png_s*
  store %struct.gx_device_png_s* %2, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mfs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %min_feature_size = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %6, i32 0, i32 69
  %7 = load i32, i32* %min_feature_size, align 4, !tbaa !27
  store i32 %7, i32* %mfs, align 4, !tbaa !5
  %8 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %mfs) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %10 = load i32, i32* %mfs, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %11 = load i32, i32* %mfs, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %11, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %ecode, align 4, !tbaa !5
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !23
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 7
  %15 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !25
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %param_name, align 8, !tbaa !1
  %18 = load i32, i32* %ecode, align 4, !tbaa !5
  %call2 = call i32 %15(%struct.gs_param_list_s* %16, i8* %17, i32 %18) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %if.then
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @png_put_params_downscale(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20) #6
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %21, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.epilog
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %ecode, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %sw.epilog
  %23 = load i32, i32* %mfs, align 4, !tbaa !5
  %24 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev, align 8, !tbaa !1
  %min_feature_size7 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %24, i32 0, i32 69
  store i32 %23, i32* %min_feature_size7, align 4, !tbaa !27
  %25 = load i32, i32* %ecode, align 4, !tbaa !5
  %26 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i32* %mfs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_device_png_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret i32 %25
}

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_pngalpha_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pngalpha_s*
  store %struct.gx_device_pngalpha_s* %2, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %4, i32 0, i32 44
  %buf_procs = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 2
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  store i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @pngalpha_create_buf_device, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !28
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @pngalpha_encode_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !30
  %conv = zext i16 %1 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %shl = shl i32 %conv2, 8
  %conv3 = zext i32 %shl to i64
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %2, i64 1
  %3 = load i16, i16* %arrayidx4, align 2, !tbaa !30
  %conv5 = zext i16 %3 to i32
  %mul6 = mul i32 %conv5, 65281
  %add7 = add i32 %mul6, 8388608
  %shr8 = lshr i32 %add7, 24
  %conv9 = trunc i32 %shr8 to i16
  %conv10 = zext i16 %conv9 to i64
  %shl11 = shl i64 %conv10, 16
  %add12 = add i64 %conv3, %shl11
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx13, align 2, !tbaa !30
  %conv14 = zext i16 %5 to i32
  %mul15 = mul i32 %conv14, 65281
  %add16 = add i32 %mul15, 8388608
  %shr17 = lshr i32 %add16, 24
  %conv18 = trunc i32 %shr17 to i16
  %conv19 = zext i16 %conv18 to i64
  %shl20 = shl i64 %conv19, 24
  %add21 = add i64 %add12, %shl20
  ret i64 %add21
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !31
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %shl = shl i64 %and, 8
  %1 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr1 = lshr i64 %1, 24
  %and2 = and i64 %shr1, 255
  %shr3 = lshr i64 %and2, 0
  %add = add i64 %shl, %shr3
  %conv = trunc i64 %add to i16
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !30
  %3 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr4 = lshr i64 %3, 16
  %and5 = and i64 %shr4, 255
  %shl6 = shl i64 %and5, 8
  %4 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr7 = lshr i64 %4, 16
  %and8 = and i64 %shr7, 255
  %shr9 = lshr i64 %and8, 0
  %add10 = add i64 %shl6, %shr9
  %conv11 = trunc i64 %add10 to i16
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv11, i16* %arrayidx12, align 2, !tbaa !30
  %6 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr13 = lshr i64 %6, 8
  %and14 = and i64 %shr13, 255
  %shl15 = shl i64 %and14, 8
  %7 = load i64, i64* %color.addr, align 8, !tbaa !31
  %shr16 = lshr i64 %7, 8
  %and17 = and i64 %shr16, 255
  %shr18 = lshr i64 %and17, 0
  %add19 = add i64 %shl15, %shr18
  %conv20 = trunc i64 %add19 to i16
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !30
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppdev = alloca %struct.gx_device_pngalpha_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pngalpha_s*
  store %struct.gx_device_pngalpha_s* %2, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %background = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %9, i32 0, i32 70
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32* %background) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %10 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %10, i32 0, i32 68
  %11 = load i32, i32* %downscale_factor, align 4, !tbaa !32
  %cmp2 = icmp slt i32 %11, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %downscale_factor4 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %12, i32 0, i32 68
  store i32 1, i32* %downscale_factor4, align 4, !tbaa !32
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %downscale_factor6 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %14, i32 0, i32 68
  %call7 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32* %downscale_factor6) #6
  store i32 %call7, i32* %ecode, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %15 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %15, i32* %code, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %17 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppdev = alloca %struct.gx_device_pngalpha_s*, align 8
  %background = alloca i32, align 4
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %dsf = alloca i32, align 4
  %param_name = alloca i8*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pngalpha_s*
  store %struct.gx_device_pngalpha_s* %2, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %background to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %7, i32 0, i32 68
  %8 = load i32, i32* %downscale_factor, align 4, !tbaa !32
  store i32 %8, i32* %dsf, align 4, !tbaa !5
  %9 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32* %background) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %11 = load i32, i32* %background, align 4, !tbaa !5
  %and = and i32 %11, 16777215
  %12 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %background1 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %12, i32 0, i32 70
  store i32 %and, i32* %background1, align 4, !tbaa !33
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !23
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 7
  %15 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !25
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 %15(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 %17) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call4 = call i32 @param_read_int(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32* %dsf) #6
  store i32 %call4, i32* %ecode, align 4, !tbaa !5
  switch i32 %call4, label %sw.default.6 [
    i32 0, label %sw.bb.5
    i32 1, label %sw.epilog.10
  ]

sw.bb.5:                                          ; preds = %sw.epilog
  %19 = load i32, i32* %dsf, align 4, !tbaa !5
  %cmp = icmp sge i32 %19, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  br label %sw.epilog.10

if.end:                                           ; preds = %sw.bb.5
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %sw.default.6

sw.default.6:                                     ; preds = %sw.epilog, %if.end
  %20 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %20, i32* %code, align 4, !tbaa !5
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %21, i32 0, i32 0
  %22 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs7, align 8, !tbaa !23
  %signal_error8 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %22, i32 0, i32 7
  %23 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error8, align 8, !tbaa !25
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %param_name, align 8, !tbaa !1
  %26 = load i32, i32* %ecode, align 4, !tbaa !5
  %call9 = call i32 %23(%struct.gs_param_list_s* %24, i8* %25, i32 %26) #6
  br label %sw.epilog.10

sw.epilog.10:                                     ; preds = %sw.default.6, %sw.epilog, %if.then
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %27, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %sw.epilog.10
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %28, %struct.gs_param_list_s* %29) #6
  store i32 %call13, i32* %code, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %sw.epilog.10
  %30 = load i32, i32* %dsf, align 4, !tbaa !5
  %31 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %downscale_factor15 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %31, i32 0, i32 68
  store i32 %30, i32* %downscale_factor15, align 4, !tbaa !32
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %33 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i32* %dsf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %background to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %bpp = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %in_size = alloca i32, align 4
  %lin = alloca i8*, align 8
  %out_size = alloca i32, align 4
  %lout = alloca i8*, align 8
  %code = alloca i32, align 4
  %color_cv = alloca [64 x i16], align 16
  %ry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %line = alloca i8*, align 8
  %sx = alloca i32, align 4
  %rx = alloca i32, align 4
  %l_dptr = alloca i8*, align 8
  %l_dbit = alloca i32, align 4
  %l_dbyte = alloca i8, align 1
  %l_xprev = alloca i32, align 4
  %previous = alloca i64, align 8
  %composite = alloca i64, align 8
  %alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %cv = alloca [64 x i16], align 16
  %i = alloca i32, align 4
  %old_coverage = alloca i32, align 4
  %new_coverage = alloca i32, align 4
  %code292 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !31
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !31
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !34
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %7 = load i64, i64* %id.addr, align 8, !tbaa !31
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %11 = load i32, i32* %height.addr, align 4, !tbaa !5
  %12 = load i64, i64* %color.addr, align 8, !tbaa !31
  %call = call i32 %2(%struct.gx_device_s* %3, i8* %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 -1, i64 %12) #6
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth1, align 2, !tbaa !37
  %conv = zext i16 %19 to i32
  store i32 %conv, i32* %bpp, align 4, !tbaa !5
  %20 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %22 = load i32, i32* %num_components, align 4, !tbaa !38
  store i32 %22, i32* %ncomps, align 4, !tbaa !5
  %23 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 @gx_device_raster(%struct.gx_device_s* %24, i32 0) #6
  store i32 %call3, i32* %in_size, align 4, !tbaa !5
  %25 = bitcast i8** %lin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i8** %lout to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %29 = bitcast [64 x i16]* %color_cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %29) #2
  %30 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.body
  %31 = load i32, i32* %x.addr, align 4, !tbaa !5
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %31, %32
  %cmp5 = icmp slt i32 %or, 0
  br i1 %cmp5, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %do.body.4
  %33 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %33, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %35 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %35, %34
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %37 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %37, %36
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %38, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %40, %39
  store i32 %add15, i32* %height.addr, align 4, !tbaa !5
  %41 = load i32, i32* %y.addr, align 4, !tbaa !5
  %42 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %41, %42
  %43 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !31
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.body.4
  %44 = load i32, i32* %width.addr, align 4, !tbaa !5
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width18, align 4, !tbaa !39
  %47 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %46, %47
  %cmp20 = icmp sgt i32 %44, %sub19
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.17
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 13
  %49 = load i32, i32* %width23, align 4, !tbaa !39
  %50 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %49, %50
  store i32 %sub24, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.17
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %51 = load i32, i32* %height.addr, align 4, !tbaa !5
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 14
  %53 = load i32, i32* %height26, align 4, !tbaa !40
  %54 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 %53, %54
  %cmp28 = icmp sgt i32 %51, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %do.end
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 14
  %56 = load i32, i32* %height31, align 4, !tbaa !40
  %57 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub32 = sub nsw i32 %56, %57
  store i32 %sub32, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %do.end
  %58 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %58, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %59 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %59, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.39:                                        ; preds = %lor.lhs.false
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %60 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %60, i8** %row, align 8, !tbaa !1
  %61 = load i32, i32* %width.addr, align 4, !tbaa !5
  %62 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul42 = mul nsw i32 %61, %62
  %add43 = add nsw i32 %mul42, 63
  %shr = ashr i32 %add43, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %out_size, align 4, !tbaa !5
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 7
  %64 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !41
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %66 = load i32, i32* %in_size, align 4, !tbaa !5
  %call45 = call i8* %64(%struct.gs_memory_s* %65, i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #6
  store i8* %call45, i8** %lin, align 8, !tbaa !1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %alloc_bytes47 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs46, i32 0, i32 7
  %68 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes47, align 8, !tbaa !41
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %70 = load i32, i32* %out_size, align 4, !tbaa !5
  %call48 = call i8* %68(%struct.gs_memory_s* %69, i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %call48, i8** %lout, align 8, !tbaa !1
  %71 = load i8*, i8** %lin, align 8, !tbaa !1
  %cmp49 = icmp eq i8* %71, null
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.end.41
  %72 = load i8*, i8** %lout, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %72, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %do.end.41
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.55:                                        ; preds = %lor.lhs.false.51
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 52
  %74 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !44
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %76 = load i64, i64* %color.addr, align 8, !tbaa !31
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %color_cv, i32 0, i32 0
  %call57 = call i32 %74(%struct.gx_device_s* %75, i64 %76, i16* %arraydecay) #6
  %77 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %77, i32* %ry, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.324, %if.end.55
  %78 = load i32, i32* %ry, align 4, !tbaa !5
  %79 = load i32, i32* %y.addr, align 4, !tbaa !5
  %80 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add58 = add nsw i32 %79, %80
  %cmp59 = icmp slt i32 %78, %add58
  br i1 %cmp59, label %for.body, label %for.end.328

for.body:                                         ; preds = %for.cond
  %81 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  %83 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #2
  %84 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = load i8*, i8** %lout, align 8, !tbaa !1
  store i8* %85, i8** %l_dptr, align 8, !tbaa !1
  %86 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #2
  store i32 0, i32* %l_dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_dbyte) #2
  %87 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %tobool = icmp ne i32 %87, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %88 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %89 = load i8, i8* %88, align 1, !tbaa !45
  %conv61 = zext i8 %89 to i32
  %90 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr62 = ashr i32 65280, %90
  %and = and i32 %conv61, %shr62
  %conv63 = trunc i32 %and to i8
  %conv64 = zext i8 %conv63 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv64, %cond.true ], [ 0, %cond.false ]
  %conv65 = trunc i32 %cond to i8
  store i8 %conv65, i8* %l_dbyte, align 1, !tbaa !45
  %91 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #2
  %92 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %92, i32* %l_xprev, align 4, !tbaa !5
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 12
  %94 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !46
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %96 = load i32, i32* %ry, align 4, !tbaa !5
  %97 = load i8*, i8** %lin, align 8, !tbaa !1
  %call67 = call i32 %94(%struct.gx_device_s* %95, i32 %96, i8* %97, i8** %line) #6
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %98, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %cond.end
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.315

if.end.71:                                        ; preds = %cond.end
  %99 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %99, i32* %sx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %100, i32* %rx, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.285, %if.end.71
  %101 = load i32, i32* %sx, align 4, !tbaa !5
  %102 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %103 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add73 = add nsw i32 %102, %103
  %cmp74 = icmp slt i32 %101, %add73
  br i1 %cmp74, label %for.body.76, label %for.end.288

for.body.76:                                      ; preds = %for.cond.72
  %104 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  store i64 -1, i64* %previous, align 8, !tbaa !31
  %105 = bitcast i64* %composite to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #2
  %106 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #2
  %108 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %108, 2
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.body.76
  %109 = load i32, i32* %sx, align 4, !tbaa !5
  %shr80 = ashr i32 %109, 2
  %idxprom = sext i32 %shr80 to i64
  %110 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %110, i64 %idxprom
  %111 = load i8, i8* %arrayidx, align 1, !tbaa !45
  %conv81 = zext i8 %111 to i32
  %112 = load i32, i32* %sx, align 4, !tbaa !5
  %and82 = and i32 %112, 3
  %sub83 = sub nsw i32 3, %and82
  %shl84 = shl i32 %sub83, 1
  %shr85 = ashr i32 %conv81, %shl84
  %and86 = and i32 %shr85, 3
  %mul87 = mul nsw i32 %and86, 5
  store i32 %mul87, i32* %alpha, align 4, !tbaa !5
  br label %if.end.100

if.else:                                          ; preds = %for.body.76
  %113 = load i32, i32* %sx, align 4, !tbaa !5
  %shr88 = ashr i32 %113, 1
  %idxprom89 = sext i32 %shr88 to i64
  %114 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %114, i64 %idxprom89
  %115 = load i8, i8* %arrayidx90, align 1, !tbaa !45
  %conv91 = zext i8 %115 to i32
  store i32 %conv91, i32* %alpha2, align 4, !tbaa !5
  %116 = load i32, i32* %sx, align 4, !tbaa !5
  %and92 = and i32 %116, 1
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %if.else
  %117 = load i32, i32* %alpha2, align 4, !tbaa !5
  %and95 = and i32 %117, 15
  br label %cond.end.98

cond.false.96:                                    ; preds = %if.else
  %118 = load i32, i32* %alpha2, align 4, !tbaa !5
  %shr97 = ashr i32 %118, 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.94
  %cond99 = phi i32 [ %and95, %cond.true.94 ], [ %shr97, %cond.false.96 ]
  store i32 %cond99, i32* %alpha, align 4, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %cond.end.98, %if.then.79
  %119 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp101 = icmp eq i32 %119, 15
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.end.100
  %120 = load i64, i64* %color.addr, align 8, !tbaa !31
  store i64 %120, i64* %composite, align 8, !tbaa !31
  br label %if.end.194

if.else.104:                                      ; preds = %if.end.100
  %121 = load i64, i64* %previous, align 8, !tbaa !31
  %cmp105 = icmp eq i64 %121, -1
  br i1 %cmp105, label %if.then.107, label %if.end.126

if.then.107:                                      ; preds = %if.else.104
  %122 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #2
  %123 = load i8*, i8** %line, align 8, !tbaa !1
  %124 = load i32, i32* %rx, align 4, !tbaa !5
  %125 = load i32, i32* %bpp, align 4, !tbaa !5
  %shr108 = ashr i32 %125, 3
  %mul109 = mul nsw i32 %124, %shr108
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %123, i64 %idx.ext110
  store i8* %add.ptr111, i8** %src, align 8, !tbaa !1
  store i64 0, i64* %previous, align 8, !tbaa !31
  %126 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr, i8** %src, align 8, !tbaa !1
  %127 = load i8, i8* %126, align 1, !tbaa !45
  %conv112 = zext i8 %127 to i64
  %shl113 = shl i64 %conv112, 24
  %128 = load i64, i64* %previous, align 8, !tbaa !31
  %add114 = add i64 %128, %shl113
  store i64 %add114, i64* %previous, align 8, !tbaa !31
  %129 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr115 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr115, i8** %src, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !45
  %conv116 = zext i8 %130 to i64
  %shl117 = shl i64 %conv116, 16
  %131 = load i64, i64* %previous, align 8, !tbaa !31
  %add118 = add i64 %131, %shl117
  store i64 %add118, i64* %previous, align 8, !tbaa !31
  %132 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr119, i8** %src, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !45
  %conv120 = zext i8 %133 to i64
  %shl121 = shl i64 %conv120, 8
  %134 = load i64, i64* %previous, align 8, !tbaa !31
  %add122 = add i64 %134, %shl121
  store i64 %add122, i64* %previous, align 8, !tbaa !31
  %135 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr123, i8** %src, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !45
  %conv124 = zext i8 %136 to i64
  %137 = load i64, i64* %previous, align 8, !tbaa !31
  %add125 = add i64 %137, %conv124
  store i64 %add125, i64* %previous, align 8, !tbaa !31
  %138 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.107, %if.else.104
  %139 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp127 = icmp eq i32 %139, 0
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.end.126
  %140 = load i64, i64* %previous, align 8, !tbaa !31
  store i64 %140, i64* %composite, align 8, !tbaa !31
  br label %if.end.193

if.else.130:                                      ; preds = %if.end.126
  %141 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %141) #2
  %142 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  %143 = bitcast i32* %old_coverage to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #2
  %144 = bitcast i32* %new_coverage to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #2
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs131 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %145, i32 0, i32 42
  %decode_color132 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs131, i32 0, i32 52
  %146 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color132, align 8, !tbaa !44
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %148 = load i64, i64* %previous, align 8, !tbaa !31
  %arraydecay133 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call134 = call i32 %146(%struct.gx_device_s* %147, i64 %148, i16* %arraydecay133) #6
  %149 = load i64, i64* %previous, align 8, !tbaa !31
  %and135 = and i64 %149, 255
  %conv136 = trunc i64 %and135 to i16
  %arrayidx137 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 3
  store i16 %conv136, i16* %arrayidx137, align 2, !tbaa !30
  %arrayidx138 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 3
  %150 = load i16, i16* %arrayidx138, align 2, !tbaa !30
  %conv139 = zext i16 %150 to i32
  %sub140 = sub nsw i32 255, %conv139
  store i32 %sub140, i32* %old_coverage, align 4, !tbaa !5
  %151 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul141 = mul nsw i32 255, %151
  %152 = load i32, i32* %old_coverage, align 4, !tbaa !5
  %153 = load i32, i32* %alpha, align 4, !tbaa !5
  %sub142 = sub nsw i32 15, %153
  %mul143 = mul nsw i32 %152, %sub142
  %add144 = add nsw i32 %mul141, %mul143
  %div = sdiv i32 %add144, 15
  store i32 %div, i32* %new_coverage, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc, %if.else.130
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %155 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %154, %155
  br i1 %cmp146, label %for.body.148, label %for.end

for.body.148:                                     ; preds = %for.cond.145
  %156 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul149 = mul nsw i32 255, %156
  %157 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %157 to i64
  %arrayidx151 = getelementptr inbounds [64 x i16], [64 x i16]* %color_cv, i32 0, i64 %idxprom150
  %158 = load i16, i16* %arrayidx151, align 2, !tbaa !30
  %conv152 = zext i16 %158 to i32
  %mul153 = mul nsw i32 %mul149, %conv152
  %159 = load i32, i32* %old_coverage, align 4, !tbaa !5
  %160 = load i32, i32* %alpha, align 4, !tbaa !5
  %sub154 = sub nsw i32 15, %160
  %mul155 = mul nsw i32 %159, %sub154
  %161 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %161 to i64
  %arrayidx157 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom156
  %162 = load i16, i16* %arrayidx157, align 2, !tbaa !30
  %conv158 = zext i16 %162 to i32
  %mul159 = mul nsw i32 %mul155, %conv158
  %add160 = add nsw i32 %mul153, %mul159
  %163 = load i32, i32* %new_coverage, align 4, !tbaa !5
  %mul161 = mul nsw i32 %163, 15
  %div162 = sdiv i32 %add160, %mul161
  %cmp163 = icmp slt i32 %div162, 65535
  br i1 %cmp163, label %cond.true.165, label %cond.false.180

cond.true.165:                                    ; preds = %for.body.148
  %164 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul166 = mul nsw i32 255, %164
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom167 = sext i32 %165 to i64
  %arrayidx168 = getelementptr inbounds [64 x i16], [64 x i16]* %color_cv, i32 0, i64 %idxprom167
  %166 = load i16, i16* %arrayidx168, align 2, !tbaa !30
  %conv169 = zext i16 %166 to i32
  %mul170 = mul nsw i32 %mul166, %conv169
  %167 = load i32, i32* %old_coverage, align 4, !tbaa !5
  %168 = load i32, i32* %alpha, align 4, !tbaa !5
  %sub171 = sub nsw i32 15, %168
  %mul172 = mul nsw i32 %167, %sub171
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom173 = sext i32 %169 to i64
  %arrayidx174 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom173
  %170 = load i16, i16* %arrayidx174, align 2, !tbaa !30
  %conv175 = zext i16 %170 to i32
  %mul176 = mul nsw i32 %mul172, %conv175
  %add177 = add nsw i32 %mul170, %mul176
  %171 = load i32, i32* %new_coverage, align 4, !tbaa !5
  %mul178 = mul nsw i32 %171, 15
  %div179 = sdiv i32 %add177, %mul178
  br label %cond.end.181

cond.false.180:                                   ; preds = %for.body.148
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.165
  %cond182 = phi i32 [ %div179, %cond.true.165 ], [ 65535, %cond.false.180 ]
  %conv183 = trunc i32 %cond182 to i16
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %172 to i64
  %arrayidx185 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom184
  store i16 %conv183, i16* %arrayidx185, align 2, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %cond.end.181
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %173, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.145

for.end:                                          ; preds = %for.cond.145
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %174, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs186, i32 0, i32 51
  %175 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !47
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay187 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call188 = call i64 %175(%struct.gx_device_s* %176, i16* %arraydecay187) #6
  store i64 %call188, i64* %composite, align 8, !tbaa !31
  %177 = load i32, i32* %new_coverage, align 4, !tbaa !5
  %sub189 = sub nsw i32 255, %177
  %and190 = and i32 %sub189, 255
  %conv191 = sext i32 %and190 to i64
  %178 = load i64, i64* %composite, align 8, !tbaa !31
  %or192 = or i64 %178, %conv191
  store i64 %or192, i64* %composite, align 8, !tbaa !31
  %179 = bitcast i32* %new_coverage to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %old_coverage to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %182) #2
  br label %if.end.193

if.end.193:                                       ; preds = %for.end, %if.then.129
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.103
  br label %do.body.195

do.body.195:                                      ; preds = %if.end.194
  %183 = load i32, i32* %bpp, align 4, !tbaa !5
  %shr196 = ashr i32 %183, 2
  switch i32 %shr196, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.216
    i32 3, label %sw.bb.229
    i32 16, label %sw.bb.249
    i32 14, label %sw.bb.253
    i32 12, label %sw.bb.257
    i32 10, label %sw.bb.261
    i32 8, label %sw.bb.265
    i32 6, label %sw.bb.269
    i32 4, label %sw.bb.273
    i32 2, label %sw.bb.277
  ]

sw.bb:                                            ; preds = %do.body.195
  %184 = load i32, i32* %bpp, align 4, !tbaa !5
  %185 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %add197 = add nsw i32 %185, %184
  store i32 %add197, i32* %l_dbit, align 4, !tbaa !5
  %cmp198 = icmp eq i32 %add197, 8
  br i1 %cmp198, label %if.then.200, label %if.else.207

if.then.200:                                      ; preds = %sw.bb
  %186 = load i8, i8* %l_dbyte, align 1, !tbaa !45
  %conv201 = zext i8 %186 to i32
  %187 = load i64, i64* %composite, align 8, !tbaa !31
  %conv202 = trunc i64 %187 to i8
  %conv203 = zext i8 %conv202 to i32
  %or204 = or i32 %conv201, %conv203
  %conv205 = trunc i32 %or204 to i8
  %188 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr206 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr206, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv205, i8* %188, align 1, !tbaa !45
  store i8 0, i8* %l_dbyte, align 1, !tbaa !45
  store i32 0, i32* %l_dbit, align 4, !tbaa !5
  br label %if.end.215

if.else.207:                                      ; preds = %sw.bb
  %189 = load i64, i64* %composite, align 8, !tbaa !31
  %190 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %sub208 = sub nsw i32 8, %190
  %sh_prom = zext i32 %sub208 to i64
  %shl209 = shl i64 %189, %sh_prom
  %conv210 = trunc i64 %shl209 to i8
  %conv211 = zext i8 %conv210 to i32
  %191 = load i8, i8* %l_dbyte, align 1, !tbaa !45
  %conv212 = zext i8 %191 to i32
  %or213 = or i32 %conv212, %conv211
  %conv214 = trunc i32 %or213 to i8
  store i8 %conv214, i8* %l_dbyte, align 1, !tbaa !45
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.207, %if.then.200
  br label %sw.epilog

sw.bb.216:                                        ; preds = %do.body.195
  %192 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %xor = xor i32 %192, 4
  store i32 %xor, i32* %l_dbit, align 4, !tbaa !5
  %tobool217 = icmp ne i32 %xor, 0
  br i1 %tobool217, label %if.then.218, label %if.else.221

if.then.218:                                      ; preds = %sw.bb.216
  %193 = load i64, i64* %composite, align 8, !tbaa !31
  %shl219 = shl i64 %193, 4
  %conv220 = trunc i64 %shl219 to i8
  store i8 %conv220, i8* %l_dbyte, align 1, !tbaa !45
  br label %if.end.228

if.else.221:                                      ; preds = %sw.bb.216
  %194 = load i8, i8* %l_dbyte, align 1, !tbaa !45
  %conv222 = zext i8 %194 to i32
  %195 = load i64, i64* %composite, align 8, !tbaa !31
  %conv223 = trunc i64 %195 to i8
  %conv224 = zext i8 %conv223 to i32
  %or225 = or i32 %conv222, %conv224
  %conv226 = trunc i32 %or225 to i8
  %196 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr227 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr227, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv226, i8* %196, align 1, !tbaa !45
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.221, %if.then.218
  br label %sw.epilog

sw.bb.229:                                        ; preds = %do.body.195
  %197 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %xor230 = xor i32 %197, 4
  store i32 %xor230, i32* %l_dbit, align 4, !tbaa !5
  %tobool231 = icmp ne i32 %xor230, 0
  br i1 %tobool231, label %if.then.232, label %if.else.238

if.then.232:                                      ; preds = %sw.bb.229
  %198 = load i64, i64* %composite, align 8, !tbaa !31
  %shr233 = lshr i64 %198, 4
  %conv234 = trunc i64 %shr233 to i8
  %199 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr235, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv234, i8* %199, align 1, !tbaa !45
  %200 = load i64, i64* %composite, align 8, !tbaa !31
  %shl236 = shl i64 %200, 4
  %conv237 = trunc i64 %shl236 to i8
  store i8 %conv237, i8* %l_dbyte, align 1, !tbaa !45
  br label %if.end.248

if.else.238:                                      ; preds = %sw.bb.229
  %201 = load i8, i8* %l_dbyte, align 1, !tbaa !45
  %conv239 = zext i8 %201 to i32
  %202 = load i64, i64* %composite, align 8, !tbaa !31
  %shr240 = lshr i64 %202, 8
  %conv241 = trunc i64 %shr240 to i8
  %conv242 = zext i8 %conv241 to i32
  %or243 = or i32 %conv239, %conv242
  %conv244 = trunc i32 %or243 to i8
  %203 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv244, i8* %203, align 1, !tbaa !45
  %204 = load i64, i64* %composite, align 8, !tbaa !31
  %conv245 = trunc i64 %204 to i8
  %205 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 %conv245, i8* %arrayidx246, align 1, !tbaa !45
  %206 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr247 = getelementptr inbounds i8, i8* %206, i64 2
  store i8* %add.ptr247, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.238, %if.then.232
  br label %sw.epilog

sw.bb.249:                                        ; preds = %do.body.195
  %207 = load i64, i64* %composite, align 8, !tbaa !31
  %shr250 = lshr i64 %207, 56
  %conv251 = trunc i64 %shr250 to i8
  %208 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr252 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr252, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv251, i8* %208, align 1, !tbaa !45
  br label %sw.bb.253

sw.bb.253:                                        ; preds = %do.body.195, %sw.bb.249
  %209 = load i64, i64* %composite, align 8, !tbaa !31
  %shr254 = lshr i64 %209, 48
  %conv255 = trunc i64 %shr254 to i8
  %210 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr256 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr256, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv255, i8* %210, align 1, !tbaa !45
  br label %sw.bb.257

sw.bb.257:                                        ; preds = %do.body.195, %sw.bb.253
  %211 = load i64, i64* %composite, align 8, !tbaa !31
  %shr258 = lshr i64 %211, 40
  %conv259 = trunc i64 %shr258 to i8
  %212 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr260 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr260, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv259, i8* %212, align 1, !tbaa !45
  br label %sw.bb.261

sw.bb.261:                                        ; preds = %do.body.195, %sw.bb.257
  %213 = load i64, i64* %composite, align 8, !tbaa !31
  %shr262 = lshr i64 %213, 32
  %conv263 = trunc i64 %shr262 to i8
  %214 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr264 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr264, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv263, i8* %214, align 1, !tbaa !45
  br label %sw.bb.265

sw.bb.265:                                        ; preds = %do.body.195, %sw.bb.261
  %215 = load i64, i64* %composite, align 8, !tbaa !31
  %shr266 = lshr i64 %215, 24
  %conv267 = trunc i64 %shr266 to i8
  %216 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr268 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr268, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv267, i8* %216, align 1, !tbaa !45
  br label %sw.bb.269

sw.bb.269:                                        ; preds = %do.body.195, %sw.bb.265
  %217 = load i64, i64* %composite, align 8, !tbaa !31
  %shr270 = lshr i64 %217, 16
  %conv271 = trunc i64 %shr270 to i8
  %218 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr272 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr272, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv271, i8* %218, align 1, !tbaa !45
  br label %sw.bb.273

sw.bb.273:                                        ; preds = %do.body.195, %sw.bb.269
  %219 = load i64, i64* %composite, align 8, !tbaa !31
  %shr274 = lshr i64 %219, 8
  %conv275 = trunc i64 %shr274 to i8
  %220 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr276 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr276, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv275, i8* %220, align 1, !tbaa !45
  br label %sw.bb.277

sw.bb.277:                                        ; preds = %do.body.195, %sw.bb.273
  %221 = load i64, i64* %composite, align 8, !tbaa !31
  %conv278 = trunc i64 %221 to i8
  %222 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr279 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr279, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv278, i8* %222, align 1, !tbaa !45
  br label %sw.epilog

sw.default:                                       ; preds = %do.body.195
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.277, %if.end.248, %if.end.228, %if.end.215
  br label %do.cond.280

do.cond.280:                                      ; preds = %sw.epilog
  br label %do.end.281

do.end.281:                                       ; preds = %do.cond.280
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.281, %sw.default
  %223 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i64* %composite to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.315 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.285

for.inc.285:                                      ; preds = %cleanup.cont
  %227 = load i32, i32* %sx, align 4, !tbaa !5
  %inc286 = add nsw i32 %227, 1
  store i32 %inc286, i32* %sx, align 4, !tbaa !5
  %228 = load i32, i32* %rx, align 4, !tbaa !5
  %inc287 = add nsw i32 %228, 1
  store i32 %inc287, i32* %rx, align 4, !tbaa !5
  br label %for.cond.72

for.end.288:                                      ; preds = %for.cond.72
  %229 = load i32, i32* %rx, align 4, !tbaa !5
  %230 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %cmp289 = icmp sgt i32 %229, %230
  br i1 %cmp289, label %if.then.291, label %if.end.314

if.then.291:                                      ; preds = %for.end.288
  %231 = bitcast i32* %code292 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #2
  %232 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %cmp293 = icmp ne i32 %232, 0
  br i1 %cmp293, label %if.then.295, label %if.end.302

if.then.295:                                      ; preds = %if.then.291
  %233 = load i8, i8* %l_dbyte, align 1, !tbaa !45
  %conv296 = zext i8 %233 to i32
  %234 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %235 = load i8, i8* %234, align 1, !tbaa !45
  %conv297 = zext i8 %235 to i32
  %236 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr298 = ashr i32 255, %236
  %and299 = and i32 %conv297, %shr298
  %or300 = or i32 %conv296, %and299
  %conv301 = trunc i32 %or300 to i8
  %237 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv301, i8* %237, align 1, !tbaa !45
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.295, %if.then.291
  %238 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs303 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %238, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs303, i32 0, i32 10
  %239 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !48
  %240 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %241 = load i8*, i8** %lout, align 8, !tbaa !1
  %242 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %243 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub304 = sub nsw i32 %242, %243
  %244 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %245 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %246 = load i32, i32* %ry, align 4, !tbaa !5
  %247 = load i32, i32* %rx, align 4, !tbaa !5
  %248 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %sub305 = sub nsw i32 %247, %248
  %call306 = call i32 %239(%struct.gx_device_s* %240, i8* %241, i32 %sub304, i32 %244, i64 0, i32 %245, i32 %246, i32 %sub305, i32 1) #6
  store i32 %call306, i32* %code292, align 4, !tbaa !5
  %249 = load i32, i32* %code292, align 4, !tbaa !5
  %cmp307 = icmp slt i32 %249, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.end.302
  %250 = load i32, i32* %code292, align 4, !tbaa !5
  store i32 %250, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.310:                                       ; preds = %if.end.302
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.311

cleanup.311:                                      ; preds = %if.end.310, %if.then.309
  %251 = bitcast i32* %code292 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %cleanup.dest.312 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.312, label %cleanup.315 [
    i32 0, label %cleanup.cont.313
  ]

cleanup.cont.313:                                 ; preds = %cleanup.311
  br label %if.end.314

if.end.314:                                       ; preds = %cleanup.cont.313, %for.end.288
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.315

cleanup.315:                                      ; preds = %if.end.314, %cleanup.311, %cleanup, %if.then.70
  %252 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  call void @llvm.lifetime.end(i64 1, i8* %l_dbyte) #2
  %253 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  %255 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #2
  %cleanup.dest.322 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.322, label %cleanup.332 [
    i32 0, label %cleanup.cont.323
    i32 7, label %for.end.328
  ]

cleanup.cont.323:                                 ; preds = %cleanup.315
  br label %for.inc.324

for.inc.324:                                      ; preds = %cleanup.cont.323
  %258 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %259 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext325 = sext i32 %258 to i64
  %add.ptr326 = getelementptr inbounds i8, i8* %259, i64 %idx.ext325
  store i8* %add.ptr326, i8** %row, align 8, !tbaa !1
  %260 = load i32, i32* %ry, align 4, !tbaa !5
  %inc327 = add nsw i32 %260, 1
  store i32 %inc327, i32* %ry, align 4, !tbaa !5
  br label %for.cond

for.end.328:                                      ; preds = %cleanup.315, %for.cond
  br label %out

out:                                              ; preds = %for.end.328, %if.then.54
  %261 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs329 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %261, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs329, i32 0, i32 2
  %262 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %263 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %264 = load i8*, i8** %lout, align 8, !tbaa !1
  call void %262(%struct.gs_memory_s* %263, i8* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #6
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs330 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %265, i32 0, i32 1
  %free_object331 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs330, i32 0, i32 2
  %266 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object331, align 8, !tbaa !49
  %267 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %268 = load i8*, i8** %lin, align 8, !tbaa !1
  call void %266(%struct.gs_memory_s* %267, i8* %268, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #6
  %269 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %269, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

cleanup.332:                                      ; preds = %out, %cleanup.315, %if.then.38
  %270 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = bitcast [64 x i16]* %color_cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %271) #2
  %272 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast i8** %lout to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #2
  %274 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  %275 = bitcast i8** %lin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #2
  %280 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #2
  br label %return

return:                                           ; preds = %cleanup.332, %if.then
  %281 = load i32, i32* %retval
  ret i32 %281
}

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevRGB_get_color_mapping_procs(%struct.gx_device_s*) #0

declare i32 @gx_default_DevRGB_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %1 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !50
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 13
  %4 = load i32, i32* %width, align 4, !tbaa !39
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 14
  %6 = load i32, i32* %height, align 4, !tbaa !40
  %call = call i32 %1(%struct.gx_device_s* %2, i32 0, i32 0, i32 %4, i32 %6, i64 4294967295) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_put_image(%struct.gx_device_s* %pdev, i8* %buffer, i32 %num_chan, i32 %xstart, i32 %ystart, i32 %width, i32 %height, i32 %row_stride, i32 %plane_stride, i32 %alpha_plane_index, i32 %tag_plane_index) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %num_chan.addr = alloca i32, align 4
  %xstart.addr = alloca i32, align 4
  %ystart.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %alpha_plane_index.addr = alloca i32, align 4
  %tag_plane_index.addr = alloca i32, align 4
  %pmemdev = alloca %struct.gx_device_memory_s*, align 8
  %buffer_prn = alloca i8*, align 8
  %yend = alloca i32, align 4
  %xend = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %src_position = alloca i32, align 4
  %des_position = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %num_chan, i32* %num_chan.addr, align 4, !tbaa !5
  store i32 %xstart, i32* %xstart.addr, align 4, !tbaa !5
  store i32 %ystart, i32* %ystart.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !5
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !5
  store i32 %alpha_plane_index, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  store i32 %tag_plane_index, i32* %tag_plane_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %3 = bitcast i8** %buffer_prn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %yend, align 4, !tbaa !5
  %7 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %8, %9
  store i32 %add1, i32* %xend, align 4, !tbaa !5
  %10 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %src_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %des_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %num_chan.addr, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %15, 3
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 45
  %18 = load i8*, i8** %base, align 8, !tbaa !51
  store i8* %18, i8** %buffer_prn, align 8, !tbaa !1
  %19 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  store i32 %19, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %if.end.5
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %21 = load i32, i32* %yend, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %20, %21
  br i1 %cmp6, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %23 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %23
  %24 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub, %24
  store i32 %mul, i32* %src_position, align 4, !tbaa !5
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 44
  %27 = load i32, i32* %raster, align 4, !tbaa !62
  %mul7 = mul i32 %25, %27
  %28 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  %mul8 = mul nsw i32 %28, 4
  %add9 = add i32 %mul7, %mul8
  store i32 %add9, i32* %des_position, align 4, !tbaa !5
  %29 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  store i32 %29, i32* %x, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %31 = load i32, i32* %xend, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %30, %31
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %32 = load i32, i32* %src_position, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1, !tbaa !45
  %35 = load i32, i32* %des_position, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %des_position, align 4, !tbaa !5
  %idxprom13 = sext i32 %35 to i64
  %36 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %36, i64 %idxprom13
  store i8 %34, i8* %arrayidx14, align 1, !tbaa !45
  %37 = load i32, i32* %src_position, align 4, !tbaa !5
  %38 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %37, %38
  %idxprom16 = sext i32 %add15 to i64
  %39 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %39, i64 %idxprom16
  %40 = load i8, i8* %arrayidx17, align 1, !tbaa !45
  %41 = load i32, i32* %des_position, align 4, !tbaa !5
  %inc18 = add nsw i32 %41, 1
  store i32 %inc18, i32* %des_position, align 4, !tbaa !5
  %idxprom19 = sext i32 %41 to i64
  %42 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %42, i64 %idxprom19
  store i8 %40, i8* %arrayidx20, align 1, !tbaa !45
  %43 = load i32, i32* %src_position, align 4, !tbaa !5
  %44 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul21 = mul nsw i32 2, %44
  %add22 = add nsw i32 %43, %mul21
  %idxprom23 = sext i32 %add22 to i64
  %45 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %45, i64 %idxprom23
  %46 = load i8, i8* %arrayidx24, align 1, !tbaa !45
  %47 = load i32, i32* %des_position, align 4, !tbaa !5
  %inc25 = add nsw i32 %47, 1
  store i32 %inc25, i32* %des_position, align 4, !tbaa !5
  %idxprom26 = sext i32 %47 to i64
  %48 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %48, i64 %idxprom26
  store i8 %46, i8* %arrayidx27, align 1, !tbaa !45
  %49 = load i32, i32* %src_position, align 4, !tbaa !5
  %50 = load i32, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  %51 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul28 = mul nsw i32 %50, %51
  %add29 = add nsw i32 %49, %mul28
  %idxprom30 = sext i32 %add29 to i64
  %52 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %52, i64 %idxprom30
  %53 = load i8, i8* %arrayidx31, align 1, !tbaa !45
  %conv = zext i8 %53 to i32
  %sub32 = sub nsw i32 255, %conv
  %conv33 = trunc i32 %sub32 to i8
  %54 = load i32, i32* %des_position, align 4, !tbaa !5
  %inc34 = add nsw i32 %54, 1
  store i32 %inc34, i32* %des_position, align 4, !tbaa !5
  %idxprom35 = sext i32 %54 to i64
  %55 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %55, i64 %idxprom35
  store i8 %conv33, i8* %arrayidx36, align 1, !tbaa !45
  %56 = load i32, i32* %src_position, align 4, !tbaa !5
  %add37 = add nsw i32 %56, 1
  store i32 %add37, i32* %src_position, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %inc38 = add nsw i32 %57, 1
  store i32 %inc38, i32* %x, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %inc40 = add nsw i32 %58, 1
  store i32 %inc40, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %59 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.41, %if.then.4, %if.then
  %60 = bitcast i32* %des_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %src_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i8** %buffer_prn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @pngalpha_create_buf_device(%struct.gx_device_s** %pbdev, %struct.gx_device_s* %target, i32 %y, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %mem, %struct.gx_colors_usage_s* %color_usage) #1 {
entry:
  %pbdev.addr = alloca %struct.gx_device_s**, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %ptarget = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s** %pbdev, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ptarget to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ptarget, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %7 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_create_buf_device(%struct.gx_device_s** %4, %struct.gx_device_s* %5, i32 %6, %struct.gx_render_plane_s* %7, %struct.gs_memory_s* %8, %struct.gx_colors_usage_s* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ptarget, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 67
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %orig_procs, i32 0, i32 21
  %11 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !63
  %12 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %12, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %copy_alpha1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %11, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha1, align 8, !tbaa !65
  %14 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 61
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pngalpha_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !66
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_device_printer_s** %ptarget to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %16
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @do_png_print_page(%struct.gx_device_png_s* %pdev, %struct._IO_FILE* %file, i32 %monod) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_png_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %monod.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %raster = alloca i32, align 4
  %ds = alloca %struct.gx_downscaler_s, align 8
  %row = alloca i8*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %depth = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %software_key = alloca [80 x i8], align 16
  %software_text = alloca [256 x i8], align 16
  %text_png = alloca %struct.png_text_struct, align 8
  %dst_bpc = alloca i32, align 4
  %src_bpc = alloca i32, align 4
  %errdiff = alloca i32, align 4
  %factor = alloca i32, align 4
  %mfs = alloca i32, align 4
  %invert = alloca i32, align 4
  %endian_swap = alloca i32, align 4
  %bg_needed = alloca i32, align 4
  %bit_depth = alloca i8, align 1
  %color_type = alloca i8, align 1
  %x_pixels_per_unit = alloca i32, align 4
  %y_pixels_per_unit = alloca i32, align 4
  %phys_unit_type = alloca i8, align 1
  %background = alloca %struct.png_color_16_struct, align 2
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %palette = alloca [256 x %struct.png_color_struct], align 16
  %palettep = alloca %struct.png_color_struct*, align 8
  %num_palette = alloca i16, align 2
  %valid = alloca i32, align 4
  %ppdev = alloca %struct.gx_device_pngalpha_s*, align 8
  %i = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  store %struct.gx_device_png_s* %pdev, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %monod, i32* %monod.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_png_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 0) #6
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %6 = bitcast %struct.gx_downscaler_s* %ds to i8*
  call void @llvm.lifetime.start(i64 624, i8* %6) #2
  %7 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !41
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i32, i32* %raster, align 4, !tbaa !5
  %call1 = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %call1, i8** %row, align 8, !tbaa !1
  %12 = bitcast %struct.png_struct_def** %png_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %call2 = call noalias %struct.png_struct_def* @png_create_write_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null) #6
  store %struct.png_struct_def* %call2, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %13 = bitcast %struct.png_info_def** %info_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %call3 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %14) #6
  store %struct.png_info_def* %call3, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  %15 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %16, i32 0, i32 11
  %depth4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %17 = load i16, i16* %depth4, align 2, !tbaa !68
  %conv = zext i16 %17 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %18 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast [80 x i8]* %software_key to i8*
  call void @llvm.lifetime.start(i64 80, i8* %20) #2
  %21 = bitcast [256 x i8]* %software_text to i8*
  call void @llvm.lifetime.start(i64 256, i8* %21) #2
  %22 = bitcast %struct.png_text_struct* %text_png to i8*
  call void @llvm.lifetime.start(i64 56, i8* %22) #2
  %23 = bitcast i32* %dst_bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %src_bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %errdiff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  store i32 0, i32* %errdiff, align 4, !tbaa !5
  %26 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %27, i32 0, i32 68
  %28 = load i32, i32* %downscale_factor, align 4, !tbaa !7
  store i32 %28, i32* %factor, align 4, !tbaa !5
  %29 = bitcast i32* %mfs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %min_feature_size = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %30, i32 0, i32 69
  %31 = load i32, i32* %min_feature_size, align 4, !tbaa !27
  store i32 %31, i32* %mfs, align 4, !tbaa !5
  %32 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %invert, align 4, !tbaa !5
  %33 = bitcast i32* %endian_swap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  store i32 0, i32* %endian_swap, align 4, !tbaa !5
  %34 = bitcast i32* %bg_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  store i32 0, i32* %bg_needed, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %bit_depth) #2
  store i8 0, i8* %bit_depth, align 1, !tbaa !45
  call void @llvm.lifetime.start(i64 1, i8* %color_type) #2
  store i8 0, i8* %color_type, align 1, !tbaa !45
  %35 = bitcast i32* %x_pixels_per_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = bitcast i32* %y_pixels_per_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  call void @llvm.lifetime.start(i64 1, i8* %phys_unit_type) #2
  %37 = bitcast %struct.png_color_16_struct* %background to i8*
  call void @llvm.lifetime.start(i64 10, i8* %37) #2
  %38 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = bitcast [256 x %struct.png_color_struct]* %palette to i8*
  call void @llvm.lifetime.start(i64 768, i8* %40) #2
  %41 = bitcast %struct.png_color_struct** %palettep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = bitcast i16* %num_palette to i8*
  call void @llvm.lifetime.start(i64 2, i8* %42) #2
  %43 = bitcast i32* %valid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 0, i32* %valid, align 4, !tbaa !5
  %44 = load i32, i32* %factor, align 4, !tbaa !5
  %cmp = icmp slt i32 %44, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %factor, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %45 = load i32, i32* %mfs, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %45, 1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %mfs, align 4, !tbaa !5
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %46 = load i32, i32* %mfs, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %46, 2
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 2, i32* %mfs, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  %47 = load i32, i32* %monod.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.13
  store i32 1, i32* %errdiff, align 4, !tbaa !5
  store i32 1, i32* %depth, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.13
  %48 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %48, null
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.png_struct_def* %49, null
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %50 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.png_info_def* %50, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end.15
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %done

if.end.24:                                        ; preds = %lor.lhs.false.20
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %call25 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %51, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200) #6
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call25, i32 0, i32 0
  %call26 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #7
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %52, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %done

if.end.29:                                        ; preds = %if.end.24
  store i32 0, i32* %code, align 4, !tbaa !5
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @png_init_io(%struct.png_struct_def* %53, %struct._IO_FILE* %54) #6
  %55 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %55, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %56 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv30 = fpext float %56 to double
  %mul = fmul double %conv30, 0x4043AF5EBD7AF5EC
  %57 = load i32, i32* %factor, align 4, !tbaa !5
  %conv31 = sitofp i32 %57 to double
  %div = fdiv double %mul, %conv31
  %add = fadd double %div, 5.000000e-01
  %conv32 = fptoui double %add to i32
  store i32 %conv32, i32* %x_pixels_per_unit, align 4, !tbaa !5
  %58 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution33 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %58, i32 0, i32 22
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution33, i32 0, i64 1
  %59 = load float, float* %arrayidx34, align 4, !tbaa !69
  %conv35 = fpext float %59 to double
  %mul36 = fmul double %conv35, 0x4043AF5EBD7AF5EC
  %60 = load i32, i32* %factor, align 4, !tbaa !5
  %conv37 = sitofp i32 %60 to double
  %div38 = fdiv double %mul36, %conv37
  %add39 = fadd double %div38, 5.000000e-01
  %conv40 = fptoui double %add39 to i32
  store i32 %conv40, i32* %y_pixels_per_unit, align 4, !tbaa !5
  store i8 1, i8* %phys_unit_type, align 1, !tbaa !45
  %61 = load i32, i32* %valid, align 4, !tbaa !5
  %or = or i32 %61, 128
  store i32 %or, i32* %valid, align 4, !tbaa !5
  %62 = load i32, i32* %depth, align 4, !tbaa !5
  switch i32 %62, label %sw.epilog [
    i32 32, label %sw.bb
    i32 48, label %sw.bb.50
    i32 24, label %sw.bb.51
    i32 8, label %sw.bb.52
    i32 4, label %sw.bb.64
    i32 1, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end.29
  store i8 8, i8* %bit_depth, align 1, !tbaa !45
  store i8 6, i8* %color_type, align 1, !tbaa !45
  store i32 1, i32* %invert, align 4, !tbaa !5
  %63 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_png_s* %64 to %struct.gx_device_pngalpha_s*
  store %struct.gx_device_pngalpha_s* %65, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 0
  store i8 0, i8* %index, align 1, !tbaa !70
  %66 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %background41 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %66, i32 0, i32 70
  %67 = load i32, i32* %background41, align 4, !tbaa !33
  %shr = ashr i32 %67, 16
  %and = and i32 %shr, 255
  %conv42 = trunc i32 %and to i16
  %red = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 1
  store i16 %conv42, i16* %red, align 2, !tbaa !72
  %68 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %background43 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %68, i32 0, i32 70
  %69 = load i32, i32* %background43, align 4, !tbaa !33
  %shr44 = ashr i32 %69, 8
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i16
  %green = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 2
  store i16 %conv46, i16* %green, align 2, !tbaa !73
  %70 = load %struct.gx_device_pngalpha_s*, %struct.gx_device_pngalpha_s** %ppdev, align 8, !tbaa !1
  %background47 = getelementptr inbounds %struct.gx_device_pngalpha_s, %struct.gx_device_pngalpha_s* %70, i32 0, i32 70
  %71 = load i32, i32* %background47, align 4, !tbaa !33
  %and48 = and i32 %71, 255
  %conv49 = trunc i32 %and48 to i16
  %blue = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 3
  store i16 %conv49, i16* %blue, align 2, !tbaa !74
  %gray = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 4
  store i16 0, i16* %gray, align 2, !tbaa !75
  store i32 1, i32* %bg_needed, align 4, !tbaa !5
  %72 = bitcast %struct.gx_device_pngalpha_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  store i32 1, i32* %errdiff, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.29
  store i8 16, i8* %bit_depth, align 1, !tbaa !45
  store i8 2, i8* %color_type, align 1, !tbaa !45
  store i32 1, i32* %endian_swap, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.29
  store i8 8, i8* %bit_depth, align 1, !tbaa !45
  store i8 2, i8* %color_type, align 1, !tbaa !45
  store i32 1, i32* %errdiff, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.29
  store i8 8, i8* %bit_depth, align 1, !tbaa !45
  %73 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %color_info53 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %73, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info53, i32 0, i32 1
  %74 = load i32, i32* %num_components, align 4, !tbaa !76
  %cmp54 = icmp sgt i32 %74, 1
  br i1 %cmp54, label %if.then.61, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %sw.bb.52
  %75 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %color_info57 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %75, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info57, i32 0, i32 4
  %76 = load i8, i8* %gray_index, align 1, !tbaa !77
  %conv58 = zext i8 %76 to i32
  %cmp59 = icmp eq i32 %conv58, 255
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %lor.lhs.false.56, %sw.bb.52
  store i8 3, i8* %color_type, align 1, !tbaa !45
  store i32 0, i32* %errdiff, align 4, !tbaa !5
  br label %if.end.63

if.else.62:                                       ; preds = %lor.lhs.false.56
  store i8 0, i8* %color_type, align 1, !tbaa !45
  store i32 1, i32* %errdiff, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.29
  store i8 4, i8* %bit_depth, align 1, !tbaa !45
  store i8 3, i8* %color_type, align 1, !tbaa !45
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.29
  store i8 1, i8* %bit_depth, align 1, !tbaa !45
  store i8 0, i8* %color_type, align 1, !tbaa !45
  %77 = load i32, i32* %monod.addr, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %77, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %sw.bb.65
  store i32 1, i32* %invert, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %sw.bb.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.68, %sw.bb.64, %if.end.63, %sw.bb.51, %sw.bb.50, %sw.bb
  %78 = load i8, i8* %color_type, align 1, !tbaa !45
  %conv69 = zext i8 %78 to i32
  %cmp70 = icmp eq i32 %conv69, 3
  br i1 %cmp70, label %if.then.72, label %if.else.111

if.then.72:                                       ; preds = %sw.epilog
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  %81 = load i32, i32* %depth, align 4, !tbaa !5
  %shl = shl i32 1, %81
  store i32 %shl, i32* %num_colors, align 4, !tbaa !5
  %82 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %82) #2
  %arraydecay73 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i32 0, i32 0
  store %struct.png_color_struct* %arraydecay73, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %83 = load i32, i32* %num_colors, align 4, !tbaa !5
  %conv74 = trunc i32 %83 to i16
  store i16 %conv74, i16* %num_palette, align 2, !tbaa !30
  %84 = load i32, i32* %valid, align 4, !tbaa !5
  %or75 = or i32 %84, 8
  store i32 %or75, i32* %valid, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %86 = load i32, i32* %num_colors, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %85, %86
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %87, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs78, i32 0, i32 6
  %88 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !78
  %89 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_png_s* %89 to %struct.gx_device_s*
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %conv79 = sext i32 %91 to i64
  %arraydecay80 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call81 = call i32 %88(%struct.gx_device_s* %90, i64 %conv79, i16* %arraydecay80) #6
  %arrayidx82 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %92 = load i16, i16* %arrayidx82, align 2, !tbaa !30
  %conv83 = zext i16 %92 to i32
  %mul84 = mul i32 %conv83, 65281
  %add85 = add i32 %mul84, 8388608
  %shr86 = lshr i32 %add85, 24
  %conv87 = trunc i32 %shr86 to i16
  %conv88 = trunc i16 %conv87 to i8
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %93 to i64
  %94 = load %struct.png_color_struct*, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %94, i64 %idxprom
  %red90 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx89, i32 0, i32 0
  store i8 %conv88, i8* %red90, align 1, !tbaa !79
  %arrayidx91 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %95 = load i16, i16* %arrayidx91, align 2, !tbaa !30
  %conv92 = zext i16 %95 to i32
  %mul93 = mul i32 %conv92, 65281
  %add94 = add i32 %mul93, 8388608
  %shr95 = lshr i32 %add94, 24
  %conv96 = trunc i32 %shr95 to i16
  %conv97 = trunc i16 %conv96 to i8
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %96 to i64
  %97 = load %struct.png_color_struct*, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %97, i64 %idxprom98
  %green100 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx99, i32 0, i32 1
  store i8 %conv97, i8* %green100, align 1, !tbaa !81
  %arrayidx101 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %98 = load i16, i16* %arrayidx101, align 2, !tbaa !30
  %conv102 = zext i16 %98 to i32
  %mul103 = mul i32 %conv102, 65281
  %add104 = add i32 %mul103, 8388608
  %shr105 = lshr i32 %add104, 24
  %conv106 = trunc i32 %shr105 to i16
  %conv107 = trunc i16 %conv106 to i8
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %99 to i64
  %100 = load %struct.png_color_struct*, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %100, i64 %idxprom108
  %blue110 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx109, i32 0, i32 2
  store i8 %conv107, i8* %blue110, align 1, !tbaa !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %102) #2
  %103 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  br label %if.end.112

if.else.111:                                      ; preds = %sw.epilog
  store %struct.png_color_struct* null, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  store i16 0, i16* %num_palette, align 2, !tbaa !30
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.111, %for.end
  %arraydecay113 = getelementptr inbounds [80 x i8], [80 x i8]* %software_key, i32 0, i32 0
  %call114 = call i8* @strncpy(i8* %arraydecay113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 80) #7
  %arraydecay115 = getelementptr inbounds [256 x i8], [256 x i8]* %software_text, i32 0, i32 0
  %105 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %106 = load i64, i64* @gs_revision, align 8, !tbaa !31
  %div116 = sdiv i64 %106, 100
  %conv117 = trunc i64 %div116 to i32
  %107 = load i64, i64* @gs_revision, align 8, !tbaa !31
  %rem = srem i64 %107, 100
  %conv118 = trunc i64 %rem to i32
  %call119 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* %105, i32 %conv117, i32 %conv118) #6
  %compression = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %text_png, i32 0, i32 0
  store i32 -1, i32* %compression, align 4, !tbaa !83
  %arraydecay120 = getelementptr inbounds [80 x i8], [80 x i8]* %software_key, i32 0, i32 0
  %key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %text_png, i32 0, i32 1
  store i8* %arraydecay120, i8** %key, align 8, !tbaa !85
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %software_text, i32 0, i32 0
  %text = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %text_png, i32 0, i32 2
  store i8* %arraydecay121, i8** %text, align 8, !tbaa !86
  %arraydecay122 = getelementptr inbounds [256 x i8], [256 x i8]* %software_text, i32 0, i32 0
  %call123 = call i64 @strlen(i8* %arraydecay122) #8
  %text_length = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %text_png, i32 0, i32 3
  store i64 %call123, i64* %text_length, align 8, !tbaa !87
  %108 = load i8, i8* %bit_depth, align 1, !tbaa !45
  %conv124 = zext i8 %108 to i32
  store i32 %conv124, i32* %dst_bpc, align 4, !tbaa !5
  %109 = load i32, i32* %dst_bpc, align 4, !tbaa !5
  store i32 %109, i32* %src_bpc, align 4, !tbaa !5
  %110 = load i32, i32* %errdiff, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %110, 0
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.end.112
  store i32 8, i32* %src_bpc, align 4, !tbaa !5
  br label %if.end.128

if.else.127:                                      ; preds = %if.end.112
  store i32 1, i32* %factor, align 4, !tbaa !5
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.then.126
  %111 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %width129 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %111, i32 0, i32 13
  %112 = load i32, i32* %width129, align 4, !tbaa !88
  %113 = load i32, i32* %factor, align 4, !tbaa !5
  %div130 = sdiv i32 %112, %113
  store i32 %div130, i32* %width, align 4, !tbaa !5
  %114 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %height131 = getelementptr inbounds %struct.gx_device_png_s, %struct.gx_device_png_s* %114, i32 0, i32 14
  %115 = load i32, i32* %height131, align 4, !tbaa !89
  %116 = load i32, i32* %factor, align 4, !tbaa !5
  %div132 = sdiv i32 %115, %116
  store i32 %div132, i32* %height, align 4, !tbaa !5
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %118 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  %119 = load i32, i32* %x_pixels_per_unit, align 4, !tbaa !5
  %120 = load i32, i32* %y_pixels_per_unit, align 4, !tbaa !5
  %121 = load i8, i8* %phys_unit_type, align 1, !tbaa !45
  %conv133 = zext i8 %121 to i32
  call void @png_set_pHYs(%struct.png_struct_def* %117, %struct.png_info_def* %118, i32 %119, i32 %120, i32 %conv133) #6
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %123 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  %124 = load i32, i32* %width, align 4, !tbaa !5
  %125 = load i32, i32* %height, align 4, !tbaa !5
  %126 = load i8, i8* %bit_depth, align 1, !tbaa !45
  %conv134 = zext i8 %126 to i32
  %127 = load i8, i8* %color_type, align 1, !tbaa !45
  %conv135 = zext i8 %127 to i32
  call void @png_set_IHDR(%struct.png_struct_def* %122, %struct.png_info_def* %123, i32 %124, i32 %125, i32 %conv134, i32 %conv135, i32 0, i32 0, i32 0) #6
  %128 = load %struct.png_color_struct*, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %tobool136 = icmp ne %struct.png_color_struct* %128, null
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.128
  %129 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %130 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  %131 = load %struct.png_color_struct*, %struct.png_color_struct** %palettep, align 8, !tbaa !1
  %132 = load i16, i16* %num_palette, align 2, !tbaa !30
  %conv138 = zext i16 %132 to i32
  call void @png_set_PLTE(%struct.png_struct_def* %129, %struct.png_info_def* %130, %struct.png_color_struct* %131, i32 %conv138) #6
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.128
  %133 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %134 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  call void @png_set_text(%struct.png_struct_def* %133, %struct.png_info_def* %134, %struct.png_text_struct* %text_png, i32 1) #6
  %135 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool140 = icmp ne i32 %135, 0
  br i1 %tobool140, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.139
  %136 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %136, 32
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %if.then.141
  %137 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  call void @png_set_invert_alpha(%struct.png_struct_def* %137) #6
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.141
  %138 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  call void @png_set_invert_mono(%struct.png_struct_def* %138) #6
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.144
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.139
  %139 = load i32, i32* %bg_needed, align 4, !tbaa !5
  %tobool148 = icmp ne i32 %139, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.147
  %140 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %141 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  call void @png_set_bKGD(%struct.png_struct_def* %140, %struct.png_info_def* %141, %struct.png_color_16_struct* %background) #6
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.147
  %142 = load i32, i32* %endian_swap, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %142, 0
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.150
  %143 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  call void @png_set_swap(%struct.png_struct_def* %143) #6
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.150
  %144 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %145 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  call void @png_write_info(%struct.png_struct_def* %144, %struct.png_info_def* %145) #6
  %146 = load %struct.gx_device_png_s*, %struct.gx_device_png_s** %pdev.addr, align 8, !tbaa !1
  %147 = bitcast %struct.gx_device_png_s* %146 to %struct.gx_device_s*
  %148 = load i32, i32* %src_bpc, align 4, !tbaa !5
  %149 = load i32, i32* %dst_bpc, align 4, !tbaa !5
  %150 = load i32, i32* %depth, align 4, !tbaa !5
  %151 = load i32, i32* %dst_bpc, align 4, !tbaa !5
  %div154 = sdiv i32 %150, %151
  %152 = load i32, i32* %factor, align 4, !tbaa !5
  %153 = load i32, i32* %mfs, align 4, !tbaa !5
  %call155 = call i32 @gx_downscaler_init(%struct.gx_downscaler_s* %ds, %struct.gx_device_s* %147, i32 %148, i32 %149, i32 %div154, i32 %152, i32 %153, i32 (i32, i32)* null, i32 0) #6
  store i32 %call155, i32* %code, align 4, !tbaa !5
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp156 = icmp sge i32 %154, 0
  br i1 %cmp156, label %if.then.158, label %if.end.167

if.then.158:                                      ; preds = %if.end.153
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.164, %if.then.158
  %155 = load i32, i32* %y, align 4, !tbaa !5
  %156 = load i32, i32* %height, align 4, !tbaa !5
  %cmp160 = icmp ult i32 %155, %156
  br i1 %cmp160, label %for.body.162, label %for.end.166

for.body.162:                                     ; preds = %for.cond.159
  %157 = load i32, i32* %y, align 4, !tbaa !5
  %158 = load i8*, i8** %row, align 8, !tbaa !1
  %159 = load i32, i32* %raster, align 4, !tbaa !5
  %call163 = call i32 @gx_downscaler_copy_scan_lines(%struct.gx_downscaler_s* %ds, i32 %157, i8* %158, i32 %159) #6
  %160 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  call void @png_write_rows(%struct.png_struct_def* %160, i8** %row, i32 1) #6
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.162
  %161 = load i32, i32* %y, align 4, !tbaa !5
  %inc165 = add nsw i32 %161, 1
  store i32 %inc165, i32* %y, align 4, !tbaa !5
  br label %for.cond.159

for.end.166:                                      ; preds = %for.cond.159
  call void @gx_downscaler_fin(%struct.gx_downscaler_s* %ds) #6
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.end.153
  %162 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !1
  %163 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8, !tbaa !1
  call void @png_write_end(%struct.png_struct_def* %162, %struct.png_info_def* %163) #6
  br label %done

done:                                             ; preds = %if.end.167, %if.then.28, %if.then.23
  call void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr) #6
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %165 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %167 = load i8*, i8** %row, align 8, !tbaa !1
  call void %165(%struct.gs_memory_s* %166, i8* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #6
  %168 = load i32, i32* %code, align 4, !tbaa !5
  %169 = bitcast i32* %valid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i16* %num_palette to i8*
  call void @llvm.lifetime.end(i64 2, i8* %170) #2
  %171 = bitcast %struct.png_color_struct** %palettep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast [256 x %struct.png_color_struct]* %palette to i8*
  call void @llvm.lifetime.end(i64 768, i8* %172) #2
  %173 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast %struct.png_color_16_struct* %background to i8*
  call void @llvm.lifetime.end(i64 10, i8* %175) #2
  call void @llvm.lifetime.end(i64 1, i8* %phys_unit_type) #2
  %176 = bitcast i32* %y_pixels_per_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %x_pixels_per_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  call void @llvm.lifetime.end(i64 1, i8* %color_type) #2
  call void @llvm.lifetime.end(i64 1, i8* %bit_depth) #2
  %178 = bitcast i32* %bg_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %endian_swap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %mfs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %errdiff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %src_bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %dst_bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast %struct.png_text_struct* %text_png to i8*
  call void @llvm.lifetime.end(i64 56, i8* %186) #2
  %187 = bitcast [256 x i8]* %software_text to i8*
  call void @llvm.lifetime.end(i64 256, i8* %187) #2
  %188 = bitcast [80 x i8]* %software_key to i8*
  call void @llvm.lifetime.end(i64 80, i8* %188) #2
  %189 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast %struct.png_info_def** %info_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast %struct.png_struct_def** %png_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast %struct.gx_downscaler_s* %ds to i8*
  call void @llvm.lifetime.end(i64 624, i8* %195) #2
  %196 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #2
  ret i32 %168
}

declare noalias %struct.png_struct_def* @png_create_write_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #0

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #0

; Function Attrs: nounwind
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #3

declare [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def*, void (%struct.__jmp_buf_tag*, i32)*, i64) #0

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #4

declare void @png_init_io(%struct.png_struct_def*, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @png_set_pHYs(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32) #0

declare void @png_set_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32, i32, i32, i32, i32) #0

declare void @png_set_PLTE(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_struct*, i32) #0

declare void @png_set_text(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_text_struct*, i32) #0

declare void @png_set_invert_alpha(%struct.png_struct_def*) #0

declare void @png_set_invert_mono(%struct.png_struct_def*) #0

declare void @png_set_bKGD(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_16_struct*) #0

declare void @png_set_swap(%struct.png_struct_def*) #0

declare void @png_write_info(%struct.png_struct_def*, %struct.png_info_def*) #0

declare i32 @gx_downscaler_init(%struct.gx_downscaler_s*, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32 (i32, i32)*, i32) #0

declare i32 @gx_downscaler_copy_scan_lines(%struct.gx_downscaler_s*, i32, i8*, i32) #0

declare void @png_write_rows(%struct.png_struct_def*, i8**, i32) #0

declare void @gx_downscaler_fin(%struct.gx_downscaler_s*) #0

declare void @png_write_end(%struct.png_struct_def*, %struct.png_info_def*) #0

declare void @png_destroy_write_struct(%struct.png_struct_def**, %struct.png_info_def**) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 18472}
!8 = !{!"gx_device_png_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !6, i64 18476}
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
!23 = !{!24, !2, i64 0}
!24 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!25 = !{!26, !2, i64 56}
!26 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!27 = !{!8, !6, i64 18476}
!28 = !{!29, !2, i64 12984}
!29 = !{!"gx_device_pngalpha_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !6, i64 18476, !6, i64 18480}
!30 = !{!12, !12, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!29, !6, i64 18472}
!33 = !{!29, !6, i64 18480}
!34 = !{!35, !2, i64 1216}
!35 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!36 = !{!35, !2, i64 24}
!37 = !{!35, !12, i64 108}
!38 = !{!35, !6, i64 100}
!39 = !{!35, !6, i64 832}
!40 = !{!35, !6, i64 836}
!41 = !{!42, !2, i64 64}
!42 = !{!"gs_memory_s", !2, i64 0, !43, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!43 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!44 = !{!35, !2, i64 1560}
!45 = !{!3, !3, i64 0}
!46 = !{!35, !2, i64 1240}
!47 = !{!35, !2, i64 1552}
!48 = !{!35, !2, i64 1224}
!49 = !{!42, !2, i64 24}
!50 = !{!35, !2, i64 1200}
!51 = !{!52, !2, i64 1744}
!52 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !53, i64 2548, !2, i64 2576, !55, i64 2584, !56, i64 2600, !57, i64 2624, !58, i64 2656, !59, i64 2680, !60, i64 2720, !61, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!53 = !{!"gs_matrix_s", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20}
!54 = !{!"float", !3, i64 0}
!55 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!56 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!57 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!58 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!59 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!60 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!61 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!62 = !{!52, !6, i64 1736}
!63 = !{!64, !2, i64 18056}
!64 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!65 = !{!35, !2, i64 1312}
!66 = !{!35, !2, i64 1632}
!67 = !{!8, !2, i64 24}
!68 = !{!8, !12, i64 108}
!69 = !{!54, !54, i64 0}
!70 = !{!71, !3, i64 0}
!71 = !{!"png_color_16_struct", !3, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8}
!72 = !{!71, !12, i64 2}
!73 = !{!71, !12, i64 4}
!74 = !{!71, !12, i64 6}
!75 = !{!71, !12, i64 8}
!76 = !{!8, !6, i64 100}
!77 = !{!8, !3, i64 110}
!78 = !{!8, !2, i64 1192}
!79 = !{!80, !3, i64 0}
!80 = !{!"png_color_struct", !3, i64 0, !3, i64 1, !3, i64 2}
!81 = !{!80, !3, i64 1}
!82 = !{!80, !3, i64 2}
!83 = !{!84, !6, i64 0}
!84 = !{!"png_text_struct", !6, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !10, i64 32, !2, i64 40, !2, i64 48}
!85 = !{!84, !2, i64 8}
!86 = !{!84, !2, i64 16}
!87 = !{!84, !10, i64 24}
!88 = !{!8, !6, i64 832}
!89 = !{!8, !6, i64 836}
