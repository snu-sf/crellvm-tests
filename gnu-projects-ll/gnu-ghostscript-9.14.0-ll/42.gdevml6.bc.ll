; ModuleID = './gdevml6.bc'
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

@ml600_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ml600_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @ml600_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"ml600\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_ml600_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @ml600_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 4980, i32 7020, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082ACCCC0000000, float 0x408A533340000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -1.200000e+02, float -1.200000e+02], [4 x float] [float 0x402CCCCCC0000000, float 0x402CCCCCC0000000, float 0x402CCCCCC0000000, float 0x402CCCCCC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ml600_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%c%c%c%c%c%c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%c%c%c%c%c%c%c%c%c\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%c%c%c%c%c%c%c\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ml600_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ystep = alloca i32, align 4
  %data = alloca [2 x [1754 x i8]], align 16
  %buf = alloca [1754 x i8], align 16
  %skip = alloca i32, align 4
  %current = alloca i32, align 4
  %c_size = alloca i32, align 4
  %lnum = alloca i32, align 4
  %line_size = alloca i32, align 4
  %rmask = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ystep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [2 x [1754 x i8]]* %data to i8*
  call void @llvm.lifetime.start(i64 3508, i8* %1) #2
  %2 = bitcast [1754 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1754, i8* %2) #2
  %3 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %current to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %c_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  call void @llvm.lifetime.start(i64 1, i8* %rmask) #2
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @page_header(%struct.gx_device_printer_s* %9, %struct._IO_FILE* %10) #3
  store i32 %call, i32* %ystep, align 4, !tbaa !5
  %11 = load i32, i32* %ystep, align 4, !tbaa !5
  %div = sdiv i32 %11, 300
  store i32 %div, i32* %ystep, align 4, !tbaa !5
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %current, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 1754
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %current, align 4, !tbaa !5
  %xor = xor i32 %14, 1
  %and = and i32 %xor, 1
  %idxprom1 = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx2, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_s*
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_printer_s*
  %19 = bitcast %struct.gx_device_printer_s* %18 to %struct.gx_device_s*
  %call3 = call i32 @gx_device_raster(%struct.gx_device_s* %19, i32 0) #3
  store i32 %call3, i32* %line_size, align 4, !tbaa !5
  %20 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %20, 877
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %21 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end:                                           ; preds = %lor.lhs.false
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width, align 4, !tbaa !8
  %sub = sub nsw i32 0, %23
  %and6 = and i32 %sub, 7
  %shl = shl i32 255, %and6
  %conv = trunc i32 %shl to i8
  store i8 %conv, i8* %rmask, align 1, !tbaa !7
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.62, %if.end
  %24 = load i32, i32* %lnum, align 4, !tbaa !5
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height, align 4, !tbaa !24
  %cmp8 = icmp slt i32 %24, %26
  br i1 %cmp8, label %for.body.10, label %for.end.64

for.body.10:                                      ; preds = %for.cond.7
  %27 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %29 = load i32, i32* %lnum, align 4, !tbaa !5
  %30 = load i32, i32* %current, align 4, !tbaa !5
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom11
  %arraydecay = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx12, i32 0, i32 0
  %31 = load i32, i32* %line_size, align 4, !tbaa !5
  %call13 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %28, i32 %29, i8* %arraydecay, i32 %31) #3
  store i32 %call13, i32* %s, align 4, !tbaa !5
  %32 = load i8, i8* %rmask, align 1, !tbaa !7
  %conv14 = zext i8 %32 to i32
  %33 = load i32, i32* %current, align 4, !tbaa !5
  %idxprom15 = sext i32 %33 to i64
  %arrayidx16 = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx16, i32 0, i32 0
  %34 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 %idx.ext
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %35 = load i8, i8* %add.ptr18, align 1, !tbaa !7
  %conv19 = zext i8 %35 to i32
  %and20 = and i32 %conv19, %conv14
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, i8* %add.ptr18, align 1, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.35, %for.body.10
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %37 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %36, %37
  br i1 %cmp23, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %for.cond.22
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %38 to i64
  %39 = load i32, i32* %current, align 4, !tbaa !5
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx28, i32 0, i64 %idxprom26
  %40 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %40 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.25
  br label %for.end.37

if.end.34:                                        ; preds = %for.body.25
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* %i, align 4, !tbaa !5
  br label %for.cond.22

