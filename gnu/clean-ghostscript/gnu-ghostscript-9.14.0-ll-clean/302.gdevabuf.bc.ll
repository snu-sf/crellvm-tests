; ModuleID = './gdevabuf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
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
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
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
%struct.y_transfer_s = type { i32, i32, i32, i32 }

@mem_alpha_buffer_device = internal constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_abuf_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_abuf_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @mem_abuf_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [20 x i8] c"image(alpha buffer)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@mem_mono_device = external constant %struct.gx_device_memory_s, align 8

; Function Attrs: nounwind uwtable
define void @gs_make_mem_alpha_device(%struct.gx_device_memory_s* %adev, %struct.gs_memory_s* %mem, %struct.gx_device_s* %target, i32 %alpha_bits) #0 {
entry:
  %adev.addr = alloca %struct.gx_device_memory_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %alpha_bits.addr = alloca i32, align 4
  store %struct.gx_device_memory_s* %adev, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %alpha_bits, i32* %alpha_bits.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %1) #4
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %0, %struct.gx_device_memory_s* %call, %struct.gs_memory_s* %2, i32 0, %struct.gx_device_s* %3) #4
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 11
  %call1 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 1) #4
  %color_info2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %call1, i32 0, i32 11
  %5 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %6 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 720, i32 8, i1 false), !tbaa.struct !7
  %7 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %conv = trunc i32 %7 to i16
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !13
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 40
  %10 = load i32, i32* %graphics_type_tag, align 4, !tbaa !33
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %graphics_type_tag4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 40
  store i32 %10, i32* %graphics_type_tag4, align 4, !tbaa !35
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @mem_alpha_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !36
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @mem_alpha_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !37
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @mem_alpha_map_rgb_alpha_color, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !38
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @mem_alpha_copy_alpha, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !39
  ret void
}

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #1

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i64 @mem_alpha_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @gx_forward_map_rgb_color(%struct.gx_device_s* %4, i16* %5) #4
  store i64 %call, i64* %color, align 8, !tbaa !11
  %6 = load i64, i64* %color, align 8, !tbaa !11
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %color, align 8, !tbaa !11
  %cmp1 = icmp eq i64 %7, -1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %8 = load i64, i64* %color, align 8, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_alpha_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 60
  %10 = load i32, i32* %log2_alpha_bits, align 4, !tbaa !40
  %shl = shl i32 1, %10
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %conv, %cond.false ]
  %11 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_alpha_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !11
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i64, i64* %color.addr, align 8, !tbaa !11
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %color.addr, align 8, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 1, %cond.false ]
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %call = call i32 @gx_forward_map_color_rgb(%struct.gx_device_s* %0, i64 %cond, i16* %3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @mem_alpha_map_rgb_alpha_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b, i16 zeroext %alpha) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %color = alloca i64, align 8
  %cv = alloca [3 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !9
  store i16 %g, i16* %g.addr, align 2, !tbaa !9
  store i16 %b, i16* %b.addr, align 2, !tbaa !9
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !9
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %4) #2
  %5 = load i16, i16* %r.addr, align 2, !tbaa !9
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 %5, i16* %arrayidx, align 2, !tbaa !9
  %6 = load i16, i16* %g.addr, align 2, !tbaa !9
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 %6, i16* %arrayidx1, align 2, !tbaa !9
  %7 = load i16, i16* %b.addr, align 2, !tbaa !9
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 %7, i16* %arrayidx2, align 2, !tbaa !9
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call = call i64 @gx_forward_map_rgb_color(%struct.gx_device_s* %8, i16* %arraydecay) #4
  store i64 %call, i64* %color, align 8, !tbaa !11
  %9 = load i64, i64* %color, align 8, !tbaa !11
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64, i64* %color, align 8, !tbaa !11
  %cmp3 = icmp eq i64 %10, -1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %11 = load i64, i64* %color, align 8, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %12 = load i16, i16* %alpha.addr, align 2, !tbaa !9
  %conv = zext i16 %12 to i32
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_alpha_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 60
  %14 = load i32, i32* %log2_alpha_bits, align 4, !tbaa !40
  %conv4 = sext i32 %14 to i64
  %sub = sub i64 16, %conv4
  %sh_prom = trunc i64 %sub to i32
  %shr = ashr i32 %conv, %sh_prom
  %conv5 = sext i32 %shr to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %conv5, %cond.false ]
  %15 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %15) #2
  %16 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_alpha_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
