; ModuleID = './gdevokii.bc'
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
@.str = private unnamed_addr constant [7 x i8] c"okiibm\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_okiibm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1020, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.200000e+02, float 7.200000e+01], [2 x float] [float 1.200000e+02, float 7.200000e+01], [2 x float] [float -3.000000e+01, float -0.000000e+00], [4 x float] [float 1.800000e+01, float 0.000000e+00, float 1.800000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @okiibm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@okiibm_init_string = internal constant [1 x i8] c"\18", align 1
@okiibm_end_string = internal constant [1 x i8] c"\0C", align 1
@okiibm_one_direct = internal constant [3 x i8] c"\1BU\01", align 1
@okiibm_two_direct = internal constant [3 x i8] c"\1BU\00", align 1
@okiibm_print_page1.graphics_modes_9 = internal constant [5 x i8] c"\FF\00\01\FF\03", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"okiibm_print_page(buf1)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"okiibm_print_page(buf2)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@okiibm_print_page1.index = internal constant [16 x i8] c"\00\02\04\06\08\0A\0C\0E\01\03\05\07\09\0B\0D\0F", align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"KLYZ\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @okiibm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %init_string = alloca [16 x i8], align 16
  %end_string = alloca [16 x i8], align 16
  %init_length = alloca i32, align 4
  %end_length = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [16 x i8]* %init_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast [16 x i8]* %end_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %init_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %end_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %init_length, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %init_string, i32 0, i32 0
  %4 = load i32, i32* %init_length, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @okiibm_init_string, i32 0, i32 0), i64 %conv) #5
  store i32 1, i32* %end_length, align 4, !tbaa !5
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %end_string, i32 0, i32 0
  %5 = load i32, i32* %end_length, align 4, !tbaa !5
  %conv2 = sext i32 %5 to i64
  %call3 = call i8* @memcpy(i8* %arraydecay1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @okiibm_end_string, i32 0, i32 0), i64 %conv2) #5
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %7 = load float, float* %arrayidx, align 4, !tbaa !7
  %cmp = fcmp ogt float %7, 7.200000e+01
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution5, i32 0, i64 0
  %9 = load float, float* %arrayidx6, align 4, !tbaa !7
  %cmp7 = fcmp ogt float %9, 6.000000e+01
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %init_string, i32 0, i32 0
  %10 = load i32, i32* %init_length, align 4, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay9, i64 %idx.ext
  %call10 = call i8* @memcpy(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @okiibm_one_direct, i32 0, i32 0), i64 3) #5
  %11 = load i32, i32* %init_length, align 4, !tbaa !5
  %conv11 = sext i32 %11 to i64
  %add = add i64 %conv11, 3
  %conv12 = trunc i64 %add to i32
  store i32 %conv12, i32* %init_length, align 4, !tbaa !5
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %end_string, i32 0, i32 0
  %12 = load i32, i32* %end_length, align 4, !tbaa !5
  %idx.ext14 = sext i32 %12 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay13, i64 %idx.ext14
  %call16 = call i8* @memcpy(i8* %add.ptr15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @okiibm_two_direct, i32 0, i32 0), i64 3) #5
  %13 = load i32, i32* %end_length, align 4, !tbaa !5
  %conv17 = sext i32 %13 to i64
  %add18 = add i64 %conv17, 3
  %conv19 = trunc i64 %add18 to i32
  store i32 %conv19, i32* %end_length, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 22
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution20, i32 0, i64 1
  %17 = load float, float* %arrayidx21, align 4, !tbaa !7
  %cmp22 = fcmp ogt float %17, 7.200000e+01
  %cond = select i1 %cmp22, i32 1, i32 0
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %init_string, i32 0, i32 0
  %18 = load i32, i32* %init_length, align 4, !tbaa !5
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %end_string, i32 0, i32 0
  %19 = load i32, i32* %end_length, align 4, !tbaa !5
  %call26 = call i32 @okiibm_print_page1(%struct.gx_device_printer_s* %14, %struct._IO_FILE* %15, i32 %cond, i8* %arraydecay24, i32 %18, i8* %arraydecay25, i32 %19) #6
  %20 = bitcast i32* %end_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %init_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast [16 x i8]* %end_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #2
  %23 = bitcast [16 x i8]* %init_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #2
  ret i32 %call26
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

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @okiibm_print_page1(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %y_9pin_high, i8* %init_string, i32 %init_length, i8* %end_string, i32 %end_length) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %y_9pin_high.addr = alloca i32, align 4
  %init_string.addr = alloca i8*, align 8
  %init_length.addr = alloca i32, align 4
  %end_string.addr = alloca i8*, align 8
  %end_length.addr = alloca i32, align 4
  %in_y_mult = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %out_y_mult = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %start_graphics = alloca i8, align 1
  %first_pass = alloca i32, align 4
  %last_pass = alloca i32, align 4
  %y_passes = alloca i32, align 4
  %skip = alloca i32, align 4
  %lnum = alloca i32, align 4
  %pass = alloca i32, align 4
  %ypass = alloca i32, align 4
  %y_step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in_data = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %n154 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %y_9pin_high, i32* %y_9pin_high.addr, align 4, !tbaa !5
  store i8* %init_string, i8** %init_string.addr, align 8, !tbaa !1
  store i32 %init_length, i32* %init_length.addr, align 4, !tbaa !5
  store i8* %end_string, i8** %end_string.addr, align 8, !tbaa !1
  store i32 %end_length, i32* %end_length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %in_y_mult to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 2, i32 1
  store i32 %cond, i32* %in_y_mult, align 4, !tbaa !5
  %2 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_printer_s*
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #6
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %7 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %line_size, align 4, !tbaa !5
  %9 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul = mul nsw i32 8, %9
  %mul1 = mul nsw i32 %8, %mul
  store i32 %mul1, i32* %in_size, align 4, !tbaa !5
  %10 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %14 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !9
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !25
  %18 = load i32, i32* %in_size, align 4, !tbaa !5
  %call4 = call i8* %14(%struct.gs_memory_s* %17, i32 %18, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call4, i8** %buf1, align 8, !tbaa !1
  %19 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !9
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !25
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array8, align 8, !tbaa !28
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !9
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !25
  %27 = load i32, i32* %in_size, align 4, !tbaa !5
  %call11 = call i8* %23(%struct.gs_memory_s* %26, i32 %27, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  store i8* %call11, i8** %buf2, align 8, !tbaa !1
  %28 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %29, i8** %in, align 8, !tbaa !1
  %30 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load i8*, i8** %buf2, align 8, !tbaa !1
  store i8* %31, i8** %out, align 8, !tbaa !1
  %32 = bitcast i32* %out_y_mult to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 1, i32* %out_y_mult, align 4, !tbaa !5
  %33 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %35 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %35 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %start_graphics) #2
  %36 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %div = sdiv i32 %36, 60
  %idxprom = sext i32 %div to i64
  %arrayidx12 = getelementptr inbounds [5 x i8], [5 x i8]* @okiibm_print_page1.graphics_modes_9, i32 0, i64 %idxprom
  %37 = load i8, i8* %arrayidx12, align 1, !tbaa !29
  store i8 %37, i8* %start_graphics, align 1, !tbaa !29
  %38 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i8, i8* %start_graphics, align 1, !tbaa !29
  %conv13 = sext i8 %39 to i32
  %cmp = icmp eq i32 %conv13, 3
  %cond15 = select i1 %cmp, i32 1, i32 0
  store i32 %cond15, i32* %first_pass, align 4, !tbaa !5
  %40 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load i32, i32* %first_pass, align 4, !tbaa !5
  %mul16 = mul nsw i32 %41, 2
  store i32 %mul16, i32* %last_pass, align 4, !tbaa !5
  %42 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %43, 0
  %cond18 = select i1 %tobool17, i32 2, i32 1
  store i32 %cond18, i32* %y_passes, align 4, !tbaa !5
  %44 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 0, i32* %skip, align 4, !tbaa !5
  %45 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %46 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = bitcast i32* %y_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %y_step, align 4, !tbaa !5
  %49 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %49, null
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %50 = load i8*, i8** %buf2, align 8, !tbaa !1
  %cmp21 = icmp eq i8* %50, null
  br i1 %cmp21, label %if.then, label %if.end.39

if.then:                                          ; preds = %lor.lhs.false, %entry
  %51 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool23 = icmp ne i8* %51, null
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !9
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !25
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !9
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !25
  %59 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %55(%struct.gs_memory_s* %58, i8* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then
  %60 = load i8*, i8** %buf2, align 8, !tbaa !1
  %tobool30 = icmp ne i8* %60, null
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.end
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !9
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !25
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !30
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !9
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !25
  %68 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %64(%struct.gs_memory_s* %67, i8* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

if.end.39:                                        ; preds = %lor.lhs.false
  %69 = load i8*, i8** %init_string.addr, align 8, !tbaa !1
  %70 = load i32, i32* %init_length.addr, align 4, !tbaa !5
  %conv40 = sext i32 %70 to i64
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i64 @fwrite(i8* %69, i64 1, i64 %conv40, %struct._IO_FILE* %71) #6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.39
  %72 = load i32, i32* %lnum, align 4, !tbaa !5
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 14
  %74 = load i32, i32* %height, align 4, !tbaa !31
  %cmp42 = icmp slt i32 %72, %74
  br i1 %cmp42, label %while.body, label %while.end.174

while.body:                                       ; preds = %while.cond
  %75 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #2
  %76 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #2
  %77 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #2
  %79 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = load i32, i32* %lnum, align 4, !tbaa !5
  %82 = load i8*, i8** %in, align 8, !tbaa !1
  %call44 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %80, i32 %81, i8* %82, i8** %in_data) #6
  %83 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx45, align 1, !tbaa !29
  %conv46 = zext i8 %84 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %while.body
  %85 = load i8*, i8** %in_data, align 8, !tbaa !1
  %86 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub = sub nsw i32 %87, 1
  %conv49 = sext i32 %sub to i64
  %call50 = call i32 @memcmp(i8* %85, i8* %add.ptr, i64 %conv49) #7
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.54, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true
  %88 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %89 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %div53 = sdiv i32 2, %89
  %90 = load i32, i32* %skip, align 4, !tbaa !5
  %add = add nsw i32 %90, %div53
  store i32 %add, i32* %skip, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %land.lhs.true, %while.body
  %91 = load i32, i32* %skip, align 4, !tbaa !5
  %and = and i32 %91, 1
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.54
  %92 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = load i32, i32* %y_step, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %93, 0
  %cond59 = select i1 %cmp57, i32 1, i32 0
  %add60 = add nsw i32 1, %cond59
  store i32 %add60, i32* %n, align 4, !tbaa !5
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %95 = load i32, i32* %n, align 4, !tbaa !5
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %95) #6
  %96 = load i32, i32* %y_step, align 4, !tbaa !5
  %97 = load i32, i32* %n, align 4, !tbaa !5
  %add62 = add nsw i32 %96, %97
  %rem = srem i32 %add62, 3
  store i32 %rem, i32* %y_step, align 4, !tbaa !5
  %98 = load i32, i32* %skip, align 4, !tbaa !5
  %sub63 = sub nsw i32 %98, 1
  store i32 %sub63, i32* %skip, align 4, !tbaa !5
  %99 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.56, %if.end.54
  %100 = load i32, i32* %skip, align 4, !tbaa !5
  %div65 = sdiv i32 %100, 2
  %mul66 = mul nsw i32 %div65, 3
  store i32 %mul66, i32* %skip, align 4, !tbaa !5
  br label %while.cond.67

while.cond.67:                                    ; preds = %while.body.70, %if.end.64
  %101 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %101, 255
  br i1 %cmp68, label %while.body.70, label %while.end

while.body.70:                                    ; preds = %while.cond.67
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %102) #6
  %103 = load i32, i32* %skip, align 4, !tbaa !5
  %sub72 = sub nsw i32 %103, 255
  store i32 %sub72, i32* %skip, align 4, !tbaa !5
  br label %while.cond.67