for.end.37:                                       ; preds = %if.then.33, %for.cond.22
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %42, %43
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.end.37
  store i32 1, i32* %skip, align 4, !tbaa !5
  %44 = load i32, i32* %current, align 4, !tbaa !5
  %xor41 = xor i32 %44, 1
  %and42 = and i32 %xor41, 1
  store i32 %and42, i32* %current, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %for.end.37
  %45 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.43
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %47 = load i32, i32* %lnum, align 4, !tbaa !5
  %48 = load i32, i32* %ystep, align 4, !tbaa !5
  %div45 = sdiv i32 %47, %48
  %49 = load i32, i32* %lnum, align 4, !tbaa !5
  %50 = load i32, i32* %ystep, align 4, !tbaa !5
  %rem = srem i32 %49, %50
  %call46 = call i32 @move_pos(%struct._IO_FILE* %46, i32 %div45, i32 %rem) #3
  store i32 0, i32* %skip, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.43
  %51 = load i32, i32* %current, align 4, !tbaa !5
  %idxprom48 = sext i32 %51 to i64
  %arrayidx49 = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx49, i32 0, i32 0
  %52 = load i32, i32* %current, align 4, !tbaa !5
  %xor51 = xor i32 %52, 1
  %and52 = and i32 %xor51, 1
  %idxprom53 = sext i32 %and52 to i64
  %arrayidx54 = getelementptr inbounds [2 x [1754 x i8]], [2 x [1754 x i8]]* %data, i32 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [1754 x i8], [1754 x i8]* %arrayidx54, i32 0, i32 0
  %53 = load i32, i32* %line_size, align 4, !tbaa !5
  %arraydecay56 = getelementptr inbounds [1754 x i8], [1754 x i8]* %buf, i32 0, i32 0
  %call57 = call i32 @make_line_data(i8* %arraydecay50, i8* %arraydecay55, i32 %53, i8* %arraydecay56) #3
  store i32 %call57, i32* %c_size, align 4, !tbaa !5
  %arraydecay58 = getelementptr inbounds [1754 x i8], [1754 x i8]* %buf, i32 0, i32 0
  %54 = load i32, i32* %c_size, align 4, !tbaa !5
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call59 = call i32 @send_line(i8* %arraydecay58, i32 %54, %struct._IO_FILE* %55) #3
  %56 = load i32, i32* %current, align 4, !tbaa !5
  %xor60 = xor i32 %56, 1
  %and61 = and i32 %xor60, 1
  store i32 %and61, i32* %current, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.40
  %57 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.62
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.62

for.inc.62:                                       ; preds = %cleanup.cont, %cleanup
  %58 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc63 = add nsw i32 %58, 1
  store i32 %inc63, i32* %lnum, align 4, !tbaa !5
  br label %for.cond.7

for.end.64:                                       ; preds = %for.cond.7
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %for.end.64, %if.then
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  call void @llvm.lifetime.end(i64 1, i8* %rmask) #2
  %61 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %c_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %current to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast [1754 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1754, i8* %66) #2
  %67 = bitcast [2 x [1754 x i8]]* %data to i8*
  call void @llvm.lifetime.end(i64 3508, i8* %67) #2
  %68 = bitcast i32* %ystep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = load i32, i32* %retval
  ret i32 %69

