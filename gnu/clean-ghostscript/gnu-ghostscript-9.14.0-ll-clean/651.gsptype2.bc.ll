; ModuleID = './gsptype2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
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
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_pattern2_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, %struct.gs_shading_s* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_pattern2_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern2_template_s, i32 }
%struct._pattern2 = type { i64, i32 }

@gs_pattern2_type = internal constant %struct.gs_pattern_type_s { i32 2, %struct.pp_ { i32 (%struct.gs_pattern_template_s*)* @gs_pattern2_uses_base_space, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)* @gs_pattern2_make_pattern, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)* @gs_pattern2_get_pattern, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gs_pattern2_remap_color, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* @gs_pattern2_set_color } }, align 8
@st_dc_pattern2 = internal constant %struct.gs_memory_struct_type_s { i32 656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @dc_pattern2_reloc_ptrs to i8*) }, align 8
@gx_dc_pattern2 = constant %struct.gx_device_color_type_s { %struct.gs_memory_struct_type_s* @st_dc_pattern2, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pattern2_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_pattern2_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_ht_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_pattern2_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_pattern2_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_default_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_pattern2_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_cannot_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_cannot_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_pattern_get_nonzero_comps }, align 8
@.str = private unnamed_addr constant [32 x i8] c"gx_default_fill_path(path_bbox)\00", align 1
@st_pattern2_instance = internal constant %struct.gs_memory_struct_type_s { i32 104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pattern2_instance_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pattern2_instance_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gs_pattern2_instance_t\00", align 1
@st_pattern2_template = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern2_template_reloc_ptrs to i8*) }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_pattern_instance = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"gs_pattern2_template_t\00", align 1
@pattern2_template_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_pattern_template, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pattern2_template_enum_ptrs, i32 0, i32 0) }, align 8
@st_pattern_template = external constant %struct.gs_memory_struct_type_s, align 8
@pattern2_template_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 40 }], align 2
@.str.3 = private unnamed_addr constant [12 x i8] c"dc_pattern2\00", align 1
@dc_pattern2_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 368, %struct.gs_memory_struct_type_s* @st_client_color, %struct.gc_ptr_element_s* null }, align 8
@st_client_color = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define void @gs_pattern2_init(%struct.gs_pattern2_template_s* %ppat) #0 {
entry:
  %ppat.addr = alloca %struct.gs_pattern2_template_s*, align 8
  store %struct.gs_pattern2_template_s* %ppat, %struct.gs_pattern2_template_s** %ppat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern2_template_s*, %struct.gs_pattern2_template_s** %ppat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern2_template_s* %0 to %struct.gs_pattern_template_s*
  call void @gs_pattern_common_init(%struct.gs_pattern_template_s* %1, %struct.gs_pattern_type_s* @gs_pattern2_type) #3
  ret void
}