while.end:                                        ; preds = %while.cond.67
  %104 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool73 = icmp ne i32 %104, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %while.end
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %106 = load i32, i32* %skip, align 4, !tbaa !5
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %106) #6
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %while.end
  %107 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %108 = load i32, i32* %lnum, align 4, !tbaa !5
  %109 = load i8*, i8** %in, align 8, !tbaa !1
  %110 = load i32, i32* %in_size, align 4, !tbaa !5
  %call77 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %107, i32 %108, i8* %109, i32 %110) #6
  store i32 %call77, i32* %lcnt, align 4, !tbaa !5
  %111 = load i32, i32* %lcnt, align 4, !tbaa !5
  %112 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul78 = mul nsw i32 8, %112
  %cmp79 = icmp slt i32 %111, %mul78
  br i1 %cmp79, label %if.then.81, label %if.end.88

if.then.81:                                       ; preds = %if.end.76
  %113 = load i8*, i8** %in, align 8, !tbaa !1
  %114 = load i32, i32* %lcnt, align 4, !tbaa !5
  %115 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul82 = mul nsw i32 %114, %115
  %idx.ext = sext i32 %mul82 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %113, i64 %idx.ext
  %116 = load i32, i32* %in_size, align 4, !tbaa !5
  %117 = load i32, i32* %lcnt, align 4, !tbaa !5
  %118 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul84 = mul nsw i32 %117, %118
  %sub85 = sub nsw i32 %116, %mul84
  %conv86 = sext i32 %sub85 to i64
  %call87 = call i8* @memset(i8* %add.ptr83, i32 0, i64 %conv86) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.81, %if.end.76
  %119 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %119, 0
  br i1 %tobool89, label %if.then.90, label %if.end.105

