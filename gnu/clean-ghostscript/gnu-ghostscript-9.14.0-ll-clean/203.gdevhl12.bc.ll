; ModuleID = './gdevhl12.bc'
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
%struct.gx_device_hl1250_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 }
%struct.hl1250_state_s = type { i32, i32, i32, i32, i32, [32764 x i16], [64 x [640 x i16]] }

@prn_hl1250_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hl1250_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @hl1250_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @hl1250_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @hl1250_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"hl1250\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_hl1250_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 } { i32 18488, %struct.gx_device_procs_s* @prn_hl1250_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 10200, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.200000e+03, float 6.000000e+02], [2 x float] [float 1.200000e+03, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @gx_print_page_single_copy, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @hl1250_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"hl1240\00", align 1
@gs_hl1240_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32 } { i32 18488, %struct.gx_device_procs_s* @prn_hl1250_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @gx_print_page_single_copy, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @hl1250_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0, i32 0 }, align 8
@hl1250_open.margins_a4_600 = internal constant [4 x float] [float 0x3FA99999A0000000, float 0x3FC3333340000000, float 2.500000e-01, float 0x3FC3333340000000], align 16
@hl1250_open.margins_a4_1200 = internal constant [4 x float] [float 0x3FA99999A0000000, float 0x3FC99999A0000000, float 0x3FB99999A0000000, float 0x3FC3333340000000], align 16
@hl1250_open.margins_letter_600 = internal constant [4 x float] [float 0x3FA99999A0000000, float 0x3FC3333340000000, float 2.500000e-01, float 0x3FC3333340000000], align 16
@hl1250_open.margins_letter_1200 = internal constant [4 x float] [float 0x3FA99999A0000000, float 0x3FC99999A0000000, float 0x3FB99999A0000000, float 0x3FC3333340000000], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"\1B&l1T\1BE\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\1B%-12345X\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"@PJL EOJ NAME=\22%s\22\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Ghost\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"EconoMode\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"PaperType\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"SourceTray\00", align 1
@hl1250_print_page_copies.onoff = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@hl1250_print_page_copies.papertypes = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"REGULAR\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"THIN\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"THICK\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"THICK2\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"TRANSPARENCY\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"TRAY1\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\1B&l1H\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"TRAY2\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"\1B&l5H\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\1B&l2H\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"@PJL \0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"@PJL JOB NAME=\22%s\22\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"@PJL SET ECONOMODE=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"@PJL SET ECONOLEVEL=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"@PJL SET MEDIATYPE=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"@PJL SET SOURCETRAY=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"@PJL SET RESOLUTION=%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"@PJL SET RAS1200MODE=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"@PJL ENTER LANGUAGE=PCL\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"\1B&l-120U\1B*r0F\1B&u%dD%s\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"hl1250_print_1200dpi\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"\1BE\1B&l%dA\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"\1B&u1200D\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"\1B&l0o0l0E\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\1B&l%dX\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"\1B*rB\1B*p0x0Y\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B*t600R\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"\1B*r1A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"\1B*b1027M\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"\1B*rB\0C\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"hl1250: compression failed (y=%u), doing 1200x300 dpi\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\1B*b%uW\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @gx_print_page_single_copy(%struct.gx_device_printer_s*, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %y_dpi = alloca i32, align 4
  %tray_pjl = alloca i8*, align 8
  %tray_pcl = alloca i8*, align 8
  %hl1250 = alloca %struct.gx_device_hl1250_s*, align 8
  %econo_mode = alloca i32, align 4
  %paper_type = alloca i32, align 4
  %source_tray = alloca i32, align 4
  %page_init = alloca [100 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !5
  %3 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !7
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %y_dpi, align 4, !tbaa !5
  %6 = bitcast i8** %tray_pjl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %tray_pcl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_printer_s* %9 to %struct.gx_device_hl1250_s*
  store %struct.gx_device_hl1250_s* %10, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %11 = bitcast i32* %econo_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %econo_mode4 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %12, i32 0, i32 68
  %13 = load i32, i32* %econo_mode4, align 4, !tbaa !9
  store i32 %13, i32* %econo_mode, align 4, !tbaa !25
  %14 = bitcast i32* %paper_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %paper_type5 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %15, i32 0, i32 69
  %16 = load i32, i32* %paper_type5, align 4, !tbaa !26
  store i32 %16, i32* %paper_type, align 4, !tbaa !25
  %17 = bitcast i32* %source_tray to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %source_tray6 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %18, i32 0, i32 70
  %19 = load i32, i32* %source_tray6, align 4, !tbaa !27
  store i32 %19, i32* %source_tray, align 4, !tbaa !25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8** %tray_pjl, align 8, !tbaa !1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), i8** %tray_pcl, align 8, !tbaa !1
  %20 = load i32, i32* %source_tray, align 4, !tbaa !25
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8** %tray_pcl, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %tray_pjl, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %tray_pcl, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8** %tray_pjl, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8** %tray_pcl, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8** %tray_pcl, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 26
  %22 = load i64, i64* %PageCount, align 8, !tbaa !28
  %cmp = icmp eq i64 %22, 0
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %sw.epilog
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %23) #4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %24) #4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %27 = load i32, i32* %econo_mode, align 4, !tbaa !25
  %cmp13 = icmp ne i32 %27, 0
  %conv14 = zext i1 %cmp13 to i32
  %idxprom = sext i32 %conv14 to i64
  %arrayidx15 = getelementptr inbounds [2 x i8*], [2 x i8*]* @hl1250_print_page_copies.onoff, i32 0, i64 %idxprom
  %28 = load i8*, i8** %arrayidx15, align 8, !tbaa !1
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* %28) #4
  %29 = load i32, i32* %econo_mode, align 4, !tbaa !25
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %31 = load i32, i32* %econo_mode, align 4, !tbaa !25
  %sub = sub nsw i32 3, %31
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i32 %sub) #4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %33 = load i32, i32* %paper_type, align 4, !tbaa !25
  %idxprom19 = zext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hl1250_print_page_copies.papertypes, i32 0, i64 %idxprom19
  %34 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* %34) #4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %tray_pjl, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i8* %36) #4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %38 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i32 %38) #4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %40 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %40, 1200
  %conv25 = zext i1 %cmp24 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %arrayidx27 = getelementptr inbounds [2 x i8*], [2 x i8*]* @hl1250_print_page_copies.onoff, i32 0, i64 %idxprom26
  %41 = load i8*, i8** %arrayidx27, align 8, !tbaa !1
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8* %41) #4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %42) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %sw.epilog
  %43 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %cmp31 = icmp ne i32 %43, 1200
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.30
  %44 = bitcast [100 x i8]* %page_init to i8*
  call void @llvm.lifetime.start(i64 100, i8* %44) #2
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %page_init, i32 0, i32 0
  %45 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %46 = load i8*, i8** %tray_pcl, align 8, !tbaa !1
  %call34 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32 %45, i8* %46) #4
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %49 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %50 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %arraydecay35 = getelementptr inbounds [100 x i8], [100 x i8]* %page_init, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [100 x i8], [100 x i8]* %page_init, i32 0, i32 0
  %call37 = call i32 @dljet_mono_print_page_copies(%struct.gx_device_printer_s* %47, %struct._IO_FILE* %48, i32 %49, i32 %50, i32 404, i8* %arraydecay35, i8* %arraydecay36, i32 0) #4
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %51 = bitcast [100 x i8]* %page_init to i8*
  call void @llvm.lifetime.end(i64 100, i8* %51) #2
  br label %cleanup

