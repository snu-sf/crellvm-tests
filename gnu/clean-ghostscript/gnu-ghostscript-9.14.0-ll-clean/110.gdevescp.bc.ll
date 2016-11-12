; ModuleID = './gdevescp.bc'
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

@prn_bg_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [6 x i8] c"st800\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_st800_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC047666660000000, float 0xC05E9999A0000000], [4 x float] [float 0x4022B851E0000000, float 0x404428F5C0000000, float 0x403B5C2900000000, float 0x40387AE140000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @escp2_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ap3250\00", align 1
@gs_ap3250_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC050333340000000, float 0xC05E9999A0000000], [4 x float] [float 0x4029EB8520000000, float 0x40425C2900000000, float 0x403428F5C0000000, float 0x40387AE140000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @escp2_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"escp2_print_page(buf1)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"escp2_print_page(buf2)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\1B@\1B(G\01\00\01\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\1B(U\01\00\0A\1B+\18\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\1B(U\01\00\14\1B+0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B(v\02\00\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\1B.\01\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @escp2_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %band_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %skip = alloca i32, align 4
  %lnum = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %left = alloca i32, align 4
  %width = alloca i32, align 4
  %auto_feed = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in_data = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %band_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 24, i32* %band_size, align 4, !tbaa !5
  %4 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %line_size, align 4, !tbaa !5
  %6 = load i32, i32* %band_size, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %in_size, align 4, !tbaa !5
  %7 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %11 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %15 = load i32, i32* %in_size, align 4, !tbaa !5
  %call3 = call i8* %11(%struct.gs_memory_s* %14, i32 %15, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call3, i8** %buf1, align 8, !tbaa !1
  %16 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %20 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !26
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !23
  %24 = load i32, i32* %in_size, align 4, !tbaa !5
  %call10 = call i8* %20(%struct.gs_memory_s* %23, i32 %24, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call10, i8** %buf2, align 8, !tbaa !1
  %25 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %26, i8** %in, align 8, !tbaa !1
  %27 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load i8*, i8** %buf2, align 8, !tbaa !1
  store i8* %28, i8** %out, align 8, !tbaa !1
  %29 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = bitcast i32* %auto_feed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 1, i32* %auto_feed, align 4, !tbaa !5
  %36 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %39 = load float, float* %arrayidx, align 4, !tbaa !27
  %cmp = fcmp oeq float %39, 1.800000e+02
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i64 1
  %41 = load float, float* %arrayidx12, align 4, !tbaa !27
  %cmp13 = fcmp oeq float %41, 1.800000e+02
  br i1 %cmp13, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 22
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution14, i32 0, i64 0
  %43 = load float, float* %arrayidx15, align 4, !tbaa !27
  %cmp16 = fcmp oeq float %43, 3.600000e+02
  br i1 %cmp16, label %land.lhs.true.17, label %if.then

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 1
  %45 = load float, float* %arrayidx19, align 4, !tbaa !27
  %cmp20 = fcmp oeq float %45, 3.600000e+02
  br i1 %cmp20, label %if.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.17
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution22, i32 0, i64 1
  %47 = load float, float* %arrayidx23, align 4, !tbaa !27
  %cmp24 = fcmp oeq float %47, 1.800000e+02
  br i1 %cmp24, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.end:                                           ; preds = %lor.lhs.false.21, %land.lhs.true.17, %land.lhs.true
  %48 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %48, null
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end
  %49 = load i8*, i8** %buf2, align 8, !tbaa !1
  %cmp27 = icmp eq i8* %49, null
  br i1 %cmp27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %lor.lhs.false.26, %if.end
  %50 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool = icmp ne i8* %50, null
  br i1 %tobool, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.then.28
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !7
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !23
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !7
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !23
  %58 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %57, i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.then.28
  %59 = load i8*, i8** %buf2, align 8, !tbaa !1
  %tobool36 = icmp ne i8* %59, null
  br i1 %tobool36, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %if.end.35
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !7
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !23
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object41, align 8, !tbaa !29
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !7
  %non_gc_memory43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory43, align 8, !tbaa !23
  %67 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %63(%struct.gs_memory_s* %66, i8* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %if.end.35
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.end.45:                                        ; preds = %lor.lhs.false.26
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %68) #5
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution47 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 22
  %arrayidx48 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution47, i32 0, i64 1
  %70 = load float, float* %arrayidx48, align 4, !tbaa !27
  %cmp49 = fcmp oeq float %70, 3.600000e+02
  br i1 %cmp49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.45
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call51 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %71) #5
  br label %if.end.53

if.else:                                          ; preds = %if.end.45
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call52 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 1, i64 9, %struct._IO_FILE* %72) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.50
  %73 = load i32, i32* %auto_feed, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %73, 0
  br i1 %tobool54, label %if.then.55, label %if.else.72

if.then.55:                                       ; preds = %if.end.53
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %74, i32 0, i32 25
  %arrayidx56 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %75 = load float, float* %arrayidx56, align 4, !tbaa !27
  %conv = fpext float %75 to double
  %div = fdiv double %conv, 7.200000e+01
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %76, i32 0, i32 22
  %arrayidx58 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution57, i32 0, i64 1
  %77 = load float, float* %arrayidx58, align 4, !tbaa !27
  %conv59 = fpext float %77 to double
  %mul60 = fmul double %div, %conv59
  %conv61 = fptosi double %mul60 to i32
  store i32 %conv61, i32* %top, align 4, !tbaa !5
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height, align 4, !tbaa !30
  %conv62 = sitofp i32 %79 to double
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %80, i32 0, i32 25
  %arrayidx64 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins63, i32 0, i64 1
  %81 = load float, float* %arrayidx64, align 4, !tbaa !27
  %conv65 = fpext float %81 to double
  %div66 = fdiv double %conv65, 7.200000e+01
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %82, i32 0, i32 22
  %arrayidx68 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution67, i32 0, i64 1
  %83 = load float, float* %arrayidx68, align 4, !tbaa !27
  %conv69 = fpext float %83 to double
  %mul70 = fmul double %div66, %conv69
  %sub = fsub double %conv62, %mul70
  %conv71 = fptosi double %sub to i32
  store i32 %conv71, i32* %bottom, align 4, !tbaa !5
  br label %if.end.74

if.else.72:                                       ; preds = %if.end.53
  store i32 0, i32* %top, align 4, !tbaa !5
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 14
  %85 = load i32, i32* %height73, align 4, !tbaa !30
  store i32 %85, i32* %bottom, align 4, !tbaa !5
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.55
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins75 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %86, i32 0, i32 25
  %arrayidx76 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins75, i32 0, i64 0
  %87 = load float, float* %arrayidx76, align 4, !tbaa !27
  %conv77 = fpext float %87 to double
  %div78 = fdiv double %conv77, 7.200000e+01
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 22
  %arrayidx80 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution79, i32 0, i64 0
  %89 = load float, float* %arrayidx80, align 4, !tbaa !27
  %conv81 = fpext float %89 to double
  %mul82 = fmul double %div78, %conv81
  %conv83 = fptosi double %mul82 to i32
  %shr = ashr i32 %conv83, 3
  store i32 %shr, i32* %left, align 4, !tbaa !5
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width84 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %90, i32 0, i32 13
  %91 = load i32, i32* %width84, align 4, !tbaa !31
  %92 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins85 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %92, i32 0, i32 25
  %arrayidx86 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins85, i32 0, i64 2
  %93 = load float, float* %arrayidx86, align 4, !tbaa !27
  %conv87 = fpext float %93 to double
  %div88 = fdiv double %conv87, 7.200000e+01
  %94 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution89 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 22
  %arrayidx90 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution89, i32 0, i64 0
  %95 = load float, float* %arrayidx90, align 4, !tbaa !27
  %conv91 = fpext float %95 to double
  %mul92 = fmul double %div88, %conv91
  %conv93 = fptosi double %mul92 to i32
  %sub94 = sub nsw i32 %91, %conv93
  %shr95 = ashr i32 %sub94, 3
  %96 = load i32, i32* %left, align 4, !tbaa !5
  %sub96 = sub nsw i32 %shr95, %96
  store i32 %sub96, i32* %width, align 4, !tbaa !5
  %97 = load i32, i32* %top, align 4, !tbaa !5
  store i32 %97, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.74
  %98 = load i32, i32* %lnum, align 4, !tbaa !5
  %99 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %98, %99
  br i1 %cmp97, label %for.body, label %for.end.327

for.body:                                         ; preds = %for.cond
  %100 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %104 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  %105 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #2
  %106 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %108 = load i32, i32* %lnum, align 4, !tbaa !5
  %109 = load i8*, i8** %in, align 8, !tbaa !1
  %call99 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %107, i32 %108, i8* %109, i8** %in_data) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %110 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx100, align 1, !tbaa !32
  %conv101 = zext i8 %111 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  br i1 %cmp102, label %land.lhs.true.104, label %land.end

land.lhs.true.104:                                ; preds = %while.cond
  %112 = load i8*, i8** %in_data, align 8, !tbaa !1
  %113 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub105 = sub nsw i32 %114, 1
  %conv106 = sext i32 %sub105 to i64
  %call107 = call i32 @memcmp(i8* %112, i8* %add.ptr, i64 %conv106) #6
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.104
  %115 = load i32, i32* %lnum, align 4, !tbaa !5
  %116 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %115, %116
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.104, %while.cond
  %117 = phi i1 [ false, %land.lhs.true.104 ], [ false, %while.cond ], [ %cmp109, %land.rhs ]
  br i1 %117, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %118 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %119 = load i32, i32* %skip, align 4, !tbaa !5
  %inc111 = add nsw i32 %119, 1
  store i32 %inc111, i32* %skip, align 4, !tbaa !5
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %121 = load i32, i32* %lnum, align 4, !tbaa !5
  %122 = load i8*, i8** %in, align 8, !tbaa !1
  %call112 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %120, i32 %121, i8* %122, i8** %in_data) #5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %123 = load i32, i32* %lnum, align 4, !tbaa !5
  %124 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %123, %124
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %while.end
  %125 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool117 = icmp ne i32 %125, 0
  br i1 %tobool117, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %if.end.116
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call119 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %126) #5
  %127 = load i32, i32* %skip, align 4, !tbaa !5
  %and = and i32 %127, 255
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call120 = call i32 @fputc(i32 %and, %struct._IO_FILE* %128) #5
  %129 = load i32, i32* %skip, align 4, !tbaa !5
  %shr121 = ashr i32 %129, 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call122 = call i32 @fputc(i32 %shr121, %struct._IO_FILE* %130) #5
  store i32 0, i32* %skip, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.118, %if.end.116
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %132 = load i32, i32* %lnum, align 4, !tbaa !5
  %133 = load i8*, i8** %in, align 8, !tbaa !1
  %134 = load i32, i32* %in_size, align 4, !tbaa !5
  %call124 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %131, i32 %132, i8* %133, i32 %134) #5
  store i32 %call124, i32* %lcnt, align 4, !tbaa !5
  %135 = load i32, i32* %lcnt, align 4, !tbaa !5
  %136 = load i32, i32* %band_size, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %135, %136
  br i1 %cmp125, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.end.123
  %137 = load i8*, i8** %in, align 8, !tbaa !1
  %138 = load i32, i32* %lcnt, align 4, !tbaa !5
  %139 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul128 = mul nsw i32 %138, %139
  %idx.ext = sext i32 %mul128 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %137, i64 %idx.ext
  %140 = load i32, i32* %in_size, align 4, !tbaa !5
  %141 = load i32, i32* %lcnt, align 4, !tbaa !5
  %142 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul130 = mul nsw i32 %141, %142
  %sub131 = sub nsw i32 %140, %mul130
  %conv132 = sext i32 %sub131 to i64
  %call133 = call i8* @memset(i8* %add.ptr129, i32 0, i64 %conv132) #7
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.127, %if.end.123
  %143 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %143, i8** %outp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.288, %if.end.134
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %145 = load i32, i32* %band_size, align 4, !tbaa !5
  %cmp136 = icmp slt i32 %144, %145
  br i1 %cmp136, label %for.body.138, label %for.end.290

for.body.138:                                     ; preds = %for.cond.135
  %146 = load i8*, i8** %in, align 8, !tbaa !1
  %147 = load i32, i32* %i, align 4, !tbaa !5
  %148 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul139 = mul nsw i32 %147, %148
  %idx.ext140 = sext i32 %mul139 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %146, i64 %idx.ext140
  %149 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext142 = sext i32 %149 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr141, i64 %idx.ext142
  store i8* %add.ptr143, i8** %inp, align 8, !tbaa !1
  %150 = load i8*, i8** %inp, align 8, !tbaa !1
  %151 = load i32, i32* %width, align 4, !tbaa !5
  %idx.ext144 = sext i32 %151 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %150, i64 %idx.ext144
  store i8* %add.ptr145, i8** %in_end, align 8, !tbaa !1
  %152 = load i8*, i8** %inp, align 8, !tbaa !1
  store i8* %152, i8** %p, align 8, !tbaa !1
  %153 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr146 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %add.ptr146, i8** %q, align 8, !tbaa !1
  br label %for.cond.147

for.cond.147:                                     ; preds = %if.end.261, %for.body.138
  %154 = load i8*, i8** %q, align 8, !tbaa !1
  %155 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp148 = icmp ult i8* %154, %155
  br i1 %cmp148, label %for.body.150, label %for.end.262

for.body.150:                                     ; preds = %for.cond.147
  %156 = load i8*, i8** %p, align 8, !tbaa !1
  %157 = load i8, i8* %156, align 1, !tbaa !32
  %conv151 = zext i8 %157 to i32
  %158 = load i8*, i8** %q, align 8, !tbaa !1
  %159 = load i8, i8* %158, align 1, !tbaa !32
  %conv152 = zext i8 %159 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br i1 %cmp153, label %if.then.155, label %if.else.158

if.then.155:                                      ; preds = %for.body.150
  %160 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i8, i8* %160, i64 2
  store i8* %add.ptr156, i8** %p, align 8, !tbaa !1
  %161 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds i8, i8* %161, i64 2
  store i8* %add.ptr157, i8** %q, align 8, !tbaa !1
  br label %if.end.261

if.else.158:                                      ; preds = %for.body.150
  %162 = load i8*, i8** %p, align 8, !tbaa !1
  %163 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp159 = icmp ugt i8* %162, %163
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.168

land.lhs.true.161:                                ; preds = %if.else.158
  %164 = load i8*, i8** %p, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !32
  %conv162 = zext i8 %165 to i32
  %166 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %166, i64 -1
  %167 = load i8, i8* %add.ptr163, align 1, !tbaa !32
  %conv164 = zext i8 %167 to i32
  %cmp165 = icmp eq i32 %conv162, %conv164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %land.lhs.true.161
  %168 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %land.lhs.true.161, %if.else.158
  %169 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr169, i8** %q, align 8, !tbaa !1
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc, %if.end.168
  %170 = load i8*, i8** %q, align 8, !tbaa !1
  %171 = load i8, i8* %170, align 1, !tbaa !32
  %conv171 = zext i8 %171 to i32
  %172 = load i8*, i8** %p, align 8, !tbaa !1
  %173 = load i8, i8* %172, align 1, !tbaa !32
  %conv172 = zext i8 %173 to i32
  %cmp173 = icmp eq i32 %conv171, %conv172
  br i1 %cmp173, label %land.rhs.175, label %land.end.178

land.rhs.175:                                     ; preds = %for.cond.170
  %174 = load i8*, i8** %q, align 8, !tbaa !1
  %175 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp176 = icmp ult i8* %174, %175
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.175, %for.cond.170
  %176 = phi i1 [ false, %for.cond.170 ], [ %cmp176, %land.rhs.175 ]
  br i1 %176, label %for.body.179, label %for.end

for.body.179:                                     ; preds = %land.end.178
  %177 = load i8*, i8** %q, align 8, !tbaa !1
  %178 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %177 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %178 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp180 = icmp sge i64 %sub.ptr.sub, 128
  br i1 %cmp180, label %if.then.182, label %if.end.211

if.then.182:                                      ; preds = %for.body.179
  %179 = load i8*, i8** %p, align 8, !tbaa !1
  %180 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp183 = icmp ugt i8* %179, %180
  br i1 %cmp183, label %if.then.185, label %if.end.207

if.then.185:                                      ; preds = %if.then.182
  %181 = load i8*, i8** %p, align 8, !tbaa !1
  %182 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast186 = ptrtoint i8* %181 to i64
  %sub.ptr.rhs.cast187 = ptrtoint i8* %182 to i64
  %sub.ptr.sub188 = sub i64 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187
  %conv189 = trunc i64 %sub.ptr.sub188 to i32
  store i32 %conv189, i32* %count, align 4, !tbaa !5
  br label %while.cond.190

while.cond.190:                                   ; preds = %while.body.193, %if.then.185
  %183 = load i32, i32* %count, align 4, !tbaa !5
  %cmp191 = icmp sgt i32 %183, 128
  br i1 %cmp191, label %while.body.193, label %while.end.199

while.body.193:                                   ; preds = %while.cond.190
  %184 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr194 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr194, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %184, align 1, !tbaa !32
  %185 = load i8*, i8** %outp, align 8, !tbaa !1
  %186 = load i8*, i8** %inp, align 8, !tbaa !1
  %call195 = call i8* @memcpy(i8* %185, i8* %186, i64 128) #7
  %187 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr196 = getelementptr inbounds i8, i8* %187, i64 128
  store i8* %add.ptr196, i8** %inp, align 8, !tbaa !1
  %188 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr197 = getelementptr inbounds i8, i8* %188, i64 128
  store i8* %add.ptr197, i8** %outp, align 8, !tbaa !1
  %189 = load i32, i32* %count, align 4, !tbaa !5
  %sub198 = sub nsw i32 %189, 128
  store i32 %sub198, i32* %count, align 4, !tbaa !5
  br label %while.cond.190

while.end.199:                                    ; preds = %while.cond.190
  %190 = load i32, i32* %count, align 4, !tbaa !5
  %sub200 = sub nsw i32 %190, 1
  %conv201 = trunc i32 %sub200 to i8
  %191 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr202 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr202, i8** %outp, align 8, !tbaa !1
  store i8 %conv201, i8* %191, align 1, !tbaa !32
  %192 = load i8*, i8** %outp, align 8, !tbaa !1
  %193 = load i8*, i8** %inp, align 8, !tbaa !1
  %194 = load i32, i32* %count, align 4, !tbaa !5
  %conv203 = sext i32 %194 to i64
  %call204 = call i8* @memcpy(i8* %192, i8* %193, i64 %conv203) #7
  %195 = load i32, i32* %count, align 4, !tbaa !5
  %196 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext205 = sext i32 %195 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %196, i64 %idx.ext205
  store i8* %add.ptr206, i8** %outp, align 8, !tbaa !1
  br label %if.end.207

if.end.207:                                       ; preds = %while.end.199, %if.then.182
  %197 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr208 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr208, i8** %outp, align 8, !tbaa !1
  store i8 -127, i8* %197, align 1, !tbaa !32
  %198 = load i8*, i8** %p, align 8, !tbaa !1
  %199 = load i8, i8* %198, align 1, !tbaa !32
  %200 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr209 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %incdec.ptr209, i8** %outp, align 8, !tbaa !1
  store i8 %199, i8* %200, align 1, !tbaa !32
  %201 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i8, i8* %201, i64 128
  store i8* %add.ptr210, i8** %p, align 8, !tbaa !1
  %202 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %202, i8** %inp, align 8, !tbaa !1
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.207, %for.body.179
  br label %for.inc

for.inc:                                          ; preds = %if.end.211
  %203 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr212 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr212, i8** %q, align 8, !tbaa !1
  br label %for.cond.170

for.end:                                          ; preds = %land.end.178
  %204 = load i8*, i8** %q, align 8, !tbaa !1
  %205 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast213 = ptrtoint i8* %204 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i8* %205 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %cmp216 = icmp sgt i64 %sub.ptr.sub215, 2
  br i1 %cmp216, label %if.then.218, label %if.else.254

if.then.218:                                      ; preds = %for.end
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %207 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp219 = icmp ugt i8* %206, %207
  br i1 %cmp219, label %if.then.221, label %if.end.243

if.then.221:                                      ; preds = %if.then.218
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %209 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast222 = ptrtoint i8* %208 to i64
  %sub.ptr.rhs.cast223 = ptrtoint i8* %209 to i64
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %conv225 = trunc i64 %sub.ptr.sub224 to i32
  store i32 %conv225, i32* %count, align 4, !tbaa !5
  br label %while.cond.226

while.cond.226:                                   ; preds = %while.body.229, %if.then.221
  %210 = load i32, i32* %count, align 4, !tbaa !5
  %cmp227 = icmp sgt i32 %210, 128
  br i1 %cmp227, label %while.body.229, label %while.end.235

while.body.229:                                   ; preds = %while.cond.226
  %211 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr230 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr230, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %211, align 1, !tbaa !32
  %212 = load i8*, i8** %outp, align 8, !tbaa !1
  %213 = load i8*, i8** %inp, align 8, !tbaa !1
  %call231 = call i8* @memcpy(i8* %212, i8* %213, i64 128) #7
  %214 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr232 = getelementptr inbounds i8, i8* %214, i64 128
  store i8* %add.ptr232, i8** %inp, align 8, !tbaa !1
  %215 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i8, i8* %215, i64 128
  store i8* %add.ptr233, i8** %outp, align 8, !tbaa !1
  %216 = load i32, i32* %count, align 4, !tbaa !5
  %sub234 = sub nsw i32 %216, 128
  store i32 %sub234, i32* %count, align 4, !tbaa !5
  br label %while.cond.226

while.end.235:                                    ; preds = %while.cond.226
  %217 = load i32, i32* %count, align 4, !tbaa !5
  %sub236 = sub nsw i32 %217, 1
  %conv237 = trunc i32 %sub236 to i8
  %218 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr238 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr238, i8** %outp, align 8, !tbaa !1
  store i8 %conv237, i8* %218, align 1, !tbaa !32
  %219 = load i8*, i8** %outp, align 8, !tbaa !1
  %220 = load i8*, i8** %inp, align 8, !tbaa !1
  %221 = load i32, i32* %count, align 4, !tbaa !5
  %conv239 = sext i32 %221 to i64
  %call240 = call i8* @memcpy(i8* %219, i8* %220, i64 %conv239) #7
  %222 = load i32, i32* %count, align 4, !tbaa !5
  %223 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext241 = sext i32 %222 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %223, i64 %idx.ext241
  store i8* %add.ptr242, i8** %outp, align 8, !tbaa !1
  br label %if.end.243

if.end.243:                                       ; preds = %while.end.235, %if.then.218
  %224 = load i8*, i8** %q, align 8, !tbaa !1
  %225 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast244 = ptrtoint i8* %224 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %225 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %conv247 = trunc i64 %sub.ptr.sub246 to i32
  store i32 %conv247, i32* %count, align 4, !tbaa !5
  %226 = load i32, i32* %count, align 4, !tbaa !5
  %sub248 = sub nsw i32 256, %226
  %add = add nsw i32 %sub248, 1
  %conv249 = trunc i32 %add to i8
  %227 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr250 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr250, i8** %outp, align 8, !tbaa !1
  store i8 %conv249, i8* %227, align 1, !tbaa !32
  %228 = load i8*, i8** %p, align 8, !tbaa !1
  %229 = load i8, i8* %228, align 1, !tbaa !32
  %230 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr251 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr251, i8** %outp, align 8, !tbaa !1
  store i8 %229, i8* %230, align 1, !tbaa !32
  %231 = load i32, i32* %count, align 4, !tbaa !5
  %232 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext252 = sext i32 %231 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %232, i64 %idx.ext252
  store i8* %add.ptr253, i8** %p, align 8, !tbaa !1
  %233 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %233, i8** %inp, align 8, !tbaa !1
  br label %if.end.255

if.else.254:                                      ; preds = %for.end
  %234 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %234, i8** %p, align 8, !tbaa !1
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.254, %if.end.243
  %235 = load i8*, i8** %q, align 8, !tbaa !1
  %236 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp256 = icmp ult i8* %235, %236
  br i1 %cmp256, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %if.end.255
  %237 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr259 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr259, i8** %q, align 8, !tbaa !1
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.258, %if.end.255
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.155
  br label %for.cond.147

for.end.262:                                      ; preds = %for.cond.147
  %238 = load i8*, i8** %inp, align 8, !tbaa !1
  %239 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp263 = icmp ult i8* %238, %239
  br i1 %cmp263, label %if.then.265, label %if.end.287

if.then.265:                                      ; preds = %for.end.262
  %240 = load i8*, i8** %in_end, align 8, !tbaa !1
  %241 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast266 = ptrtoint i8* %240 to i64
  %sub.ptr.rhs.cast267 = ptrtoint i8* %241 to i64
  %sub.ptr.sub268 = sub i64 %sub.ptr.lhs.cast266, %sub.ptr.rhs.cast267
  %conv269 = trunc i64 %sub.ptr.sub268 to i32
  store i32 %conv269, i32* %count, align 4, !tbaa !5
  br label %while.cond.270

while.cond.270:                                   ; preds = %while.body.273, %if.then.265
  %242 = load i32, i32* %count, align 4, !tbaa !5
  %cmp271 = icmp sgt i32 %242, 128
  br i1 %cmp271, label %while.body.273, label %while.end.279

while.body.273:                                   ; preds = %while.cond.270
  %243 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr274 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %incdec.ptr274, i8** %outp, align 8, !tbaa !1
  store i8 127, i8* %243, align 1, !tbaa !32
  %244 = load i8*, i8** %outp, align 8, !tbaa !1
  %245 = load i8*, i8** %inp, align 8, !tbaa !1
  %call275 = call i8* @memcpy(i8* %244, i8* %245, i64 128) #7
  %246 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr276 = getelementptr inbounds i8, i8* %246, i64 128
  store i8* %add.ptr276, i8** %inp, align 8, !tbaa !1
  %247 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr277 = getelementptr inbounds i8, i8* %247, i64 128
  store i8* %add.ptr277, i8** %outp, align 8, !tbaa !1
  %248 = load i32, i32* %count, align 4, !tbaa !5
  %sub278 = sub nsw i32 %248, 128
  store i32 %sub278, i32* %count, align 4, !tbaa !5
  br label %while.cond.270

while.end.279:                                    ; preds = %while.cond.270
  %249 = load i32, i32* %count, align 4, !tbaa !5
  %sub280 = sub nsw i32 %249, 1
  %conv281 = trunc i32 %sub280 to i8
  %250 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr282 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr282, i8** %outp, align 8, !tbaa !1
  store i8 %conv281, i8* %250, align 1, !tbaa !32
  %251 = load i8*, i8** %outp, align 8, !tbaa !1
  %252 = load i8*, i8** %inp, align 8, !tbaa !1
  %253 = load i32, i32* %count, align 4, !tbaa !5
  %conv283 = sext i32 %253 to i64
  %call284 = call i8* @memcpy(i8* %251, i8* %252, i64 %conv283) #7
  %254 = load i32, i32* %count, align 4, !tbaa !5
  %255 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext285 = sext i32 %254 to i64
  %add.ptr286 = getelementptr inbounds i8, i8* %255, i64 %idx.ext285
  store i8* %add.ptr286, i8** %outp, align 8, !tbaa !1
  br label %if.end.287

if.end.287:                                       ; preds = %while.end.279, %for.end.262
  br label %for.inc.288

for.inc.288:                                      ; preds = %if.end.287
  %256 = load i32, i32* %i, align 4, !tbaa !5
  %inc289 = add nsw i32 %256, 1
  store i32 %inc289, i32* %i, align 4, !tbaa !5
  br label %for.cond.135

for.end.290:                                      ; preds = %for.cond.135
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call291 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %257) #5
  %258 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution292 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %258, i32 0, i32 22
  %arrayidx293 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution292, i32 0, i64 1
  %259 = load float, float* %arrayidx293, align 4, !tbaa !27
  %cmp294 = fcmp oeq float %259, 3.600000e+02
  br i1 %cmp294, label %if.then.296, label %if.else.298

