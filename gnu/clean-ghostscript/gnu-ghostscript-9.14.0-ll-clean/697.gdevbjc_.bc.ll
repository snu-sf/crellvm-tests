; ModuleID = './gdevbjc_.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BJL_command = type { i8*, i32, i32 }
%struct.stringParamDescription = type { %struct.gs_param_string_s, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
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
%struct.anon = type { i32, i32, i32 }
%struct.media_t = type { i8, i8 }
%struct.gx_device_bjc_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] }
%struct.skip_s = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"@Cleaning=1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"@PowerOff\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"@RollerCleaning\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"@TestPrint=NozzleCheck\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"@TestPrint=A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"@TestPrint=B\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"@TestPrint=C\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"@TestPrint=DemoPrint\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"ControlMode=Common\0AAutoPowerOn=Enable\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"ControlMode=Common\0AAutoPowerOn=Disable\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"ControlMode=Common\0AAutoPowerOff=1\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"ControlMode=Common\0AAutoPowerOff=10\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ControlMode=Common\0AAutoPowerOff=30\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"ControlMode=Common\0AAutoPowerOff=60\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"ControlMode=Common\0AAutoPowerOff=Disable\00", align 1
@BJL_command_set = global [16 x %struct.BJL_command] [%struct.BJL_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 0, i32 11 }, %struct.BJL_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 9 }, %struct.BJL_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 15 }, %struct.BJL_command { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 22 }, %struct.BJL_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 12 }, %struct.BJL_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 5, i32 12 }, %struct.BJL_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 6, i32 12 }, %struct.BJL_command { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 7, i32 20 }, %struct.BJL_command { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 32, i32 37 }, %struct.BJL_command { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 33, i32 38 }, %struct.BJL_command { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i32 34, i32 33 }, %struct.BJL_command { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 35, i32 34 }, %struct.BJL_command { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 36, i32 34 }, %struct.BJL_command { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 37, i32 34 }, %struct.BJL_command { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i32 38, i32 39 }, %struct.BJL_command zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"BJC-250\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"BJC-250ex\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"BJC-1000\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"250\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"250ex\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@strPrinterType = global [7 x %struct.stringParamDescription] [%struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 9, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 8, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 5, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 0 }, i32 2 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [7 x i8] c"Manual\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@strFeeder = global [5 x %struct.stringParamDescription] [%struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 6, i32 0 }, i32 17 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 4, i32 0 }, i32 16 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 0 }, i32 17 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 0 }, i32 16 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Draft\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"NonBleed\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@strQuality = global [9 x %struct.stringParamDescription] [%struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 6, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 4, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 5, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 8, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i32 1, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0 }, i32 8 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"MK\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"YK\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"RK\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"GK\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"BK\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@strInk = global [23 x %struct.stringParamDescription] [%struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 5, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 4, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 6, i32 0 }, i32 4 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 3, i32 0 }, i32 6 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 5, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 4, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i32 1, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i32 1, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i32 1, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 0 }, i32 4 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 0 }, i32 6 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i32 1, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 2, i32 0 }, i32 9 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 2, i32 0 }, i32 10 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 2, i32 0 }, i32 12 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 2, i32 0 }, i32 14 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i32 2, i32 0 }, i32 13 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 2, i32 0 }, i32 11 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 3, i32 0 }, i32 7 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 4, i32 0 }, i32 15 }, %struct.stringParamDescription zeroinitializer], align 16
@bjcmono_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.55 = private unnamed_addr constant [8 x i8] c"bjcmono\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.56 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_bjcmono_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] } { i32 25792, %struct.gx_device_procs_s* @bjcmono_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC048183060000000, float 0xC045428500000000], [4 x float] [float 0x4023468D20000000, float 0x4033D7AF60000000, float 0x4023468D20000000, float 0x4021020400000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page_mono, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 8, i32 15, i32 0, i32 1, i32 0, i32 0, i32 1, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, %struct.anon { i32 255, i32 255, i32 255 }, i32 0, i32 0, [1024 x i32] zeroinitializer, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer }, align 8
@bjcgray_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.57 = private unnamed_addr constant [8 x i8] c"bjcgray\00", align 1
@gs_bjcgray_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] } { i32 25792, %struct.gx_device_procs_s* @bjcgray_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC048183060000000, float 0xC045428500000000], [4 x float] [float 0x4023468D20000000, float 0x4033D7AF60000000, float 0x4023468D20000000, float 0x4021020400000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page_gray, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 8, i32 15, i32 0, i32 1, i32 0, i32 0, i32 1, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, %struct.anon { i32 255, i32 255, i32 255 }, i32 0, i32 0, [1024 x i32] zeroinitializer, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer }, align 8
@bjc_cmykcolor_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_1bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_1bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.58 = private unnamed_addr constant [8 x i8] c"bjccmyk\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_bjccmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] } { i32 25792, %struct.gx_device_procs_s* @bjc_cmykcolor_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC048183060000000, float 0xC045428500000000], [4 x float] [float 0x4023468D20000000, float 0x4033D7AF60000000, float 0x4023468D20000000, float 0x4021020400000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page_cmyk, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 15, i32 15, i32 0, i32 1, i32 0, i32 0, i32 1, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, %struct.anon { i32 255, i32 255, i32 255 }, i32 0, i32 0, [1024 x i32] zeroinitializer, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer }, align 8
@bjc_truecolor_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_bjc_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.60 = private unnamed_addr constant [9 x i8] c"bjccolor\00", align 1
@gs_bjccolor_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] } { i32 25792, %struct.gx_device_procs_s* @bjc_truecolor_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC048183060000000, float 0xC045428500000000], [4 x float] [float 0x4023468D20000000, float 0x4033D7AF60000000, float 0x4023468D20000000, float 0x4021020400000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bjc_print_page_color, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 15, i32 15, i32 0, i32 1, i32 0, i32 0, i32 1, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, %struct.anon { i32 255, i32 255, i32 255 }, i32 0, i32 0, [1024 x i32] zeroinitializer, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer, [256 x i32] zeroinitializer }, align 8
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B[K\02\00\00\1FBJLSTART\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"\0ABJLEND\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"PrinterType\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Feeder\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Media\00", align 1
@strMedia = internal global [42 x %struct.stringParamDescription] [%struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 10, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 11, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i32 16, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i32 13, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 15, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i32 11, i32 0 }, i32 4 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 11, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0), i32 16, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 14, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i32 14, i32 0 }, i32 6 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 8, i32 0 }, i32 7 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i32 10, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i32 19, i32 0 }, i32 9 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0), i32 15, i32 0 }, i32 10 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 6, i32 0 }, i32 11 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i32 5, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 6, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i32 5, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 4, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i32 4, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 6, i32 0 }, i32 4 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 6, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 6, i32 0 }, i32 6 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i32 3, i32 0 }, i32 7 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 3, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i32 5, i32 0 }, i32 9 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 4, i32 0 }, i32 10 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i32 3, i32 0 }, i32 11 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i32 1, i32 0 }, i32 0 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i32 1, i32 0 }, i32 1 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i32 1, i32 0 }, i32 2 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i32 1, i32 0 }, i32 3 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i32 1, i32 0 }, i32 4 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i32 1, i32 0 }, i32 5 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i32 1, i32 0 }, i32 6 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i32 1, i32 0 }, i32 7 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i32 1, i32 0 }, i32 8 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0 }, i32 9 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i32 1, i32 0 }, i32 10 }, %struct.stringParamDescription { %struct.gs_param_string_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 0 }, i32 11 }, %struct.stringParamDescription zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"InkColor\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Inverse\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"LimitCheck\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"DecomposeK\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"PaperRed\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"PaperGreen\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"PaperBlue\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"RedGamma\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"GreenGamma\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"BlueGamma\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"PlainPaper\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"CoatedPaper\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"TransparencyFilm\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"BackprintFilm\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"T-ShirtTransfer\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"FabricSheet\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"GlossyPaper\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"GlossyPhotoPaper\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"HighGlossPaper\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"HighGlossyFilm\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"OtherPaper\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"HighResolutionPaper\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"GlossyPhotoCard\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Banner\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"Plain\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Coated\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Trans\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"Shirt\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Fabric\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"Glossy\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"HGloss\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"Env\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"Oth\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"HiRes\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"Card\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"Ban\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"bjc mono file buffer\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"bjc mono comp buffer\00", align 1
@bjc_print_page_mono.mask_array = private unnamed_addr constant [8 x i8] c"\FF\80\C0\E0\F0\F8\FC\FE", align 1
@media_codes = internal global [12 x %struct.media_t] [%struct.media_t zeroinitializer, %struct.media_t { i8 16, i8 16 }, %struct.media_t { i8 32, i8 32 }, %struct.media_t { i8 48, i8 48 }, %struct.media_t { i8 80, i8 64 }, %struct.media_t { i8 96, i8 80 }, %struct.media_t { i8 112, i8 96 }, %struct.media_t { i8 -128, i8 0 }, %struct.media_t { i8 -112, i8 16 }, %struct.media_t { i8 -80, i8 112 }, %struct.media_t { i8 -64, i8 80 }, %struct.media_t { i8 -48, i8 0 }], align 16
@.str.120 = private unnamed_addr constant [21 x i8] c"bjc gray file buffer\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"bjc gray dither buffer\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"bjc gray comp buffer\00", align 1
@bjc_print_page_gray.mask_array = private unnamed_addr constant [8 x i8] c"\FF\80\C0\E0\F0\F8\FC\FE", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"bjc cmyk file buffer\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"bjc cmyk comp buffer\00", align 1
@bjc_print_page_cmyk.mask_array = private unnamed_addr constant [8 x i8] c"\FF\80\C0\E0\F0\F8\FC\FE", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"bjc true file buffer\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"bjc true dither buffer\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"bjc true comp buffer\00", align 1
@bjc_print_page_color.mask_array = private unnamed_addr constant [8 x i8] c"\FF\80\C0\E0\F0\F8\FC\FE", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bjc_print_page_mono(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %raster = alloca i32, align 4
  %cmplen = alloca i32, align 4
  %row = alloca i8*, align 8
  %cmp = alloca i8*, align 8
  %outrow = alloca i8*, align 8
  %y = alloca i32, align 4
  %skip = alloca i32, align 4
  %color = alloca i8, align 1
  %ink10 = alloca i8, align 1
  %compress = alloca i8, align 1
  %x_resolution = alloca i32, align 4
  %y_resolution = alloca i32, align 4
  %length = alloca i32, align 4
  %lm = alloca i32, align 4
  %rm = alloca i32, align 4
  %top = alloca i32, align 4
  %inkc = alloca i8, align 1
  %mask_array = alloca [8 x i8], align 1
  %lastmask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #5
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %3 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %10 = load i32, i32* %raster, align 4, !tbaa !5
  %call2 = call i8* %7(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0)) #5
  store i8* %call2, i8** %row, align 8, !tbaa !1
  %11 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !23
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !7
  %17 = load i32, i32* %raster, align 4, !tbaa !5
  %shl = shl i32 %17, 1
  %add = add i32 %shl, 1
  %call7 = call i8* %14(%struct.gs_memory_s* %16, i32 %add, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.119, i32 0, i32 0)) #5
  store i8* %call7, i8** %cmp, align 8, !tbaa !1
  %18 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  call void @llvm.lifetime.start(i64 1, i8* %color) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_printer_s* %21 to %struct.gx_device_bjc_printer_s*
  %smooth = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %22, i32 0, i32 76
  %23 = load i32, i32* %smooth, align 4, !tbaa !26
  %cmp8 = icmp eq i32 %23, 1
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_bjc_printer_s*
  %ink = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %25, i32 0, i32 72
  %26 = load i32, i32* %ink, align 4, !tbaa !30
  %and = and i32 %26, 8
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 17, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 18, %cond.true ], [ %cond, %cond.false ]
  %conv = trunc i32 %cond9 to i8
  store i8 %conv, i8* %color, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %ink10) #2
  store i8 1, i8* %ink10, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %compress) #2
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_printer_s* %27 to %struct.gx_device_bjc_printer_s*
  %compress11 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %28, i32 0, i32 75
  %29 = load i32, i32* %compress11, align 4, !tbaa !32
  %cmp12 = icmp eq i32 %29, 1
  %cond14 = select i1 %cmp12, i32 1, i32 0
  %conv15 = trunc i32 %cond14 to i8
  store i8 %conv15, i8* %compress, align 1, !tbaa !31
  %30 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %32 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv16 = fptosi float %32 to i32
  store i32 %conv16, i32* %x_resolution, align 4, !tbaa !5
  %33 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 22
  %arrayidx18 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution17, i32 0, i64 1
  %35 = load float, float* %arrayidx18, align 4, !tbaa !33
  %conv19 = fptosi float %35 to i32
  store i32 %conv19, i32* %y_resolution, align 4, !tbaa !5
  %36 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  store i32 0, i32* %length, align 4, !tbaa !5
  %37 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  store i32 0, i32* %lm, align 4, !tbaa !5
  %38 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  store i32 0, i32* %rm, align 4, !tbaa !5
  %39 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %top, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %inkc) #2
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_printer_s* %40 to %struct.gx_device_bjc_printer_s*
  %ink20 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %41, i32 0, i32 72
  %42 = load i32, i32* %ink20, align 4, !tbaa !30
  %conv21 = trunc i32 %42 to i8
  store i8 %conv21, i8* %inkc, align 1, !tbaa !31
  %43 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @bjc_print_page_mono.mask_array, i32 0, i32 0), i64 8, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %lastmask) #2
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width, align 4, !tbaa !34
  %rem = srem i32 %46, 8
  %idxprom = sext i32 %rem to i64
  %arrayidx22 = getelementptr inbounds [8 x i8], [8 x i8]* %mask_array, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx22, align 1, !tbaa !31
  store i8 %47, i8* %lastmask, align 1, !tbaa !31
  %48 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp23 = icmp eq i8* %48, null
  br i1 %cmp23, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %49 = load i8*, i8** %cmp, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %49, null
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_set_initial(%struct._IO_FILE* %50) #5
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %52 = load i8, i8* %color, align 1, !tbaa !31
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_printer_s* %53 to %struct.gx_device_bjc_printer_s*
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %54, i32 0, i32 70
  %55 = load i32, i32* %mediaType, align 4, !tbaa !35
  %idxprom27 = sext i32 %55 to i64
  %arrayidx28 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom27
  %c = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx28, i32 0, i32 1
  %56 = load i8, i8* %c, align 1, !tbaa !36
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gx_device_printer_s* %57 to %struct.gx_device_bjc_printer_s*
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %58, i32 0, i32 71
  %59 = load i32, i32* %quality, align 4, !tbaa !38
  %conv29 = trunc i32 %59 to i8
  call void @bjc_put_print_method(%struct._IO_FILE* %51, i8 signext %52, i8 signext %56, i8 signext %conv29, i8 signext 0) #5
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_printer_s* %61 to %struct.gx_device_bjc_printer_s*
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %62, i32 0, i32 69
  %63 = load i32, i32* %feeder, align 4, !tbaa !39
  %conv30 = trunc i32 %63 to i8
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_printer_s* %64 to %struct.gx_device_bjc_printer_s*
  %mediaType31 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %65, i32 0, i32 70
  %66 = load i32, i32* %mediaType31, align 4, !tbaa !35
  %idxprom32 = sext i32 %66 to i64
  %arrayidx33 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom32
  %l = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx33, i32 0, i32 0
  %67 = load i8, i8* %l, align 1, !tbaa !40
  call void @bjc_put_media_supply(%struct._IO_FILE* %60, i8 signext %conv30, i8 signext %67) #5
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %69 = load i32, i32* %x_resolution, align 4, !tbaa !5
  %70 = load i32, i32* %y_resolution, align 4, !tbaa !5
  call void @bjc_put_raster_resolution(%struct._IO_FILE* %68, i32 %69, i32 %70) #5
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %72 = load i32, i32* %length, align 4, !tbaa !5
  %73 = load i32, i32* %lm, align 4, !tbaa !5
  %74 = load i32, i32* %rm, align 4, !tbaa !5
  %75 = load i32, i32* %top, align 4, !tbaa !5
  call void @bjc_put_page_margins(%struct._IO_FILE* %71, i32 %72, i32 %73, i32 %74, i32 %75) #5
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %77 = load i8, i8* %compress, align 1, !tbaa !31
  call void @bjc_put_set_compression(%struct._IO_FILE* %76, i8 signext %77) #5
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %79 = load i8, i8* %ink10, align 1, !tbaa !31
  call void @bjc_put_image_format(%struct._IO_FILE* %78, i8 signext 0, i8 signext 0, i8 signext %79) #5
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %80 = load i32, i32* %y, align 4, !tbaa !5
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height, align 4, !tbaa !41
  %cmp34 = icmp slt i32 %80, %82
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %84 = load i32, i32* %y, align 4, !tbaa !5
  %85 = load i8*, i8** %row, align 8, !tbaa !1
  %86 = load i32, i32* %raster, align 4, !tbaa !5
  %call36 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %83, i32 %84, i8* %85, i32 %86) #5
  %87 = load i8*, i8** %row, align 8, !tbaa !1
  %88 = load i32, i32* %raster, align 4, !tbaa !5
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_printer_s* %89 to %struct.gx_device_bjc_printer_s*
  %inverse = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %90, i32 0, i32 74
  %91 = load i32, i32* %inverse, align 4, !tbaa !42
  %92 = load i8, i8* %lastmask, align 1, !tbaa !31
  %call37 = call i32 @bjc_invert_bytes(i8* %87, i32 %88, i32 %91, i8 zeroext %92) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.67