if.end.38:                                        ; preds = %if.end.30
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %54 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %55 = load i8*, i8** %tray_pcl, align 8, !tbaa !1
  %call39 = call i32 @hl1250_print_1200dpi(%struct.gx_device_printer_s* %52, %struct._IO_FILE* %53, i32 %54, i8* %55) #4
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.33
  %56 = bitcast i32* %source_tray to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %paper_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %econo_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i8** %tray_pcl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i8** %tray_pjl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

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
define internal i32 @hl1250_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %x_dpi = alloca i32, align 4
  %paper_size = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %3 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !5
  %4 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %5) #4
  store i32 %call, i32* %paper_size, align 4, !tbaa !5
  %6 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 1200
  br i1 %cmp, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %7, 26
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %8, float* getelementptr inbounds ([4 x float], [4 x float]* @hl1250_open.margins_a4_1200, i32 0, i32 0), i32 1) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @hl1250_open.margins_letter_1200, i32 0, i32 0), i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.11

if.else.5:                                        ; preds = %entry
  %10 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %10, 26
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.5
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %11, float* getelementptr inbounds ([4 x float], [4 x float]* @hl1250_open.margins_a4_600, i32 0, i32 0), i32 0) #4
  br label %if.end.10

if.else.9:                                        ; preds = %if.else.5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %12, float* getelementptr inbounds ([4 x float], [4 x float]* @hl1250_open.margins_letter_600, i32 0, i32 0), i32 0) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call12 = call i32 @gdev_prn_open(%struct.gx_device_s* %13) #4
  %14 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %call12
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %1, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 52
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !30
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %8) #4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %9) #4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %11) #4
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call i32 @gdev_prn_close(%struct.gx_device_s* %12) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %hl1250 = alloca %struct.gx_device_hl1250_s*, align 8
  %code = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_hl1250_s*
  store %struct.gx_device_hl1250_s* %2, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %econo_mode = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %9, i32 0, i32 68
  %10 = load i32, i32* %econo_mode, align 4, !tbaa !9
  store i32 %10, i32* %val, align 4, !tbaa !5
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %val) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %paper_type = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %14, i32 0, i32 69
  %15 = load i32, i32* %paper_type, align 4, !tbaa !26
  store i32 %15, i32* %val, align 4, !tbaa !5
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call5 = call i32 @param_write_int(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32* %val) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %17, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %19 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %source_tray = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %19, i32 0, i32 70
  %20 = load i32, i32* %source_tray, align 4, !tbaa !27
  store i32 %20, i32* %val, align 4, !tbaa !5
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_int(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32* %val) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %23 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %hl1250 = alloca %struct.gx_device_hl1250_s*, align 8
  %econo_mode = alloca i32, align 4
  %paper_type = alloca i32, align 4
  %source_tray = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_hl1250_s*
  store %struct.gx_device_hl1250_s* %3, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %4 = bitcast i32* %econo_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %econo_mode1 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %5, i32 0, i32 68
  %6 = load i32, i32* %econo_mode1, align 4, !tbaa !9
  store i32 %6, i32* %econo_mode, align 4, !tbaa !5
  %7 = bitcast i32* %paper_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %paper_type2 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %8, i32 0, i32 69
  %9 = load i32, i32* %paper_type2, align 4, !tbaa !26
  store i32 %9, i32* %paper_type, align 4, !tbaa !5
  %10 = bitcast i32* %source_tray to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %source_tray3 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %11, i32 0, i32 70
  %12 = load i32, i32* %source_tray3, align 4, !tbaa !27
  store i32 %12, i32* %source_tray, align 4, !tbaa !5
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call = call i32 @hl1250_put_param_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %econo_mode, i32 0, i32 2, i32 %14) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 @hl1250_put_param_int(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32* %paper_type, i32 0, i32 4, i32 %16) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 @hl1250_put_param_int(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32* %source_tray, i32 0, i32 4, i32 %18) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call6 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %21, %struct.gs_param_list_s* %22) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %23, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load i32, i32* %econo_mode, align 4, !tbaa !5
  %26 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %econo_mode10 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %26, i32 0, i32 68
  store i32 %25, i32* %econo_mode10, align 4, !tbaa !9
  %27 = load i32, i32* %paper_type, align 4, !tbaa !5
  %28 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %paper_type11 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %28, i32 0, i32 69
  store i32 %27, i32* %paper_type11, align 4, !tbaa !26
  %29 = load i32, i32* %source_tray, align 4, !tbaa !5
  %30 = load %struct.gx_device_hl1250_s*, %struct.gx_device_hl1250_s** %hl1250, align 8, !tbaa !1
  %source_tray12 = getelementptr inbounds %struct.gx_device_hl1250_s, %struct.gx_device_hl1250_s* %30, i32 0, i32 70
  store i32 %29, i32* %source_tray12, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %31 = bitcast i32* %source_tray to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %paper_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %econo_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gx_device_hl1250_s** %hl1250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_put_param_int(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pvalue, i32 %minval, i32 %maxval, i32 %ecode) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !5
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !5
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %value) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %value, align 4, !tbaa !5
  %6 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %7 = load i32, i32* %value, align 4, !tbaa !5
  %8 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !31
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 7
  %11 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !33
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call2 = call i32 %11(%struct.gs_param_list_s* %12, i8* %13, i32 -15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i32, i32* %value, align 4, !tbaa !5
  %15 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %18 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.4, %cond.end
  %20 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i32 @dljet_mono_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_print_1200dpi(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies, i8* %page_init) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %page_init.addr = alloca i8*, align 8
  %band = alloca i32, align 4
  %lnum = alloca i32, align 4
  %code = alloca i32, align 4
  %s = alloca %struct.hl1250_state_s*, align 8
  %line_size = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %next_band = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i8* %page_init, i8** %page_init.addr, align 8, !tbaa !1
  %0 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %3 = bitcast %struct.hl1250_state_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %7 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_s*
  %call1 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %9) #4
  store i32 %call1, i32* %num_rows, align 4, !tbaa !5
  %10 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_s*
  %call2 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %12) #4
  store i32 %call2, i32* %paper_size, align 4, !tbaa !5
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !36
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !35
  %call4 = call i8* %15(%struct.gs_memory_s* %17, i32 1, i32 147468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0)) #4
  %18 = bitcast i8* %call4 to %struct.hl1250_state_s*
  store %struct.hl1250_state_s* %18, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %19 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %tobool = icmp ne %struct.hl1250_state_s* %19, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %entry
  %20 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %21 = bitcast %struct.hl1250_state_s* %20 to i8*
  %call5 = call i8* @memset(i8* %21, i32 0, i64 147468) #5
  %22 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv = sext i32 %22 to i64
  %cmp = icmp ugt i64 %conv, 1280
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1280, i32* %line_size, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 26
  %24 = load i64, i64* %PageCount, align 8, !tbaa !28
  %cmp9 = icmp eq i64 %24, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %26 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %26) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %27) #4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %28) #4
  %29 = load i8*, i8** %page_init.addr, align 8, !tbaa !1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call16 = call i32 @fputs(i8* %29, %struct._IO_FILE* %30) #4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %32 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %32) #4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %33) #4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %34) #4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %35) #4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %36) #4
  store i32 0, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end.13
  %37 = load i32, i32* %band, align 4, !tbaa !5
  %38 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %37, %38
  br i1 %cmp22, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %39 = bitcast i32* %next_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i32, i32* %band, align 4, !tbaa !5
  %add = add nsw i32 %40, 64
  store i32 %add, i32* %next_band, align 4, !tbaa !5
  %41 = load i32, i32* %next_band, align 4, !tbaa !5
  %42 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %41, %42
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body
  %43 = load i32, i32* %num_rows, align 4, !tbaa !5
  store i32 %43, i32* %next_band, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %for.body
  %44 = load i32, i32* %band, align 4, !tbaa !5
  store i32 %44, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end.27
  %45 = load i32, i32* %lnum, align 4, !tbaa !5
  %46 = load i32, i32* %next_band, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = load i32, i32* %lnum, align 4, !tbaa !5
  %49 = load i32, i32* %lnum, align 4, !tbaa !5
  %50 = load i32, i32* %band, align 4, !tbaa !5
  %sub = sub nsw i32 %49, %50
  %idxprom = sext i32 %sub to i64
  %51 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %in_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %51, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx, i32 0, i32 0
  %52 = bitcast i16* %arraydecay to i8*
  %53 = load i32, i32* %line_size, align 4, !tbaa !5
  %call32 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %47, i32 %48, i8* %52, i32 %53) #4
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %54, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.31
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %55 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %56 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %yt = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %56, i32 0, i32 2
  store i32 0, i32* %yt, align 4, !tbaa !39
  %57 = load i32, i32* %next_band, align 4, !tbaa !5
  %58 = load i32, i32* %band, align 4, !tbaa !5
  %sub37 = sub nsw i32 %57, %58
  %59 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %yb = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %59, i32 0, i32 3
  store i32 %sub37, i32* %yb, align 4, !tbaa !41
  %60 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %60, i32 0, i32 0
  store i32 0, i32* %xl, align 4, !tbaa !42
  %61 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %61, i32 0, i32 1
  store i32 635, i32* %xr, align 4, !tbaa !43
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %63 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %64 = load i32, i32* %band, align 4, !tbaa !5
  call void @hl1250_compress_band(%struct._IO_FILE* %62, %struct.hl1250_state_s* %63, i32 %64) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.35, %for.end
  %65 = bitcast i32* %next_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
    i32 8, label %error_out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.38