entry:
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !11
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !11
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = load i64, i64* %color.addr, align 8, !tbaa !11
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %2 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !41
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load i32, i32* %width.addr, align 4, !tbaa !5
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  %8 = load i64, i64* %color.addr, align 8, !tbaa !11
  %call = call i32 %2(%struct.gx_device_s* %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 10
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !42
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %15 = load i64, i64* %id.addr, align 8, !tbaa !11
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %19 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call2 = call i32 %10(%struct.gx_device_s* %11, i8* %12, i32 %13, i32 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @gs_make_mem_abuf_device(%struct.gx_device_memory_s* %adev, %struct.gs_memory_s* %mem, %struct.gx_device_s* %target, %struct.gs_log2_scale_point_s* %pscale, i32 %alpha_bits, i32 %mapped_x, i32 %devn) #0 {
entry:
  %adev.addr = alloca %struct.gx_device_memory_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %alpha_bits.addr = alloca i32, align 4
  %mapped_x.addr = alloca i32, align 4
  %devn.addr = alloca i32, align 4
  store %struct.gx_device_memory_s* %adev, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %alpha_bits, i32* %alpha_bits.addr, align 4, !tbaa !5
  store i32 %mapped_x, i32* %mapped_x.addr, align 4, !tbaa !5
  store i32 %devn, i32* %devn.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %0, %struct.gx_device_memory_s* @mem_alpha_buffer_device, %struct.gs_memory_s* %1, i32 0, %struct.gx_device_s* %2) #4
  %3 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %3, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !43
  %shl = shl i32 1, %4
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %max_fill_band = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 10
  store i32 %shl, i32* %max_fill_band, align 4, !tbaa !44
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 59
  %7 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  %9 = bitcast %struct.gs_log2_scale_point_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false), !tbaa.struct !45
  %10 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %shr = ashr i32 %10, 1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_alpha_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 60
  store i32 %shr, i32* %log2_alpha_bits, align 4, !tbaa !40
  %12 = load i32, i32* %mapped_x.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_x1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 61
  store i32 %12, i32* %mapped_x1, align 4, !tbaa !46
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  store i32 (%struct.gx_device_s*)* @mem_abuf_close, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !47
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @mem_abuf_get_clipping_box, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !48
  %16 = load i32, i32* %devn.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %save_hl_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 66
  store %struct.gx_device_color_s* null, %struct.gx_device_color_s** %save_hl_color, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 1
  store i32 %18, i32* %graphics_bits, align 4, !tbaa !50
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 11
  %anti_alias4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias4, i32 0, i32 0
  store i32 %18, i32* %text_bits, align 4, !tbaa !51
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 40
  %22 = load i32, i32* %graphics_type_tag, align 4, !tbaa !33
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %graphics_type_tag5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 40
  store i32 %22, i32* %graphics_type_tag5, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_abuf_close(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %call = call i32 @abuf_flush(%struct.gx_device_memory_s* %4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 @mem_close(%struct.gx_device_s* %7) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @mem_abuf_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !52
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %7 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !53
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void %7(%struct.gx_device_s* %8, %struct.gs_fixed_rect_s* %9) #4
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 59
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %11 = load i32, i32* %x, align 4, !tbaa !54
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %13 = load i32, i32* %x1, align 4, !tbaa !55
  %shl = shl i32 %13, %11
  store i32 %shl, i32* %x1, align 4, !tbaa !55
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 59
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale2, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !58
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %17 = load i32, i32* %y4, align 4, !tbaa !59
  %shl5 = shl i32 %17, %15
  store i32 %shl5, i32* %y4, align 4, !tbaa !59
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 59
  %x7 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale6, i32 0, i32 0
  %19 = load i32, i32* %x7, align 4, !tbaa !54
  %20 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %20, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %21 = load i32, i32* %x8, align 4, !tbaa !60
  %shl9 = shl i32 %21, %19
  store i32 %shl9, i32* %x8, align 4, !tbaa !60
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 59
  %y11 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale10, i32 0, i32 1
  %23 = load i32, i32* %y11, align 4, !tbaa !58
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %25 = load i32, i32* %y13, align 4, !tbaa !61
  %shl14 = shl i32 %25, %23
  store i32 %shl14, i32* %y13, align 4, !tbaa !61
  %26 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_device_is_abuf(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %dname, align 8, !tbaa !62
  %2 = load i8*, i8** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_alpha_buffer_device, i32 0, i32 2), align 8, !tbaa !63
  %cmp = icmp eq i8* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @alpha_buffer_bits(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !64
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 @gs_device_is_abuf(%struct.gx_device_s* %3) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %5 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !76
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 74
  %8 = load i32, i32* %in_cachedevice, align 4, !tbaa !77
  %tobool1 = icmp ne i32 %8, 0
  %cond = select i1 %tobool1, i32 0, i32 1
  %call2 = call i32 %5(%struct.gx_device_s* %6, i32 %cond) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

declare i32 @mem_open(%struct.gx_device_s*) #1

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #1

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #1

declare i32 @mem_close(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mem_abuf_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %yt = alloca %struct.y_transfer_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !11
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 61
  %5 = load i32, i32* %mapped_x, align 4, !tbaa !46
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %5
  store i32 %sub, i32* %x.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %7, %8
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add5 = add nsw i32 %14, %13
  store i32 %add5, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  %15 = load i32, i32* %w.addr, align 4, !tbaa !5
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 13
  %17 = load i32, i32* %width, align 4, !tbaa !78
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %17, %18
  %cmp10 = icmp sgt i32 %15, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %do.body.8
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width12, align 4, !tbaa !78
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %20, %21
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.body.8
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %22 = load i64, i64* %color.addr, align 8, !tbaa !11
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %save_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 65
  store i64 %22, i64* %save_color, align 8, !tbaa !79
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %y.addr, align 4, !tbaa !5
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @y_transfer_init(%struct.y_transfer_s* %yt, %struct.gx_device_s* %24, i32 %25, i32 %26) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.16
  %height_left = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 1
  %27 = load i32, i32* %height_left, align 4, !tbaa !80
  %cmp17 = icmp sgt i32 %27, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @y_transfer_next(%struct.y_transfer_s* %yt, %struct.gx_device_s* %29) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %30, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %while.body
  %32 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 7), align 8, !tbaa !82
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %transfer_y = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 2
  %35 = load i32, i32* %transfer_y, align 4, !tbaa !83
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %transfer_height = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 3
  %37 = load i32, i32* %transfer_height, align 4, !tbaa !84
  %call21 = call i32 %32(%struct.gx_device_s* %33, i32 %34, i32 %35, i32 %36, i32 %37, i64 1) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %while.end, %cleanup
  %39 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #2
  %40 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @mem_abuf_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %yt = alloca %struct.y_transfer_s, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !11
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !11
  store i64 %one, i64* %one.addr, align 8, !tbaa !11
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = load i64, i64* %zero.addr, align 8, !tbaa !11
  %cmp = icmp ne i64 %4, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %one.addr, align 8, !tbaa !11
  %cmp1 = icmp eq i64 %5, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 61
  %7 = load i32, i32* %mapped_x, align 4, !tbaa !46
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %x.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %9, %10
  %cmp2 = icmp slt i32 %or, 0
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %do.body
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %15, %14
  store i32 %sub6, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %18, %17
  store i32 %add10, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !11
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %do.body
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !78
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %24, %25
  %cmp14 = icmp sgt i32 %22, %sub13
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width16, align 4, !tbaa !78
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %27, %28
  store i32 %sub17, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp19 = icmp sle i32 %29, 0
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.end
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.23:                                        ; preds = %lor.lhs.false.20
  %31 = load i64, i64* %one.addr, align 8, !tbaa !11
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %save_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 65
  store i64 %31, i64* %save_color, align 8, !tbaa !79
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load i32, i32* %y.addr, align 4, !tbaa !5
  %35 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @y_transfer_init(%struct.y_transfer_s* %yt, %struct.gx_device_s* %33, i32 %34, i32 %35) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.23
  %height_left = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 1
  %36 = load i32, i32* %height_left, align 4, !tbaa !80
  %cmp24 = icmp sgt i32 %36, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @y_transfer_next(%struct.y_transfer_s* %yt, %struct.gx_device_s* %38) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %39, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %while.body
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %while.body
  %41 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 9), align 8, !tbaa !85
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %y_next = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 0
  %44 = load i32, i32* %y_next, align 4, !tbaa !86
  %45 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %44, %45
  %46 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %sub28, %46
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %43, i64 %idx.ext30
  %47 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %48 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %transfer_y = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 2
  %50 = load i32, i32* %transfer_y, align 4, !tbaa !83
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %transfer_height = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 3
  %52 = load i32, i32* %transfer_height, align 4, !tbaa !84
  %call32 = call i32 %41(%struct.gx_device_s* %42, i8* %add.ptr31, i32 %47, i32 %48, i64 0, i32 %49, i32 %50, i32 %51, i32 %52, i64 -1, i64 1) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %while.end, %cleanup, %if.then.22, %if.then
  %54 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #2
  %55 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #1

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #1

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

declare i32 @gx_default_get_band(%struct.gx_device_s*, i32, i32*) #1

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @mem_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_no_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #1

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mem_abuf_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %yt = alloca %struct.y_transfer_s, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !55
  %shr = ashr i32 %6, 8
  store i32 %shr, i32* %x, align 4, !tbaa !5
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %8, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %9 = load i32, i32* %y3, align 4, !tbaa !59
  %shr4 = ashr i32 %9, 8
  store i32 %shr4, i32* %y, align 4, !tbaa !5
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %12 = load i32, i32* %x5, align 4, !tbaa !60
  %shr6 = ashr i32 %12, 8
  %13 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %shr6, %13
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %14 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %15, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q7, i32 0, i32 1
  %16 = load i32, i32* %y8, align 4, !tbaa !61
  %shr9 = ashr i32 %16, 8
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %sub10 = sub nsw i32 %shr9, %17
  store i32 %sub10, i32* %h, align 4, !tbaa !5
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 61
  %19 = load i32, i32* %mapped_x, align 4, !tbaa !46
  %20 = load i32, i32* %x, align 4, !tbaa !5
  %sub11 = sub nsw i32 %20, %19
  store i32 %sub11, i32* %x, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %21 = load i32, i32* %x, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %or = or i32 %21, %22
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %do.body
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %23, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %25 = load i32, i32* %w, align 4, !tbaa !5
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load i32, i32* %h, align 4, !tbaa !5
  %add16 = add nsw i32 %28, %27
  store i32 %add16, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %29 = load i32, i32* %w, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width, align 4, !tbaa !78
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %sub20 = sub nsw i32 %31, %32
  %cmp21 = icmp sgt i32 %29, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.body.19
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width23, align 4, !tbaa !78
  %35 = load i32, i32* %x, align 4, !tbaa !5
  %sub24 = sub nsw i32 %34, %35
  store i32 %sub24, i32* %w, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.body.19
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %save_hl_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 66
  store %struct.gx_device_color_s* %36, %struct.gx_device_color_s** %save_hl_color, align 8, !tbaa !49
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load i32, i32* %y, align 4, !tbaa !5
  %40 = load i32, i32* %h, align 4, !tbaa !5
  call void @y_transfer_init(%struct.y_transfer_s* %yt, %struct.gx_device_s* %38, i32 %39, i32 %40) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.27
  %height_left = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 1
  %41 = load i32, i32* %height_left, align 4, !tbaa !80
  %cmp28 = icmp sgt i32 %41, 0
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @y_transfer_next(%struct.y_transfer_s* %yt, %struct.gx_device_s* %43) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %44, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %while.body
  %46 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 7), align 8, !tbaa !82
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %48 = load i32, i32* %x, align 4, !tbaa !5
  %transfer_y = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 2
  %49 = load i32, i32* %transfer_y, align 4, !tbaa !83
  %50 = load i32, i32* %w, align 4, !tbaa !5
  %transfer_height = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %yt, i32 0, i32 3
  %51 = load i32, i32* %transfer_height, align 4, !tbaa !84
  %call32 = call i32 %46(%struct.gx_device_s* %47, i32 %48, i32 %49, i32 %50, i32 %51, i64 1) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %while.end, %cleanup
  %53 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast %struct.y_transfer_s* %yt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #2
  %58 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal void @y_transfer_init(%struct.y_transfer_s* %pyt, %struct.gx_device_s* %dev, i32 %ty, i32 %th) #0 {
entry:
  %pyt.addr = alloca %struct.y_transfer_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ty.addr = alloca i32, align 4
  %th.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %bh = alloca i32, align 4
  store %struct.y_transfer_s* %pyt, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %ty, i32* %ty.addr, align 4, !tbaa !5
  store i32 %th, i32* %th.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 59
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !58
  %shl = shl i32 1, %5
  store i32 %shl, i32* %bh, align 4, !tbaa !5
  %6 = load i32, i32* %ty.addr, align 4, !tbaa !5
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 62
  %8 = load i32, i32* %mapped_y, align 4, !tbaa !87
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %ty.addr, align 4, !tbaa !5
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_y1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 62
  %11 = load i32, i32* %mapped_y1, align 4, !tbaa !87
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 63
  %13 = load i32, i32* %mapped_height, align 4, !tbaa !88
  %add = add nsw i32 %11, %13
  %cmp2 = icmp sgt i32 %9, %add
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %call = call i32 @abuf_flush(%struct.gx_device_memory_s* %14) #4
  %15 = load i32, i32* %ty.addr, align 4, !tbaa !5
  %16 = load i32, i32* %bh, align 4, !tbaa !5
  %sub = sub nsw i32 0, %16
  %and = and i32 %15, %sub
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_y3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 62
  store i32 %and, i32* %mapped_y3, align 4, !tbaa !87
  %18 = load i32, i32* %bh, align 4, !tbaa !5
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_height4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 63
  store i32 %18, i32* %mapped_height4, align 4, !tbaa !88
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 52
  %21 = load i8**, i8*** %line_ptrs, align 8, !tbaa !89
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %23 = load i32, i32* %bh, align 4, !tbaa !5
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %24, i32 0, i32 44
  %25 = load i32, i32* %raster, align 4, !tbaa !90
  %mul = mul i32 %23, %25
  %conv = zext i32 %mul to i64
  %call5 = call i8* @memset(i8* %22, i32 0, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %26 = load i32, i32* %ty.addr, align 4, !tbaa !5
  %27 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %y_next = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %27, i32 0, i32 0
  store i32 %26, i32* %y_next, align 4, !tbaa !86
  %28 = load i32, i32* %th.addr, align 4, !tbaa !5
  %29 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %height_left = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %29, i32 0, i32 1
  store i32 %28, i32* %height_left, align 4, !tbaa !80
  %30 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %transfer_height = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %30, i32 0, i32 3
  store i32 0, i32* %transfer_height, align 4, !tbaa !84
  %31 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @y_transfer_next(%struct.y_transfer_s* %pyt, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pyt.addr = alloca %struct.y_transfer_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %my = alloca i32, align 4
  %mh = alloca i32, align 4
  %ms = alloca i32, align 4
  %ty = alloca i32, align 4
  %th = alloca i32, align 4
  %bh = alloca i32, align 4
  %tby = alloca i32, align 4
  %tbh = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.y_transfer_s* %pyt, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %my to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 62
  %5 = load i32, i32* %mapped_y, align 4, !tbaa !87
  store i32 %5, i32* %my, align 4, !tbaa !5
  %6 = bitcast i32* %mh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 63
  %8 = load i32, i32* %mapped_height, align 4, !tbaa !88
  store i32 %8, i32* %mh, align 4, !tbaa !5
  %9 = bitcast i32* %ms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_start = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 64
  %11 = load i32, i32* %mapped_start, align 4, !tbaa !91
  store i32 %11, i32* %ms, align 4, !tbaa !5
  %12 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %transfer_height = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %13, i32 0, i32 3
  %14 = load i32, i32* %transfer_height, align 4, !tbaa !84
  %15 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %y_next = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %15, i32 0, i32 0
  %16 = load i32, i32* %y_next, align 4, !tbaa !86
  %add = add nsw i32 %16, %14
  store i32 %add, i32* %y_next, align 4, !tbaa !86
  store i32 %add, i32* %ty, align 4, !tbaa !5
  %17 = bitcast i32* %th to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %height_left = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %18, i32 0, i32 1
  %19 = load i32, i32* %height_left, align 4, !tbaa !80
  store i32 %19, i32* %th, align 4, !tbaa !5
  %20 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 59
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !58
  %shl = shl i32 1, %22
  store i32 %shl, i32* %bh, align 4, !tbaa !5
  %23 = bitcast i32* %tby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %tbh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %ty, align 4, !tbaa !5
  %26 = load i32, i32* %my, align 4, !tbaa !5
  %27 = load i32, i32* %mh, align 4, !tbaa !5
  %add1 = add nsw i32 %26, %27
  %cmp = icmp eq i32 %25, %add1
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %mh, align 4, !tbaa !5
  %29 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !92
  %cmp2 = icmp eq i32 %28, %30
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %33 = load i32, i32* %my, align 4, !tbaa !5
  %call = call i32 @abuf_flush_block(%struct.gx_device_memory_s* %32, i32 %33) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %34, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  %36 = load i32, i32* %bh, align 4, !tbaa !5
  %37 = load i32, i32* %my, align 4, !tbaa !5
  %add6 = add nsw i32 %37, %36
  store i32 %add6, i32* %my, align 4, !tbaa !5
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_y7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 62
  store i32 %add6, i32* %mapped_y7, align 4, !tbaa !87
  %39 = load i32, i32* %bh, align 4, !tbaa !5
  %40 = load i32, i32* %ms, align 4, !tbaa !5
  %add8 = add nsw i32 %40, %39
  store i32 %add8, i32* %ms, align 4, !tbaa !5
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_start9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 64
  store i32 %add8, i32* %mapped_start9, align 4, !tbaa !91
  %42 = load i32, i32* %mh, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %add8, %42
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %ms, align 4, !tbaa !5
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_start12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 64
  store i32 0, i32* %mapped_start12, align 4, !tbaa !91
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.5
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %45 = load i32, i32* %bh, align 4, !tbaa !5
  %46 = load i32, i32* %mh, align 4, !tbaa !5
  %add14 = add nsw i32 %46, %45
  store i32 %add14, i32* %mh, align 4, !tbaa !5
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %mapped_height15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 63
  store i32 %add14, i32* %mapped_height15, align 4, !tbaa !88
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %cleanup.cont
  %48 = load i32, i32* %ms, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %48, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %49 = load i32, i32* %mh, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %50 = load i32, i32* %ms, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %49, %cond.true ], [ %50, %cond.false ]
  %51 = load i32, i32* %bh, align 4, !tbaa !5
  %sub = sub nsw i32 %cond, %51
  %idxprom = sext i32 %sub to i64
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 52
  %53 = load i8**, i8*** %line_ptrs, align 8, !tbaa !89
  %arrayidx = getelementptr inbounds i8*, i8** %53, i64 %idxprom
  %54 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %55 = load i32, i32* %bh, align 4, !tbaa !5
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 44
  %57 = load i32, i32* %raster, align 4, !tbaa !90
  %mul = mul i32 %55, %57
  %conv = zext i32 %mul to i64
  %call18 = call i8* @memset(i8* %54, i32 0, i64 %conv) #5
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %entry
  %58 = load i32, i32* %ty, align 4, !tbaa !5
  %59 = load i32, i32* %my, align 4, !tbaa !5
  %sub20 = sub nsw i32 %58, %59
  %60 = load i32, i32* %ms, align 4, !tbaa !5
  %add21 = add nsw i32 %sub20, %60
  store i32 %add21, i32* %tby, align 4, !tbaa !5
  %61 = load i32, i32* %tby, align 4, !tbaa !5
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 14
  %63 = load i32, i32* %height22, align 4, !tbaa !92
  %cmp23 = icmp slt i32 %61, %63
  br i1 %cmp23, label %if.then.25, label %if.else.34

if.then.25:                                       ; preds = %if.end.19
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %64, i32 0, i32 14
  %65 = load i32, i32* %height26, align 4, !tbaa !92
  %66 = load i32, i32* %ms, align 4, !tbaa !5
  %sub27 = sub nsw i32 %65, %66
  store i32 %sub27, i32* %tbh, align 4, !tbaa !5
  %67 = load i32, i32* %tbh, align 4, !tbaa !5
  %68 = load i32, i32* %mh, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %67, %68
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.25
  %69 = load i32, i32* %mh, align 4, !tbaa !5
  store i32 %69, i32* %tbh, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.25
  %70 = load i32, i32* %tby, align 4, !tbaa !5
  %71 = load i32, i32* %ms, align 4, !tbaa !5
  %sub32 = sub nsw i32 %70, %71
  %72 = load i32, i32* %tbh, align 4, !tbaa !5
  %sub33 = sub nsw i32 %72, %sub32
  store i32 %sub33, i32* %tbh, align 4, !tbaa !5
  br label %if.end.41

if.else.34:                                       ; preds = %if.end.19
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 14
  %74 = load i32, i32* %height35, align 4, !tbaa !92
  %75 = load i32, i32* %tby, align 4, !tbaa !5
  %sub36 = sub nsw i32 %75, %74
  store i32 %sub36, i32* %tby, align 4, !tbaa !5
  %76 = load i32, i32* %ms, align 4, !tbaa !5
  %77 = load i32, i32* %mh, align 4, !tbaa !5
  %add37 = add nsw i32 %76, %77
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height38, align 4, !tbaa !93
  %sub39 = sub nsw i32 %add37, %79
  %80 = load i32, i32* %tby, align 4, !tbaa !5
  %sub40 = sub nsw i32 %sub39, %80
  store i32 %sub40, i32* %tbh, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.34, %if.end.31
  br label %do.body

do.body:                                          ; preds = %if.end.41
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %81 = load i32, i32* %tbh, align 4, !tbaa !5
  %82 = load i32, i32* %th, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %81, %82
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %do.end
  %83 = load i32, i32* %th, align 4, !tbaa !5
  store i32 %83, i32* %tbh, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %do.end
  %84 = load i32, i32* %th, align 4, !tbaa !5
  %85 = load i32, i32* %tbh, align 4, !tbaa !5
  %sub46 = sub nsw i32 %84, %85
  %86 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %height_left47 = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %86, i32 0, i32 1
  store i32 %sub46, i32* %height_left47, align 4, !tbaa !80
  %87 = load i32, i32* %tby, align 4, !tbaa !5
  %88 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %transfer_y = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %88, i32 0, i32 2
  store i32 %87, i32* %transfer_y, align 4, !tbaa !83
  %89 = load i32, i32* %tbh, align 4, !tbaa !5
  %90 = load %struct.y_transfer_s*, %struct.y_transfer_s** %pyt.addr, align 8, !tbaa !1
  %transfer_height48 = getelementptr inbounds %struct.y_transfer_s, %struct.y_transfer_s* %90, i32 0, i32 3
  store i32 %89, i32* %transfer_height48, align 4, !tbaa !84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.45, %cleanup
  %91 = bitcast i32* %tbh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %tby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast i32* %th to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %ms to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %mh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %my to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @abuf_flush(%struct.gx_device_memory_s* %adev) #0 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %block_height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s* %adev, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 59
  %y1 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %4 = load i32, i32* %y1, align 4, !tbaa !58
  %shl = shl i32 1, %4
  store i32 %shl, i32* %block_height, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %y, align 4, !tbaa !5
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 63
  %7 = load i32, i32* %mapped_height, align 4, !tbaa !88
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 62
  %10 = load i32, i32* %mapped_y, align 4, !tbaa !87
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %call = call i32 @abuf_flush_block(%struct.gx_device_memory_s* %8, i32 %add) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %block_height, align 4, !tbaa !5
  %14 = load i32, i32* %y, align 4, !tbaa !5
  %add3 = add nsw i32 %14, %13
  store i32 %add3, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_start = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 64
  store i32 0, i32* %mapped_start, align 4, !tbaa !91
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_height4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 63
  store i32 0, i32* %mapped_height4, align 4, !tbaa !88
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @abuf_flush_block(%struct.gx_device_memory_s* %adev, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y.addr = alloca i32, align 4
  %target = alloca %struct.gx_device_s*, align 8
  %block_height = alloca i32, align 4
  %alpha_bits = alloca i32, align 4
  %ddepth = alloca i32, align 4
  %draster = alloca i32, align 4
  %buffer_y = alloca i32, align 4
  %bits = alloca i8*, align 8
  %alpha_mask = alloca i32, align 4
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %width12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s* %adev, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 43
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !52
  store %struct.gx_device_s* %2, %struct.gx_device_s** %target, align 8, !tbaa !1
  %3 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 59
  %y2 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %5 = load i32, i32* %y2, align 4, !tbaa !58
  %shl = shl i32 1, %5
  store i32 %shl, i32* %block_height, align 4, !tbaa !5
  %6 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_alpha_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 60
  %8 = load i32, i32* %log2_alpha_bits, align 4, !tbaa !40
  %shl3 = shl i32 1, %8
  store i32 %shl3, i32* %alpha_bits, align 4, !tbaa !5
  %9 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !94
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 59
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale4, i32 0, i32 0
  %13 = load i32, i32* %x, align 4, !tbaa !54
  %shr = ashr i32 %11, %13
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_alpha_bits5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 60
  %15 = load i32, i32* %log2_alpha_bits5, align 4, !tbaa !40
  %shl6 = shl i32 %shr, %15
  store i32 %shl6, i32* %ddepth, align 4, !tbaa !5
  %16 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %ddepth, align 4, !tbaa !5
  %add = add nsw i32 %17, 63
  %shr7 = ashr i32 %add, 6
  %shl8 = shl i32 %shr7, 3
  store i32 %shl8, i32* %draster, align 4, !tbaa !5
  %18 = bitcast i32* %buffer_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 62
  %21 = load i32, i32* %mapped_y, align 4, !tbaa !87
  %sub = sub nsw i32 %19, %21
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_start = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 64
  %23 = load i32, i32* %mapped_start, align 4, !tbaa !91
  %add9 = add nsw i32 %sub, %23
  store i32 %add9, i32* %buffer_y, align 4, !tbaa !5
  %24 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i32, i32* %buffer_y, align 4, !tbaa !5
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 14
  %27 = load i32, i32* %height, align 4, !tbaa !92
  %cmp = icmp sge i32 %25, %27
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height10, align 4, !tbaa !92
  %30 = load i32, i32* %buffer_y, align 4, !tbaa !5
  %sub11 = sub nsw i32 %30, %29
  store i32 %sub11, i32* %buffer_y, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load i32, i32* %buffer_y, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 52
  %33 = load i8**, i8*** %line_ptrs, align 8, !tbaa !89
  %arrayidx = getelementptr inbounds i8*, i8** %33, i64 %idxprom
  %34 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %34, i8** %bits, align 8, !tbaa !1
  %35 = bitcast i32* %alpha_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 -8, i32* %alpha_mask, align 4, !tbaa !5
  %36 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %36) #2
  %37 = bitcast i32* %width12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i8*, i8** %bits, align 8, !tbaa !1
  %39 = load i32, i32* %block_height, align 4, !tbaa !5
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 44
  %41 = load i32, i32* %raster, align 4, !tbaa !90
  call void @bits_bounding_box(i8* %38, i32 %39, i32 %41, %struct.gs_int_rect_s* %bbox) #4
  %42 = load i32, i32* %alpha_mask, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %43 = load i32, i32* %x13, align 4, !tbaa !95
  %and = and i32 %43, %42
  store i32 %and, i32* %x13, align 4, !tbaa !95
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %44 = load i32, i32* %x14, align 4, !tbaa !98
  %45 = load i32, i32* %alpha_mask, align 4, !tbaa !5
  %neg = xor i32 %45, -1
  %add15 = add nsw i32 %44, %neg
  %46 = load i32, i32* %alpha_mask, align 4, !tbaa !5
  %and16 = and i32 %add15, %46
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 0
  store i32 %and16, i32* %x18, align 4, !tbaa !98
  %q19 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q19, i32 0, i32 0
  %47 = load i32, i32* %x20, align 4, !tbaa !98
  %p21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p21, i32 0, i32 0
  %48 = load i32, i32* %x22, align 4, !tbaa !95
  %sub23 = sub nsw i32 %47, %48
  store i32 %sub23, i32* %width12, align 4, !tbaa !5
  %49 = load i8*, i8** %bits, align 8, !tbaa !1
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 0
  %50 = load i32, i32* %x25, align 4, !tbaa !95
  %51 = load i32, i32* %width12, align 4, !tbaa !5
  %52 = load i32, i32* %block_height, align 4, !tbaa !5
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %raster26 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 44
  %54 = load i32, i32* %raster26, align 4, !tbaa !90
  %55 = load i8*, i8** %bits, align 8, !tbaa !1
  %56 = load i32, i32* %draster, align 4, !tbaa !5
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 59
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_alpha_bits28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %58, i32 0, i32 60
  %59 = load i32, i32* %log2_alpha_bits28, align 4, !tbaa !40
  call void @bits_compress_scaled(i8* %49, i32 %50, i32 %51, i32 %52, i32 %54, i8* %55, i32 %56, %struct.gs_log2_scale_point_s* %log2_scale27, i32 %59) #4
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %save_hl_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 66
  %61 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %save_hl_color, align 8, !tbaa !49
  %cmp29 = icmp eq %struct.gx_device_color_s* %61, null
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %63 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !99
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %65 = load i8*, i8** %bits, align 8, !tbaa !1
  %66 = load i32, i32* %draster, align 4, !tbaa !5
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 61
  %68 = load i32, i32* %mapped_x, align 4, !tbaa !46
  %p31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p31, i32 0, i32 0
  %69 = load i32, i32* %x32, align 4, !tbaa !95
  %add33 = add nsw i32 %68, %69
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %70, i32 0, i32 59
  %x35 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale34, i32 0, i32 0
  %71 = load i32, i32* %x35, align 4, !tbaa !54
  %shr36 = ashr i32 %add33, %71
  %72 = load i32, i32* %y.addr, align 4, !tbaa !5
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 59
  %y38 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale37, i32 0, i32 1
  %74 = load i32, i32* %y38, align 4, !tbaa !58
  %shr39 = ashr i32 %72, %74
  %75 = load i32, i32* %width12, align 4, !tbaa !5
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 59
  %x41 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale40, i32 0, i32 0
  %77 = load i32, i32* %x41, align 4, !tbaa !54
  %shr42 = ashr i32 %75, %77
  %78 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %save_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %78, i32 0, i32 65
  %79 = load i64, i64* %save_color, align 8, !tbaa !79
  %80 = load i32, i32* %alpha_bits, align 4, !tbaa !5
  %call = call i32 %63(%struct.gx_device_s* %64, i8* %65, i32 0, i32 %66, i64 0, i32 %shr36, i32 %shr39, i32 %shr42, i32 1, i64 %79, i32 %80) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs43, i32 0, i32 71
  %82 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !100
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %84 = load i8*, i8** %bits, align 8, !tbaa !1
  %85 = load i32, i32* %draster, align 4, !tbaa !5
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %mapped_x44 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %86, i32 0, i32 61
  %87 = load i32, i32* %mapped_x44, align 4, !tbaa !46
  %p45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p45, i32 0, i32 0
  %88 = load i32, i32* %x46, align 4, !tbaa !95
  %add47 = add nsw i32 %87, %88
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %89, i32 0, i32 59
  %x49 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale48, i32 0, i32 0
  %90 = load i32, i32* %x49, align 4, !tbaa !54
  %shr50 = ashr i32 %add47, %90
  %91 = load i32, i32* %y.addr, align 4, !tbaa !5
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale51 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 59
  %y52 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale51, i32 0, i32 1
  %93 = load i32, i32* %y52, align 4, !tbaa !58
  %shr53 = ashr i32 %91, %93
  %94 = load i32, i32* %width12, align 4, !tbaa !5
  %95 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %log2_scale54 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %95, i32 0, i32 59
  %x55 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale54, i32 0, i32 0
  %96 = load i32, i32* %x55, align 4, !tbaa !54
  %shr56 = ashr i32 %94, %96
  %97 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %adev.addr, align 8, !tbaa !1
  %save_hl_color57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %97, i32 0, i32 66
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %save_hl_color57, align 8, !tbaa !49
  %99 = load i32, i32* %alpha_bits, align 4, !tbaa !5
  %call58 = call i32 %82(%struct.gx_device_s* %83, i8* %84, i32 0, i32 %85, i64 0, i32 %shr50, i32 %shr53, i32 %shr56, i32 1, %struct.gx_device_color_s* %98, i32 %99) #4
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.30
  %100 = bitcast i32* %width12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %101) #2
  %102 = bitcast i32* %alpha_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast i32* %buffer_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare void @bits_bounding_box(i8*, i32, i32, %struct.gs_int_rect_s*) #1

declare void @bits_compress_scaled(i8*, i32, i32, i32, i32, i8*, i32, %struct.gs_log2_scale_point_s*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !8, i64 12, i64 2, !9, i64 14, i64 1, !8, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !8, i64 44, i64 64, !8, i64 108, i64 64, !8, i64 176, i64 512, !8, i64 688, i64 8, !1, i64 696, i64 4, !8, i64 704, i64 8, !11, i64 712, i64 4, !5}
!8 = !{!3, !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !3, i64 0}
!13 = !{!14, !10, i64 108}
!14 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !15, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !16, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !24, i64 2548, !2, i64 2576, !26, i64 2584, !27, i64 2600, !28, i64 2624, !29, i64 2656, !30, i64 2680, !31, i64 2720, !32, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !12, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!15 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !10, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!17 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !21, i64 16, !6, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!"_c24", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c40", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!29 = !{!"_c48", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c56", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!31 = !{!"_c64", !12, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!33 = !{!34, !3, i64 1112}
!34 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !15, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !16, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144}
!35 = !{!14, !3, i64 1112}
!36 = !{!14, !2, i64 1184}
!37 = !{!14, !2, i64 1192}
!38 = !{!14, !2, i64 1288}
!39 = !{!14, !2, i64 1312}
!40 = !{!14, !6, i64 2744}
!41 = !{!34, !2, i64 1200}
!42 = !{!34, !2, i64 1224}
!43 = !{!32, !6, i64 4}
!44 = !{!14, !6, i64 88}
!45 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!46 = !{!14, !6, i64 2748}
!47 = !{!14, !2, i64 1176}
!48 = !{!14, !2, i64 1432}
!49 = !{!14, !2, i64 2776}
!50 = !{!14, !6, i64 132}
!51 = !{!14, !6, i64 128}
!52 = !{!14, !2, i64 1728}
!53 = !{!34, !2, i64 1432}
!54 = !{!14, !6, i64 2736}
!55 = !{!56, !6, i64 0}
!56 = !{!"gs_fixed_rect_s", !57, i64 0, !57, i64 8}
!57 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!58 = !{!14, !6, i64 2740}
!59 = !{!56, !6, i64 4}
!60 = !{!56, !6, i64 8}
!61 = !{!56, !6, i64 12}
!62 = !{!34, !2, i64 16}
!63 = !{!14, !2, i64 16}
!64 = !{!65, !2, i64 1872}
!65 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !66, i64 24, !6, i64 128, !68, i64 132, !6, i64 168, !69, i64 176, !69, i64 192, !6, i64 208, !6, i64 212, !10, i64 216, !3, i64 220, !71, i64 224, !71, i64 228, !72, i64 232, !12, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !25, i64 296, !57, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !25, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !73, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !74, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !74, i64 1336, !2, i64 1616, !24, i64 1624, !6, i64 1648, !24, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !12, i64 1712, !12, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !68, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !75, i64 1888}
!66 = !{!"gx_line_params_s", !25, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !6, i64 36, !24, i64 40, !67, i64 64}
!67 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !25, i64 12, !6, i64 16, !25, i64 20, !6, i64 24, !6, i64 28, !25, i64 32}
!68 = !{!"gs_matrix_fixed_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!69 = !{!"gs_point_s", !70, i64 0, !70, i64 8}
!70 = !{!"double", !3, i64 0}
!71 = !{!"gs_transparency_source_s", !25, i64 0}
!72 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!73 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!74 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !3, i64 24}
!75 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!76 = !{!34, !2, i64 1304}
!77 = !{!65, !3, i64 1848}
!78 = !{!34, !6, i64 832}
!79 = !{!14, !12, i64 2768}
!80 = !{!81, !6, i64 4}
!81 = !{!"y_transfer_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!82 = !{!14, !2, i64 1200}
!83 = !{!81, !6, i64 8}
!84 = !{!81, !6, i64 12}
!85 = !{!14, !2, i64 1216}
!86 = !{!81, !6, i64 0}
!87 = !{!14, !6, i64 2752}
!88 = !{!14, !6, i64 2756}
!89 = !{!14, !2, i64 2576}
!90 = !{!14, !6, i64 1736}
!91 = !{!14, !6, i64 2760}
!92 = !{!14, !6, i64 836}
!93 = !{!34, !6, i64 836}
!94 = !{!14, !6, i64 832}
!95 = !{!96, !6, i64 0}
!96 = !{!"gs_int_rect_s", !97, i64 0, !97, i64 8}
!97 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!98 = !{!96, !6, i64 8}
!99 = !{!34, !2, i64 1312}
!100 = !{!34, !2, i64 1712}