if.then.39:                                       ; preds = %for.body
  %93 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool40 = icmp ne i32 %93, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.39
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %95 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %94, i32 %95) #5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.39
  store i32 1, i32* %skip, align 4, !tbaa !5
  %96 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool43 = icmp ne i8 %96, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.42
  %97 = load i8*, i8** %row, align 8, !tbaa !1
  %98 = load i32, i32* %raster, align 4, !tbaa !5
  %99 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call45 = call i32 @bjc_compress(i8* %97, i32 %98, i8* %99) #5
  store i32 %call45, i32* %cmplen, align 4, !tbaa !5
  %100 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %100, i8** %outrow, align 8, !tbaa !1
  br label %if.end.46

if.else:                                          ; preds = %if.end.42
  %101 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %101, i8** %outrow, align 8, !tbaa !1
  %102 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %102, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.44
  %103 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv47 = zext i8 %103 to i32
  %and48 = and i32 %conv47, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %105 = load i8*, i8** %outrow, align 8, !tbaa !1
  %106 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %104, i8 signext 75, i8* %105, i32 %106) #5
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %107) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.46
  %108 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv52 = zext i8 %108 to i32
  %and53 = and i32 %conv52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %110 = load i8*, i8** %outrow, align 8, !tbaa !1
  %111 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %109, i8 signext 67, i8* %110, i32 %111) #5
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %112) #5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.51
  %113 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv57 = zext i8 %113 to i32
  %and58 = and i32 %conv57, 2
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %outrow, align 8, !tbaa !1
  %116 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %114, i8 signext 77, i8* %115, i32 %116) #5
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %117) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.56
  %118 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv62 = zext i8 %118 to i32
  %and63 = and i32 %conv62, 4
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %120 = load i8*, i8** %outrow, align 8, !tbaa !1
  %121 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %119, i8 signext 89, i8* %120, i32 %121) #5
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %122) #5
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.61
  br label %if.end.68

if.else.67:                                       ; preds = %for.body
  %123 = load i32, i32* %skip, align 4, !tbaa !5
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %skip, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.end.66
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %124 = load i32, i32* %y, align 4, !tbaa !5
  %inc69 = add nsw i32 %124, 1
  store i32 %inc69, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %125 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool70 = icmp ne i32 %125, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.end
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %127 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %126, i32 %127) #5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.end
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_FF(%struct._IO_FILE* %128) #5
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_initialize(%struct._IO_FILE* %129) #5
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory73, align 8, !tbaa !7
  %procs74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs74, i32 0, i32 2
  %132 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %133 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !7
  %135 = load i8*, i8** %cmp, align 8, !tbaa !1
  call void %132(%struct.gs_memory_s* %134, i8* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.119, i32 0, i32 0)) #5
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !7
  %procs77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %137, i32 0, i32 1
  %free_object78 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs77, i32 0, i32 2
  %138 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object78, align 8, !tbaa !43
  %139 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory79, align 8, !tbaa !7
  %141 = load i8*, i8** %row, align 8, !tbaa !1
  call void %138(%struct.gs_memory_s* %140, i8* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %lastmask) #2
  %142 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  call void @llvm.lifetime.end(i64 1, i8* %inkc) #2
  %143 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  call void @llvm.lifetime.end(i64 1, i8* %compress) #2
  call void @llvm.lifetime.end(i64 1, i8* %ink10) #2
  call void @llvm.lifetime.end(i64 1, i8* %color) #2
  %149 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = load i32, i32* %retval
  ret i32 %156
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
define internal i32 @bjc_print_page_gray(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %width = alloca i32, align 4
  %raster = alloca i32, align 4
  %cmplen = alloca i32, align 4
  %row = alloca i8*, align 8
  %dit = alloca i8*, align 8
  %cmp = alloca i8*, align 8
  %out = alloca i8*, align 8
  %y = alloca i32, align 4
  %skip = alloca i32, align 4
  %color = alloca i8, align 1
  %ink20 = alloca i8, align 1
  %compress = alloca i8, align 1
  %x_resolution = alloca i32, align 4
  %y_resolution = alloca i32, align 4
  %length = alloca i32, align 4
  %lm = alloca i32, align 4
  %rm = alloca i32, align 4
  %top = alloca i32, align 4
  %inkc = alloca i8, align 1
  %mask_array = alloca [8 x i8], align 1
  %lastmask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width1, align 4, !tbaa !34
  store i32 %2, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width2, align 4, !tbaa !34
  %shr = ashr i32 %5, 3
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width3, align 4, !tbaa !34
  %rem = srem i32 %7, 8
  %tobool = icmp ne i32 %rem, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 %shr, %cond
  store i32 %add, i32* %raster, align 4, !tbaa !5
  %8 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %15 = load i32, i32* %width, align 4, !tbaa !5
  %call = call i8* %12(%struct.gs_memory_s* %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0)) #5
  store i8* %call, i8** %row, align 8, !tbaa !1
  %16 = bitcast i8** %dit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !7
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes7, align 8, !tbaa !23
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %22 = load i32, i32* %raster, align 4, !tbaa !5
  %call9 = call i8* %19(%struct.gs_memory_s* %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.121, i32 0, i32 0)) #5
  store i8* %call9, i8** %dit, align 8, !tbaa !1
  %23 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes12, align 8, !tbaa !23
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %29 = load i32, i32* %raster, align 4, !tbaa !5
  %shl = shl i32 %29, 1
  %add14 = add i32 %shl, 1
  %call15 = call i8* %26(%struct.gs_memory_s* %28, i32 %add14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0)) #5
  store i8* %call15, i8** %cmp, align 8, !tbaa !1
  %30 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  call void @llvm.lifetime.start(i64 1, i8* %color) #2
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_printer_s* %33 to %struct.gx_device_bjc_printer_s*
  %smooth = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %34, i32 0, i32 76
  %35 = load i32, i32* %smooth, align 4, !tbaa !26
  %cmp16 = icmp eq i32 %35, 1
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_printer_s* %36 to %struct.gx_device_bjc_printer_s*
  %ink = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %37, i32 0, i32 72
  %38 = load i32, i32* %ink, align 4, !tbaa !30
  %and = and i32 %38, 8
  %tobool17 = icmp ne i32 %and, 0
  %cond18 = select i1 %tobool17, i32 17, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i32 [ 18, %cond.true ], [ %cond18, %cond.false ]
  %conv = trunc i32 %cond19 to i8
  store i8 %conv, i8* %color, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %ink20) #2
  store i8 1, i8* %ink20, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %compress) #2
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_printer_s* %39 to %struct.gx_device_bjc_printer_s*
  %compress21 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %40, i32 0, i32 75
  %41 = load i32, i32* %compress21, align 4, !tbaa !32
  %cmp22 = icmp eq i32 %41, 1
  %cond24 = select i1 %cmp22, i32 1, i32 0
  %conv25 = trunc i32 %cond24 to i8
  store i8 %conv25, i8* %compress, align 1, !tbaa !31
  %42 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %44 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv26 = fptosi float %44 to i32
  store i32 %conv26, i32* %x_resolution, align 4, !tbaa !5
  %45 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 22
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution27, i32 0, i64 1
  %47 = load float, float* %arrayidx28, align 4, !tbaa !33
  %conv29 = fptosi float %47 to i32
  store i32 %conv29, i32* %y_resolution, align 4, !tbaa !5
  %48 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %length, align 4, !tbaa !5
  %49 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  store i32 0, i32* %lm, align 4, !tbaa !5
  %50 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  store i32 0, i32* %rm, align 4, !tbaa !5
  %51 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  store i32 0, i32* %top, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %inkc) #2
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gx_device_printer_s* %52 to %struct.gx_device_bjc_printer_s*
  %ink30 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %53, i32 0, i32 72
  %54 = load i32, i32* %ink30, align 4, !tbaa !30
  %conv31 = trunc i32 %54 to i8
  store i8 %conv31, i8* %inkc, align 1, !tbaa !31
  %55 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @bjc_print_page_gray.mask_array, i32 0, i32 0), i64 8, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %lastmask) #2
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 13
  %58 = load i32, i32* %width32, align 4, !tbaa !34
  %rem33 = srem i32 %58, 8
  %idxprom = sext i32 %rem33 to i64
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %mask_array, i32 0, i64 %idxprom
  %59 = load i8, i8* %arrayidx34, align 1, !tbaa !31
  store i8 %59, i8* %lastmask, align 1, !tbaa !31
  %60 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %60, null
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %61 = load i8*, i8** %cmp, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %61, null
  br i1 %cmp37, label %if.then, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %62 = load i8*, i8** %dit, align 8, !tbaa !1
  %cmp40 = icmp eq i8* %62, null
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.39, %lor.lhs.false, %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.39
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gx_device_printer_s* %63 to %struct.gx_device_bjc_printer_s*
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gx_device_printer_s* %65 to %struct.gx_device_bjc_printer_s*
  %gamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %66, i32 0, i32 79
  %67 = load float, float* %gamma, align 4, !tbaa !44
  call void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s* %64, float %67, i8 signext 75) #5
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_set_initial(%struct._IO_FILE* %68) #5
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %70 = load i8, i8* %color, align 1, !tbaa !31
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_printer_s* %71 to %struct.gx_device_bjc_printer_s*
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %72, i32 0, i32 70
  %73 = load i32, i32* %mediaType, align 4, !tbaa !35
  %idxprom42 = sext i32 %73 to i64
  %arrayidx43 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom42
  %c = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx43, i32 0, i32 1
  %74 = load i8, i8* %c, align 1, !tbaa !36
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %76 = bitcast %struct.gx_device_printer_s* %75 to %struct.gx_device_bjc_printer_s*
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %76, i32 0, i32 71
  %77 = load i32, i32* %quality, align 4, !tbaa !38
  %conv44 = trunc i32 %77 to i8
  call void @bjc_put_print_method(%struct._IO_FILE* %69, i8 signext %70, i8 signext %74, i8 signext %conv44, i8 signext 0) #5
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_printer_s* %79 to %struct.gx_device_bjc_printer_s*
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %80, i32 0, i32 69
  %81 = load i32, i32* %feeder, align 4, !tbaa !39
  %conv45 = trunc i32 %81 to i8
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_printer_s* %82 to %struct.gx_device_bjc_printer_s*
  %mediaType46 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %83, i32 0, i32 70
  %84 = load i32, i32* %mediaType46, align 4, !tbaa !35
  %idxprom47 = sext i32 %84 to i64
  %arrayidx48 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom47
  %l = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx48, i32 0, i32 0
  %85 = load i8, i8* %l, align 1, !tbaa !40
  call void @bjc_put_media_supply(%struct._IO_FILE* %78, i8 signext %conv45, i8 signext %85) #5
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %87 = load i32, i32* %x_resolution, align 4, !tbaa !5
  %88 = load i32, i32* %y_resolution, align 4, !tbaa !5
  call void @bjc_put_raster_resolution(%struct._IO_FILE* %86, i32 %87, i32 %88) #5
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %90 = load i32, i32* %length, align 4, !tbaa !5
  %91 = load i32, i32* %lm, align 4, !tbaa !5
  %92 = load i32, i32* %rm, align 4, !tbaa !5
  %93 = load i32, i32* %top, align 4, !tbaa !5
  call void @bjc_put_page_margins(%struct._IO_FILE* %89, i32 %90, i32 %91, i32 %92, i32 %93) #5
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %95 = load i8, i8* %compress, align 1, !tbaa !31
  call void @bjc_put_set_compression(%struct._IO_FILE* %94, i8 signext %95) #5
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %97 = load i8, i8* %ink20, align 1, !tbaa !31
  call void @bjc_put_image_format(%struct._IO_FILE* %96, i8 signext 0, i8 signext 0, i8 signext %97) #5
  store i32 0, i32* %skip, align 4, !tbaa !5
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %99 = bitcast %struct.gx_device_printer_s* %98 to %struct.gx_device_bjc_printer_s*
  %bjc_j = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %99, i32 0, i32 84
  store i32 0, i32* %bjc_j, align 4, !tbaa !45
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %101 = bitcast %struct.gx_device_printer_s* %100 to %struct.gx_device_bjc_printer_s*
  %bjc_k = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %101, i32 0, i32 85
  store i32 31, i32* %bjc_k, align 4, !tbaa !46
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_printer_s* %102 to %struct.gx_device_bjc_printer_s*
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %103, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !47
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call49 = call i32 @FloydSteinbergInitG(%struct.gx_device_printer_s* %104) #5
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %105 = load i32, i32* %y, align 4, !tbaa !5
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 14
  %107 = load i32, i32* %height, align 4, !tbaa !41
  %cmp54 = icmp slt i32 %105, %107
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %109 = load i32, i32* %y, align 4, !tbaa !5
  %110 = load i8*, i8** %row, align 8, !tbaa !1
  %111 = load i32, i32* %width, align 4, !tbaa !5
  %call56 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %108, i32 %109, i8* %110, i32 %111) #5
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %113 = bitcast %struct.gx_device_printer_s* %112 to %struct.gx_device_bjc_printer_s*
  %114 = load i8*, i8** %row, align 8, !tbaa !1
  %115 = load i8*, i8** %dit, align 8, !tbaa !1
  %116 = load i32, i32* %width, align 4, !tbaa !5
  %117 = load i32, i32* %raster, align 4, !tbaa !5
  %118 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %119 = bitcast %struct.gx_device_printer_s* %118 to %struct.gx_device_bjc_printer_s*
  %limit = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %119, i32 0, i32 77
  %120 = load i32, i32* %limit, align 4, !tbaa !48
  call void @FloydSteinbergDitheringG(%struct.gx_device_bjc_printer_s* %113, i8* %114, i8* %115, i32 %116, i32 %117, i32 %120) #5
  %121 = load i8*, i8** %dit, align 8, !tbaa !1
  %122 = load i32, i32* %raster, align 4, !tbaa !5
  %123 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %124 = bitcast %struct.gx_device_printer_s* %123 to %struct.gx_device_bjc_printer_s*
  %inverse = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %124, i32 0, i32 74
  %125 = load i32, i32* %inverse, align 4, !tbaa !42
  %126 = load i8, i8* %lastmask, align 1, !tbaa !31
  %call57 = call i32 @bjc_invert_bytes(i8* %121, i32 %122, i32 %125, i8 zeroext %126) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.87

if.then.59:                                       ; preds = %for.body
  %127 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %127, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.59
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %129 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %128, i32 %129) #5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.59
  store i32 1, i32* %skip, align 4, !tbaa !5
  %130 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool63 = icmp ne i8 %130, 0
  br i1 %tobool63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.end.62
  %131 = load i8*, i8** %dit, align 8, !tbaa !1
  %132 = load i32, i32* %raster, align 4, !tbaa !5
  %133 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call65 = call i32 @bjc_compress(i8* %131, i32 %132, i8* %133) #5
  store i32 %call65, i32* %cmplen, align 4, !tbaa !5
  %134 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %134, i8** %out, align 8, !tbaa !1
  br label %if.end.66

if.else:                                          ; preds = %if.end.62
  %135 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %135, i32* %cmplen, align 4, !tbaa !5
  %136 = load i8*, i8** %dit, align 8, !tbaa !1
  store i8* %136, i8** %out, align 8, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.64
  %137 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv67 = zext i8 %137 to i32
  %and68 = and i32 %conv67, 8
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %139 = load i8*, i8** %out, align 8, !tbaa !1
  %140 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %138, i8 signext 75, i8* %139, i32 %140) #5
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %141) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.66
  %142 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv72 = zext i8 %142 to i32
  %and73 = and i32 %conv72, 1
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %144 = load i8*, i8** %out, align 8, !tbaa !1
  %145 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %143, i8 signext 67, i8* %144, i32 %145) #5
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %146) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.71
  %147 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv77 = zext i8 %147 to i32
  %and78 = and i32 %conv77, 2
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.76
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %149 = load i8*, i8** %out, align 8, !tbaa !1
  %150 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %148, i8 signext 77, i8* %149, i32 %150) #5
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %151) #5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.76
  %152 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv82 = zext i8 %152 to i32
  %and83 = and i32 %conv82, 4
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %154 = load i8*, i8** %out, align 8, !tbaa !1
  %155 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %153, i8 signext 89, i8* %154, i32 %155) #5
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %156) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.81
  br label %if.end.88