for.inc.38:                                       ; preds = %cleanup.cont
  %66 = load i32, i32* %band, align 4, !tbaa !5
  %add39 = add nsw i32 %66, 64
  store i32 %add39, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  br label %error_out

error_out:                                        ; preds = %for.end.40, %cleanup
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), %struct._IO_FILE* %67) #4
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !35
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !44
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !35
  %73 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s, align 8, !tbaa !1
  %74 = bitcast %struct.hl1250_state_s* %73 to i8*
  call void %70(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0)) #4
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %error_out, %cleanup, %if.then
  %76 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast %struct.hl1250_state_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @hl1250_compress_band(%struct._IO_FILE* %prn_stream, %struct.hl1250_state_s* %s, i32 %band) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca %struct.hl1250_state_s*, align 8
  %band.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %ytop = alloca i32, align 4
  %ybottom = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store %struct.hl1250_state_s* %s, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  store i32 %band, i32* %band.addr, align 4, !tbaa !5
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %ybottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %3, i32 0, i32 4
  store i32 0, i32* %out_count, align 4, !tbaa !45
  %4 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @hl1250_check_area(%struct.hl1250_state_s* %4) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %5, i32 0, i32 0
  %6 = load i32, i32* %xl, align 4, !tbaa !42
  %and = and i32 %6, -2
  store i32 %and, i32* %xl, align 4, !tbaa !42
  %7 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %7, i32 0, i32 2
  %8 = load i32, i32* %yt, align 4, !tbaa !39
  store i32 %8, i32* %ytop, align 4, !tbaa !5
  %9 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %9, i32 0, i32 3
  %10 = load i32, i32* %yb, align 4, !tbaa !41
  store i32 %10, i32* %ybottom, align 4, !tbaa !5
  %11 = load i32, i32* %ytop, align 4, !tbaa !5
  store i32 %11, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %y, align 4, !tbaa !5
  %13 = load i32, i32* %ybottom, align 4, !tbaa !5
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %call1 = call i32 @hl1250_compress_line(%struct.hl1250_state_s* %14, i32 %15) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.inc

if.end.4:                                         ; preds = %for.body
  %16 = load i32, i32* %band.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %add = add i32 %16, %17
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i32 0, i32 0), i32 %add) #4
  %18 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  call void @hl1250_lose_resolution(%struct.hl1250_state_s* %18) #4
  br label %for.end