if.then.90:                                       ; preds = %if.end.88
  %120 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #2
  %121 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.90
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %122, 16
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load i8*, i8** %out, align 8, !tbaa !1
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %125 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul93 = mul nsw i32 %124, %125
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %123, i64 %idx.ext94
  %126 = load i8*, i8** %in, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %127 to i64
  %arrayidx97 = getelementptr inbounds [16 x i8], [16 x i8]* @okiibm_print_page1.index, i32 0, i64 %idxprom96
  %128 = load i8, i8* %arrayidx97, align 1, !tbaa !29
  %conv98 = sext i8 %128 to i32
  %129 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul99 = mul nsw i32 %conv98, %129
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %126, i64 %idx.ext100
  %130 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv102 = sext i32 %130 to i64
  %call103 = call i8* @memcpy(i8* %add.ptr95, i8* %add.ptr101, i64 %conv102) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %inc104 = add nsw i32 %131, 1
  store i32 %inc104, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %132 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %132, i8** %p, align 8, !tbaa !1
  %133 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %133, i8** %in, align 8, !tbaa !1
  %134 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %134, i8** %out, align 8, !tbaa !1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  br label %if.end.105

if.end.105:                                       ; preds = %for.end, %if.end.88
  store i32 0, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.163, %if.end.105
  %137 = load i32, i32* %ypass, align 4, !tbaa !5
  %138 = load i32, i32* %y_passes, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %137, %138
  br i1 %cmp107, label %for.body.109, label %for.end.165