declare void @gs_pattern_common_init(%struct.gs_pattern_template_s*, %struct.gs_pattern_type_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_pattern2_set_shfill(%struct.gs_client_color_s* %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %2, i32 0, i32 1
  %3 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !8
  %cmp = icmp ne %struct.gs_pattern_type_s* %3, @gs_pattern2_type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 0
  %5 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !5
  %6 = bitcast %struct.gs_pattern_instance_s* %5 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %6, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %7 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %7, i32 0, i32 5
  store i32 1, i32* %shfill, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @gx_dc_pattern2_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %6 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %6, i32 0, i32 0
  store %struct.gx_device_color_type_s* %5, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !23
  %7 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %pattern_id = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %7, i32 0, i32 3
  %8 = load i64, i64* %pattern_id, align 8, !tbaa !25
  %9 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %9, i32 0, i32 1
  %pattern2 = bitcast %union._svc* %colors to %struct._pattern2*
  %id = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern2, i32 0, i32 0
  store i64 %8, i64* %id, align 8, !tbaa !26
  %10 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %10, i32 0, i32 5
  %11 = load i32, i32* %shfill, align 4, !tbaa !12
  %12 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %12, i32 0, i32 1
  %pattern23 = bitcast %union._svc* %colors2 to %struct._pattern2*
  %shfill4 = getelementptr inbounds %struct._pattern2, %struct._pattern2* %pattern23, i32 0, i32 1
  store i32 %11, i32* %shfill4, align 4, !tbaa !28
  %13 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_pattern2_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %1 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %2 = bitcast %struct.gs_pattern_instance_s* %1 to %struct.gs_pattern2_instance_s*
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %2, i32 0, i32 2
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %dev_ht = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 41
  %4 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !30
  ret %struct.gx_device_halftone_s* %4
}

declare i32 @gx_dc_ht_get_phase(%struct.gx_device_color_s*, %struct.gs_int_point_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern2_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %ignore_pis, %struct.gx_device_s* %ignore_dev, i32 %ignore_select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ignore_pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %ignore_pis, %struct.gs_imager_state_s** %ignore_pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %ignore_select, i32* %ignore_select.addr, align 4, !tbaa !46
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern2_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !47
  store i32 %y, i32* %y.addr, align 4, !tbaa !47
  store i32 %w, i32* %w.addr, align 4, !tbaa !47
  store i32 %h, i32* %h.addr, align 4, !tbaa !47
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !47
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %1 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !48
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gx_device_s* %2, i32 5, i8* null, i32 0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 7
  %4 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !58
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i32, i32* %x.addr, align 4, !tbaa !47
  %7 = load i32, i32* %y.addr, align 4, !tbaa !47
  %8 = load i32, i32* %w.addr, align 4, !tbaa !47
  %9 = load i32, i32* %h.addr, align 4, !tbaa !47
  %call2 = call i32 %4(%struct.gx_device_s* %5, i32 %6, i32 %7, i32 %8, i32 %9, i64 0) #3
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %13 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %14 = bitcast %struct.gs_pattern_instance_s* %13 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %14, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !47
  %shl = shl i32 %15, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x3, align 4, !tbaa !59
  %16 = load i32, i32* %y.addr, align 4, !tbaa !47
  %shl4 = shl i32 %16, 8
  %p5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p5, i32 0, i32 1
  store i32 %shl4, i32* %y6, align 4, !tbaa !61
  %17 = load i32, i32* %x.addr, align 4, !tbaa !47
  %18 = load i32, i32* %w.addr, align 4, !tbaa !47
  %add = add nsw i32 %17, %18
  %shl7 = shl i32 %add, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl7, i32* %x8, align 4, !tbaa !62
  %19 = load i32, i32* %y.addr, align 4, !tbaa !47
  %20 = load i32, i32* %h.addr, align 4, !tbaa !47
  %add9 = add nsw i32 %19, %20
  %shl10 = shl i32 %add9, 8
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 1
  store i32 %shl10, i32* %y12, align 4, !tbaa !63
  %21 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %21, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %22 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %24, i32 0, i32 2
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %26 = bitcast %struct.gs_state_s* %25 to %struct.gs_imager_state_s*
  %27 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %27, i32 0, i32 5
  %28 = load i32, i32* %shfill, align 4, !tbaa !12
  %tobool13 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  %call14 = call i32 @gs_shading_do_fill_rectangle(%struct.gs_shading_s* %22, %struct.gs_fixed_rect_s* %rect, %struct.gx_device_s* %23, %struct.gs_imager_state_s* %26, i32 %lnot.ext) #3
  store i32 %call14, i32* %retval
  %29 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern2_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !22
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %5 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %ccolor2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 4
  %pattern3 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor2, i32 0, i32 0
  %7 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern3, align 8, !tbaa !17
  %cmp4 = icmp eq %struct.gs_pattern_instance_s* %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

declare i32 @gx_dc_cannot_write(%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*) #1

declare i32 @gx_dc_cannot_read(%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*) #1

declare i32 @gx_dc_pattern_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_pattern2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_shade_bbox_transform2fixed(%struct.gs_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gs_fixed_rect_s* %rfixed) #0 {
entry:
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %rfixed.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev_rect = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rfixed, %struct.gs_fixed_rect_s** %rfixed.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_rect_s* %dev_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 5
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_bbox_transform(%struct.gs_rect_s* %2, %struct.gs_matrix_s* %4, %struct.gs_rect_s* %dev_rect) #3
  store i32 %call, i32* %code, align 4, !tbaa !47
  %5 = load i32, i32* %code, align 4, !tbaa !47
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %6 = load double, double* %x, align 8, !tbaa !65
  %mul = fmul double %6, 2.560000e+02
  %conv = fptosi double %mul to i32
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rfixed.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %conv, i32* %x2, align 4, !tbaa !59
  %p3 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 1
  %8 = load double, double* %y, align 8, !tbaa !67
  %mul4 = fmul double %8, 2.560000e+02
  %conv5 = fptosi double %mul4 to i32
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rfixed.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %9, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  store i32 %conv5, i32* %y7, align 4, !tbaa !61
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_rect, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %10 = load double, double* %x8, align 8, !tbaa !68
  %mul9 = fmul double %10, 2.560000e+02
  %conv10 = fptosi double %mul9 to i32
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rfixed.addr, align 8, !tbaa !1
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 0
  store i32 %conv10, i32* %x12, align 4, !tbaa !62
  %q13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dev_rect, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q13, i32 0, i32 1
  %12 = load double, double* %y14, align 8, !tbaa !69
  %mul15 = fmul double %12, 2.560000e+02
  %conv16 = fptosi double %mul15 to i32
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rfixed.addr, align 8, !tbaa !1
  %q17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %13, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q17, i32 0, i32 1
  store i32 %conv16, i32* %y18, align 4, !tbaa !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %code, align 4, !tbaa !47
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gs_rect_s* %dev_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %16) #2
  ret i32 %14
}

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_get_bbox(%struct.gx_device_color_s* %pdevc, %struct.gs_fixed_rect_s* %bbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %bbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %bbox, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %6, i32 0, i32 1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  %7 = load i32, i32* %have_BBox, align 4, !tbaa !70
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat1 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %8, i32 0, i32 4
  %Shading2 = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat1, i32 0, i32 4
  %9 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading2, align 8, !tbaa !64
  %params3 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %9, i32 0, i32 1
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params3, i32 0, i32 4
  %10 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %10, i32 0, i32 2
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %12 = bitcast %struct.gs_state_s* %11 to %struct.gs_imager_state_s*
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_pattern2_shade_bbox_transform2fixed(%struct.gs_rect_s* %BBox, %struct.gs_imager_state_s* %12, %struct.gs_fixed_rect_s* %13) #3
  store i32 %call, i32* %code, align 4, !tbaa !47
  %14 = load i32, i32* %code, align 4, !tbaa !47
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !47
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_color_has_bbox(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  store %struct.gs_shading_s* %6, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %7 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %7, i32 0, i32 1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  %8 = load i32, i32* %have_BBox, align 4, !tbaa !70
  %9 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_clip_with_bbox(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %pdev, %struct.gx_clip_path_s* %cpath_local, %struct.gx_clip_path_s** %ppcpath1) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cpath_local.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppcpath1.addr = alloca %struct.gx_clip_path_s**, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %box_path = alloca %struct.gx_path_s, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %cpath_local, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s** %ppcpath1, %struct.gx_clip_path_s*** %ppcpath1.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_dc_pattern2_color_has_bbox(%struct.gx_device_color_s* %1) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.16

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %3 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !48
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 %3(%struct.gx_device_s* %4, i32 4, i8* null, i32 0) #3
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true.3
  %5 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %7 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %8 = bitcast %struct.gs_pattern_instance_s* %7 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %8, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %9 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #2
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath1.addr, align 8, !tbaa !1
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %11, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.gx_clip_path_s* %12, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath1.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %13, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %15, %cond.true ], [ %17, %cond.false ]
  store %struct.gs_memory_s* %cond, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call7 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %box_path, %struct.gx_path_s* null, %struct.gs_memory_s* %19) #3
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_dc_shading_path_add_box(%struct.gx_path_s* %box_path, %struct.gx_device_color_s* %20) #3
  store i32 %call8, i32* %code, align 4, !tbaa !47
  %21 = load i32, i32* %code, align 4, !tbaa !47
  %cmp9 = icmp eq i32 %21, -13
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %cond.end
  store i32 0, i32* %code, align 4, !tbaa !47
  br label %if.end.15