for.inc:                                          ; preds = %if.then.3
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add i32 %19, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.end.4, %for.cond
  %20 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count6 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %20, i32 0, i32 4
  %21 = load i32, i32* %out_count6, align 4, !tbaa !45
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %for.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %23 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count9 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %23, i32 0, i32 4
  %24 = load i32, i32* %out_count9, align 4, !tbaa !45
  %conv = zext i32 %24 to i64
  %mul = mul i64 %conv, 2
  %add10 = add i64 %mul, 9
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i64 %add10) #4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %26 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count12 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %26, i32 0, i32 4
  %27 = load i32, i32* %out_count12, align 4, !tbaa !45
  %conv13 = zext i32 %27 to i64
  %mul14 = mul i64 %conv13, 2
  %add15 = add i64 %mul14, 7
  %conv16 = trunc i64 %add15 to i16
  call void @put_be16(%struct._IO_FILE* %25, i16 zeroext %conv16) #4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %29 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl17 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %29, i32 0, i32 0
  %30 = load i32, i32* %xl17, align 4, !tbaa !42
  %mul18 = mul i32 %30, 16
  %conv19 = trunc i32 %mul18 to i16
  call void @put_be16(%struct._IO_FILE* %28, i16 zeroext %conv19) #4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %32 = load i32, i32* %band.addr, align 4, !tbaa !5
  %33 = load i32, i32* %ytop, align 4, !tbaa !5
  %add20 = add i32 %32, %33
  %conv21 = trunc i32 %add20 to i16
  call void @put_be16(%struct._IO_FILE* %31, i16 zeroext %conv21) #4
  %34 = load i32, i32* %ybottom, align 4, !tbaa !5
  %35 = load i32, i32* %ytop, align 4, !tbaa !5
  %sub = sub i32 %34, %35
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call22 = call i32 @_IO_putc(i32 %sub, %struct._IO_FILE* %36) #4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %38 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %38, i32 0, i32 1
  %39 = load i32, i32* %xr, align 4, !tbaa !43
  %40 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl23 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %40, i32 0, i32 0
  %41 = load i32, i32* %xl23, align 4, !tbaa !42
  %sub24 = sub i32 %39, %41
  %conv25 = trunc i32 %sub24 to i16
  call void @put_be16(%struct._IO_FILE* %37, i16 zeroext %conv25) #4
  %42 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %42, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32764 x i16], [32764 x i16]* %out_buf, i32 0, i32 0
  %43 = bitcast i16* %arraydecay to i8*
  %44 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count26 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %44, i32 0, i32 4
  %45 = load i32, i32* %out_count26, align 4, !tbaa !45
  %conv27 = zext i32 %45 to i64
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call28 = call i64 @fwrite(i8* %43, i64 2, i64 %conv27, %struct._IO_FILE* %46) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.8, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then
  %47 = bitcast i32* %ybottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
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
define internal i32 @hl1250_check_area(%struct.hl1250_state_s* %s) #1 {
entry:
  %s.addr = alloca %struct.hl1250_state_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xleft = alloca i32, align 4
  %xright = alloca i32, align 4
  %ytop = alloca i32, align 4
  %ybottom = alloca i32, align 4
  %line_not_white = alloca i32, align 4
  %band_not_white = alloca i32, align 4
  store %struct.hl1250_state_s* %s, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %xleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %xright to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %ybottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %line_not_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %band_not_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %band_not_white, align 4, !tbaa !5
  %8 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %8, i32 0, i32 0
  %9 = load i32, i32* %xl, align 4, !tbaa !42
  store i32 %9, i32* %xright, align 4, !tbaa !5
  %10 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %10, i32 0, i32 1
  %11 = load i32, i32* %xr, align 4, !tbaa !43
  store i32 %11, i32* %xleft, align 4, !tbaa !5
  %12 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %12, i32 0, i32 2
  %13 = load i32, i32* %yt, align 4, !tbaa !39
  store i32 %13, i32* %ybottom, align 4, !tbaa !5
  %14 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %14, i32 0, i32 3
  %15 = load i32, i32* %yb, align 4, !tbaa !41
  store i32 %15, i32* %ytop, align 4, !tbaa !5
  %16 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt1 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %16, i32 0, i32 2
  %17 = load i32, i32* %yt1, align 4, !tbaa !39
  store i32 %17, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %18 = load i32, i32* %y, align 4, !tbaa !5
  %19 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb2 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %19, i32 0, i32 3
  %20 = load i32, i32* %yb2, align 4, !tbaa !41
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %line_not_white, align 4, !tbaa !5
  %21 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl3 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %21, i32 0, i32 0
  %22 = load i32, i32* %xl3, align 4, !tbaa !42
  store i32 %22, i32* %x, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %24 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr5 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %24, i32 0, i32 1
  %25 = load i32, i32* %xr5, align 4, !tbaa !43
  %cmp6 = icmp ult i32 %23, %25
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %26 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom = zext i32 %26 to i64
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom8 = zext i32 %27 to i64
  %28 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %in_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %28, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx, i32 0, i64 %idxprom
  %29 = load i16, i16* %arrayidx9, align 2, !tbaa !46
  %tobool = icmp ne i16 %29, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body.7
  %30 = load i32, i32* %xleft, align 4, !tbaa !5
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %cmp10 = icmp ugt i32 %30, %31
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %32 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %32, i32* %xleft, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %33 = load i32, i32* %xright, align 4, !tbaa !5
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %cmp12 = icmp ule i32 %33, %34
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %35 = load i32, i32* %x, align 4, !tbaa !5
  %add = add i32 %35, 1
  store i32 %add, i32* %xright, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  store i32 1, i32* %line_not_white, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %36 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add i32 %36, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %37 = load i32, i32* %line_not_white, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %37, 0
  br i1 %tobool16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %for.end
  %38 = load i32, i32* %ytop, align 4, !tbaa !5
  %39 = load i32, i32* %y, align 4, !tbaa !5
  %cmp18 = icmp ugt i32 %38, %39
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %40 = load i32, i32* %y, align 4, !tbaa !5
  store i32 %40, i32* %ytop, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %41 = load i32, i32* %ybottom, align 4, !tbaa !5
  %42 = load i32, i32* %y, align 4, !tbaa !5
  %cmp21 = icmp ule i32 %41, %42
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %43 = load i32, i32* %y, align 4, !tbaa !5
  %add23 = add i32 %43, 1
  store i32 %add23, i32* %ybottom, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  store i32 1, i32* %band_not_white, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %44 = load i32, i32* %y, align 4, !tbaa !5
  %inc27 = add i32 %44, 1
  store i32 %inc27, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %45 = load i32, i32* %band_not_white, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %45, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.end.28
  %46 = load i32, i32* %xleft, align 4, !tbaa !5
  %47 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl31 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %47, i32 0, i32 0
  store i32 %46, i32* %xl31, align 4, !tbaa !42
  %48 = load i32, i32* %xright, align 4, !tbaa !5
  %49 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr32 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %49, i32 0, i32 1
  store i32 %48, i32* %xr32, align 4, !tbaa !43
  %50 = load i32, i32* %ytop, align 4, !tbaa !5
  %51 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt33 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %51, i32 0, i32 2
  store i32 %50, i32* %yt33, align 4, !tbaa !39
  %52 = load i32, i32* %ybottom, align 4, !tbaa !5
  %53 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb34 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %53, i32 0, i32 3
  store i32 %52, i32* %yb34, align 4, !tbaa !41
  br label %if.end.39