for.body.109:                                     ; preds = %for.cond.106
  %139 = load i32, i32* %first_pass, align 4, !tbaa !5
  store i32 %139, i32* %pass, align 4, !tbaa !5
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.147, %for.body.109
  %140 = load i32, i32* %pass, align 4, !tbaa !5
  %141 = load i32, i32* %last_pass, align 4, !tbaa !5
  %cmp111 = icmp sle i32 %140, %141
  br i1 %cmp111, label %for.body.113, label %for.end.149

for.body.113:                                     ; preds = %for.cond.110
  %142 = load i32, i32* %pass, align 4, !tbaa !5
  %143 = load i32, i32* %first_pass, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %142, %143
  br i1 %cmp114, label %if.then.116, label %if.end.140

if.then.116:                                      ; preds = %for.body.113
  %144 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %144, i8** %out_end, align 8, !tbaa !1
  %145 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %145, i8** %inp, align 8, !tbaa !1
  %146 = load i8*, i8** %inp, align 8, !tbaa !1
  %147 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext117 = sext i32 %147 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %146, i64 %idx.ext117
  store i8* %add.ptr118, i8** %in_end, align 8, !tbaa !1
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.127, %if.then.116
  %148 = load i8*, i8** %inp, align 8, !tbaa !1
  %149 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp120 = icmp ult i8* %148, %149
  br i1 %cmp120, label %for.body.122, label %for.end.129

for.body.122:                                     ; preds = %for.cond.119
  %150 = load i8*, i8** %inp, align 8, !tbaa !1
  %151 = load i32, i32* %ypass, align 4, !tbaa !5
  %mul123 = mul nsw i32 %151, 8
  %152 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul124 = mul nsw i32 %mul123, %152
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %150, i64 %idx.ext125
  %153 = load i32, i32* %line_size, align 4, !tbaa !5
  %154 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %add.ptr126, i32 %153, i8* %154, i32 1) #6
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.122
  %155 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %156 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr128 = getelementptr inbounds i8, i8* %156, i64 8
  store i8* %add.ptr128, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.119