unreachable:                                      ; preds = %cleanup
  unreachable
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
define internal i32 @ml600_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %prn_stream = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %1) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct._IO_FILE** %prn_stream to i8*
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
  %call1 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %5, i32 1) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 52
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !25
  store %struct._IO_FILE* %10, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_printer_s*
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %call5 = call i32 @ml_init(%struct.gx_device_printer_s* %12, %struct._IO_FILE* %13) #3
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %14 = bitcast %struct._IO_FILE** %prn_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @ml600_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %prn_stream = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %1, i32 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct._IO_FILE** %prn_stream to i8*
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
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !25
  store %struct._IO_FILE* %7, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_printer_s*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream, align 8, !tbaa !1
  %call1 = call i32 @ml_finish(%struct.gx_device_printer_s* %9, %struct._IO_FILE* %10) #3
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_close(%struct.gx_device_s* %11) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct._IO_FILE** %prn_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @ml_init(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 27, i32 47, i32 242) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @ml_finish(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 27, i32 47, i32 254) #3
  ret i32 0
}

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @page_header(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ydpi = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 160, i32 1, i32 0, i32 1) #3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 161, i32 1, i32 0, i32 1) #3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 162, i32 1, i32 0, i32 1) #3
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %5 = load float, float* %arrayidx, align 4, !tbaa !26
  %cmp = fcmp ogt float %5, 6.000000e+02
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 27, i32 124, i32 165, i32 4, i32 0, i32 2, i32 88, i32 4, i32 176) #3
  store i32 1200, i32* %ydpi, align 4, !tbaa !5
  br label %if.end.11

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution4, i32 0, i64 1
  %8 = load float, float* %arrayidx5, align 4, !tbaa !26
  %cmp6 = fcmp ogt float %8, 3.000000e+02
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 27, i32 124, i32 165, i32 2, i32 0, i32 2, i32 88) #3
  store i32 600, i32* %ydpi, align 4, !tbaa !5
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 27, i32 124, i32 165, i32 2, i32 0, i32 1, i32 44) #3
  store i32 300, i32* %ydpi, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 27, i32 124, i32 241, i32 12, i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 166, i32 1, i32 0, i32 3) #3
  %13 = load i32, i32* %ydpi, align 4, !tbaa !5
  %14 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i32 %13
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @move_pos(%struct._IO_FILE* %fp, i32 %n, i32 %m) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i32 %m, i32* %m.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 166, i32 1, i32 0, i32 2) #3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 8
  %and = and i32 %shr, 255
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %and1 = and i32 %3, 255
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 27, i32 124, i32 164, i32 4, i32 0, i32 %and, i32 %and1, i32 0, i32 0) #3
  %4 = load i32, i32* %m.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 166, i32 1, i32 0, i32 0) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %m.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 167, i32 0, i32 1, i32 0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 27, i32 124, i32 166, i32 1, i32 0, i32 3) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @make_line_data(i8* %curr_data, i8* %last_data, i32 %line_size, i8* %buf) #1 {
entry:
  %curr_data.addr = alloca i8*, align 8
  %last_data.addr = alloca i8*, align 8
  %line_size.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %bytes = alloca i32, align 4
  %offs = alloca i32, align 4
  store i8* %curr_data, i8** %curr_data.addr, align 8, !tbaa !1
  store i8* %last_data, i8** %last_data.addr, align 8, !tbaa !1
  store i32 %line_size, i32* %line_size.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end.73, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end.74

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %offs, align 4, !tbaa !5
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.8, %while.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %curr_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8*, i8** %last_data.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %14 = phi i1 [ false, %while.cond.1 ], [ %cmp6, %land.rhs ]
  br i1 %14, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %offs, align 4, !tbaa !5
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, i32* %offs, align 4, !tbaa !5
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %17, %18
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.74

if.end:                                           ; preds = %while.end
  store i32 1, i32* %bytes, align 4, !tbaa !5
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.29, %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %bytes, align 4, !tbaa !5
  %add = add nsw i32 %19, %20
  %21 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %add, %21
  br i1 %cmp13, label %land.lhs.true, label %land.end.28

land.lhs.true:                                    ; preds = %while.cond.12
  %22 = load i32, i32* %bytes, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %22, 8
  br i1 %cmp15, label %land.rhs.17, label %land.end.28

land.rhs.17:                                      ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %bytes, align 4, !tbaa !5
  %add18 = add nsw i32 %23, %24
  %idxprom19 = sext i32 %add18 to i64
  %25 = load i8*, i8** %curr_data.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %idxprom19
  %26 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %26 to i32
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %bytes, align 4, !tbaa !5
  %add22 = add nsw i32 %27, %28
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %last_data.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %30 to i32
  %cmp26 = icmp ne i32 %conv21, %conv25
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.17, %land.lhs.true, %while.cond.12
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.12 ], [ %cmp26, %land.rhs.17 ]
  br i1 %31, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %land.end.28
  %32 = load i32, i32* %bytes, align 4, !tbaa !5
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %bytes, align 4, !tbaa !5
  br label %while.cond.12

while.end.31:                                     ; preds = %land.end.28
  %33 = load i32, i32* %offs, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %33, 31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %while.end.31
  %34 = load i32, i32* %bytes, align 4, !tbaa !5
  %sub = sub nsw i32 %34, 1
  %and = and i32 %sub, 7
  %shl = shl i32 %and, 5
  %35 = load i32, i32* %offs, align 4, !tbaa !5
  %and35 = and i32 %35, 31
  %or = or i32 %shl, %and35
  %conv36 = trunc i32 %or to i8
  %36 = load i32, i32* %n, align 4, !tbaa !5
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %n, align 4, !tbaa !5
  %idxprom38 = sext i32 %36 to i64
  %37 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %37, i64 %idxprom38
  store i8 %conv36, i8* %arrayidx39, align 1, !tbaa !7
  br label %if.end.62