if.else:                                          ; preds = %for.end.28
  %54 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl35 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %54, i32 0, i32 0
  %55 = load i32, i32* %xl35, align 4, !tbaa !42
  %56 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr36 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %56, i32 0, i32 1
  store i32 %55, i32* %xr36, align 4, !tbaa !43
  %57 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt37 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %57, i32 0, i32 2
  %58 = load i32, i32* %yt37, align 4, !tbaa !39
  %59 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb38 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %59, i32 0, i32 3
  store i32 %58, i32* %yb38, align 4, !tbaa !41
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.30
  %60 = load i32, i32* %band_not_white, align 4, !tbaa !5
  %61 = bitcast i32* %band_not_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %line_not_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %ybottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %xright to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %xleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @hl1250_compress_line(%struct.hl1250_state_s* %s, i32 %y) #1 {
entry:
  %s.addr = alloca %struct.hl1250_state_s*, align 8
  %y.addr = alloca i32, align 4
  %total_len = alloca i32, align 4
  %copy_len = alloca i32, align 4
  %hlen = alloca i32, align 4
  %vlen = alloca i32, align 4
  %clen = alloca i32, align 4
  %ulen = alloca i32, align 4
  %data = alloca i16, align 2
  %hl_code = alloca i16, align 2
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %out = alloca i16*, align 8
  %width = alloca i32, align 4
  %line = alloca i16*, align 8
  %prev = alloca i16*, align 8
  store %struct.hl1250_state_s* %s, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast i32* %total_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %copy_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %hlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %vlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %ulen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i16* %data to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %hl_code to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i16** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %12, i32 0, i32 1
  %13 = load i32, i32* %xr, align 4, !tbaa !43
  %14 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %14, i32 0, i32 0
  %15 = load i32, i32* %xl, align 4, !tbaa !42
  %sub = sub i32 %13, %15
  store i32 %sub, i32* %width, align 4, !tbaa !5
  %16 = bitcast i16** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl1 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %17, i32 0, i32 0
  %18 = load i32, i32* %xl1, align 4, !tbaa !42
  %idxprom = zext i32 %18 to i64
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom2 = zext i32 %19 to i64
  %20 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %in_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %20, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx, i32 0, i64 %idxprom
  store i16* %arrayidx3, i16** %line, align 8, !tbaa !1
  %21 = bitcast i16** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %23, i32 0, i32 2
  %24 = load i32, i32* %yt, align 4, !tbaa !39
  %cmp = icmp ugt i32 %22, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl4 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %25, i32 0, i32 0
  %26 = load i32, i32* %xl4, align 4, !tbaa !42
  %idxprom5 = zext i32 %26 to i64
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub6 = sub i32 %27, 1
  %idxprom7 = zext i32 %sub6 to i64
  %28 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %in_buf8 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %28, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx9, i32 0, i64 %idxprom5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %arrayidx10, %cond.true ], [ null, %cond.false ]
  store i16* %cond, i16** %prev, align 8, !tbaa !1
  %29 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %29, i32 0, i32 4
  %30 = load i32, i32* %out_count, align 4, !tbaa !45
  %idxprom11 = zext i32 %30 to i64
  %31 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %31, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [32764 x i16], [32764 x i16]* %out_buf, i32 0, i64 %idxprom11
  store i16* %arrayidx12, i16** %out, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !5
  store i32 0, i32* %copy_len, align 4, !tbaa !5
  %32 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count13 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %32, i32 0, i32 4
  %33 = load i32, i32* %out_count13, align 4, !tbaa !45
  store i32 %33, i32* %total_len, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.127, %cond.end
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %35 = load i32, i32* %width, align 4, !tbaa !5
  %cmp14 = icmp ult i32 %34, %35
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom15 = sext i32 %36 to i64
  %37 = load i16*, i16** %line, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %37, i64 %idxprom15
  %38 = load i16, i16* %arrayidx16, align 2, !tbaa !46
  store i16 %38, i16* %data, align 2, !tbaa !46
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %39, 1
  store i32 %add, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %width, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %40, %41
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %42 to i64
  %43 = load i16*, i16** %line, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %43, i64 %idxprom18
  %44 = load i16, i16* %arrayidx19, align 2, !tbaa !46
  %conv = zext i16 %44 to i32
  %45 = load i16, i16* %data, align 2, !tbaa !46
  %conv20 = zext i16 %45 to i32
  %cmp21 = icmp ne i32 %conv, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %48 = load i32, i32* %x, align 4, !tbaa !5
  %sub23 = sub nsw i32 %47, %48
  store i32 %sub23, i32* %hlen, align 4, !tbaa !5
  store i32 0, i32* %vlen, align 4, !tbaa !5
  %49 = load i16*, i16** %prev, align 8, !tbaa !1
  %tobool = icmp ne i16* %49, null
  br i1 %tobool, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %for.end
  %50 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %50, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.39, %if.then.24
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %52 = load i32, i32* %width, align 4, !tbaa !5
  %cmp26 = icmp ult i32 %51, %52
  br i1 %cmp26, label %for.body.28, label %for.end.41

for.body.28:                                      ; preds = %for.cond.25
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %53 to i64
  %54 = load i16*, i16** %line, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %54, i64 %idxprom29
  %55 = load i16, i16* %arrayidx30, align 2, !tbaa !46
  %conv31 = zext i16 %55 to i32
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %56 to i64
  %57 = load i16*, i16** %prev, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %57, i64 %idxprom32
  %58 = load i16, i16* %arrayidx33, align 2, !tbaa !46
  %conv34 = zext i16 %58 to i32
  %cmp35 = icmp ne i32 %conv31, %conv34
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.28
  br label %for.end.41

if.end.38:                                        ; preds = %for.body.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %59, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.end.41:                                       ; preds = %if.then.37, %for.cond.25
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %sub42 = sub nsw i32 %60, %61
  store i32 %sub42, i32* %vlen, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.41, %for.end
  %62 = load i32, i32* %hlen, align 4, !tbaa !5
  store i32 %62, i32* %ulen, align 4, !tbaa !5
  store i32 1, i32* %clen, align 4, !tbaa !5
  %63 = load i32, i32* %vlen, align 4, !tbaa !5
  %64 = load i32, i32* %hlen, align 4, !tbaa !5
  %cmp44 = icmp uge i32 %63, %64
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.43
  %65 = load i32, i32* %vlen, align 4, !tbaa !5
  store i32 %65, i32* %ulen, align 4, !tbaa !5
  %66 = load i32, i32* %vlen, align 4, !tbaa !5
  %or = or i32 57344, %66
  %conv47 = trunc i32 %or to i16
  store i16 %conv47, i16* %hl_code, align 2, !tbaa !46
  br label %if.end.90