if.else:                                          ; preds = %cond.end
  %22 = load i32, i32* %code, align 4, !tbaa !47
  %cmp11 = icmp sge i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %24 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath1.addr, align 8, !tbaa !1
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %24, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call13 = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %23, %struct.gx_clip_path_s* %25, %struct.gs_memory_s* %26) #3
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %28 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %28, i32 0, i32 2
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %30 = bitcast %struct.gs_state_s* %29 to %struct.gs_imager_state_s*
  %call14 = call i32 @gx_cpath_intersect(%struct.gx_clip_path_s* %27, %struct.gx_path_s* %box_path, i32 -1, %struct.gs_imager_state_s* %30) #3
  store i32 %call14, i32* %code, align 4, !tbaa !47
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %32 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath1.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %31, %struct.gx_clip_path_s** %32, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.10
  call void @gx_path_free(%struct.gx_path_s* %box_path, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #3
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %35) #2
  %36 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true.3, %land.lhs.true, %entry
  ret i32 0
}

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_shading_path_add_box(%struct.gx_path_s* %ppath, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pis = alloca %struct.gs_state_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  store %struct.gs_shading_s* %6, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %7 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %7, i32 0, i32 1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  %8 = load i32, i32* %have_BBox, align 4, !tbaa !70
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = bitcast %struct.gs_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %10, i32 0, i32 2
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  store %struct.gs_state_s* %11, %struct.gs_state_s** %pis, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %13, i32 0, i32 1
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params1, i32 0, i32 4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pis, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 5
  %call = call i32 @gs_shading_path_add_box(%struct.gx_path_s* %12, %struct.gs_rect_s* %BBox, %struct.gs_matrix_fixed_s* %ctm) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %15 = bitcast %struct.gs_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %16 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_cpath_intersect(%struct.gx_clip_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*) #1

declare void @gx_path_free(%struct.gx_path_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_clip_with_bbox_simple(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %pdev, %struct.gx_clip_path_s* %cpath_local) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cpath_local.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %box_path = alloca %struct.gx_path_s, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %cpath_local, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !47
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_dc_pattern2_color_has_bbox(%struct.gx_device_color_s* %2) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.13

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %4 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !48
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 %4(%struct.gx_device_s* %5, i32 4, i8* null, i32 0) #3
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.3
  %6 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %8 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %9 = bitcast %struct.gs_pattern_instance_s* %8 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %9, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %10 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #2
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call5 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %box_path, %struct.gx_path_s* null, %struct.gs_memory_s* %14) #3
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_dc_shading_path_add_box(%struct.gx_path_s* %box_path, %struct.gx_device_color_s* %15) #3
  store i32 %call6, i32* %code, align 4, !tbaa !47
  %16 = load i32, i32* %code, align 4, !tbaa !47
  %cmp7 = icmp eq i32 %16, -13
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %code, align 4, !tbaa !47
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !47
  %cmp9 = icmp sge i32 %17, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cpath_local.addr, align 8, !tbaa !1
  %19 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %19, i32 0, i32 2
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %21 = bitcast %struct.gs_state_s* %20 to %struct.gs_imager_state_s*
  %call11 = call i32 @gx_cpath_intersect(%struct.gx_clip_path_s* %18, %struct.gx_path_s* %box_path, i32 -1, %struct.gs_imager_state_s* %21) #3
  store i32 %call11, i32* %code, align 4, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.8
  call void @gx_path_free(%struct.gx_path_s* %box_path, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #3
  %22 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %23) #2
  %24 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true.3, %land.lhs.true, %entry
  %25 = load i32, i32* %code, align 4, !tbaa !47
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_is_rectangular_cell(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %pdev, %struct.gs_fixed_rect_s* %rect) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  %p = alloca %struct.gs_fixed_point_s, align 4
  %q = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_dc_pattern2_color_has_bbox(%struct.gx_device_color_s* %1) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.79

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %3 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !48
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 %3(%struct.gx_device_s* %4, i32 4, i8* null, i32 0) #3
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end.79

if.then:                                          ; preds = %land.lhs.true.3
  %5 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %7 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %8 = bitcast %struct.gs_pattern_instance_s* %7 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %8, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %9 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %10, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %11 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  store %struct.gs_shading_s* %11, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %12 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast %struct.gs_fixed_point_s* %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %14, i32 0, i32 2
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 5
  %16 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 1
  %17 = load float, float* %xy, align 4, !tbaa !84
  %conv = fpext float %17 to double
  %cmp5 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.74

land.lhs.true.7:                                  ; preds = %if.then
  %18 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved8 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %18, i32 0, i32 2
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %saved8, align 8, !tbaa !29
  %ctm9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 5
  %20 = bitcast %struct.gs_matrix_fixed_s* %ctm9 to %struct.gs_matrix_s*
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 2
  %21 = load float, float* %yx, align 4, !tbaa !85
  %conv10 = fpext float %21 to double
  %cmp11 = fcmp oeq double %conv10, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.end.74

if.then.13:                                       ; preds = %land.lhs.true.7
  %22 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %22, i32 0, i32 1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  %23 = load i32, i32* %have_BBox, align 4, !tbaa !70
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then.15, label %if.end.73

if.then.15:                                       ; preds = %if.then.13
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved16 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %25, i32 0, i32 2
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %saved16, align 8, !tbaa !29
  %ctm17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 5
  %27 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %27, i32 0, i32 1
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params18, i32 0, i32 4
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 0
  %28 = load double, double* %x, align 8, !tbaa !86
  %29 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %29, i32 0, i32 1
  %BBox21 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params20, i32 0, i32 4
  %p22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox21, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p22, i32 0, i32 1
  %30 = load double, double* %y, align 8, !tbaa !87
  %call23 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm17, double %28, double %30, %struct.gs_fixed_point_s* %p) #3
  store i32 %call23, i32* %code, align 4, !tbaa !47
  %31 = load i32, i32* %code, align 4, !tbaa !47
  %cmp24 = icmp slt i32 %31, 0
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.15
  %32 = load i32, i32* %code, align 4, !tbaa !47
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.15
  %33 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved27 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %33, i32 0, i32 2
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %saved27, align 8, !tbaa !29
  %ctm28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 5
  %35 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %35, i32 0, i32 1
  %BBox30 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params29, i32 0, i32 4
  %q31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox30, i32 0, i32 1
  %x32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q31, i32 0, i32 0
  %36 = load double, double* %x32, align 8, !tbaa !88
  %37 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %37, i32 0, i32 1
  %BBox34 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params33, i32 0, i32 4
  %q35 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox34, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q35, i32 0, i32 1
  %38 = load double, double* %y36, align 8, !tbaa !89
  %call37 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm28, double %36, double %38, %struct.gs_fixed_point_s* %q) #3
  store i32 %call37, i32* %code, align 4, !tbaa !47
  %39 = load i32, i32* %code, align 4, !tbaa !47
  %cmp38 = icmp slt i32 %39, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  %40 = load i32, i32* %code, align 4, !tbaa !47
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %41 = load i32, i32* %x42, align 4, !tbaa !90
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %42 = load i32, i32* %x43, align 4, !tbaa !90
  %cmp44 = icmp sgt i32 %41, %42
  br i1 %cmp44, label %if.then.46, label %if.end.55