if.else.87:                                       ; preds = %for.body
  %157 = load i32, i32* %skip, align 4, !tbaa !5
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %skip, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.end.86
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %158 = load i32, i32* %y, align 4, !tbaa !5
  %inc89 = add nsw i32 %158, 1
  store i32 %inc89, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %159 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool90 = icmp ne i32 %159, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.end
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %161 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %160, i32 %161) #5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %for.end
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_FF(%struct._IO_FILE* %162) #5
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_initialize(%struct._IO_FILE* %163) #5
  %164 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  call void @FloydSteinbergCloseG(%struct.gx_device_printer_s* %164) #5
  %165 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %165, i32 0, i32 3
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory93, align 8, !tbaa !7
  %procs94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %166, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs94, i32 0, i32 2
  %167 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %168 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !7
  %170 = load i8*, i8** %dit, align 8, !tbaa !1
  call void %167(%struct.gs_memory_s* %169, i8* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.121, i32 0, i32 0)) #5
  %171 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %171, i32 0, i32 3
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !7
  %procs97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 1
  %free_object98 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs97, i32 0, i32 2
  %173 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object98, align 8, !tbaa !43
  %174 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !7
  %176 = load i8*, i8** %cmp, align 8, !tbaa !1
  call void %173(%struct.gs_memory_s* %175, i8* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0)) #5
  %177 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %177, i32 0, i32 3
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !7
  %procs101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %178, i32 0, i32 1
  %free_object102 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs101, i32 0, i32 2
  %179 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object102, align 8, !tbaa !43
  %180 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %180, i32 0, i32 3
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !7
  %182 = load i8*, i8** %row, align 8, !tbaa !1
  call void %179(%struct.gs_memory_s* %181, i8* %182, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.92, %if.then.52, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %lastmask) #2
  %183 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  call void @llvm.lifetime.end(i64 1, i8* %inkc) #2
  %184 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  call void @llvm.lifetime.end(i64 1, i8* %compress) #2
  call void @llvm.lifetime.end(i64 1, i8* %ink20) #2
  call void @llvm.lifetime.end(i64 1, i8* %color) #2
  %190 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i8** %dit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  %199 = load i32, i32* %retval
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_print_page_cmyk(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %raster = alloca i32, align 4
  %a_raster = alloca i32, align 4
  %cmplen = alloca i32, align 4
  %row = alloca i8*, align 8
  %cmp = alloca i8*, align 8
  %rows = alloca [4 x i8*], align 16
  %outrow = alloca i8*, align 8
  %y = alloca i32, align 4
  %skip = alloca i32, align 4
  %color = alloca i8, align 1
  %ink = alloca i8, align 1
  %compress = alloca i8, align 1
  %skip_x = alloca i8, align 1
  %x_resolution = alloca i32, align 4
  %y_resolution = alloca i32, align 4
  %length = alloca i32, align 4
  %lm = alloca i32, align 4
  %rm = alloca i32, align 4
  %top = alloca i32, align 4
  %plane = alloca i32, align 4
  %mask_array = alloca [8 x i8], align 1
  %lastmask = alloca i8, align 1
  %skipc = alloca %struct.skip_s, align 4
  %inkc = alloca i8, align 1
  %inverse = alloca i32, align 4
  %render_plane = alloca %struct.gx_render_plane_s, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %byteC = alloca i8*, align 8
  %byteM = alloca i8*, align 8
  %byteY = alloca i8*, align 8
  %byteK = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !34
  %add = add nsw i32 %2, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !5
  %3 = bitcast i32* %a_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %11 = load i32, i32* %raster, align 4, !tbaa !5
  %mul = mul i32 %11, 4
  %call = call i8* %8(%struct.gs_memory_s* %10, i32 %mul, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0)) #5
  store i8* %call, i8** %row, align 8, !tbaa !1
  %12 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !7
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_bytes4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 7
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes4, align 8, !tbaa !23
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !7
  %18 = load i32, i32* %raster, align 4, !tbaa !5
  %shl6 = shl i32 %18, 1
  %add7 = add i32 %shl6, 1
  %call8 = call i8* %15(%struct.gs_memory_s* %17, i32 %add7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0)) #5
  store i8* %call8, i8** %cmp, align 8, !tbaa !1
  %19 = bitcast [4 x i8*]* %rows to i8*
  call void @llvm.lifetime.start(i64 32, i8* %19) #2
  %20 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  call void @llvm.lifetime.start(i64 1, i8* %color) #2
  store i8 16, i8* %color, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %ink) #2
  store i8 1, i8* %ink, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %compress) #2
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_printer_s* %23 to %struct.gx_device_bjc_printer_s*
  %compress9 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %24, i32 0, i32 75
  %25 = load i32, i32* %compress9, align 4, !tbaa !32
  %cmp10 = icmp eq i32 %25, 1
  %cond = select i1 %cmp10, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %compress, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %skip_x) #2
  %26 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv11 = fptosi float %28 to i32
  store i32 %conv11, i32* %x_resolution, align 4, !tbaa !5
  %29 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 1
  %31 = load float, float* %arrayidx13, align 4, !tbaa !33
  %conv14 = fptosi float %31 to i32
  store i32 %conv14, i32* %y_resolution, align 4, !tbaa !5
  %32 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %length, align 4, !tbaa !5
  %33 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  store i32 0, i32* %lm, align 4, !tbaa !5
  %34 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  store i32 0, i32* %rm, align 4, !tbaa !5
  %35 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 0, i32* %top, align 4, !tbaa !5
  %36 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @bjc_print_page_cmyk.mask_array, i32 0, i32 0), i64 8, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %lastmask) #2
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 13
  %40 = load i32, i32* %width15, align 4, !tbaa !34
  %rem = srem i32 %40, 8
  %idxprom = sext i32 %rem to i64
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* %mask_array, i32 0, i64 %idxprom
  %41 = load i8, i8* %arrayidx16, align 1, !tbaa !31
  store i8 %41, i8* %lastmask, align 1, !tbaa !31
  %42 = bitcast %struct.skip_s* %skipc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %42) #2
  call void @llvm.lifetime.start(i64 1, i8* %inkc) #2
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_printer_s* %43 to %struct.gx_device_bjc_printer_s*
  %ink17 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %44, i32 0, i32 72
  %45 = load i32, i32* %ink17, align 4, !tbaa !30
  %conv18 = trunc i32 %45 to i8
  store i8 %conv18, i8* %inkc, align 1, !tbaa !31
  %46 = bitcast i32* %inverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_printer_s* %47 to %struct.gx_device_bjc_printer_s*
  %inverse19 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %48, i32 0, i32 74
  %49 = load i32, i32* %inverse19, align 4, !tbaa !42
  store i32 %49, i32* %inverse, align 4, !tbaa !5
  %50 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.start(i64 12, i8* %50) #2
  %51 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp20 = icmp eq i8* %51, null
  br i1 %cmp20, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %52 = load i8*, i8** %cmp, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %52, null
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_set_initial(%struct._IO_FILE* %53) #5
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %55 = load i8, i8* %color, align 1, !tbaa !31
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_printer_s* %56 to %struct.gx_device_bjc_printer_s*
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %57, i32 0, i32 70
  %58 = load i32, i32* %mediaType, align 4, !tbaa !35
  %idxprom24 = sext i32 %58 to i64
  %arrayidx25 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom24
  %c = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx25, i32 0, i32 1
  %59 = load i8, i8* %c, align 1, !tbaa !36
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gx_device_printer_s* %60 to %struct.gx_device_bjc_printer_s*
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %61, i32 0, i32 71
  %62 = load i32, i32* %quality, align 4, !tbaa !38
  %conv26 = trunc i32 %62 to i8
  call void @bjc_put_print_method(%struct._IO_FILE* %54, i8 signext %55, i8 signext %59, i8 signext %conv26, i8 signext 0) #5
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_printer_s* %64 to %struct.gx_device_bjc_printer_s*
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %65, i32 0, i32 69
  %66 = load i32, i32* %feeder, align 4, !tbaa !39
  %conv27 = trunc i32 %66 to i8
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_printer_s* %67 to %struct.gx_device_bjc_printer_s*
  %mediaType28 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %68, i32 0, i32 70
  %69 = load i32, i32* %mediaType28, align 4, !tbaa !35
  %idxprom29 = sext i32 %69 to i64
  %arrayidx30 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom29
  %l = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx30, i32 0, i32 0
  %70 = load i8, i8* %l, align 1, !tbaa !40
  call void @bjc_put_media_supply(%struct._IO_FILE* %63, i8 signext %conv27, i8 signext %70) #5
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %72 = load i32, i32* %x_resolution, align 4, !tbaa !5
  %73 = load i32, i32* %y_resolution, align 4, !tbaa !5
  call void @bjc_put_raster_resolution(%struct._IO_FILE* %71, i32 %72, i32 %73) #5
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %75 = load i32, i32* %length, align 4, !tbaa !5
  %76 = load i32, i32* %lm, align 4, !tbaa !5
  %77 = load i32, i32* %rm, align 4, !tbaa !5
  %78 = load i32, i32* %top, align 4, !tbaa !5
  call void @bjc_put_page_margins(%struct._IO_FILE* %74, i32 %75, i32 %76, i32 %77, i32 %78) #5
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %80 = load i8, i8* %compress, align 1, !tbaa !31
  call void @bjc_put_set_compression(%struct._IO_FILE* %79, i8 signext %80) #5
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %82 = load i8, i8* %ink, align 1, !tbaa !31
  call void @bjc_put_image_format(%struct._IO_FILE* %81, i8 signext 0, i8 signext 0, i8 signext %82) #5
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.156, %if.end
  %83 = load i32, i32* %y, align 4, !tbaa !5
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 14
  %85 = load i32, i32* %height, align 4, !tbaa !41
  %cmp31 = icmp slt i32 %83, %85
  br i1 %cmp31, label %for.body, label %for.end.158

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %skip_x, align 1, !tbaa !31
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body
  %86 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %86, 4
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_printer_s* %87 to %struct.gx_device_s*
  %89 = load i32, i32* %plane, align 4, !tbaa !5
  %call37 = call i32 @gx_render_plane_init(%struct.gx_render_plane_s* %render_plane, %struct.gx_device_s* %88, i32 %89) #5
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %91 = load i32, i32* %y, align 4, !tbaa !5
  %92 = load i8*, i8** %row, align 8, !tbaa !1
  %93 = load i32, i32* %raster, align 4, !tbaa !5
  %94 = load i32, i32* %plane, align 4, !tbaa !5
  %mul38 = mul i32 %93, %94
  %idx.ext = zext i32 %mul38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %92, i64 %idx.ext
  %95 = load i32, i32* %raster, align 4, !tbaa !5
  %96 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom39 = sext i32 %96 to i64
  %arrayidx40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 %idxprom39
  %call41 = call i32 @gdev_prn_get_lines(%struct.gx_device_printer_s* %90, i32 %91, i32 1, i8* %add.ptr, i32 %95, i8** %arrayidx40, i32* %a_raster, %struct.gx_render_plane_s* %render_plane) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %97 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %99 = bitcast i8** %byteC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %arrayidx42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 0
  %100 = load i8*, i8** %arrayidx42, align 8, !tbaa !1
  store i8* %100, i8** %byteC, align 8, !tbaa !1
  %101 = bitcast i8** %byteM to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %arrayidx43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 1
  %102 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  store i8* %102, i8** %byteM, align 8, !tbaa !1
  %103 = bitcast i8** %byteY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %arrayidx44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 2
  %104 = load i8*, i8** %arrayidx44, align 8, !tbaa !1
  store i8* %104, i8** %byteY, align 8, !tbaa !1
  %105 = bitcast i8** %byteK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #2
  %arrayidx45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 3
  %106 = load i8*, i8** %arrayidx45, align 8, !tbaa !1
  store i8* %106, i8** %byteK, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.82, %for.end
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %108 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp47 = icmp ult i32 %107, %108
  br i1 %cmp47, label %for.body.49, label %for.end.87

for.body.49:                                      ; preds = %for.cond.46
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gx_device_printer_s* %109 to %struct.gx_device_bjc_printer_s*
  %compose = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %110, i32 0, i32 78
  %111 = load i32, i32* %compose, align 4, !tbaa !49
  %tobool = icmp ne i32 %111, 0
  br i1 %tobool, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %for.body.49
  %112 = load i8*, i8** %byteC, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !31
  %conv51 = zext i8 %113 to i32
  %114 = load i8*, i8** %byteM, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !31
  %conv52 = zext i8 %115 to i32
  %and = and i32 %conv51, %conv52
  %116 = load i8*, i8** %byteY, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !31
  %conv53 = zext i8 %117 to i32
  %and54 = and i32 %and, %conv53
  %conv55 = trunc i32 %and54 to i8
  %118 = load i8*, i8** %byteK, align 8, !tbaa !1
  store i8 %conv55, i8* %118, align 1, !tbaa !31
  %119 = load i8*, i8** %byteK, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !31
  %conv56 = zext i8 %120 to i32
  %neg = xor i32 %conv56, -1
  %121 = load i8*, i8** %byteC, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !31
  %conv57 = zext i8 %122 to i32
  %and58 = and i32 %conv57, %neg
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, i8* %121, align 1, !tbaa !31
  %123 = load i8*, i8** %byteK, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !31
  %conv60 = zext i8 %124 to i32
  %neg61 = xor i32 %conv60, -1
  %125 = load i8*, i8** %byteM, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !31
  %conv62 = zext i8 %126 to i32
  %and63 = and i32 %conv62, %neg61
  %conv64 = trunc i32 %and63 to i8
  store i8 %conv64, i8* %125, align 1, !tbaa !31
  %127 = load i8*, i8** %byteK, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !31
  %conv65 = zext i8 %128 to i32
  %neg66 = xor i32 %conv65, -1
  %129 = load i8*, i8** %byteY, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !31
  %conv67 = zext i8 %130 to i32
  %and68 = and i32 %conv67, %neg66
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, i8* %129, align 1, !tbaa !31
  br label %if.end.81

if.else:                                          ; preds = %for.body.49
  %131 = load i8*, i8** %byteK, align 8, !tbaa !1
  %132 = load i8, i8* %131, align 1, !tbaa !31
  %conv70 = zext i8 %132 to i32
  %133 = load i8*, i8** %byteC, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !31
  %conv71 = zext i8 %134 to i32
  %or = or i32 %conv71, %conv70
  %conv72 = trunc i32 %or to i8
  store i8 %conv72, i8* %133, align 1, !tbaa !31
  %135 = load i8*, i8** %byteK, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !31
  %conv73 = zext i8 %136 to i32
  %137 = load i8*, i8** %byteM, align 8, !tbaa !1
  %138 = load i8, i8* %137, align 1, !tbaa !31
  %conv74 = zext i8 %138 to i32
  %or75 = or i32 %conv74, %conv73
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, i8* %137, align 1, !tbaa !31
  %139 = load i8*, i8** %byteK, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !31
  %conv77 = zext i8 %140 to i32
  %141 = load i8*, i8** %byteY, align 8, !tbaa !1
  %142 = load i8, i8* %141, align 1, !tbaa !31
  %conv78 = zext i8 %142 to i32
  %or79 = or i32 %conv78, %conv77
  %conv80 = trunc i32 %or79 to i8
  store i8 %conv80, i8* %141, align 1, !tbaa !31
  %143 = load i8*, i8** %byteK, align 8, !tbaa !1
  store i8 0, i8* %143, align 1, !tbaa !31
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.50
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %inc83 = add nsw i32 %144, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !5
  %145 = load i8*, i8** %byteC, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr, i8** %byteC, align 8, !tbaa !1
  %146 = load i8*, i8** %byteM, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr84, i8** %byteM, align 8, !tbaa !1
  %147 = load i8*, i8** %byteY, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr85, i8** %byteY, align 8, !tbaa !1
  %148 = load i8*, i8** %byteK, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr86, i8** %byteK, align 8, !tbaa !1
  br label %for.cond.46

for.end.87:                                       ; preds = %for.cond.46
  %149 = bitcast i8** %byteK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast i8** %byteY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast i8** %byteM to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i8** %byteC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %arrayidx88 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 0
  %154 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 1
  %155 = load i8*, i8** %arrayidx89, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 2
  %156 = load i8*, i8** %arrayidx90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 3
  %157 = load i8*, i8** %arrayidx91, align 8, !tbaa !1
  %158 = load i32, i32* %raster, align 4, !tbaa !5
  %159 = load i32, i32* %inverse, align 4, !tbaa !5
  %160 = load i8, i8* %lastmask, align 1, !tbaa !31
  %call92 = call i32 @bjc_invert_cmyk_bytes(i8* %154, i8* %155, i8* %156, i8* %157, i32 %158, i32 %159, i8 zeroext %160, %struct.skip_s* %skipc) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.153

if.then.94:                                       ; preds = %for.end.87
  %161 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool95 = icmp ne i32 %161, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.94
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %163 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %162, i32 %163) #5
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.94
  store i32 1, i32* %skip, align 4, !tbaa !5
  %skipC = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 0
  %164 = load i32, i32* %skipC, align 4, !tbaa !50
  %tobool98 = icmp ne i32 %164, 0
  br i1 %tobool98, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %if.end.97
  %165 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv99 = zext i8 %165 to i32
  %and100 = and i32 %conv99, 1
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.110

if.then.102:                                      ; preds = %land.lhs.true
  %166 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool103 = icmp ne i8 %166, 0
  br i1 %tobool103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.then.102
  %arrayidx105 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 0
  %167 = load i8*, i8** %arrayidx105, align 8, !tbaa !1
  %168 = load i32, i32* %raster, align 4, !tbaa !5
  %169 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call106 = call i32 @bjc_compress(i8* %167, i32 %168, i8* %169) #5
  store i32 %call106, i32* %cmplen, align 4, !tbaa !5
  %170 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %170, i8** %outrow, align 8, !tbaa !1
  br label %if.end.109