if.else:                                          ; preds = %if.end.43
  %67 = load i16, i16* %data, align 2, !tbaa !46
  %conv48 = zext i16 %67 to i32
  %68 = load i16, i16* %data, align 2, !tbaa !46
  %conv49 = zext i16 %68 to i32
  %shr = ashr i32 %conv49, 8
  %xor = xor i32 %conv48, %shr
  %and = and i32 %xor, 255
  %tobool50 = icmp ne i32 %and, 0
  br i1 %tobool50, label %if.then.51, label %if.else.54

if.then.51:                                       ; preds = %if.else
  %69 = load i32, i32* %hlen, align 4, !tbaa !5
  %or52 = or i32 32768, %69
  %conv53 = trunc i32 %or52 to i16
  store i16 %conv53, i16* %hl_code, align 2, !tbaa !46
  store i32 2, i32* %clen, align 4, !tbaa !5
  br label %if.end.89

if.else.54:                                       ; preds = %if.else
  %70 = load i16, i16* %data, align 2, !tbaa !46
  %conv55 = zext i16 %70 to i32
  %71 = load i16, i16* %data, align 2, !tbaa !46
  %conv56 = zext i16 %71 to i32
  %shr57 = ashr i32 %conv56, 4
  %xor58 = xor i32 %conv55, %shr57
  %and59 = and i32 %xor58, 15
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.74

if.then.61:                                       ; preds = %if.else.54
  %72 = load i32, i32* %hlen, align 4, !tbaa !5
  %cmp62 = icmp ult i32 %72, 32
  br i1 %cmp62, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %if.then.61
  %73 = load i32, i32* %hlen, align 4, !tbaa !5
  %shl = shl i32 %73, 8
  %or65 = or i32 49152, %shl
  %74 = load i16, i16* %data, align 2, !tbaa !46
  %conv66 = zext i16 %74 to i32
  %and67 = and i32 %conv66, 255
  %or68 = or i32 %or65, %and67
  %conv69 = trunc i32 %or68 to i16
  store i16 %conv69, i16* %hl_code, align 2, !tbaa !46
  br label %if.end.73

if.else.70:                                       ; preds = %if.then.61
  %75 = load i32, i32* %hlen, align 4, !tbaa !5
  %or71 = or i32 32768, %75
  %conv72 = trunc i32 %or71 to i16
  store i16 %conv72, i16* %hl_code, align 2, !tbaa !46
  store i32 2, i32* %clen, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.64
  br label %if.end.88

if.else.74:                                       ; preds = %if.else.54
  %76 = load i32, i32* %hlen, align 4, !tbaa !5
  %cmp75 = icmp ult i32 %76, 512
  br i1 %cmp75, label %if.then.77, label %if.else.84

if.then.77:                                       ; preds = %if.else.74
  %77 = load i32, i32* %hlen, align 4, !tbaa !5
  %or78 = or i32 40960, %77
  %78 = load i16, i16* %data, align 2, !tbaa !46
  %conv79 = zext i16 %78 to i32
  %and80 = and i32 %conv79, 15
  %shl81 = shl i32 %and80, 9
  %or82 = or i32 %or78, %shl81
  %conv83 = trunc i32 %or82 to i16
  store i16 %conv83, i16* %hl_code, align 2, !tbaa !46
  br label %if.end.87

if.else.84:                                       ; preds = %if.else.74
  %79 = load i32, i32* %hlen, align 4, !tbaa !5
  %or85 = or i32 32768, %79
  %conv86 = trunc i32 %or85 to i16
  store i16 %conv86, i16* %hl_code, align 2, !tbaa !46
  store i32 2, i32* %clen, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.73
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.51
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.46
  %80 = load i32, i32* %ulen, align 4, !tbaa !5
  %81 = load i32, i32* %clen, align 4, !tbaa !5
  %82 = load i32, i32* %copy_len, align 4, !tbaa !5
  %cmp91 = icmp ugt i32 %82, 0
  %conv92 = zext i1 %cmp91 to i32
  %add93 = add i32 %81, %conv92
  %cmp94 = icmp ult i32 %80, %add93
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %if.end.90
  %83 = load i32, i32* %ulen, align 4, !tbaa !5
  %84 = load i32, i32* %copy_len, align 4, !tbaa !5
  %add97 = add i32 %84, %83
  store i32 %add97, i32* %copy_len, align 4, !tbaa !5
  br label %if.end.127

if.else.98:                                       ; preds = %if.end.90
  %85 = load i32, i32* %copy_len, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %85, 0
  br i1 %tobool99, label %if.then.100, label %if.end.114

if.then.100:                                      ; preds = %if.else.98
  %86 = load i32, i32* %copy_len, align 4, !tbaa !5
  %add101 = add i32 %86, 1
  %87 = load i32, i32* %total_len, align 4, !tbaa !5
  %add102 = add i32 %87, %add101
  store i32 %add102, i32* %total_len, align 4, !tbaa !5
  %88 = load i32, i32* %total_len, align 4, !tbaa !5
  %cmp103 = icmp ugt i32 %88, 32764
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.100
  br label %error_out

if.end.106:                                       ; preds = %if.then.100
  %89 = load i32, i32* %copy_len, align 4, !tbaa !5
  %shl107 = shl i32 %89, 4
  %conv108 = trunc i32 %shl107 to i16
  %call = call zeroext i16 @cpu_to_be16(i16 zeroext %conv108) #4
  %90 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %incdec.ptr, i16** %out, align 8, !tbaa !1
  store i16 %call, i16* %90, align 2, !tbaa !46
  %91 = load i16*, i16** %out, align 8, !tbaa !1
  %92 = bitcast i16* %91 to i8*
  %93 = load i32, i32* %x, align 4, !tbaa !5
  %94 = load i32, i32* %copy_len, align 4, !tbaa !5
  %sub109 = sub i32 %93, %94
  %idxprom110 = zext i32 %sub109 to i64
  %95 = load i16*, i16** %line, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i16, i16* %95, i64 %idxprom110
  %96 = bitcast i16* %arrayidx111 to i8*
  %97 = load i32, i32* %copy_len, align 4, !tbaa !5
  %conv112 = zext i32 %97 to i64
  %mul = mul i64 %conv112, 2
  %call113 = call i8* @memcpy(i8* %92, i8* %96, i64 %mul) #5
  %98 = load i32, i32* %copy_len, align 4, !tbaa !5
  %99 = load i16*, i16** %out, align 8, !tbaa !1
  %idx.ext = zext i32 %98 to i64
  %add.ptr = getelementptr inbounds i16, i16* %99, i64 %idx.ext
  store i16* %add.ptr, i16** %out, align 8, !tbaa !1
  store i32 0, i32* %copy_len, align 4, !tbaa !5
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.106, %if.else.98
  %100 = load i32, i32* %clen, align 4, !tbaa !5
  %101 = load i32, i32* %total_len, align 4, !tbaa !5
  %add115 = add i32 %101, %100
  store i32 %add115, i32* %total_len, align 4, !tbaa !5
  %102 = load i32, i32* %total_len, align 4, !tbaa !5
  %cmp116 = icmp ugt i32 %102, 32764
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.114
  br label %error_out