if.then.46:                                       ; preds = %if.end.41
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %43 = load i32, i32* %x47, align 4, !tbaa !90
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %44 = load i32, i32* %x48, align 4, !tbaa !90
  %xor = xor i32 %44, %43
  store i32 %xor, i32* %x48, align 4, !tbaa !90
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %45 = load i32, i32* %x49, align 4, !tbaa !90
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %46 = load i32, i32* %x50, align 4, !tbaa !90
  %xor51 = xor i32 %46, %45
  store i32 %xor51, i32* %x50, align 4, !tbaa !90
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %47 = load i32, i32* %x52, align 4, !tbaa !90
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %48 = load i32, i32* %x53, align 4, !tbaa !90
  %xor54 = xor i32 %48, %47
  store i32 %xor54, i32* %x53, align 4, !tbaa !90
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.46, %if.end.41
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %49 = load i32, i32* %y56, align 4, !tbaa !91
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %50 = load i32, i32* %y57, align 4, !tbaa !91
  %cmp58 = icmp sgt i32 %49, %50
  br i1 %cmp58, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %if.end.55
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %51 = load i32, i32* %y61, align 4, !tbaa !91
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %52 = load i32, i32* %y62, align 4, !tbaa !91
  %xor63 = xor i32 %52, %51
  store i32 %xor63, i32* %y62, align 4, !tbaa !91
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %53 = load i32, i32* %y64, align 4, !tbaa !91
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %54 = load i32, i32* %y65, align 4, !tbaa !91
  %xor66 = xor i32 %54, %53
  store i32 %xor66, i32* %y65, align 4, !tbaa !91
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %55 = load i32, i32* %y67, align 4, !tbaa !91
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %56 = load i32, i32* %y68, align 4, !tbaa !91
  %xor69 = xor i32 %56, %55
  store i32 %xor69, i32* %y68, align 4, !tbaa !91
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.60, %if.end.55
  %57 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %57, i32 0, i32 0
  %58 = bitcast %struct.gs_fixed_point_s* %p71 to i8*
  %59 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 8, i32 4, i1 false), !tbaa.struct !92
  %60 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %60, i32 0, i32 1
  %61 = bitcast %struct.gs_fixed_point_s* %q72 to i8*
  %62 = bitcast %struct.gs_fixed_point_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 8, i32 4, i1 false), !tbaa.struct !92
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.then.40, %if.then.26
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  br label %cleanup.75