if.else.107:                                      ; preds = %if.then.102
  %arrayidx108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 0
  %171 = load i8*, i8** %arrayidx108, align 8, !tbaa !1
  store i8* %171, i8** %outrow, align 8, !tbaa !1
  %172 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %172, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.104
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %174 = load i8*, i8** %outrow, align 8, !tbaa !1
  %175 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %173, i8 signext 67, i8* %174, i32 %175) #5
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %176) #5
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %land.lhs.true, %if.end.97
  %skipM = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 1
  %177 = load i32, i32* %skipM, align 4, !tbaa !52
  %tobool111 = icmp ne i32 %177, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.124

land.lhs.true.112:                                ; preds = %if.end.110
  %178 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv113 = zext i8 %178 to i32
  %and114 = and i32 %conv113, 2
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.124

if.then.116:                                      ; preds = %land.lhs.true.112
  %179 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool117 = icmp ne i8 %179, 0
  br i1 %tobool117, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %if.then.116
  %arrayidx119 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 1
  %180 = load i8*, i8** %arrayidx119, align 8, !tbaa !1
  %181 = load i32, i32* %raster, align 4, !tbaa !5
  %182 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call120 = call i32 @bjc_compress(i8* %180, i32 %181, i8* %182) #5
  store i32 %call120, i32* %cmplen, align 4, !tbaa !5
  %183 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %183, i8** %outrow, align 8, !tbaa !1
  br label %if.end.123

if.else.121:                                      ; preds = %if.then.116
  %arrayidx122 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 1
  %184 = load i8*, i8** %arrayidx122, align 8, !tbaa !1
  store i8* %184, i8** %outrow, align 8, !tbaa !1
  %185 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %185, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.118
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %187 = load i8*, i8** %outrow, align 8, !tbaa !1
  %188 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %186, i8 signext 77, i8* %187, i32 %188) #5
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %189) #5
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true.112, %if.end.110
  %skipY = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 2
  %190 = load i32, i32* %skipY, align 4, !tbaa !53
  %tobool125 = icmp ne i32 %190, 0
  br i1 %tobool125, label %land.lhs.true.126, label %if.end.138

land.lhs.true.126:                                ; preds = %if.end.124
  %191 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv127 = zext i8 %191 to i32
  %and128 = and i32 %conv127, 4
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.138

if.then.130:                                      ; preds = %land.lhs.true.126
  %192 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool131 = icmp ne i8 %192, 0
  br i1 %tobool131, label %if.then.132, label %if.else.135

if.then.132:                                      ; preds = %if.then.130
  %arrayidx133 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 2
  %193 = load i8*, i8** %arrayidx133, align 8, !tbaa !1
  %194 = load i32, i32* %raster, align 4, !tbaa !5
  %195 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call134 = call i32 @bjc_compress(i8* %193, i32 %194, i8* %195) #5
  store i32 %call134, i32* %cmplen, align 4, !tbaa !5
  %196 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %196, i8** %outrow, align 8, !tbaa !1
  br label %if.end.137

if.else.135:                                      ; preds = %if.then.130
  %arrayidx136 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 2
  %197 = load i8*, i8** %arrayidx136, align 8, !tbaa !1
  store i8* %197, i8** %outrow, align 8, !tbaa !1
  %198 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %198, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.then.132
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %200 = load i8*, i8** %outrow, align 8, !tbaa !1
  %201 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %199, i8 signext 89, i8* %200, i32 %201) #5
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %202) #5
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %land.lhs.true.126, %if.end.124
  %skipK = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 3
  %203 = load i32, i32* %skipK, align 4, !tbaa !54
  %tobool139 = icmp ne i32 %203, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.end.152

land.lhs.true.140:                                ; preds = %if.end.138
  %204 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv141 = zext i8 %204 to i32
  %and142 = and i32 %conv141, 8
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.152

if.then.144:                                      ; preds = %land.lhs.true.140
  %205 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool145 = icmp ne i8 %205, 0
  br i1 %tobool145, label %if.then.146, label %if.else.149

if.then.146:                                      ; preds = %if.then.144
  %arrayidx147 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 3
  %206 = load i8*, i8** %arrayidx147, align 8, !tbaa !1
  %207 = load i32, i32* %raster, align 4, !tbaa !5
  %208 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call148 = call i32 @bjc_compress(i8* %206, i32 %207, i8* %208) #5
  store i32 %call148, i32* %cmplen, align 4, !tbaa !5
  %209 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %209, i8** %outrow, align 8, !tbaa !1
  br label %if.end.151

if.else.149:                                      ; preds = %if.then.144
  %arrayidx150 = getelementptr inbounds [4 x i8*], [4 x i8*]* %rows, i32 0, i64 3
  %210 = load i8*, i8** %arrayidx150, align 8, !tbaa !1
  store i8* %210, i8** %outrow, align 8, !tbaa !1
  %211 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %211, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.146
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %213 = load i8*, i8** %outrow, align 8, !tbaa !1
  %214 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %212, i8 signext 75, i8* %213, i32 %214) #5
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %215) #5
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.140, %if.end.138
  br label %if.end.155

if.else.153:                                      ; preds = %for.end.87
  %216 = load i32, i32* %skip, align 4, !tbaa !5
  %inc154 = add nsw i32 %216, 1
  store i32 %inc154, i32* %skip, align 4, !tbaa !5
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.153, %if.end.152
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %217 = load i32, i32* %y, align 4, !tbaa !5
  %inc157 = add nsw i32 %217, 1
  store i32 %inc157, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.158:                                      ; preds = %for.cond
  %218 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool159 = icmp ne i32 %218, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %for.end.158
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %220 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %219, i32 %220) #5
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %for.end.158
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_FF(%struct._IO_FILE* %221) #5
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_initialize(%struct._IO_FILE* %222) #5
  %223 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %223, i32 0, i32 3
  %224 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory162, align 8, !tbaa !7
  %procs163 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %224, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs163, i32 0, i32 2
  %225 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %226 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %226, i32 0, i32 3
  %227 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory164, align 8, !tbaa !7
  %228 = load i8*, i8** %cmp, align 8, !tbaa !1
  call void %225(%struct.gs_memory_s* %227, i8* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0)) #5
  %229 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %229, i32 0, i32 3
  %230 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory165, align 8, !tbaa !7
  %procs166 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %230, i32 0, i32 1
  %free_object167 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs166, i32 0, i32 2
  %231 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object167, align 8, !tbaa !43
  %232 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory168 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %232, i32 0, i32 3
  %233 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory168, align 8, !tbaa !7
  %234 = load i8*, i8** %row, align 8, !tbaa !1
  call void %231(%struct.gs_memory_s* %233, i8* %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.161, %if.then
  %235 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.end(i64 12, i8* %235) #2
  %236 = bitcast i32* %inverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  call void @llvm.lifetime.end(i64 1, i8* %inkc) #2
  %237 = bitcast %struct.skip_s* %skipc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %237) #2
  call void @llvm.lifetime.end(i64 1, i8* %lastmask) #2
  %238 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #2
  %244 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  %245 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #2
  call void @llvm.lifetime.end(i64 1, i8* %skip_x) #2
  call void @llvm.lifetime.end(i64 1, i8* %compress) #2
  call void @llvm.lifetime.end(i64 1, i8* %ink) #2
  call void @llvm.lifetime.end(i64 1, i8* %color) #2
  %246 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  %247 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #2
  %248 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #2
  %249 = bitcast [4 x i8*]* %rows to i8*
  call void @llvm.lifetime.end(i64 32, i8* %249) #2
  %250 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  %251 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #2
  %252 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  %253 = bitcast i32* %a_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  %255 = load i32, i32* %retval
  ret i32 %255
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc_print_page_color(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %width = alloca i32, align 4
  %raster = alloca i32, align 4
  %cmplen = alloca i32, align 4
  %row = alloca i8*, align 8
  %dit = alloca i8*, align 8
  %cmp = alloca i8*, align 8
  %rowC = alloca i8*, align 8
  %rowM = alloca i8*, align 8
  %rowY = alloca i8*, align 8
  %rowK = alloca i8*, align 8
  %outrow = alloca i8*, align 8
  %y = alloca i32, align 4
  %skip = alloca i32, align 4
  %color = alloca i8, align 1
  %ink = alloca i8, align 1
  %compress = alloca i8, align 1
  %x_resolution = alloca i32, align 4
  %y_resolution = alloca i32, align 4
  %length = alloca i32, align 4
  %lm = alloca i32, align 4
  %rm = alloca i32, align 4
  %top = alloca i32, align 4
  %mask_array = alloca [8 x i8], align 1
  %lastmask = alloca i8, align 1
  %skipc = alloca %struct.skip_s, align 4
  %inkc = alloca i8, align 1
  %rgamma = alloca float, align 4
  %ggamma = alloca float, align 4
  %bgamma = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width1, align 4, !tbaa !34
  store i32 %2, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width2, align 4, !tbaa !34
  %shr = ashr i32 %5, 3
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width3, align 4, !tbaa !34
  %rem = srem i32 %7, 8
  %tobool = icmp ne i32 %rem, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 %shr, %cond
  store i32 %add, i32* %raster, align 4, !tbaa !5
  %8 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %15 = load i32, i32* %width, align 4, !tbaa !5
  %mul = mul i32 %15, 4
  %call = call i8* %12(%struct.gs_memory_s* %14, i32 %mul, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.125, i32 0, i32 0)) #5
  store i8* %call, i8** %row, align 8, !tbaa !1
  %16 = bitcast i8** %dit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !7
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes7, align 8, !tbaa !23
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %22 = load i32, i32* %raster, align 4, !tbaa !5
  %mul9 = mul i32 %22, 4
  %call10 = call i8* %19(%struct.gs_memory_s* %21, i32 %mul9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0)) #5
  store i8* %call10, i8** %dit, align 8, !tbaa !1
  %23 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !7
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes13, align 8, !tbaa !23
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !7
  %29 = load i32, i32* %raster, align 4, !tbaa !5
  %shl = shl i32 %29, 1
  %add15 = add i32 %shl, 1
  %call16 = call i8* %26(%struct.gs_memory_s* %28, i32 %add15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0)) #5
  store i8* %call16, i8** %cmp, align 8, !tbaa !1
  %30 = bitcast i8** %rowC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load i8*, i8** %dit, align 8, !tbaa !1
  store i8* %31, i8** %rowC, align 8, !tbaa !1
  %32 = bitcast i8** %rowM to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load i8*, i8** %dit, align 8, !tbaa !1
  %34 = load i32, i32* %raster, align 4, !tbaa !5
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %rowM, align 8, !tbaa !1
  %35 = bitcast i8** %rowY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i8*, i8** %dit, align 8, !tbaa !1
  %37 = load i32, i32* %raster, align 4, !tbaa !5
  %mul17 = mul i32 2, %37
  %idx.ext18 = zext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %36, i64 %idx.ext18
  store i8* %add.ptr19, i8** %rowY, align 8, !tbaa !1
  %38 = bitcast i8** %rowK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load i8*, i8** %dit, align 8, !tbaa !1
  %40 = load i32, i32* %raster, align 4, !tbaa !5
  %mul20 = mul i32 3, %40
  %idx.ext21 = zext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %39, i64 %idx.ext21
  store i8* %add.ptr22, i8** %rowK, align 8, !tbaa !1
  %41 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  call void @llvm.lifetime.start(i64 1, i8* %color) #2
  store i8 16, i8* %color, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %ink) #2
  store i8 1, i8* %ink, align 1, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %compress) #2
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_printer_s* %44 to %struct.gx_device_bjc_printer_s*
  %compress23 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %45, i32 0, i32 75
  %46 = load i32, i32* %compress23, align 4, !tbaa !32
  %cmp24 = icmp eq i32 %46, 1
  %cond25 = select i1 %cmp24, i32 1, i32 0
  %conv = trunc i32 %cond25 to i8
  store i8 %conv, i8* %compress, align 1, !tbaa !31
  %47 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %49 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv26 = fptosi float %49 to i32
  store i32 %conv26, i32* %x_resolution, align 4, !tbaa !5
  %50 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 22
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution27, i32 0, i64 1
  %52 = load float, float* %arrayidx28, align 4, !tbaa !33
  %conv29 = fptosi float %52 to i32
  store i32 %conv29, i32* %y_resolution, align 4, !tbaa !5
  %53 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  store i32 0, i32* %length, align 4, !tbaa !5
  %54 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  store i32 0, i32* %lm, align 4, !tbaa !5
  %55 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  store i32 0, i32* %rm, align 4, !tbaa !5
  %56 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  store i32 0, i32* %top, align 4, !tbaa !5
  %57 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %58 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @bjc_print_page_color.mask_array, i32 0, i32 0), i64 8, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %lastmask) #2
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 13
  %60 = load i32, i32* %width30, align 4, !tbaa !34
  %rem31 = srem i32 %60, 8
  %idxprom = sext i32 %rem31 to i64
  %arrayidx32 = getelementptr inbounds [8 x i8], [8 x i8]* %mask_array, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx32, align 1, !tbaa !31
  store i8 %61, i8* %lastmask, align 1, !tbaa !31
  %62 = bitcast %struct.skip_s* %skipc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %62) #2
  call void @llvm.lifetime.start(i64 1, i8* %inkc) #2
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gx_device_printer_s* %63 to %struct.gx_device_bjc_printer_s*
  %ink33 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %64, i32 0, i32 72
  %65 = load i32, i32* %ink33, align 4, !tbaa !30
  %conv34 = trunc i32 %65 to i8
  store i8 %conv34, i8* %inkc, align 1, !tbaa !31
  %66 = bitcast float* %rgamma to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_printer_s* %67 to %struct.gx_device_bjc_printer_s*
  %gamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %68, i32 0, i32 79
  %69 = load float, float* %gamma, align 4, !tbaa !44
  %conv35 = fpext float %69 to double
  %cmp36 = fcmp une double %conv35, 1.000000e+00
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_printer_s* %70 to %struct.gx_device_bjc_printer_s*
  %gamma38 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %71, i32 0, i32 79
  %72 = load float, float* %gamma38, align 4, !tbaa !44
  br label %cond.end