if.end.119:                                       ; preds = %if.end.114
  %103 = load i16, i16* %hl_code, align 2, !tbaa !46
  %call120 = call zeroext i16 @cpu_to_be16(i16 zeroext %103) #4
  %104 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %incdec.ptr121, i16** %out, align 8, !tbaa !1
  store i16 %call120, i16* %104, align 2, !tbaa !46
  %105 = load i32, i32* %clen, align 4, !tbaa !5
  %cmp122 = icmp eq i32 %105, 2
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.119
  %106 = load i16, i16* %data, align 2, !tbaa !46
  %107 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i16, i16* %107, i32 1
  store i16* %incdec.ptr125, i16** %out, align 8, !tbaa !1
  store i16 %106, i16* %107, align 2, !tbaa !46
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.119
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.96
  %108 = load i32, i32* %ulen, align 4, !tbaa !5
  %109 = load i32, i32* %x, align 4, !tbaa !5
  %add128 = add i32 %109, %108
  store i32 %add128, i32* %x, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %110 = load i32, i32* %copy_len, align 4, !tbaa !5
  %tobool129 = icmp ne i32 %110, 0
  br i1 %tobool129, label %if.then.130, label %if.end.149

if.then.130:                                      ; preds = %while.end
  %111 = load i32, i32* %copy_len, align 4, !tbaa !5
  %add131 = add i32 %111, 1
  %112 = load i32, i32* %total_len, align 4, !tbaa !5
  %add132 = add i32 %112, %add131
  store i32 %add132, i32* %total_len, align 4, !tbaa !5
  %113 = load i32, i32* %total_len, align 4, !tbaa !5
  %cmp133 = icmp ugt i32 %113, 32764
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.130
  br label %error_out

if.end.136:                                       ; preds = %if.then.130
  %114 = load i32, i32* %copy_len, align 4, !tbaa !5
  %shl137 = shl i32 %114, 4
  %conv138 = trunc i32 %shl137 to i16
  %call139 = call zeroext i16 @cpu_to_be16(i16 zeroext %conv138) #4
  %115 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr140 = getelementptr inbounds i16, i16* %115, i32 1
  store i16* %incdec.ptr140, i16** %out, align 8, !tbaa !1
  store i16 %call139, i16* %115, align 2, !tbaa !46
  %116 = load i16*, i16** %out, align 8, !tbaa !1
  %117 = bitcast i16* %116 to i8*
  %118 = load i32, i32* %width, align 4, !tbaa !5
  %119 = load i32, i32* %copy_len, align 4, !tbaa !5
  %sub141 = sub i32 %118, %119
  %idxprom142 = zext i32 %sub141 to i64
  %120 = load i16*, i16** %line, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i16, i16* %120, i64 %idxprom142
  %121 = bitcast i16* %arrayidx143 to i8*
  %122 = load i32, i32* %copy_len, align 4, !tbaa !5
  %conv144 = zext i32 %122 to i64
  %mul145 = mul i64 %conv144, 2
  %call146 = call i8* @memcpy(i8* %117, i8* %121, i64 %mul145) #5
  %123 = load i32, i32* %copy_len, align 4, !tbaa !5
  %124 = load i16*, i16** %out, align 8, !tbaa !1
  %idx.ext147 = zext i32 %123 to i64
  %add.ptr148 = getelementptr inbounds i16, i16* %124, i64 %idx.ext147
  store i16* %add.ptr148, i16** %out, align 8, !tbaa !1
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.136, %while.end
  br label %error_out