if.end.73:                                        ; preds = %if.then.13
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.7, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %if.end.74, %cleanup
  %64 = bitcast %struct.gs_fixed_point_s* %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup.75
  br label %if.end.79

if.end.79:                                        ; preds = %cleanup.cont, %land.lhs.true.3, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %cleanup.75
  %68 = load i32, i32* %retval
  ret i32 %68

unreachable:                                      ; preds = %cleanup.75
  unreachable
}

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gx_dc_pattern2_get_color_space(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  store %struct.gs_shading_s* %6, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %7 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %7, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !93
  %9 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret %struct.gs_color_space_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_can_overlap(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %cmp = icmp ne %struct.gx_device_color_type_s* %2, @gx_dc_pattern2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %4 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %5 = bitcast %struct.gs_pattern_instance_s* %4 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %5, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %6 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %6, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %7 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %7, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %8 = load i32, i32* %type1, align 4, !tbaa !94
  switch i32 %8, label %sw.default [
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.then
  %9 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pattern2_has_background(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %Shading = alloca %struct.gs_shading_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_shading_s** %Shading to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %cmp = icmp ne %struct.gx_device_color_type_s* %3, @gx_dc_pattern2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %5 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !17
  %6 = bitcast %struct.gs_pattern_instance_s* %5 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %6, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %7 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %7, i32 0, i32 4
  %Shading1 = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %8 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading1, align 8, !tbaa !64
  store %struct.gs_shading_s* %8, %struct.gs_shading_s** %Shading, align 8, !tbaa !1
  %9 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %9, i32 0, i32 5
  %10 = load i32, i32* %shfill, align 4, !tbaa !12
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %11 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %11, i32 0, i32 1
  %Background = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 2
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background, align 8, !tbaa !95
  %cmp2 = icmp ne %struct.gs_client_color_s* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %13 = phi i1 [ false, %if.end ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then
  %14 = bitcast %struct.gs_shading_s** %Shading to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern2_uses_base_space(%struct.gs_pattern_template_s* %ptemp) #0 {
entry:
  %ptemp.addr = alloca %struct.gs_pattern_template_s*, align 8
  store %struct.gs_pattern_template_s* %ptemp, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern2_make_pattern(%struct.gs_client_color_s* %pcc, %struct.gs_pattern_template_s* %pcp, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcp.addr = alloca %struct.gs_pattern_template_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptemp = alloca %struct.gs_pattern2_template_s*, align 8
  %code = alloca i32, align 4
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_pattern_template_s* %pcp, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_template_s** %ptemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_pattern_template_s* %1 to %struct.gs_pattern2_template_s*
  store %struct.gs_pattern2_template_s* %2, %struct.gs_pattern2_template_s** %ptemp, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %5 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_make_pattern_common(%struct.gs_client_color_s* %4, %struct.gs_pattern_template_s* %5, %struct.gs_matrix_s* %6, %struct.gs_state_s* %7, %struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_pattern2_instance) #3
  store i32 %call, i32* %code, align 4, !tbaa !47
  %9 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i32, i32* %code, align 4, !tbaa !47
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !47
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 0
  %13 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !5
  %14 = bitcast %struct.gs_pattern_instance_s* %13 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %14, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %15 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %15, i32 0, i32 4
  %16 = load %struct.gs_pattern2_template_s*, %struct.gs_pattern2_template_s** %ptemp, align 8, !tbaa !1
  %17 = bitcast %struct.gs_pattern2_template_s* %templat to i8*
  %18 = bitcast %struct.gs_pattern2_template_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 48, i32 8, i1 false), !tbaa.struct !96
  %19 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %19, i32 0, i32 5
  store i32 0, i32* %shfill, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gs_pattern2_template_s** %ptemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_pattern_template_s* @gs_pattern2_get_pattern(%struct.gs_pattern_instance_s* %pinst) #0 {
entry:
  %pinst.addr = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_pattern_instance_s* %pinst, %struct.gs_pattern_instance_s** %pinst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pattern_instance_s* %0 to %struct.gs_pattern2_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %1, i32 0, i32 4
  %2 = bitcast %struct.gs_pattern2_template_s* %templat to %struct.gs_pattern_template_s*
  ret %struct.gs_pattern_template_s* %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern2_remap_color(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !46
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern2, %struct.gx_device_color_type_s** %type, align 8, !tbaa !22
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_client_color_s* %ccolor to i8*
  %4 = bitcast %struct.gs_client_color_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 264, i32 8, i1 false), !tbaa.struct !98
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !99
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_pattern2_set_color(%struct.gs_client_color_s* %pcc, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %num_comps = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !5
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !64
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %6, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !93
  store %struct.gs_color_space_s* %7, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 22
  %12 = load i32, i32* %overprint_mode, align 4, !tbaa !100
  %13 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %13, i32 0, i32 2
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !29
  %overprint_mode1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 22
  store i32 %12, i32* %overprint_mode1, align 4, !tbaa !100
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 21
  %16 = load i32, i32* %overprint, align 4, !tbaa !101
  %17 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved2 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %17, i32 0, i32 2
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %saved2, align 8, !tbaa !29
  %overprint3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 21
  store i32 %16, i32* %overprint3, align 4, !tbaa !101
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 78
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %21 = load i32, i32* %num_components, align 4, !tbaa !103
  store i32 %21, i32* %num_comps, align 4, !tbaa !47
  store i32 0, i32* %k, align 4, !tbaa !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !47
  %23 = load i32, i32* %num_comps, align 4, !tbaa !47
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %k, align 4, !tbaa !47
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved4 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %25, i32 0, i32 2
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %saved4, align 8, !tbaa !29
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 50
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4, !tbaa !47
  %28 = load i32, i32* %k, align 4, !tbaa !47
  %idxprom5 = sext i32 %28 to i64
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 50
  %color_map7 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map6, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %color_map7, i32 0, i64 %idxprom5
  store i32 %27, i32* %arrayidx8, align 4, !tbaa !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %k, align 4, !tbaa !47
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4, !tbaa !47
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %31, i32 0, i32 0
  %32 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !104
  %set_overprint = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %32, i32 0, i32 12
  %33 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %set_overprint, align 8, !tbaa !106
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %33(%struct.gs_color_space_s* %34, %struct.gs_state_s* %35) #3
  store i32 %call, i32* %code, align 4, !tbaa !47
  %36 = load i32, i32* %code, align 4, !tbaa !47
  %37 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret i32 %36
}

declare i32 @gs_make_pattern_common(%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pattern2_instance_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptype = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !47
  store i32 %index, i32* %index.addr, align 4, !tbaa !47
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !47
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !tbaa !47
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %sw.default
  %2 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern2_template, i32 0, i32 4), align 8, !tbaa !108
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_pattern2_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_pattern2_template_s* %templat to i8*
  %8 = load i32, i32* %index.addr, align 4, !tbaa !47
  %sub = sub nsw i32 %8, 0
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %7, i32 48, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_pattern2_template, %struct.gc_state_s* %10) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_ptr_procs_s* %11, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %12, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !110
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %14 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  br label %return

if.end.2:                                         ; preds = %sw.default
  %15 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern_instance, i32 0, i32 4), align 8, !tbaa !108
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = load i32, i32* %size.addr, align 4, !tbaa !47
  %19 = load i32, i32* %index.addr, align 4, !tbaa !47
  %sub3 = sub nsw i32 %19, 3
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_ptr_procs_s* %15(%struct.gs_memory_s* %16, i8* %17, i32 %18, i32 %sub3, %struct.enum_ptr_s* %20, %struct.gs_memory_struct_type_s* @st_pattern_instance, %struct.gc_state_s* %21) #3
  store %struct.gs_ptr_procs_s* %call4, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %if.end.2, %cleanup
  %22 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %22
}

; Function Attrs: nounwind uwtable
define internal void @pattern2_instance_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !47
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern_instance, i32 0, i32 5), align 8, !tbaa !112
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !47
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_pattern_instance, %struct.gc_state_s* %3) #3
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pattern2_template, i32 0, i32 5), align 8, !tbaa !112
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_pattern2_instance_s*
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_pattern2_template_s* %templat to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %7, i32 48, %struct.gs_memory_struct_type_s* @st_pattern2_template, %struct.gc_state_s* %8) #3
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @gs_shading_do_fill_rectangle(%struct.gs_shading_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, i32) #1