for.end.129:                                      ; preds = %for.cond.119
  br label %while.cond.130

while.cond.130:                                   ; preds = %while.body.137, %for.end.129
  %157 = load i8*, i8** %out_end, align 8, !tbaa !1
  %158 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp131 = icmp ugt i8* %157, %158
  br i1 %cmp131, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.130
  %159 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %159, i64 -1
  %160 = load i8, i8* %arrayidx133, align 1, !tbaa !29
  %conv134 = zext i8 %160 to i32
  %cmp135 = icmp eq i32 %conv134, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.130
  %161 = phi i1 [ false, %while.cond.130 ], [ %cmp135, %land.rhs ]
  br i1 %161, label %while.body.137, label %while.end.139

while.body.137:                                   ; preds = %land.end
  %162 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i8, i8* %162, i32 -1
  store i8* %incdec.ptr138, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.130

while.end.139:                                    ; preds = %land.end
  br label %if.end.140

if.end.140:                                       ; preds = %while.end.139, %for.body.113
  %163 = load i8*, i8** %out_end, align 8, !tbaa !1
  %164 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp141 = icmp ugt i8* %163, %164
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.140
  %165 = load i8*, i8** %out, align 8, !tbaa !1
  %166 = load i8*, i8** %out_end, align 8, !tbaa !1
  %167 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %167 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv144 = trunc i64 %sub.ptr.sub to i32
  %168 = load i32, i32* %out_y_mult, align 4, !tbaa !5
  %169 = load i8, i8* %start_graphics, align 1, !tbaa !29
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %171 = load i32, i32* %pass, align 4, !tbaa !5
  call void @okiibm_output_run(i8* %165, i32 %conv144, i32 %168, i8 signext %169, %struct._IO_FILE* %170, i32 %171) #6
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.140
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call146 = call i32 @fputc(i32 13, %struct._IO_FILE* %172) #6
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.145
  %173 = load i32, i32* %pass, align 4, !tbaa !5
  %inc148 = add nsw i32 %173, 1
  store i32 %inc148, i32* %pass, align 4, !tbaa !5
  br label %for.cond.110

for.end.149:                                      ; preds = %for.cond.110
  %174 = load i32, i32* %ypass, align 4, !tbaa !5
  %175 = load i32, i32* %y_passes, align 4, !tbaa !5
  %sub150 = sub nsw i32 %175, 1
  %cmp151 = icmp slt i32 %174, %sub150
  br i1 %cmp151, label %if.then.153, label %if.end.162

if.then.153:                                      ; preds = %for.end.149
  %176 = bitcast i32* %n154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #2
  %177 = load i32, i32* %y_step, align 4, !tbaa !5
  %cmp155 = icmp eq i32 %177, 0
  %cond157 = select i1 %cmp155, i32 1, i32 0
  %add158 = add nsw i32 1, %cond157
  store i32 %add158, i32* %n154, align 4, !tbaa !5
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %179 = load i32, i32* %n154, align 4, !tbaa !5
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %179) #6
  %180 = load i32, i32* %y_step, align 4, !tbaa !5
  %181 = load i32, i32* %n154, align 4, !tbaa !5
  %add160 = add nsw i32 %180, %181
  %rem161 = srem i32 %add160, 3
  store i32 %rem161, i32* %y_step, align 4, !tbaa !5
  %182 = bitcast i32* %n154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.153, %for.end.149
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %183 = load i32, i32* %ypass, align 4, !tbaa !5
  %inc164 = add nsw i32 %183, 1
  store i32 %inc164, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.106