cond.false:                                       ; preds = %entry
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_printer_s* %73 to %struct.gx_device_bjc_printer_s*
  %redGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %74, i32 0, i32 80
  %75 = load float, float* %redGamma, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond39 = phi float [ %72, %cond.true ], [ %75, %cond.false ]
  store float %cond39, float* %rgamma, align 4, !tbaa !33
  %76 = bitcast float* %ggamma to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_printer_s* %77 to %struct.gx_device_bjc_printer_s*
  %gamma40 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %78, i32 0, i32 79
  %79 = load float, float* %gamma40, align 4, !tbaa !44
  %conv41 = fpext float %79 to double
  %cmp42 = fcmp une double %conv41, 1.000000e+00
  br i1 %cmp42, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %cond.end
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_printer_s* %80 to %struct.gx_device_bjc_printer_s*
  %gamma45 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %81, i32 0, i32 79
  %82 = load float, float* %gamma45, align 4, !tbaa !44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %84 = bitcast %struct.gx_device_printer_s* %83 to %struct.gx_device_bjc_printer_s*
  %greenGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %84, i32 0, i32 81
  %85 = load float, float* %greenGamma, align 4, !tbaa !56
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.44
  %cond48 = phi float [ %82, %cond.true.44 ], [ %85, %cond.false.46 ]
  store float %cond48, float* %ggamma, align 4, !tbaa !33
  %86 = bitcast float* %bgamma to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #2
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_printer_s* %87 to %struct.gx_device_bjc_printer_s*
  %gamma49 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %88, i32 0, i32 79
  %89 = load float, float* %gamma49, align 4, !tbaa !44
  %conv50 = fpext float %89 to double
  %cmp51 = fcmp une double %conv50, 1.000000e+00
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.end.47
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_printer_s* %90 to %struct.gx_device_bjc_printer_s*
  %gamma54 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %91, i32 0, i32 79
  %92 = load float, float* %gamma54, align 4, !tbaa !44
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.47
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %94 = bitcast %struct.gx_device_printer_s* %93 to %struct.gx_device_bjc_printer_s*
  %blueGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %94, i32 0, i32 82
  %95 = load float, float* %blueGamma, align 4, !tbaa !57
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi float [ %92, %cond.true.53 ], [ %95, %cond.false.55 ]
  store float %cond57, float* %bgamma, align 4, !tbaa !33
  %96 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp58 = icmp eq i8* %96, null
  br i1 %cmp58, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.56
  %97 = load i8*, i8** %cmp, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %97, null
  br i1 %cmp60, label %if.then, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %98 = load i8*, i8** %dit, align 8, !tbaa !1
  %cmp63 = icmp eq i8* %98, null
  br i1 %cmp63, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.62, %lor.lhs.false, %cond.end.56
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.62
  %99 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %100 = bitcast %struct.gx_device_printer_s* %99 to %struct.gx_device_bjc_printer_s*
  %101 = load float, float* %rgamma, align 4, !tbaa !33
  call void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s* %100, float %101, i8 signext 67) #5
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_printer_s* %102 to %struct.gx_device_bjc_printer_s*
  %104 = load float, float* %ggamma, align 4, !tbaa !33
  call void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s* %103, float %104, i8 signext 77) #5
  %105 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gx_device_printer_s* %105 to %struct.gx_device_bjc_printer_s*
  %107 = load float, float* %bgamma, align 4, !tbaa !33
  call void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s* %106, float %107, i8 signext 89) #5
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_set_initial(%struct._IO_FILE* %108) #5
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %110 = load i8, i8* %color, align 1, !tbaa !31
  %111 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %112 = bitcast %struct.gx_device_printer_s* %111 to %struct.gx_device_bjc_printer_s*
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %112, i32 0, i32 70
  %113 = load i32, i32* %mediaType, align 4, !tbaa !35
  %idxprom65 = sext i32 %113 to i64
  %arrayidx66 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom65
  %c = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx66, i32 0, i32 1
  %114 = load i8, i8* %c, align 1, !tbaa !36
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %116 = bitcast %struct.gx_device_printer_s* %115 to %struct.gx_device_bjc_printer_s*
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %116, i32 0, i32 71
  %117 = load i32, i32* %quality, align 4, !tbaa !38
  %conv67 = trunc i32 %117 to i8
  call void @bjc_put_print_method(%struct._IO_FILE* %109, i8 signext %110, i8 signext %114, i8 signext %conv67, i8 signext 0) #5
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %119 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_printer_s* %119 to %struct.gx_device_bjc_printer_s*
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %120, i32 0, i32 69
  %121 = load i32, i32* %feeder, align 4, !tbaa !39
  %conv68 = trunc i32 %121 to i8
  %122 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %123 = bitcast %struct.gx_device_printer_s* %122 to %struct.gx_device_bjc_printer_s*
  %mediaType69 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %123, i32 0, i32 70
  %124 = load i32, i32* %mediaType69, align 4, !tbaa !35
  %idxprom70 = sext i32 %124 to i64
  %arrayidx71 = getelementptr inbounds [12 x %struct.media_t], [12 x %struct.media_t]* @media_codes, i32 0, i64 %idxprom70
  %l = getelementptr inbounds %struct.media_t, %struct.media_t* %arrayidx71, i32 0, i32 0
  %125 = load i8, i8* %l, align 1, !tbaa !40
  call void @bjc_put_media_supply(%struct._IO_FILE* %118, i8 signext %conv68, i8 signext %125) #5
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %127 = load i32, i32* %x_resolution, align 4, !tbaa !5
  %128 = load i32, i32* %y_resolution, align 4, !tbaa !5
  call void @bjc_put_raster_resolution(%struct._IO_FILE* %126, i32 %127, i32 %128) #5
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %130 = load i32, i32* %length, align 4, !tbaa !5
  %131 = load i32, i32* %lm, align 4, !tbaa !5
  %132 = load i32, i32* %rm, align 4, !tbaa !5
  %133 = load i32, i32* %top, align 4, !tbaa !5
  call void @bjc_put_page_margins(%struct._IO_FILE* %129, i32 %130, i32 %131, i32 %132, i32 %133) #5
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %135 = load i8, i8* %compress, align 1, !tbaa !31
  call void @bjc_put_set_compression(%struct._IO_FILE* %134, i8 signext %135) #5
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %137 = load i8, i8* %ink, align 1, !tbaa !31
  call void @bjc_put_image_format(%struct._IO_FILE* %136, i8 signext 0, i8 signext 0, i8 signext %137) #5
  store i32 0, i32* %skip, align 4, !tbaa !5
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %139 = bitcast %struct.gx_device_printer_s* %138 to %struct.gx_device_bjc_printer_s*
  %bjc_j = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %139, i32 0, i32 84
  store i32 0, i32* %bjc_j, align 4, !tbaa !45
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %141 = bitcast %struct.gx_device_printer_s* %140 to %struct.gx_device_bjc_printer_s*
  %bjc_k = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %141, i32 0, i32 85
  store i32 31, i32* %bjc_k, align 4, !tbaa !46
  %142 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %143 = bitcast %struct.gx_device_printer_s* %142 to %struct.gx_device_bjc_printer_s*
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %143, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !47
  %144 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call72 = call i32 @FloydSteinbergInitC(%struct.gx_device_printer_s* %144) #5
  %cmp73 = icmp eq i32 %call72, -1
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.end
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.76
  %145 = load i32, i32* %y, align 4, !tbaa !5
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %146, i32 0, i32 14
  %147 = load i32, i32* %height, align 4, !tbaa !41
  %cmp77 = icmp slt i32 %145, %147
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %148 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %149 = load i32, i32* %y, align 4, !tbaa !5
  %150 = load i8*, i8** %row, align 8, !tbaa !1
  %151 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %152 = bitcast %struct.gx_device_printer_s* %151 to %struct.gx_device_s*
  %call79 = call i32 @gx_device_raster(%struct.gx_device_s* %152, i32 0) #5
  %call80 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %148, i32 %149, i8* %150, i32 %call79) #5
  %153 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_printer_s* %153 to %struct.gx_device_bjc_printer_s*
  %155 = load i8*, i8** %row, align 8, !tbaa !1
  %156 = load i8*, i8** %dit, align 8, !tbaa !1
  %157 = load i32, i32* %width, align 4, !tbaa !5
  %158 = load i32, i32* %raster, align 4, !tbaa !5
  %159 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %160 = bitcast %struct.gx_device_printer_s* %159 to %struct.gx_device_bjc_printer_s*
  %limit = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %160, i32 0, i32 77
  %161 = load i32, i32* %limit, align 4, !tbaa !48
  %162 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %163 = bitcast %struct.gx_device_printer_s* %162 to %struct.gx_device_bjc_printer_s*
  %compose = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %163, i32 0, i32 78
  %164 = load i32, i32* %compose, align 4, !tbaa !49
  call void @FloydSteinbergDitheringC(%struct.gx_device_bjc_printer_s* %154, i8* %155, i8* %156, i32 %157, i32 %158, i32 %161, i32 %164) #5
  %165 = load i8*, i8** %rowC, align 8, !tbaa !1
  %166 = load i8*, i8** %rowM, align 8, !tbaa !1
  %167 = load i8*, i8** %rowY, align 8, !tbaa !1
  %168 = load i8*, i8** %rowK, align 8, !tbaa !1
  %169 = load i32, i32* %raster, align 4, !tbaa !5
  %170 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %171 = bitcast %struct.gx_device_printer_s* %170 to %struct.gx_device_bjc_printer_s*
  %inverse = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %171, i32 0, i32 74
  %172 = load i32, i32* %inverse, align 4, !tbaa !42
  %neg = xor i32 %172, -1
  %173 = load i8, i8* %lastmask, align 1, !tbaa !31
  %call81 = call i32 @bjc_invert_cmyk_bytes(i8* %165, i8* %166, i8* %167, i8* %168, i32 %169, i32 %neg, i8 zeroext %173, %struct.skip_s* %skipc) #5
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.132

if.then.83:                                       ; preds = %for.body
  %174 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %174, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.83
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %176 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %175, i32 %176) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.83
  store i32 1, i32* %skip, align 4, !tbaa !5
  %skipC = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 0
  %177 = load i32, i32* %skipC, align 4, !tbaa !50
  %tobool87 = icmp ne i32 %177, 0
  br i1 %tobool87, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %if.end.86
  %178 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv88 = zext i8 %178 to i32
  %and = and i32 %conv88, 1
  %tobool89 = icmp ne i32 %and, 0
  br i1 %tobool89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %land.lhs.true
  %179 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool91 = icmp ne i8 %179, 0
  br i1 %tobool91, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %if.then.90
  %180 = load i8*, i8** %rowC, align 8, !tbaa !1
  %181 = load i32, i32* %raster, align 4, !tbaa !5
  %182 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call93 = call i32 @bjc_compress(i8* %180, i32 %181, i8* %182) #5
  store i32 %call93, i32* %cmplen, align 4, !tbaa !5
  %183 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %183, i8** %outrow, align 8, !tbaa !1
  br label %if.end.94

if.else:                                          ; preds = %if.then.90
  %184 = load i8*, i8** %rowC, align 8, !tbaa !1
  store i8* %184, i8** %outrow, align 8, !tbaa !1
  %185 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %185, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.92
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %187 = load i8*, i8** %outrow, align 8, !tbaa !1
  %188 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %186, i8 signext 67, i8* %187, i32 %188) #5
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %189) #5
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true, %if.end.86
  %skipM = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 1
  %190 = load i32, i32* %skipM, align 4, !tbaa !52
  %tobool96 = icmp ne i32 %190, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.107

land.lhs.true.97:                                 ; preds = %if.end.95
  %191 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv98 = zext i8 %191 to i32
  %and99 = and i32 %conv98, 2
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %land.lhs.true.97
  %192 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool102 = icmp ne i8 %192, 0
  br i1 %tobool102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.then.101
  %193 = load i8*, i8** %rowM, align 8, !tbaa !1
  %194 = load i32, i32* %raster, align 4, !tbaa !5
  %195 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call104 = call i32 @bjc_compress(i8* %193, i32 %194, i8* %195) #5
  store i32 %call104, i32* %cmplen, align 4, !tbaa !5
  %196 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %196, i8** %outrow, align 8, !tbaa !1
  br label %if.end.106

if.else.105:                                      ; preds = %if.then.101
  %197 = load i8*, i8** %rowM, align 8, !tbaa !1
  store i8* %197, i8** %outrow, align 8, !tbaa !1
  %198 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %198, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.103
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %200 = load i8*, i8** %outrow, align 8, !tbaa !1
  %201 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %199, i8 signext 77, i8* %200, i32 %201) #5
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %202) #5
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %land.lhs.true.97, %if.end.95
  %skipY = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 2
  %203 = load i32, i32* %skipY, align 4, !tbaa !53
  %tobool108 = icmp ne i32 %203, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.119

land.lhs.true.109:                                ; preds = %if.end.107
  %204 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv110 = zext i8 %204 to i32
  %and111 = and i32 %conv110, 4
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.119

if.then.113:                                      ; preds = %land.lhs.true.109
  %205 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool114 = icmp ne i8 %205, 0
  br i1 %tobool114, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %if.then.113
  %206 = load i8*, i8** %rowY, align 8, !tbaa !1
  %207 = load i32, i32* %raster, align 4, !tbaa !5
  %208 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call116 = call i32 @bjc_compress(i8* %206, i32 %207, i8* %208) #5
  store i32 %call116, i32* %cmplen, align 4, !tbaa !5
  %209 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %209, i8** %outrow, align 8, !tbaa !1
  br label %if.end.118

if.else.117:                                      ; preds = %if.then.113
  %210 = load i8*, i8** %rowY, align 8, !tbaa !1
  store i8* %210, i8** %outrow, align 8, !tbaa !1
  %211 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %211, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.115
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %213 = load i8*, i8** %outrow, align 8, !tbaa !1
  %214 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %212, i8 signext 89, i8* %213, i32 %214) #5
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %215) #5
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.109, %if.end.107
  %skipK = getelementptr inbounds %struct.skip_s, %struct.skip_s* %skipc, i32 0, i32 3
  %216 = load i32, i32* %skipK, align 4, !tbaa !54
  %tobool120 = icmp ne i32 %216, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.131

land.lhs.true.121:                                ; preds = %if.end.119
  %217 = load i8, i8* %inkc, align 1, !tbaa !31
  %conv122 = zext i8 %217 to i32
  %and123 = and i32 %conv122, 8
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.131

if.then.125:                                      ; preds = %land.lhs.true.121
  %218 = load i8, i8* %compress, align 1, !tbaa !31
  %tobool126 = icmp ne i8 %218, 0
  br i1 %tobool126, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.then.125
  %219 = load i8*, i8** %rowK, align 8, !tbaa !1
  %220 = load i32, i32* %raster, align 4, !tbaa !5
  %221 = load i8*, i8** %cmp, align 8, !tbaa !1
  %call128 = call i32 @bjc_compress(i8* %219, i32 %220, i8* %221) #5
  store i32 %call128, i32* %cmplen, align 4, !tbaa !5
  %222 = load i8*, i8** %cmp, align 8, !tbaa !1
  store i8* %222, i8** %outrow, align 8, !tbaa !1
  br label %if.end.130

if.else.129:                                      ; preds = %if.then.125
  %223 = load i8*, i8** %rowK, align 8, !tbaa !1
  store i8* %223, i8** %outrow, align 8, !tbaa !1
  %224 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %224, i32* %cmplen, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.127
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %226 = load i8*, i8** %outrow, align 8, !tbaa !1
  %227 = load i32, i32* %cmplen, align 4, !tbaa !5
  call void @bjc_put_cmyk_image(%struct._IO_FILE* %225, i8 signext 75, i8* %226, i32 %227) #5
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_CR(%struct._IO_FILE* %228) #5
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true.121, %if.end.119
  br label %if.end.133

if.else.132:                                      ; preds = %for.body
  %229 = load i32, i32* %skip, align 4, !tbaa !5
  %inc = add nsw i32 %229, 1
  store i32 %inc, i32* %skip, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.end.131
  br label %for.inc

for.inc:                                          ; preds = %if.end.133
  %230 = load i32, i32* %y, align 4, !tbaa !5
  %inc134 = add nsw i32 %230, 1
  store i32 %inc134, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %231 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool135 = icmp ne i32 %231, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %233 = load i32, i32* %skip, align 4, !tbaa !5
  call void @bjc_put_raster_skip(%struct._IO_FILE* %232, i32 %233) #5
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.end
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_FF(%struct._IO_FILE* %234) #5
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_initialize(%struct._IO_FILE* %235) #5
  %236 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  call void @FloydSteinbergCloseC(%struct.gx_device_printer_s* %236) #5
  %237 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %237, i32 0, i32 3
  %238 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8, !tbaa !7
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %238, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 2
  %239 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %240 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %240, i32 0, i32 3
  %241 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8, !tbaa !7
  %242 = load i8*, i8** %cmp, align 8, !tbaa !1
  call void %239(%struct.gs_memory_s* %241, i8* %242, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0)) #5
  %243 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory141 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %243, i32 0, i32 3
  %244 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !7
  %procs142 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %244, i32 0, i32 1
  %free_object143 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs142, i32 0, i32 2
  %245 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object143, align 8, !tbaa !43
  %246 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory144 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %246, i32 0, i32 3
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory144, align 8, !tbaa !7
  %248 = load i8*, i8** %dit, align 8, !tbaa !1
  call void %245(%struct.gs_memory_s* %247, i8* %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0)) #5
  %249 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory145 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory145, align 8, !tbaa !7
  %procs146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %250, i32 0, i32 1
  %free_object147 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs146, i32 0, i32 2
  %251 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object147, align 8, !tbaa !43
  %252 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %252, i32 0, i32 3
  %253 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !7
  %254 = load i8*, i8** %row, align 8, !tbaa !1
  call void %251(%struct.gs_memory_s* %253, i8* %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.125, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.137, %if.then.75, %if.then
  %255 = bitcast float* %bgamma to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast float* %ggamma to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast float* %rgamma to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  call void @llvm.lifetime.end(i64 1, i8* %inkc) #2
  %258 = bitcast %struct.skip_s* %skipc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %258) #2
  call void @llvm.lifetime.end(i64 1, i8* %lastmask) #2
  %259 = bitcast [8 x i8]* %mask_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #2
  %260 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %y_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %x_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  call void @llvm.lifetime.end(i64 1, i8* %compress) #2
  call void @llvm.lifetime.end(i64 1, i8* %ink) #2
  call void @llvm.lifetime.end(i64 1, i8* %color) #2
  %266 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i8** %outrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = bitcast i8** %rowK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %270 = bitcast i8** %rowY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  %271 = bitcast i8** %rowM to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #2
  %272 = bitcast i8** %rowC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #2
  %273 = bitcast i8** %cmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #2
  %274 = bitcast i8** %dit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #2
  %275 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = load i32, i32* %retval
  ret i32 %279
}

; Function Attrs: nounwind uwtable
define void @bjc_put_bjl_command(%struct._IO_FILE* %file, i32 %bjl_command) #1 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bjl_command.addr = alloca i32, align 4
  %command = alloca %struct.BJL_command*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %bjl_command, i32* %bjl_command.addr, align 4, !tbaa !5
  %0 = bitcast %struct.BJL_command** %command to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.BJL_command* getelementptr inbounds ([16 x %struct.BJL_command], [16 x %struct.BJL_command]* @BJL_command_set, i32 0, i32 0), %struct.BJL_command** %command, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %string = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %1, i32 0, i32 0
  %2 = load i8*, i8** %string, align 8, !tbaa !58
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %numeric = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %3, i32 0, i32 1
  %4 = load i32, i32* %numeric, align 4, !tbaa !60
  %5 = load i32, i32* %bjl_command.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %6, i32 1
  store %struct.BJL_command* %incdec.ptr, %struct.BJL_command** %command, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %string1 = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %7, i32 0, i32 0
  %8 = load i8*, i8** %string1, align 8, !tbaa !58
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i64 16, i64 1, %struct._IO_FILE* %9) #5
  %10 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %string4 = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %10, i32 0, i32 0
  %11 = load i8*, i8** %string4, align 8, !tbaa !58
  %12 = load %struct.BJL_command*, %struct.BJL_command** %command, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.BJL_command, %struct.BJL_command* %12, i32 0, i32 2
  %13 = load i32, i32* %length, align 4, !tbaa !61
  %conv = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call5 = call i64 @fwrite(i8* %11, i64 %conv, i64 1, %struct._IO_FILE* %14) #5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call6 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i64 8, i64 1, %struct._IO_FILE* %15) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %for.end
  %16 = bitcast %struct.BJL_command** %command to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* %params, i32 %value) #1 {