if.else:                                          ; preds = %while.end.31
  %38 = load i32, i32* %offs, align 4, !tbaa !5
  %sub40 = sub nsw i32 %38, 31
  store i32 %sub40, i32* %offs, align 4, !tbaa !5
  %39 = load i32, i32* %bytes, align 4, !tbaa !5
  %sub41 = sub nsw i32 %39, 1
  %and42 = and i32 %sub41, 7
  %shl43 = shl i32 %and42, 5
  %or44 = or i32 %shl43, 31
  %conv45 = trunc i32 %or44 to i8
  %40 = load i32, i32* %n, align 4, !tbaa !5
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* %n, align 4, !tbaa !5
  %idxprom47 = sext i32 %40 to i64
  %41 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 %idxprom47
  store i8 %conv45, i8* %arrayidx48, align 1, !tbaa !7
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.52, %if.else
  %42 = load i32, i32* %offs, align 4, !tbaa !5
  %cmp50 = icmp sge i32 %42, 255
  br i1 %cmp50, label %while.body.52, label %while.end.57

while.body.52:                                    ; preds = %while.cond.49
  %43 = load i32, i32* %offs, align 4, !tbaa !5
  %sub53 = sub nsw i32 %43, 255
  store i32 %sub53, i32* %offs, align 4, !tbaa !5
  %44 = load i32, i32* %n, align 4, !tbaa !5
  %inc54 = add nsw i32 %44, 1
  store i32 %inc54, i32* %n, align 4, !tbaa !5
  %idxprom55 = sext i32 %44 to i64
  %45 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %45, i64 %idxprom55
  store i8 -1, i8* %arrayidx56, align 1, !tbaa !7
  br label %while.cond.49

while.end.57:                                     ; preds = %while.cond.49
  %46 = load i32, i32* %offs, align 4, !tbaa !5
  %conv58 = trunc i32 %46 to i8
  %47 = load i32, i32* %n, align 4, !tbaa !5
  %inc59 = add nsw i32 %47, 1
  store i32 %inc59, i32* %n, align 4, !tbaa !5
  %idxprom60 = sext i32 %47 to i64
  %48 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i64 %idxprom60
  store i8 %conv58, i8* %arrayidx61, align 1, !tbaa !7
  br label %if.end.62

if.end.62:                                        ; preds = %while.end.57, %if.then.34
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.66, %if.end.62
  %49 = load i32, i32* %bytes, align 4, !tbaa !5
  %cmp64 = icmp sgt i32 %49, 0
  br i1 %cmp64, label %while.body.66, label %while.end.73

while.body.66:                                    ; preds = %while.cond.63
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %50 to i64
  %51 = load i8*, i8** %curr_data.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %51, i64 %idxprom68
  %52 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %53 = load i32, i32* %n, align 4, !tbaa !5
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, i32* %n, align 4, !tbaa !5
  %idxprom71 = sext i32 %53 to i64
  %54 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %54, i64 %idxprom71
  store i8 %52, i8* %arrayidx72, align 1, !tbaa !7
  %55 = load i32, i32* %bytes, align 4, !tbaa !5
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %bytes, align 4, !tbaa !5
  br label %while.cond.63

while.end.73:                                     ; preds = %while.cond.63
  br label %while.cond

while.end.74:                                     ; preds = %if.then, %while.cond
  %56 = load i32, i32* %n, align 4, !tbaa !5
  %57 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @send_line(i8* %buf, i32 %cnt, %struct._IO_FILE* %fp) #1 {
entry:
  %buf.addr = alloca i8*, align 8
  %cnt.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %cnt, i32* %cnt.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 27, i32 124, i32 167) #3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %2 = load i32, i32* %cnt.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 8
  %and = and i32 %shr, 255
  %3 = load i32, i32* %cnt.addr, align 4, !tbaa !5
  %and1 = and i32 %3, 255
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %and, i32 %and1) #3
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %5 = load i32, i32* %cnt.addr, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i64 @fwrite(i8* %4, i64 1, i64 %conv, %struct._IO_FILE* %6) #3
  %conv4 = trunc i64 %call3 to i32
  ret i32 %conv4
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 832}
!9 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !10, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728, !21, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !23, i64 17256, !6, i64 17288, !2, i64 17296, !20, i64 17304, !20, i64 17888}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !22, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!24 = !{!9, !6, i64 836}
!25 = !{!9, !2, i64 17176}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !3, i64 0}