error_out:                                        ; preds = %if.end.149, %if.then.135, %if.then.118, %if.then.105
  %125 = load i16*, i16** %out, align 8, !tbaa !1
  %126 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_buf150 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %126, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32764 x i16], [32764 x i16]* %out_buf150, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %125 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv151 = trunc i64 %sub.ptr.div to i32
  %127 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count152 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %127, i32 0, i32 4
  store i32 %conv151, i32* %out_count152, align 4, !tbaa !45
  %128 = load i32, i32* %total_len, align 4, !tbaa !5
  %cmp153 = icmp ule i32 %128, 32764
  %conv154 = zext i1 %cmp153 to i32
  %129 = bitcast i16** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = bitcast i16** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i16** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i16* %hl_code to i8*
  call void @llvm.lifetime.end(i64 2, i8* %135) #2
  %136 = bitcast i16* %data to i8*
  call void @llvm.lifetime.end(i64 2, i8* %136) #2
  %137 = bitcast i32* %ulen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %vlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %hlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %copy_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %total_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  ret i32 %conv154
}

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @hl1250_lose_resolution(%struct.hl1250_state_s* %s) #1 {
entry:
  %s.addr = alloca %struct.hl1250_state_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %data0 = alloca i16, align 2
  %data1 = alloca i16, align 2
  %mask = alloca i16, align 2
  %out = alloca i16*, align 8
  %line0 = alloca i16*, align 8
  %line1 = alloca i16*, align 8
  %width = alloca i32, align 4
  store %struct.hl1250_state_s* %s, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i16* %data0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %data1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i16* %mask to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i16** %line0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i16** %line1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %9, i32 0, i32 1
  %10 = load i32, i32* %xr, align 4, !tbaa !43
  %11 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %11, i32 0, i32 0
  %12 = load i32, i32* %xl, align 4, !tbaa !42
  %sub = sub i32 %10, %12
  store i32 %sub, i32* %width, align 4, !tbaa !5
  %13 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %13, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32764 x i16], [32764 x i16]* %out_buf, i32 0, i32 0
  store i16* %arraydecay, i16** %out, align 8, !tbaa !1
  %14 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yt = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %14, i32 0, i32 2
  %15 = load i32, i32* %yt, align 4, !tbaa !39
  store i32 %15, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %17 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %17, i32 0, i32 3
  %18 = load i32, i32* %yb, align 4, !tbaa !41
  %cmp = icmp ult i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %19 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl1 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %19, i32 0, i32 0
  %20 = load i32, i32* %xl1, align 4, !tbaa !42
  %idxprom = zext i32 %20 to i64
  %21 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom2 = zext i32 %21 to i64
  %22 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %in_buf = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %22, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx, i32 0, i64 %idxprom
  store i16* %arrayidx3, i16** %line0, align 8, !tbaa !1
  %23 = load i16*, i16** %line0, align 8, !tbaa !1
  store i16* %23, i16** %line1, align 8, !tbaa !1
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %add = add i32 %24, 1
  %25 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %yb4 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %25, i32 0, i32 3
  %26 = load i32, i32* %yb4, align 4, !tbaa !41
  %cmp5 = icmp ult i32 %add, %26
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %xl6 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %27, i32 0, i32 0
  %28 = load i32, i32* %xl6, align 4, !tbaa !42
  %idxprom7 = zext i32 %28 to i64
  %29 = load i32, i32* %y, align 4, !tbaa !5
  %add8 = add i32 %29, 1
  %idxprom9 = zext i32 %add8 to i64
  %30 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %in_buf10 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %30, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [64 x [640 x i16]], [64 x [640 x i16]]* %in_buf10, i32 0, i64 %idxprom9
  %arrayidx12 = getelementptr inbounds [640 x i16], [640 x i16]* %arrayidx11, i32 0, i64 %idxprom7
  store i16* %arrayidx12, i16** %line1, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %31 = load i32, i32* %y, align 4, !tbaa !5
  %and = and i32 %31, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 21845, i32 43690
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %mask, align 2, !tbaa !46
  %32 = load i32, i32* %width, align 4, !tbaa !5
  %shl = shl i32 %32, 4
  %conv13 = trunc i32 %shl to i16
  %call = call zeroext i16 @cpu_to_be16(i16 zeroext %conv13) #4
  %33 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr, i16** %out, align 8, !tbaa !1
  store i16 %call, i16* %33, align 2, !tbaa !46
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %35 = load i32, i32* %width, align 4, !tbaa !5
  %cmp15 = icmp ult i32 %34, %35
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %36 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom18 = zext i32 %36 to i64
  %37 = load i16*, i16** %line0, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %37, i64 %idxprom18
  %38 = load i16, i16* %arrayidx19, align 2, !tbaa !46
  store i16 %38, i16* %data0, align 2, !tbaa !46
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom20 = zext i32 %39 to i64
  %40 = load i16*, i16** %line1, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %40, i64 %idxprom20
  %41 = load i16, i16* %arrayidx21, align 2, !tbaa !46
  store i16 %41, i16* %data1, align 2, !tbaa !46
  %42 = load i16, i16* %data0, align 2, !tbaa !46
  %conv22 = zext i16 %42 to i32
  %43 = load i16, i16* %data1, align 2, !tbaa !46
  %conv23 = zext i16 %43 to i32
  %and24 = and i32 %conv22, %conv23
  %44 = load i16, i16* %data0, align 2, !tbaa !46
  %conv25 = zext i16 %44 to i32
  %45 = load i16, i16* %mask, align 2, !tbaa !46
  %conv26 = zext i16 %45 to i32
  %and27 = and i32 %conv25, %conv26
  %or = or i32 %and24, %and27
  %46 = load i16, i16* %data1, align 2, !tbaa !46
  %conv28 = zext i16 %46 to i32
  %47 = load i16, i16* %mask, align 2, !tbaa !46
  %conv29 = zext i16 %47 to i32
  %and30 = and i32 %conv28, %conv29
  %or31 = or i32 %or, %and30
  %conv32 = trunc i32 %or31 to i16
  %48 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr33, i16** %out, align 8, !tbaa !1
  store i16 %conv32, i16* %48, align 2, !tbaa !46
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add i32 %49, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %50 = load i32, i32* %width, align 4, !tbaa !5
  %or34 = or i32 57344, %50
  %conv35 = trunc i32 %or34 to i16
  %call36 = call zeroext i16 @cpu_to_be16(i16 zeroext %conv35) #4
  %51 = load i16*, i16** %out, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr37, i16** %out, align 8, !tbaa !1
  store i16 %call36, i16* %51, align 2, !tbaa !46
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %52 = load i32, i32* %y, align 4, !tbaa !5
  %add39 = add i32 %52, 2
  store i32 %add39, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %53 = load i16*, i16** %out, align 8, !tbaa !1
  %54 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_buf41 = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %54, i32 0, i32 5
  %arraydecay42 = getelementptr inbounds [32764 x i16], [32764 x i16]* %out_buf41, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %53 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv43 = trunc i64 %sub.ptr.div to i32
  %55 = load %struct.hl1250_state_s*, %struct.hl1250_state_s** %s.addr, align 8, !tbaa !1
  %out_count = getelementptr inbounds %struct.hl1250_state_s, %struct.hl1250_state_s* %55, i32 0, i32 4
  store i32 %conv43, i32* %out_count, align 4, !tbaa !45
  %56 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i16** %line1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast i16** %line0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast i16** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i16* %mask to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #2
  %61 = bitcast i16* %data1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #2
  %62 = bitcast i16* %data0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %62) #2
  %63 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_be16(%struct._IO_FILE* %fp, i16 zeroext %data) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i16, align 2
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i16 %data, i16* %data.addr, align 2, !tbaa !46
  %0 = load i16, i16* %data.addr, align 2, !tbaa !46
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %shr, %struct._IO_FILE* %1) #4
  %2 = load i16, i16* %data.addr, align 2, !tbaa !46
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %3) #4
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal zeroext i16 @cpu_to_be16(i16 zeroext %x) #1 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, i16* %x.addr, align 2, !tbaa !46
  %0 = load i16, i16* %x.addr, align 2, !tbaa !46
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %1 = load i16, i16* %x.addr, align 2, !tbaa !46
  %conv1 = zext i16 %1 to i32
  %shl = shl i32 %conv1, 8
  %or = or i32 %shr, %shl
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!10, !3, i64 18472}
!10 = !{!"gx_device_hl1250_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !3, i64 18472, !3, i64 18476, !3, i64 18480}
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
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!25 = !{!3, !3, i64 0}
!26 = !{!10, !3, i64 18476}
!27 = !{!10, !3, i64 18480}
!28 = !{!29, !12, i64 928}
!29 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!30 = !{!29, !2, i64 17176}
!31 = !{!32, !2, i64 0}
!32 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!33 = !{!34, !2, i64 56}
!34 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!35 = !{!29, !2, i64 24}
!36 = !{!37, !2, i64 88}
!37 = !{!"gs_memory_s", !2, i64 0, !38, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!39 = !{!40, !6, i64 8}
!40 = !{!"hl1250_state_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !3, i64 65548}
!41 = !{!40, !6, i64 12}
!42 = !{!40, !6, i64 0}
!43 = !{!40, !6, i64 4}
!44 = !{!37, !2, i64 24}
!45 = !{!40, !6, i64 16}
!46 = !{!14, !14, i64 0}