entry:
  %retval = alloca %struct.stringParamDescription*, align 8
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %value.addr = alloca i32, align 4
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_string = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %0, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %p_string, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !62
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_value = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %2, i32 0, i32 1
  %3 = load i32, i32* %p_value, align 4, !tbaa !65
  %4 = load i32, i32* %value.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store %struct.stringParamDescription* %5, %struct.stringParamDescription** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %6, i32 1
  store %struct.stringParamDescription* %incdec.ptr, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.stringParamDescription* null, %struct.stringParamDescription** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.stringParamDescription*, %struct.stringParamDescription** %retval
  ret %struct.stringParamDescription* %7
}

; Function Attrs: nounwind uwtable
define %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* %params, i8* %name, i32 %len) #1 {
entry:
  %retval = alloca %struct.stringParamDescription*, align 8
  %params.addr = alloca %struct.stringParamDescription*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.stringParamDescription* %params, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_string = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %0, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %p_string, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !62
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %3 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_string1 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %3, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %p_string1, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !66
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  br i1 false, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  br i1 false, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #6
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %cmp3 = icmp ult i64 %call, %conv
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.2
  %7 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_string5 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %9, i32 0, i32 0
  %data6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %p_string5, i32 0, i32 0
  %10 = load i8*, i8** %data6, align 8, !tbaa !62
  %11 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call7 = call i32 @strcmp(i8* %10, i8* %11) #7
  store i32 %call7, i32* %tmp, !tbaa !5
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %tmp, !tbaa !5
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.end, label %if.then.14

cond.false:                                       ; preds = %land.lhs.true.2, %land.lhs.true, %if.then
  %15 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %p_string9 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %15, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %p_string9, i32 0, i32 0
  %16 = load i8*, i8** %data10, align 8, !tbaa !62
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %18 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv11 = zext i32 %18 to i64
  %call12 = call i32 @strncmp(i8* %16, i8* %17, i64 %conv11) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %cond.false, %cond.true
  %19 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  store %struct.stringParamDescription* %19, %struct.stringParamDescription** %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load %struct.stringParamDescription*, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %20, i32 1
  store %struct.stringParamDescription* %incdec.ptr, %struct.stringParamDescription** %params.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.stringParamDescription* null, %struct.stringParamDescription** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14
  %21 = load %struct.stringParamDescription*, %struct.stringParamDescription** %retval
  ret %struct.stringParamDescription* %21
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdev_bjc_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppdev = alloca %struct.gx_device_bjc_printer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bjc_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_bjc_printer_s*
  store %struct.gx_device_bjc_printer_s* %2, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %printerType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %8, i32 0, i32 68
  %9 = load i32, i32* %printerType, align 4, !tbaa !67
  %call1 = call %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* getelementptr inbounds ([7 x %struct.stringParamDescription], [7 x %struct.stringParamDescription]* @strPrinterType, i32 0, i32 0), i32 %9) #5
  %p_string = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %call1, i32 0, i32 0
  %call2 = call i32 @param_write_string(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), %struct.gs_param_string_s* %p_string) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %11, i32 0, i32 69
  %12 = load i32, i32* %feeder, align 4, !tbaa !39
  %call5 = call %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* getelementptr inbounds ([5 x %struct.stringParamDescription], [5 x %struct.stringParamDescription]* @strFeeder, i32 0, i32 0), i32 %12) #5
  %p_string6 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %call5, i32 0, i32 0
  %call7 = call i32 @param_write_string(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), %struct.gs_param_string_s* %p_string6) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.4
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %14, i32 0, i32 70
  %15 = load i32, i32* %mediaType, align 4, !tbaa !35
  %call10 = call %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* getelementptr inbounds ([42 x %struct.stringParamDescription], [42 x %struct.stringParamDescription]* @strMedia, i32 0, i32 0), i32 %15) #5
  %p_string11 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %call10, i32 0, i32 0
  %call12 = call i32 @param_write_string(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), %struct.gs_param_string_s* %p_string11) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.9
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %17, i32 0, i32 71
  %18 = load i32, i32* %quality, align 4, !tbaa !38
  %call15 = call %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* getelementptr inbounds ([9 x %struct.stringParamDescription], [9 x %struct.stringParamDescription]* @strQuality, i32 0, i32 0), i32 %18) #5
  %p_string16 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %call15, i32 0, i32 0
  %call17 = call i32 @param_write_string(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), %struct.gs_param_string_s* %p_string16) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.14
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %ink = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %20, i32 0, i32 72
  %21 = load i32, i32* %ink, align 4, !tbaa !30
  %call20 = call %struct.stringParamDescription* @paramValueToParam(%struct.stringParamDescription* getelementptr inbounds ([23 x %struct.stringParamDescription], [23 x %struct.stringParamDescription]* @strInk, i32 0, i32 0), i32 %21) #5
  %p_string21 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %call20, i32 0, i32 0
  %call22 = call i32 @param_write_string(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %struct.gs_param_string_s* %p_string21) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.19
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %inverse = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %23, i32 0, i32 74
  %call25 = call i32 @param_write_bool(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32* %inverse) #5
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %smooth = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %25, i32 0, i32 76
  %call28 = call i32 @param_write_bool(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32* %smooth) #5
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %compress = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %27, i32 0, i32 75
  %call31 = call i32 @param_write_bool(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32* %compress) #5
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.30
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %29, i32 0, i32 77
  %call34 = call i32 @param_write_bool(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32* %limit) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %compose = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %31, i32 0, i32 78
  %call37 = call i32 @param_write_bool(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i32* %compose) #5
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %paperColor = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %33, i32 0, i32 83
  %red = getelementptr inbounds %struct.anon, %struct.anon* %paperColor, i32 0, i32 0
  %call40 = call i32 @param_write_int(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32* %red) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %paperColor43 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %35, i32 0, i32 83
  %green = getelementptr inbounds %struct.anon, %struct.anon* %paperColor43, i32 0, i32 1
  %call44 = call i32 @param_write_int(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i32* %green) #5
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %paperColor47 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %37, i32 0, i32 83
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %paperColor47, i32 0, i32 2
  %call48 = call i32 @param_write_int(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32* %blue) #5
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %rnd = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %39, i32 0, i32 73
  %call51 = call i32 @param_write_int(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32* %rnd) #5
  store i32 %call51, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %gamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %41, i32 0, i32 79
  %call54 = call i32 @param_write_float(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), float* %gamma) #5
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.53
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %redGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %43, i32 0, i32 80
  %call57 = call i32 @param_write_float(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), float* %redGamma) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.56
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %greenGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %45, i32 0, i32 81
  %call60 = call i32 @param_write_float(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), float* %greenGamma) #5
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.59
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %ppdev, align 8, !tbaa !1
  %blueGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %47, i32 0, i32 82
  %call63 = call i32 @param_write_float(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), float* %blueGamma) #5
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.62, %lor.lhs.false.59, %lor.lhs.false.56, %lor.lhs.false.53, %lor.lhs.false.50, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false.33, %lor.lhs.false.30, %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.19, %lor.lhs.false.14, %lor.lhs.false.9, %lor.lhs.false.4, %lor.lhs.false, %entry
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.62
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast %struct.gx_device_bjc_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_bjc_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %tmppar = alloca %struct.gs_param_string_s, align 8
  %parsize = alloca i32, align 4
  %tmpstr = alloca %struct.stringParamDescription*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.gs_param_string_s* %tmppar to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %parsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.stringParamDescription** %tmpstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store %struct.stringParamDescription* null, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), %struct.gs_param_string_s* %tmppar) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !68
  store i32 %7, i32* %parsize, align 4, !tbaa !5
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !69
  %9 = load i32, i32* %parsize, align 4, !tbaa !5
  %call1 = call %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* getelementptr inbounds ([7 x %struct.stringParamDescription], [7 x %struct.stringParamDescription]* @strPrinterType, i32 0, i32 0), i8* %8, i32 %9) #5
  store %struct.stringParamDescription* %call1, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %10 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %tobool = icmp ne %struct.stringParamDescription* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %11 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %p_value = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %11, i32 0, i32 1
  %12 = load i32, i32* %p_value, align 4, !tbaa !65
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_bjc_printer_s*
  %printerType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %14, i32 0, i32 68
  store i32 %12, i32* %printerType, align 4, !tbaa !67
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Type

sw.default:                                       ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %ecode, align 4, !tbaa !5
  br label %label_Type

label_Type:                                       ; preds = %sw.default, %if.end
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %16, i32 0, i32 0
  %17 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !70
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %17, i32 0, i32 7
  %18 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !72
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %param_name, align 8, !tbaa !1
  %21 = load i32, i32* %ecode, align 4, !tbaa !5
  %call2 = call i32 %18(%struct.gs_param_list_s* %19, i8* %20, i32 %21) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %label_Type, %if.then, %entry
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call3 = call i32 @param_read_string(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), %struct.gs_param_string_s* %tmppar) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  switch i32 %call3, label %sw.default.12 [
    i32 1, label %sw.epilog.16
    i32 0, label %sw.bb.4
  ]

sw.bb.4:                                          ; preds = %sw.epilog
  %size5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 1
  %23 = load i32, i32* %size5, align 4, !tbaa !68
  store i32 %23, i32* %parsize, align 4, !tbaa !5
  %data6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 0
  %24 = load i8*, i8** %data6, align 8, !tbaa !69
  %25 = load i32, i32* %parsize, align 4, !tbaa !5
  %call7 = call %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* getelementptr inbounds ([5 x %struct.stringParamDescription], [5 x %struct.stringParamDescription]* @strFeeder, i32 0, i32 0), i8* %24, i32 %25) #5
  store %struct.stringParamDescription* %call7, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %26 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.stringParamDescription* %26, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %sw.bb.4
  %27 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %p_value10 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %27, i32 0, i32 1
  %28 = load i32, i32* %p_value10, align 4, !tbaa !65
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_bjc_printer_s*
  %feeder = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %30, i32 0, i32 69
  store i32 %28, i32* %feeder, align 4, !tbaa !39
  br label %sw.epilog.16

if.end.11:                                        ; preds = %sw.bb.4
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Feeder

sw.default.12:                                    ; preds = %sw.epilog
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %ecode, align 4, !tbaa !5
  br label %label_Feeder

label_Feeder:                                     ; preds = %sw.default.12, %if.end.11
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %32, i32 0, i32 0
  %33 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs13, align 8, !tbaa !70
  %signal_error14 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %33, i32 0, i32 7
  %34 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error14, align 8, !tbaa !72
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %param_name, align 8, !tbaa !1
  %37 = load i32, i32* %ecode, align 4, !tbaa !5
  %call15 = call i32 %34(%struct.gs_param_list_s* %35, i8* %36, i32 %37) #5
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %label_Feeder, %if.then.9, %sw.epilog
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call17 = call i32 @param_read_string(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), %struct.gs_param_string_s* %tmppar) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  switch i32 %call17, label %sw.default.26 [
    i32 1, label %sw.epilog.30
    i32 0, label %sw.bb.18
  ]

sw.bb.18:                                         ; preds = %sw.epilog.16
  %size19 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 1
  %39 = load i32, i32* %size19, align 4, !tbaa !68
  store i32 %39, i32* %parsize, align 4, !tbaa !5
  %data20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 0
  %40 = load i8*, i8** %data20, align 8, !tbaa !69
  %41 = load i32, i32* %parsize, align 4, !tbaa !5
  %call21 = call %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* getelementptr inbounds ([42 x %struct.stringParamDescription], [42 x %struct.stringParamDescription]* @strMedia, i32 0, i32 0), i8* %40, i32 %41) #5
  store %struct.stringParamDescription* %call21, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %42 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %tobool22 = icmp ne %struct.stringParamDescription* %42, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.18
  %43 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %p_value24 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %43, i32 0, i32 1
  %44 = load i32, i32* %p_value24, align 4, !tbaa !65
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_s* %45 to %struct.gx_device_bjc_printer_s*
  %mediaType = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %46, i32 0, i32 70
  store i32 %44, i32* %mediaType, align 4, !tbaa !35
  br label %sw.epilog.30

if.end.25:                                        ; preds = %sw.bb.18
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Paper

sw.default.26:                                    ; preds = %sw.epilog.16
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %ecode, align 4, !tbaa !5
  br label %label_Paper

label_Paper:                                      ; preds = %sw.default.26, %if.end.25
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %48, i32 0, i32 0
  %49 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs27, align 8, !tbaa !70
  %signal_error28 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %49, i32 0, i32 7
  %50 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error28, align 8, !tbaa !72
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %param_name, align 8, !tbaa !1
  %53 = load i32, i32* %ecode, align 4, !tbaa !5
  %call29 = call i32 %50(%struct.gs_param_list_s* %51, i8* %52, i32 %53) #5
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %label_Paper, %if.then.23, %sw.epilog.16
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call31 = call i32 @param_read_string(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), %struct.gs_param_string_s* %tmppar) #5
  store i32 %call31, i32* %code, align 4, !tbaa !5
  switch i32 %call31, label %sw.default.40 [
    i32 1, label %sw.epilog.44
    i32 0, label %sw.bb.32
  ]

sw.bb.32:                                         ; preds = %sw.epilog.30
  %size33 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 1
  %55 = load i32, i32* %size33, align 4, !tbaa !68
  store i32 %55, i32* %parsize, align 4, !tbaa !5
  %data34 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 0
  %56 = load i8*, i8** %data34, align 8, !tbaa !69
  %57 = load i32, i32* %parsize, align 4, !tbaa !5
  %call35 = call %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* getelementptr inbounds ([9 x %struct.stringParamDescription], [9 x %struct.stringParamDescription]* @strQuality, i32 0, i32 0), i8* %56, i32 %57) #5
  store %struct.stringParamDescription* %call35, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %58 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %tobool36 = icmp ne %struct.stringParamDescription* %58, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %sw.bb.32
  %59 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %p_value38 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %59, i32 0, i32 1
  %60 = load i32, i32* %p_value38, align 4, !tbaa !65
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.gx_device_bjc_printer_s*
  %quality = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %62, i32 0, i32 71
  store i32 %60, i32* %quality, align 4, !tbaa !38
  br label %sw.epilog.44

if.end.39:                                        ; preds = %sw.bb.32
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Quality

sw.default.40:                                    ; preds = %sw.epilog.30
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %ecode, align 4, !tbaa !5
  br label %label_Quality

label_Quality:                                    ; preds = %sw.default.40, %if.end.39
  %64 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %64, i32 0, i32 0
  %65 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs41, align 8, !tbaa !70
  %signal_error42 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %65, i32 0, i32 7
  %66 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error42, align 8, !tbaa !72
  %67 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %param_name, align 8, !tbaa !1
  %69 = load i32, i32* %ecode, align 4, !tbaa !5
  %call43 = call i32 %66(%struct.gs_param_list_s* %67, i8* %68, i32 %69) #5
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %label_Quality, %if.then.37, %sw.epilog.30
  %70 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call45 = call i32 @param_read_string(%struct.gs_param_list_s* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %struct.gs_param_string_s* %tmppar) #5
  store i32 %call45, i32* %code, align 4, !tbaa !5
  switch i32 %call45, label %sw.default.54 [
    i32 1, label %sw.epilog.58
    i32 0, label %sw.bb.46
  ]

sw.bb.46:                                         ; preds = %sw.epilog.44
  %size47 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 1
  %71 = load i32, i32* %size47, align 4, !tbaa !68
  store i32 %71, i32* %parsize, align 4, !tbaa !5
  %data48 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %tmppar, i32 0, i32 0
  %72 = load i8*, i8** %data48, align 8, !tbaa !69
  %73 = load i32, i32* %parsize, align 4, !tbaa !5
  %call49 = call %struct.stringParamDescription* @paramStringToParam(%struct.stringParamDescription* getelementptr inbounds ([23 x %struct.stringParamDescription], [23 x %struct.stringParamDescription]* @strInk, i32 0, i32 0), i8* %72, i32 %73) #5
  store %struct.stringParamDescription* %call49, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %74 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %tobool50 = icmp ne %struct.stringParamDescription* %74, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %sw.bb.46
  %75 = load %struct.stringParamDescription*, %struct.stringParamDescription** %tmpstr, align 8, !tbaa !1
  %p_value52 = getelementptr inbounds %struct.stringParamDescription, %struct.stringParamDescription* %75, i32 0, i32 1
  %76 = load i32, i32* %p_value52, align 4, !tbaa !65
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_s* %77 to %struct.gx_device_bjc_printer_s*
  %ink = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %78, i32 0, i32 72
  store i32 %76, i32* %ink, align 4, !tbaa !30
  br label %sw.epilog.58

if.end.53:                                        ; preds = %sw.bb.46
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Ink

sw.default.54:                                    ; preds = %sw.epilog.44
  %79 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %79, i32* %ecode, align 4, !tbaa !5
  br label %label_Ink

label_Ink:                                        ; preds = %sw.default.54, %if.end.53
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %80, i32 0, i32 0
  %81 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs55, align 8, !tbaa !70
  %signal_error56 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %81, i32 0, i32 7
  %82 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error56, align 8, !tbaa !72
  %83 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %84 = load i8*, i8** %param_name, align 8, !tbaa !1
  %85 = load i32, i32* %ecode, align 4, !tbaa !5
  %call57 = call i32 %82(%struct.gs_param_list_s* %83, i8* %84, i32 %85) #5
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %label_Ink, %if.then.51, %sw.epilog.44
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_s* %87 to %struct.gx_device_bjc_printer_s*
  %inverse = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %88, i32 0, i32 74
  %call59 = call i32 @param_read_bool(%struct.gs_param_list_s* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32* %inverse) #5
  store i32 %call59, i32* %code, align 4, !tbaa !5
  switch i32 %call59, label %sw.default.66 [
    i32 1, label %sw.epilog.70
    i32 0, label %sw.bb.60
  ]