declare i32 @gs_shading_path_add_box(%struct.gx_path_s*, %struct.gs_rect_s*, %struct.gs_matrix_fixed_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_client_color_s", !2, i64 0, !7, i64 8}
!7 = !{!"gs_paint_color_s", !3, i64 0}
!8 = !{!9, !2, i64 24}
!9 = !{!"gs_pattern_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !15, i64 96}
!13 = !{!"gs_pattern2_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40, !14, i64 48, !15, i64 96}
!14 = !{!"gs_pattern2_template_s", !2, i64 0, !15, i64 8, !16, i64 16, !2, i64 32, !2, i64 40}
!15 = !{!"int", !3, i64 0}
!16 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!17 = !{!18, !2, i64 368}
!18 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !19, i64 352, !15, i64 360, !6, i64 368, !20, i64 632}
!19 = !{!"gs_int_point_s", !15, i64 0, !15, i64 4}
!20 = !{!"_mask", !21, i64 0, !11, i64 8, !2, i64 16}
!21 = !{!"mp_", !15, i64 0, !15, i64 4}
!22 = !{!18, !2, i64 0}
!23 = !{!24, !2, i64 0}
!24 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !19, i64 336}
!25 = !{!13, !11, i64 40}
!26 = !{!27, !11, i64 0}
!27 = !{!"_pattern2", !11, i64 0, !15, i64 8}
!28 = !{!27, !15, i64 8}
!29 = !{!13, !2, i64 32}
!30 = !{!31, !2, i64 392}
!31 = !{!"gs_state_s", !15, i64 0, !2, i64 8, !2, i64 16, !32, i64 24, !15, i64 128, !36, i64 132, !15, i64 168, !37, i64 176, !37, i64 192, !15, i64 208, !15, i64 212, !39, i64 216, !3, i64 220, !40, i64 224, !40, i64 228, !41, i64 232, !11, i64 240, !15, i64 248, !15, i64 252, !15, i64 256, !2, i64 264, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !33, i64 296, !42, i64 300, !15, i64 308, !15, i64 312, !15, i64 316, !33, i64 320, !15, i64 324, !15, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !15, i64 408, !2, i64 416, !2, i64 424, !43, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !44, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !44, i64 1336, !2, i64 1616, !34, i64 1624, !15, i64 1648, !34, i64 1652, !15, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !15, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !36, i64 1808, !15, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !15, i64 1864, !2, i64 1872, !2, i64 1880, !45, i64 1888}
!32 = !{!"gx_line_params_s", !33, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !15, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !15, i64 36, !34, i64 40, !35, i64 64}
!33 = !{!"float", !3, i64 0}
!34 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!35 = !{!"gx_dash_params_s", !2, i64 0, !15, i64 8, !33, i64 12, !15, i64 16, !33, i64 20, !15, i64 24, !15, i64 28, !33, i64 32}
!36 = !{!"gs_matrix_fixed_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !15, i64 24, !15, i64 28, !15, i64 32}
!37 = !{!"gs_point_s", !38, i64 0, !38, i64 8}
!38 = !{!"double", !3, i64 0}
!39 = !{!"short", !3, i64 0}
!40 = !{!"gs_transparency_source_s", !33, i64 0}
!41 = !{!"gs_xstate_trans_flags", !15, i64 0, !15, i64 4}
!42 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 4}
!43 = !{!"gx_transfer_s", !15, i64 0, !2, i64 8, !15, i64 16, !2, i64 24, !15, i64 32, !2, i64 40, !15, i64 48, !2, i64 56}
!44 = !{!"gs_devicen_color_map_s", !15, i64 0, !3, i64 4, !15, i64 8, !15, i64 12, !11, i64 16, !3, i64 24}
!45 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!46 = !{!3, !3, i64 0}
!47 = !{!15, !15, i64 0}
!48 = !{!49, !2, i64 1664}
!49 = !{!"gx_device_s", !15, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !15, i64 40, !2, i64 48, !10, i64 56, !15, i64 80, !15, i64 84, !15, i64 88, !50, i64 96, !52, i64 816, !15, i64 832, !15, i64 836, !15, i64 840, !15, i64 844, !15, i64 848, !15, i64 852, !3, i64 856, !3, i64 864, !15, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !15, i64 944, !15, i64 948, !15, i64 952, !15, i64 956, !15, i64 960, !11, i64 968, !11, i64 976, !53, i64 984, !15, i64 1052, !15, i64 1056, !54, i64 1064, !2, i64 1104, !3, i64 1112, !56, i64 1120, !57, i64 1144}
!50 = !{!"gx_device_color_info_s", !15, i64 0, !15, i64 4, !3, i64 8, !39, i64 12, !3, i64 14, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !51, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !15, i64 712}
!51 = !{!"gx_device_anti_alias_info_s", !15, i64 0, !15, i64 4}
!52 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!53 = !{!"gx_stroked_gradient_recognizer_s", !15, i64 0, !3, i64 4, !3, i64 36}
!54 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !55, i64 16, !15, i64 32, !3, i64 36}
!55 = !{!"gx_band_params_s", !15, i64 0, !15, i64 4, !11, i64 8}
!56 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!58 = !{!49, !2, i64 1200}
!59 = !{!60, !15, i64 0}
!60 = !{!"gs_fixed_rect_s", !42, i64 0, !42, i64 8}
!61 = !{!60, !15, i64 4}
!62 = !{!60, !15, i64 8}
!63 = !{!60, !15, i64 12}
!64 = !{!13, !2, i64 88}
!65 = !{!66, !38, i64 0}
!66 = !{!"gs_rect_s", !37, i64 0, !37, i64 16}
!67 = !{!66, !38, i64 8}
!68 = !{!66, !38, i64 16}
!69 = !{!66, !38, i64 24}
!70 = !{!71, !15, i64 40}
!71 = !{!"gs_shading_s", !72, i64 0, !74, i64 16}
!72 = !{!"gs_shading_head_s", !3, i64 0, !73, i64 8}
!73 = !{!"gs_shading_procs_s", !2, i64 0}
!74 = !{!"gs_shading_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !15, i64 24, !66, i64 32, !15, i64 64}
!75 = !{!76, !2, i64 40}
!76 = !{!"gx_clip_path_s", !77, i64 0, !80, i64 128, !15, i64 232, !60, i64 236, !60, i64 252, !2, i64 272, !15, i64 280, !2, i64 288, !11, i64 296}
!77 = !{!"gx_path_s", !78, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !60, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !15, i64 104, !15, i64 108, !42, i64 112, !2, i64 120}
!78 = !{!"gx_path_segments_s", !10, i64 0, !79, i64 24}
!79 = !{!"psc_", !2, i64 0, !2, i64 8}
!80 = !{!"gx_clip_rect_list_s", !10, i64 0, !81, i64 24}
!81 = !{!"gx_clip_list_s", !82, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !15, i64 64, !15, i64 68, !15, i64 72}
!82 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !3, i64 32}
!83 = !{!49, !2, i64 24}
!84 = !{!34, !33, i64 4}
!85 = !{!34, !33, i64 8}
!86 = !{!71, !38, i64 48}
!87 = !{!71, !38, i64 56}
!88 = !{!71, !38, i64 64}
!89 = !{!71, !38, i64 72}
!90 = !{!42, !15, i64 0}
!91 = !{!42, !15, i64 4}
!92 = !{i64 0, i64 4, !47, i64 4, i64 4, !47}
!93 = !{!71, !2, i64 16}
!94 = !{!71, !3, i64 0}
!95 = !{!71, !2, i64 32}
!96 = !{i64 0, i64 8, !1, i64 8, i64 4, !47, i64 16, i64 8, !97, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!97 = !{!11, !11, i64 0}
!98 = !{i64 0, i64 8, !1, i64 8, i64 256, !46}
!99 = !{!18, !15, i64 360}
!100 = !{!31, !15, i64 276}
!101 = !{!31, !15, i64 272}
!102 = !{!31, !2, i64 1872}
!103 = !{!49, !15, i64 100}
!104 = !{!105, !2, i64 0}
!105 = !{!"gs_color_space_s", !2, i64 0, !10, i64 8, !11, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!106 = !{!107, !2, i64 88}
!107 = !{!"gs_color_space_type_s", !3, i64 0, !15, i64 4, !15, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!108 = !{!109, !2, i64 32}
!109 = !{!"gs_memory_struct_type_s", !15, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!110 = !{!111, !2, i64 0}
!111 = !{!"enum_ptr_s", !2, i64 0, !15, i64 8}
!112 = !{!109, !2, i64 40}