for.end.165:                                      ; preds = %for.cond.106
  %184 = load i32, i32* %y_passes, align 4, !tbaa !5
  %sub166 = sub nsw i32 16, %184
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, i32* %skip, align 4, !tbaa !5
  %185 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul168 = mul nsw i32 8, %185
  %186 = load i32, i32* %lnum, align 4, !tbaa !5
  %add169 = add nsw i32 %186, %mul168
  store i32 %add169, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.165, %if.then.52
  %187 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.174:                                    ; preds = %while.cond
  %192 = load i8*, i8** %end_string.addr, align 8, !tbaa !1
  %193 = load i32, i32* %end_length.addr, align 4, !tbaa !5
  %conv175 = sext i32 %193 to i64
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call176 = call i64 @fwrite(i8* %192, i64 1, i64 %conv175, %struct._IO_FILE* %194) #6
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call177 = call i32 @fflush(%struct._IO_FILE* %195) #6
  %196 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !9
  %non_gc_memory179 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory179, align 8, !tbaa !25
  %procs180 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 1
  %free_object181 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs180, i32 0, i32 2
  %199 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object181, align 8, !tbaa !30
  %200 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory182 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %200, i32 0, i32 3
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory182, align 8, !tbaa !9
  %non_gc_memory183 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory183, align 8, !tbaa !25
  %203 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %199(%struct.gs_memory_s* %202, i8* %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  %204 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory184 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %204, i32 0, i32 3
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory184, align 8, !tbaa !9
  %non_gc_memory185 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 3
  %206 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory185, align 8, !tbaa !25
  %procs186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %206, i32 0, i32 1
  %free_object187 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs186, i32 0, i32 2
  %207 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object187, align 8, !tbaa !30
  %208 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory188 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %208, i32 0, i32 3
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory188, align 8, !tbaa !9
  %non_gc_memory189 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %209, i32 0, i32 3
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory189, align 8, !tbaa !25
  %211 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %207(%struct.gs_memory_s* %210, i8* %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

cleanup.190:                                      ; preds = %while.end.174, %if.end.38
  %212 = bitcast i32* %y_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  %216 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #2
  %217 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #2
  %218 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #2
  %219 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #2
  call void @llvm.lifetime.end(i64 1, i8* %start_graphics) #2
  %220 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %221 = bitcast i32* %out_y_mult to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #2
  %225 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast i32* %in_y_mult to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = load i32, i32* %retval
  ret i32 %229

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @memflip8x8(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @okiibm_output_run(i8* %data, i32 %count, i32 %y_mult, i8 signext %start_graphics, %struct._IO_FILE* %prn_stream, i32 %pass) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %y_mult.addr = alloca i32, align 4
  %start_graphics.addr = alloca i8, align 1
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pass.addr = alloca i32, align 4
  %xcount = alloca i32, align 4
  %which = alloca i32, align 4
  %dp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %y_mult, i32* %y_mult.addr, align 4, !tbaa !5
  store i8 %start_graphics, i8* %start_graphics.addr, align 1, !tbaa !29
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !5
  %0 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y_mult.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %xcount, align 4, !tbaa !5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 27, %struct._IO_FILE* %3) #6
  %4 = load i8, i8* %start_graphics.addr, align 1, !tbaa !29
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @.str.6, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv1 = sext i8 %5 to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %conv1, %struct._IO_FILE* %6) #6
  %7 = load i32, i32* %xcount, align 4, !tbaa !5
  %and = and i32 %7, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %and, %struct._IO_FILE* %8) #6
  %9 = load i32, i32* %xcount, align 4, !tbaa !5
  %shr = ashr i32 %9, 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %10) #6
  %11 = load i32, i32* %pass.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv5 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call6 = call i64 @fwrite(i8* %12, i64 1, i64 %conv5, %struct._IO_FILE* %14) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %pass.addr, align 4, !tbaa !5
  store i32 %16, i32* %which, align 4, !tbaa !5
  %17 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %18, i8** %dp, align 8, !tbaa !1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.else
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %xcount, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %24 = load i32, i32* %y_mult.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %23, %24
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %25 = load i32, i32* %which, align 4, !tbaa !5
  %and12 = and i32 %25, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.11
  %26 = load i8*, i8** %dp, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !29
  %conv14 = zext i8 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ 0, %cond.false ]
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call15 = call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %28) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %31, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %which, align 4, !tbaa !5
  %inc18 = add nsw i32 %32, 1
  store i32 %inc18, i32* %which, align 4, !tbaa !5
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  br label %if.end

if.end:                                           ; preds = %for.end.19, %if.then
  %37 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }

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
!9 = !{!10, !2, i64 24}
!10 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
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
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!3, !3, i64 0}
!30 = !{!26, !2, i64 24}
!31 = !{!10, !6, i64 836}