sw.bb.60:                                         ; preds = %sw.epilog.58
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_s* %89 to %struct.gx_device_bjc_printer_s*
  %inverse61 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %90, i32 0, i32 74
  %91 = load i32, i32* %inverse61, align 4, !tbaa !42
  %cmp = icmp eq i32 %91, 1
  br i1 %cmp, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.60
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_bjc_printer_s*
  %inverse62 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %93, i32 0, i32 74
  %94 = load i32, i32* %inverse62, align 4, !tbaa !42
  %cmp63 = icmp eq i32 %94, 0
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false, %sw.bb.60
  br label %sw.epilog.70

if.end.65:                                        ; preds = %lor.lhs.false
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Inverse

sw.default.66:                                    ; preds = %sw.epilog.58
  %95 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %95, i32* %ecode, align 4, !tbaa !5
  br label %label_Inverse

label_Inverse:                                    ; preds = %sw.default.66, %if.end.65
  %96 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %96, i32 0, i32 0
  %97 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs67, align 8, !tbaa !70
  %signal_error68 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %97, i32 0, i32 7
  %98 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error68, align 8, !tbaa !72
  %99 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %100 = load i8*, i8** %param_name, align 8, !tbaa !1
  %101 = load i32, i32* %ecode, align 4, !tbaa !5
  %call69 = call i32 %98(%struct.gs_param_list_s* %99, i8* %100, i32 %101) #5
  br label %sw.epilog.70

sw.epilog.70:                                     ; preds = %label_Inverse, %if.then.64, %sw.epilog.58
  %102 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %104 = bitcast %struct.gx_device_s* %103 to %struct.gx_device_bjc_printer_s*
  %compress = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %104, i32 0, i32 75
  %call71 = call i32 @param_read_bool(%struct.gs_param_list_s* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32* %compress) #5
  store i32 %call71, i32* %code, align 4, !tbaa !5
  switch i32 %call71, label %sw.default.80 [
    i32 1, label %sw.epilog.84
    i32 0, label %sw.bb.72
  ]

sw.bb.72:                                         ; preds = %sw.epilog.70
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gx_device_s* %105 to %struct.gx_device_bjc_printer_s*
  %compress73 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %106, i32 0, i32 75
  %107 = load i32, i32* %compress73, align 4, !tbaa !32
  %cmp74 = icmp eq i32 %107, 1
  br i1 %cmp74, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %sw.bb.72
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %109 = bitcast %struct.gx_device_s* %108 to %struct.gx_device_bjc_printer_s*
  %compress76 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %109, i32 0, i32 75
  %110 = load i32, i32* %compress76, align 4, !tbaa !32
  %cmp77 = icmp eq i32 %110, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.75, %sw.bb.72
  br label %sw.epilog.84

if.end.79:                                        ; preds = %lor.lhs.false.75
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Compress

sw.default.80:                                    ; preds = %sw.epilog.70
  %111 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %111, i32* %ecode, align 4, !tbaa !5
  br label %label_Compress

label_Compress:                                   ; preds = %sw.default.80, %if.end.79
  %112 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %112, i32 0, i32 0
  %113 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs81, align 8, !tbaa !70
  %signal_error82 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %113, i32 0, i32 7
  %114 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error82, align 8, !tbaa !72
  %115 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %116 = load i8*, i8** %param_name, align 8, !tbaa !1
  %117 = load i32, i32* %ecode, align 4, !tbaa !5
  %call83 = call i32 %114(%struct.gs_param_list_s* %115, i8* %116, i32 %117) #5
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %label_Compress, %if.then.78, %sw.epilog.70
  %118 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_s* %119 to %struct.gx_device_bjc_printer_s*
  %smooth = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %120, i32 0, i32 76
  %call85 = call i32 @param_read_bool(%struct.gs_param_list_s* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32* %smooth) #5
  store i32 %call85, i32* %code, align 4, !tbaa !5
  switch i32 %call85, label %sw.default.94 [
    i32 1, label %sw.epilog.98
    i32 0, label %sw.bb.86
  ]

sw.bb.86:                                         ; preds = %sw.epilog.84
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %122 = bitcast %struct.gx_device_s* %121 to %struct.gx_device_bjc_printer_s*
  %smooth87 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %122, i32 0, i32 76
  %123 = load i32, i32* %smooth87, align 4, !tbaa !26
  %cmp88 = icmp eq i32 %123, 1
  br i1 %cmp88, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %sw.bb.86
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %125 = bitcast %struct.gx_device_s* %124 to %struct.gx_device_bjc_printer_s*
  %smooth90 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %125, i32 0, i32 76
  %126 = load i32, i32* %smooth90, align 4, !tbaa !26
  %cmp91 = icmp eq i32 %126, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.89, %sw.bb.86
  br label %sw.epilog.98

if.end.93:                                        ; preds = %lor.lhs.false.89
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Smooth

sw.default.94:                                    ; preds = %sw.epilog.84
  %127 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %127, i32* %ecode, align 4, !tbaa !5
  br label %label_Smooth

label_Smooth:                                     ; preds = %sw.default.94, %if.end.93
  %128 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs95 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %128, i32 0, i32 0
  %129 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs95, align 8, !tbaa !70
  %signal_error96 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %129, i32 0, i32 7
  %130 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error96, align 8, !tbaa !72
  %131 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %132 = load i8*, i8** %param_name, align 8, !tbaa !1
  %133 = load i32, i32* %ecode, align 4, !tbaa !5
  %call97 = call i32 %130(%struct.gs_param_list_s* %131, i8* %132, i32 %133) #5
  br label %sw.epilog.98

sw.epilog.98:                                     ; preds = %label_Smooth, %if.then.92, %sw.epilog.84
  %134 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %136 = bitcast %struct.gx_device_s* %135 to %struct.gx_device_bjc_printer_s*
  %limit = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %136, i32 0, i32 77
  %call99 = call i32 @param_read_bool(%struct.gs_param_list_s* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32* %limit) #5
  store i32 %call99, i32* %code, align 4, !tbaa !5
  switch i32 %call99, label %sw.default.108 [
    i32 1, label %sw.epilog.112
    i32 0, label %sw.bb.100
  ]

sw.bb.100:                                        ; preds = %sw.epilog.98
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %138 = bitcast %struct.gx_device_s* %137 to %struct.gx_device_bjc_printer_s*
  %limit101 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %138, i32 0, i32 77
  %139 = load i32, i32* %limit101, align 4, !tbaa !48
  %cmp102 = icmp eq i32 %139, 1
  br i1 %cmp102, label %if.then.106, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %sw.bb.100
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %141 = bitcast %struct.gx_device_s* %140 to %struct.gx_device_bjc_printer_s*
  %limit104 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %141, i32 0, i32 77
  %142 = load i32, i32* %limit104, align 4, !tbaa !48
  %cmp105 = icmp eq i32 %142, 0
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.103, %sw.bb.100
  br label %sw.epilog.112

if.end.107:                                       ; preds = %lor.lhs.false.103
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Limit

sw.default.108:                                   ; preds = %sw.epilog.98
  %143 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %143, i32* %ecode, align 4, !tbaa !5
  br label %label_Limit

label_Limit:                                      ; preds = %sw.default.108, %if.end.107
  %144 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs109 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %144, i32 0, i32 0
  %145 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs109, align 8, !tbaa !70
  %signal_error110 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %145, i32 0, i32 7
  %146 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error110, align 8, !tbaa !72
  %147 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %148 = load i8*, i8** %param_name, align 8, !tbaa !1
  %149 = load i32, i32* %ecode, align 4, !tbaa !5
  %call111 = call i32 %146(%struct.gs_param_list_s* %147, i8* %148, i32 %149) #5
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %label_Limit, %if.then.106, %sw.epilog.98
  %150 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %152 = bitcast %struct.gx_device_s* %151 to %struct.gx_device_bjc_printer_s*
  %compose = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %152, i32 0, i32 78
  %call113 = call i32 @param_read_bool(%struct.gs_param_list_s* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i32* %compose) #5
  store i32 %call113, i32* %code, align 4, !tbaa !5
  switch i32 %call113, label %sw.default.122 [
    i32 1, label %sw.epilog.126
    i32 0, label %sw.bb.114
  ]

sw.bb.114:                                        ; preds = %sw.epilog.112
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_s* %153 to %struct.gx_device_bjc_printer_s*
  %compose115 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %154, i32 0, i32 78
  %155 = load i32, i32* %compose115, align 4, !tbaa !49
  %cmp116 = icmp eq i32 %155, 1
  br i1 %cmp116, label %if.then.120, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %sw.bb.114
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %157 = bitcast %struct.gx_device_s* %156 to %struct.gx_device_bjc_printer_s*
  %compose118 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %157, i32 0, i32 78
  %158 = load i32, i32* %compose118, align 4, !tbaa !49
  %cmp119 = icmp eq i32 %158, 0
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %lor.lhs.false.117, %sw.bb.114
  br label %sw.epilog.126

if.end.121:                                       ; preds = %lor.lhs.false.117
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Compose

sw.default.122:                                   ; preds = %sw.epilog.112
  %159 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %159, i32* %ecode, align 4, !tbaa !5
  br label %label_Compose

label_Compose:                                    ; preds = %sw.default.122, %if.end.121
  %160 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs123 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %160, i32 0, i32 0
  %161 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs123, align 8, !tbaa !70
  %signal_error124 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %161, i32 0, i32 7
  %162 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error124, align 8, !tbaa !72
  %163 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %164 = load i8*, i8** %param_name, align 8, !tbaa !1
  %165 = load i32, i32* %ecode, align 4, !tbaa !5
  %call125 = call i32 %162(%struct.gs_param_list_s* %163, i8* %164, i32 %165) #5
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %label_Compose, %if.then.120, %sw.epilog.112
  %166 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %167 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %168 = bitcast %struct.gx_device_s* %167 to %struct.gx_device_bjc_printer_s*
  %paperColor = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %168, i32 0, i32 83
  %red = getelementptr inbounds %struct.anon, %struct.anon* %paperColor, i32 0, i32 0
  %call127 = call i32 @param_read_int(%struct.gs_param_list_s* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32* %red) #5
  store i32 %call127, i32* %code, align 4, !tbaa !5
  switch i32 %call127, label %sw.default.137 [
    i32 1, label %sw.epilog.141
    i32 0, label %sw.bb.128
  ]

sw.bb.128:                                        ; preds = %sw.epilog.126
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %170 = bitcast %struct.gx_device_s* %169 to %struct.gx_device_bjc_printer_s*
  %paperColor129 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %170, i32 0, i32 83
  %red130 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor129, i32 0, i32 0
  %171 = load i32, i32* %red130, align 4, !tbaa !74
  %cmp131 = icmp sge i32 %171, 0
  br i1 %cmp131, label %land.lhs.true, label %if.end.136

land.lhs.true:                                    ; preds = %sw.bb.128
  %172 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %173 = bitcast %struct.gx_device_s* %172 to %struct.gx_device_bjc_printer_s*
  %paperColor132 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %173, i32 0, i32 83
  %red133 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor132, i32 0, i32 0
  %174 = load i32, i32* %red133, align 4, !tbaa !74
  %cmp134 = icmp sle i32 %174, 255
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %land.lhs.true
  br label %sw.epilog.141

if.end.136:                                       ; preds = %land.lhs.true, %sw.bb.128
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Red

sw.default.137:                                   ; preds = %sw.epilog.126
  %175 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %175, i32* %ecode, align 4, !tbaa !5
  br label %label_Red

label_Red:                                        ; preds = %sw.default.137, %if.end.136
  %176 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs138 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %176, i32 0, i32 0
  %177 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs138, align 8, !tbaa !70
  %signal_error139 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %177, i32 0, i32 7
  %178 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error139, align 8, !tbaa !72
  %179 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %180 = load i8*, i8** %param_name, align 8, !tbaa !1
  %181 = load i32, i32* %ecode, align 4, !tbaa !5
  %call140 = call i32 %178(%struct.gs_param_list_s* %179, i8* %180, i32 %181) #5
  br label %sw.epilog.141

sw.epilog.141:                                    ; preds = %label_Red, %if.then.135, %sw.epilog.126
  %182 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %184 = bitcast %struct.gx_device_s* %183 to %struct.gx_device_bjc_printer_s*
  %paperColor142 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %184, i32 0, i32 83
  %green = getelementptr inbounds %struct.anon, %struct.anon* %paperColor142, i32 0, i32 1
  %call143 = call i32 @param_read_int(%struct.gs_param_list_s* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i32* %green) #5
  store i32 %call143, i32* %code, align 4, !tbaa !5
  switch i32 %call143, label %sw.default.154 [
    i32 1, label %sw.epilog.158
    i32 0, label %sw.bb.144
  ]

sw.bb.144:                                        ; preds = %sw.epilog.141
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %186 = bitcast %struct.gx_device_s* %185 to %struct.gx_device_bjc_printer_s*
  %paperColor145 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %186, i32 0, i32 83
  %green146 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor145, i32 0, i32 1
  %187 = load i32, i32* %green146, align 4, !tbaa !75
  %cmp147 = icmp sge i32 %187, 0
  br i1 %cmp147, label %land.lhs.true.148, label %if.end.153

land.lhs.true.148:                                ; preds = %sw.bb.144
  %188 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %189 = bitcast %struct.gx_device_s* %188 to %struct.gx_device_bjc_printer_s*
  %paperColor149 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %189, i32 0, i32 83
  %green150 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor149, i32 0, i32 1
  %190 = load i32, i32* %green150, align 4, !tbaa !75
  %cmp151 = icmp sle i32 %190, 255
  br i1 %cmp151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %land.lhs.true.148
  br label %sw.epilog.158

if.end.153:                                       ; preds = %land.lhs.true.148, %sw.bb.144
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Green

sw.default.154:                                   ; preds = %sw.epilog.141
  %191 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %191, i32* %ecode, align 4, !tbaa !5
  br label %label_Green

label_Green:                                      ; preds = %sw.default.154, %if.end.153
  %192 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs155 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %192, i32 0, i32 0
  %193 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs155, align 8, !tbaa !70
  %signal_error156 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %193, i32 0, i32 7
  %194 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error156, align 8, !tbaa !72
  %195 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %196 = load i8*, i8** %param_name, align 8, !tbaa !1
  %197 = load i32, i32* %ecode, align 4, !tbaa !5
  %call157 = call i32 %194(%struct.gs_param_list_s* %195, i8* %196, i32 %197) #5
  br label %sw.epilog.158

sw.epilog.158:                                    ; preds = %label_Green, %if.then.152, %sw.epilog.141
  %198 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %200 = bitcast %struct.gx_device_s* %199 to %struct.gx_device_bjc_printer_s*
  %paperColor159 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %200, i32 0, i32 83
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %paperColor159, i32 0, i32 2
  %call160 = call i32 @param_read_int(%struct.gs_param_list_s* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32* %blue) #5
  store i32 %call160, i32* %code, align 4, !tbaa !5
  switch i32 %call160, label %sw.default.171 [
    i32 1, label %sw.epilog.175
    i32 0, label %sw.bb.161
  ]

sw.bb.161:                                        ; preds = %sw.epilog.158
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %202 = bitcast %struct.gx_device_s* %201 to %struct.gx_device_bjc_printer_s*
  %paperColor162 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %202, i32 0, i32 83
  %blue163 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor162, i32 0, i32 2
  %203 = load i32, i32* %blue163, align 4, !tbaa !76
  %cmp164 = icmp sge i32 %203, 0
  br i1 %cmp164, label %land.lhs.true.165, label %if.end.170

land.lhs.true.165:                                ; preds = %sw.bb.161
  %204 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %205 = bitcast %struct.gx_device_s* %204 to %struct.gx_device_bjc_printer_s*
  %paperColor166 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %205, i32 0, i32 83
  %blue167 = getelementptr inbounds %struct.anon, %struct.anon* %paperColor166, i32 0, i32 2
  %206 = load i32, i32* %blue167, align 4, !tbaa !76
  %cmp168 = icmp sle i32 %206, 255
  br i1 %cmp168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.165
  br label %sw.epilog.175

if.end.170:                                       ; preds = %land.lhs.true.165, %sw.bb.161
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Blue

sw.default.171:                                   ; preds = %sw.epilog.158
  %207 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %207, i32* %ecode, align 4, !tbaa !5
  br label %label_Blue

label_Blue:                                       ; preds = %sw.default.171, %if.end.170
  %208 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs172 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %208, i32 0, i32 0
  %209 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs172, align 8, !tbaa !70
  %signal_error173 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %209, i32 0, i32 7
  %210 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error173, align 8, !tbaa !72
  %211 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %212 = load i8*, i8** %param_name, align 8, !tbaa !1
  %213 = load i32, i32* %ecode, align 4, !tbaa !5
  %call174 = call i32 %210(%struct.gs_param_list_s* %211, i8* %212, i32 %213) #5
  br label %sw.epilog.175