if.then.296:                                      ; preds = %for.end.290
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call297 = call i32 @fputc(i32 10, %struct._IO_FILE* %260) #5
  br label %if.end.300

if.else.298:                                      ; preds = %for.end.290
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call299 = call i32 @fputc(i32 20, %struct._IO_FILE* %261) #5
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.298, %if.then.296
  %262 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution301 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %262, i32 0, i32 22
  %arrayidx302 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution301, i32 0, i64 0
  %263 = load float, float* %arrayidx302, align 4, !tbaa !27
  %cmp303 = fcmp oeq float %263, 3.600000e+02
  br i1 %cmp303, label %if.then.305, label %if.else.307

if.then.305:                                      ; preds = %if.end.300
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call306 = call i32 @fputc(i32 10, %struct._IO_FILE* %264) #5
  br label %if.end.309

if.else.307:                                      ; preds = %if.end.300
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call308 = call i32 @fputc(i32 20, %struct._IO_FILE* %265) #5
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.307, %if.then.305
  %266 = load i32, i32* %band_size, align 4, !tbaa !5
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call310 = call i32 @fputc(i32 %266, %struct._IO_FILE* %267) #5
  %268 = load i32, i32* %width, align 4, !tbaa !5
  %shl = shl i32 %268, 3
  %and311 = and i32 %shl, 255
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call312 = call i32 @fputc(i32 %and311, %struct._IO_FILE* %269) #5
  %270 = load i32, i32* %width, align 4, !tbaa !5
  %shr313 = ashr i32 %270, 5
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call314 = call i32 @fputc(i32 %shr313, %struct._IO_FILE* %271) #5
  %272 = load i8*, i8** %out, align 8, !tbaa !1
  %273 = load i8*, i8** %outp, align 8, !tbaa !1
  %274 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast315 = ptrtoint i8* %273 to i64
  %sub.ptr.rhs.cast316 = ptrtoint i8* %274 to i64
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call318 = call i64 @fwrite(i8* %272, i64 1, i64 %sub.ptr.sub317, %struct._IO_FILE* %275) #5
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call319 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %276) #5
  %277 = load i32, i32* %band_size, align 4, !tbaa !5
  %278 = load i32, i32* %lnum, align 4, !tbaa !5
  %add320 = add nsw i32 %278, %277
  store i32 %add320, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.309, %if.then.115
  %279 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #2
  %281 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #2
  %282 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #2
  %283 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #2
  %284 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #2
  %285 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.327
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end.327:                                      ; preds = %cleanup, %for.cond
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call328 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %286) #5
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call329 = call i32 @fflush(%struct._IO_FILE* %287) #5
  %288 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory330 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %288, i32 0, i32 3
  %289 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory330, align 8, !tbaa !7
  %non_gc_memory331 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %289, i32 0, i32 3
  %290 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory331, align 8, !tbaa !23
  %procs332 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %290, i32 0, i32 1
  %free_object333 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs332, i32 0, i32 2
  %291 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object333, align 8, !tbaa !29
  %292 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory334 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory334, align 8, !tbaa !7
  %non_gc_memory335 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %293, i32 0, i32 3
  %294 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory335, align 8, !tbaa !23
  %295 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %291(%struct.gs_memory_s* %294, i8* %295, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  %296 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory336 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %296, i32 0, i32 3
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory336, align 8, !tbaa !7
  %non_gc_memory337 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %297, i32 0, i32 3
  %298 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory337, align 8, !tbaa !23
  %procs338 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %298, i32 0, i32 1
  %free_object339 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs338, i32 0, i32 2
  %299 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object339, align 8, !tbaa !29
  %300 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory340 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %300, i32 0, i32 3
  %301 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory340, align 8, !tbaa !7
  %non_gc_memory341 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %301, i32 0, i32 3
  %302 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory341, align 8, !tbaa !23
  %303 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %299(%struct.gs_memory_s* %302, i8* %303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

cleanup.342:                                      ; preds = %for.end.327, %if.end.44, %if.then
  %304 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %auto_feed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  %313 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #2
  %314 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #2
  %315 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #2
  %316 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #2
  %317 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %band_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #2
  %320 = load i32, i32* %retval
  ret i32 %320

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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

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
!23 = !{!24, !2, i64 200}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 88}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!24, !2, i64 24}
!30 = !{!8, !6, i64 836}
!31 = !{!8, !6, i64 832}
!32 = !{!3, !3, i64 0}