sw.epilog.175:                                    ; preds = %label_Blue, %if.then.169, %sw.epilog.158
  %214 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %216 = bitcast %struct.gx_device_s* %215 to %struct.gx_device_bjc_printer_s*
  %rnd = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %216, i32 0, i32 73
  %call176 = call i32 @param_read_int(%struct.gs_param_list_s* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32* %rnd) #5
  store i32 %call176, i32* %code, align 4, !tbaa !5
  switch i32 %call176, label %sw.default.185 [
    i32 1, label %sw.epilog.189
    i32 0, label %sw.bb.177
  ]

sw.bb.177:                                        ; preds = %sw.epilog.175
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %218 = bitcast %struct.gx_device_s* %217 to %struct.gx_device_bjc_printer_s*
  %rnd178 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %218, i32 0, i32 73
  %219 = load i32, i32* %rnd178, align 4, !tbaa !77
  %cmp179 = icmp sge i32 %219, 0
  br i1 %cmp179, label %land.lhs.true.180, label %if.end.184

land.lhs.true.180:                                ; preds = %sw.bb.177
  %220 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %221 = bitcast %struct.gx_device_s* %220 to %struct.gx_device_bjc_printer_s*
  %rnd181 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %221, i32 0, i32 73
  %222 = load i32, i32* %rnd181, align 4, !tbaa !77
  %cmp182 = icmp sle i32 %222, 100
  br i1 %cmp182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %land.lhs.true.180
  br label %sw.epilog.189

if.end.184:                                       ; preds = %land.lhs.true.180, %sw.bb.177
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Random

sw.default.185:                                   ; preds = %sw.epilog.175
  %223 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %223, i32* %ecode, align 4, !tbaa !5
  br label %label_Random

label_Random:                                     ; preds = %sw.default.185, %if.end.184
  %224 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %224, i32 0, i32 0
  %225 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs186, align 8, !tbaa !70
  %signal_error187 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %225, i32 0, i32 7
  %226 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error187, align 8, !tbaa !72
  %227 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %228 = load i8*, i8** %param_name, align 8, !tbaa !1
  %229 = load i32, i32* %ecode, align 4, !tbaa !5
  %call188 = call i32 %226(%struct.gs_param_list_s* %227, i8* %228, i32 %229) #5
  br label %sw.epilog.189

sw.epilog.189:                                    ; preds = %label_Random, %if.then.183, %sw.epilog.175
  %230 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %231 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %232 = bitcast %struct.gx_device_s* %231 to %struct.gx_device_bjc_printer_s*
  %gamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %232, i32 0, i32 79
  %call190 = call i32 @param_read_float(%struct.gs_param_list_s* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), float* %gamma) #5
  store i32 %call190, i32* %code, align 4, !tbaa !5
  switch i32 %call190, label %sw.default.202 [
    i32 1, label %sw.epilog.206
    i32 0, label %sw.bb.191
  ]

sw.bb.191:                                        ; preds = %sw.epilog.189
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %234 = bitcast %struct.gx_device_s* %233 to %struct.gx_device_bjc_printer_s*
  %gamma192 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %234, i32 0, i32 79
  %235 = load float, float* %gamma192, align 4, !tbaa !44
  %conv = fpext float %235 to double
  %cmp193 = fcmp oge double %conv, 0.000000e+00
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.201

land.lhs.true.195:                                ; preds = %sw.bb.191
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %237 = bitcast %struct.gx_device_s* %236 to %struct.gx_device_bjc_printer_s*
  %gamma196 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %237, i32 0, i32 79
  %238 = load float, float* %gamma196, align 4, !tbaa !44
  %conv197 = fpext float %238 to double
  %cmp198 = fcmp ole double %conv197, 1.000000e+01
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %land.lhs.true.195
  br label %sw.epilog.206

if.end.201:                                       ; preds = %land.lhs.true.195, %sw.bb.191
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Gamma

sw.default.202:                                   ; preds = %sw.epilog.189
  %239 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %239, i32* %ecode, align 4, !tbaa !5
  br label %label_Gamma

label_Gamma:                                      ; preds = %sw.default.202, %if.end.201
  %240 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs203 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %240, i32 0, i32 0
  %241 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs203, align 8, !tbaa !70
  %signal_error204 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %241, i32 0, i32 7
  %242 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error204, align 8, !tbaa !72
  %243 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %244 = load i8*, i8** %param_name, align 8, !tbaa !1
  %245 = load i32, i32* %ecode, align 4, !tbaa !5
  %call205 = call i32 %242(%struct.gs_param_list_s* %243, i8* %244, i32 %245) #5
  br label %sw.epilog.206

sw.epilog.206:                                    ; preds = %label_Gamma, %if.then.200, %sw.epilog.189
  %246 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %248 = bitcast %struct.gx_device_s* %247 to %struct.gx_device_bjc_printer_s*
  %redGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %248, i32 0, i32 80
  %call207 = call i32 @param_read_float(%struct.gs_param_list_s* %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), float* %redGamma) #5
  store i32 %call207, i32* %code, align 4, !tbaa !5
  switch i32 %call207, label %sw.default.220 [
    i32 1, label %sw.epilog.224
    i32 0, label %sw.bb.208
  ]

sw.bb.208:                                        ; preds = %sw.epilog.206
  %249 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %250 = bitcast %struct.gx_device_s* %249 to %struct.gx_device_bjc_printer_s*
  %redGamma209 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %250, i32 0, i32 80
  %251 = load float, float* %redGamma209, align 4, !tbaa !55
  %conv210 = fpext float %251 to double
  %cmp211 = fcmp oge double %conv210, 0.000000e+00
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.219

land.lhs.true.213:                                ; preds = %sw.bb.208
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %253 = bitcast %struct.gx_device_s* %252 to %struct.gx_device_bjc_printer_s*
  %redGamma214 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %253, i32 0, i32 80
  %254 = load float, float* %redGamma214, align 4, !tbaa !55
  %conv215 = fpext float %254 to double
  %cmp216 = fcmp ole double %conv215, 1.000000e+01
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %land.lhs.true.213
  br label %sw.epilog.224

if.end.219:                                       ; preds = %land.lhs.true.213, %sw.bb.208
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Rgamma

sw.default.220:                                   ; preds = %sw.epilog.206
  %255 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %255, i32* %ecode, align 4, !tbaa !5
  br label %label_Rgamma

label_Rgamma:                                     ; preds = %sw.default.220, %if.end.219
  %256 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs221 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %256, i32 0, i32 0
  %257 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs221, align 8, !tbaa !70
  %signal_error222 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %257, i32 0, i32 7
  %258 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error222, align 8, !tbaa !72
  %259 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %260 = load i8*, i8** %param_name, align 8, !tbaa !1
  %261 = load i32, i32* %ecode, align 4, !tbaa !5
  %call223 = call i32 %258(%struct.gs_param_list_s* %259, i8* %260, i32 %261) #5
  br label %sw.epilog.224

sw.epilog.224:                                    ; preds = %label_Rgamma, %if.then.218, %sw.epilog.206
  %262 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %263 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %264 = bitcast %struct.gx_device_s* %263 to %struct.gx_device_bjc_printer_s*
  %greenGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %264, i32 0, i32 81
  %call225 = call i32 @param_read_float(%struct.gs_param_list_s* %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), float* %greenGamma) #5
  store i32 %call225, i32* %code, align 4, !tbaa !5
  switch i32 %call225, label %sw.default.238 [
    i32 1, label %sw.epilog.242
    i32 0, label %sw.bb.226
  ]

sw.bb.226:                                        ; preds = %sw.epilog.224
  %265 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %266 = bitcast %struct.gx_device_s* %265 to %struct.gx_device_bjc_printer_s*
  %greenGamma227 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %266, i32 0, i32 81
  %267 = load float, float* %greenGamma227, align 4, !tbaa !56
  %conv228 = fpext float %267 to double
  %cmp229 = fcmp oge double %conv228, 0.000000e+00
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.237

land.lhs.true.231:                                ; preds = %sw.bb.226
  %268 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %269 = bitcast %struct.gx_device_s* %268 to %struct.gx_device_bjc_printer_s*
  %greenGamma232 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %269, i32 0, i32 81
  %270 = load float, float* %greenGamma232, align 4, !tbaa !56
  %conv233 = fpext float %270 to double
  %cmp234 = fcmp ole double %conv233, 1.000000e+01
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %land.lhs.true.231
  br label %sw.epilog.242

if.end.237:                                       ; preds = %land.lhs.true.231, %sw.bb.226
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Ggamma

sw.default.238:                                   ; preds = %sw.epilog.224
  %271 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %271, i32* %ecode, align 4, !tbaa !5
  br label %label_Ggamma

label_Ggamma:                                     ; preds = %sw.default.238, %if.end.237
  %272 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs239 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %272, i32 0, i32 0
  %273 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs239, align 8, !tbaa !70
  %signal_error240 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %273, i32 0, i32 7
  %274 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error240, align 8, !tbaa !72
  %275 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %276 = load i8*, i8** %param_name, align 8, !tbaa !1
  %277 = load i32, i32* %ecode, align 4, !tbaa !5
  %call241 = call i32 %274(%struct.gs_param_list_s* %275, i8* %276, i32 %277) #5
  br label %sw.epilog.242

sw.epilog.242:                                    ; preds = %label_Ggamma, %if.then.236, %sw.epilog.224
  %278 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %279 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %280 = bitcast %struct.gx_device_s* %279 to %struct.gx_device_bjc_printer_s*
  %blueGamma = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %280, i32 0, i32 82
  %call243 = call i32 @param_read_float(%struct.gs_param_list_s* %278, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), float* %blueGamma) #5
  store i32 %call243, i32* %code, align 4, !tbaa !5
  switch i32 %call243, label %sw.default.256 [
    i32 1, label %sw.epilog.260
    i32 0, label %sw.bb.244
  ]

sw.bb.244:                                        ; preds = %sw.epilog.242
  %281 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %282 = bitcast %struct.gx_device_s* %281 to %struct.gx_device_bjc_printer_s*
  %blueGamma245 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %282, i32 0, i32 82
  %283 = load float, float* %blueGamma245, align 4, !tbaa !57
  %conv246 = fpext float %283 to double
  %cmp247 = fcmp oge double %conv246, 0.000000e+00
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.255

land.lhs.true.249:                                ; preds = %sw.bb.244
  %284 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %285 = bitcast %struct.gx_device_s* %284 to %struct.gx_device_bjc_printer_s*
  %blueGamma250 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %285, i32 0, i32 82
  %286 = load float, float* %blueGamma250, align 4, !tbaa !57
  %conv251 = fpext float %286 to double
  %cmp252 = fcmp ole double %conv251, 1.000000e+01
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %land.lhs.true.249
  br label %sw.epilog.260

if.end.255:                                       ; preds = %land.lhs.true.249, %sw.bb.244
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %label_Bgamma

sw.default.256:                                   ; preds = %sw.epilog.242
  %287 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %287, i32* %ecode, align 4, !tbaa !5
  br label %label_Bgamma

label_Bgamma:                                     ; preds = %sw.default.256, %if.end.255
  %288 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs257 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %288, i32 0, i32 0
  %289 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs257, align 8, !tbaa !70
  %signal_error258 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %289, i32 0, i32 7
  %290 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error258, align 8, !tbaa !72
  %291 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %292 = load i8*, i8** %param_name, align 8, !tbaa !1
  %293 = load i32, i32* %ecode, align 4, !tbaa !5
  %call259 = call i32 %290(%struct.gs_param_list_s* %291, i8* %292, i32 %293) #5
  br label %sw.epilog.260

sw.epilog.260:                                    ; preds = %label_Bgamma, %if.then.254, %sw.epilog.242
  %294 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp261 = icmp slt i32 %294, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %sw.epilog.260
  %295 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %295, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.264:                                       ; preds = %sw.epilog.260
  %296 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %297 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call265 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %296, %struct.gs_param_list_s* %297) #5
  store i32 %call265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.264, %if.then.263
  %298 = bitcast %struct.stringParamDescription** %tmpstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #2
  %299 = bitcast i32* %parsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast %struct.gs_param_string_s* %tmppar to i8*
  call void @llvm.lifetime.end(i64 16, i8* %300) #2
  %301 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  %302 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = load i32, i32* %retval
  ret i32 %304
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @bjc_put_set_initial(%struct._IO_FILE*) #0

declare void @bjc_put_print_method(%struct._IO_FILE*, i8 signext, i8 signext, i8 signext, i8 signext) #0

declare void @bjc_put_media_supply(%struct._IO_FILE*, i8 signext, i8 signext) #0

declare void @bjc_put_raster_resolution(%struct._IO_FILE*, i32, i32) #0

declare void @bjc_put_page_margins(%struct._IO_FILE*, i32, i32, i32, i32) #0

declare void @bjc_put_set_compression(%struct._IO_FILE*, i8 signext) #0

declare void @bjc_put_image_format(%struct._IO_FILE*, i8 signext, i8 signext, i8 signext) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

declare i32 @bjc_invert_bytes(i8*, i32, i32, i8 zeroext) #0

declare void @bjc_put_raster_skip(%struct._IO_FILE*, i32) #0

declare i32 @bjc_compress(i8*, i32, i8*) #0

declare void @bjc_put_cmyk_image(%struct._IO_FILE*, i8 signext, i8*, i32) #0

declare void @bjc_put_CR(%struct._IO_FILE*) #0

declare void @bjc_put_FF(%struct._IO_FILE*) #0

declare void @bjc_put_initialize(%struct._IO_FILE*) #0

declare void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s*, float, i8 signext) #0

declare i32 @FloydSteinbergInitG(%struct.gx_device_printer_s*) #0

declare void @FloydSteinbergDitheringG(%struct.gx_device_bjc_printer_s*, i8*, i8*, i32, i32, i32) #0

declare void @FloydSteinbergCloseG(%struct.gx_device_printer_s*) #0

declare i32 @gx_render_plane_init(%struct.gx_render_plane_s*, %struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_get_lines(%struct.gx_device_printer_s*, i32, i32, i8*, i32, i8**, i32*, %struct.gx_render_plane_s*) #0

declare i32 @bjc_invert_cmyk_bytes(i8*, i8*, i8*, i8*, i32, i32, i8 zeroext, %struct.skip_s*) #0

declare i32 @FloydSteinbergInitC(%struct.gx_device_printer_s*) #0

declare void @FloydSteinbergDitheringC(%struct.gx_device_bjc_printer_s*, i8*, i8*, i32, i32, i32, i32) #0

declare void @FloydSteinbergCloseC(%struct.gx_device_printer_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 24}
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
!23 = !{!24, !2, i64 64}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!27, !6, i64 18504}
!27 = !{!"gx_device_bjc_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !6, i64 18512, !28, i64 18516, !28, i64 18520, !28, i64 18524, !28, i64 18528, !29, i64 18532, !6, i64 18544, !6, i64 18548, !3, i64 18552, !6, i64 22648, !2, i64 22656, !2, i64 22664, !2, i64 22672, !2, i64 22680, !2, i64 22688, !6, i64 22696, !6, i64 22700, !6, i64 22704, !6, i64 22708, !6, i64 22712, !3, i64 22716, !3, i64 23740, !3, i64 24764}
!28 = !{!"float", !3, i64 0}
!29 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!30 = !{!27, !6, i64 18488}
!31 = !{!3, !3, i64 0}
!32 = !{!27, !6, i64 18500}
!33 = !{!28, !28, i64 0}
!34 = !{!8, !6, i64 832}
!35 = !{!27, !6, i64 18480}
!36 = !{!37, !3, i64 1}
!37 = !{!"", !3, i64 0, !3, i64 1}
!38 = !{!27, !6, i64 18484}
!39 = !{!27, !6, i64 18476}
!40 = !{!37, !3, i64 0}
!41 = !{!8, !6, i64 836}
!42 = !{!27, !6, i64 18496}
!43 = !{!24, !2, i64 24}
!44 = !{!27, !28, i64 18516}
!45 = !{!27, !6, i64 18544}
!46 = !{!27, !6, i64 18548}
!47 = !{!27, !6, i64 22648}
!48 = !{!27, !6, i64 18508}
!49 = !{!27, !6, i64 18512}
!50 = !{!51, !6, i64 0}
!51 = !{!"skip_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!52 = !{!51, !6, i64 4}
!53 = !{!51, !6, i64 8}
!54 = !{!51, !6, i64 12}
!55 = !{!27, !28, i64 18520}
!56 = !{!27, !28, i64 18524}
!57 = !{!27, !28, i64 18528}
!58 = !{!59, !2, i64 0}
!59 = !{!"", !2, i64 0, !6, i64 8, !6, i64 12}
!60 = !{!59, !6, i64 8}
!61 = !{!59, !6, i64 12}
!62 = !{!63, !2, i64 0}
!63 = !{!"", !64, i64 0, !6, i64 16}
!64 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!65 = !{!63, !6, i64 16}
!66 = !{!63, !6, i64 8}
!67 = !{!27, !6, i64 18472}
!68 = !{!64, !6, i64 8}
!69 = !{!64, !2, i64 0}
!70 = !{!71, !2, i64 0}
!71 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!72 = !{!73, !2, i64 56}
!73 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!74 = !{!27, !6, i64 18532}
!75 = !{!27, !6, i64 18536}
!76 = !{!27, !6, i64 18540}
!77 = !{!27, !6, i64 18492}
