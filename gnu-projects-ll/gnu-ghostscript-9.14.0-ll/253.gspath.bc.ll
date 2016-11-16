; ModuleID = './gspath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"gx_effective_clip_path\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gs_clippath\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_newpath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 6
  store i32 0, i32* %current_point_valid, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %call = call i32 @gx_path_new(%struct.gx_path_s* %2) #5
  ret i32 %call
}

declare i32 @gx_path_new(%struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_closepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  store %struct.gx_path_s* %2, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %4, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %5 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 7
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %subpath_start = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 8
  %9 = bitcast %struct.gs_point_s* %current_point to i8*
  %10 = bitcast %struct.gs_point_s* %subpath_start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !25
  %11 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_upmergepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 56
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !27
  store %struct.gs_state_s* %2, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 61
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 61
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8, !tbaa !23
  %call = call i32 @gx_path_add_path(%struct.gx_path_s* %5, %struct.gx_path_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %current_point_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 7
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 7
  %14 = bitcast %struct.gs_point_s* %current_point to i8*
  %15 = bitcast %struct.gs_point_s* %current_point4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !25
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %subpath_start = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 8
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %subpath_start5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 8
  %18 = bitcast %struct.gs_point_s* %subpath_start to i8*
  %19 = bitcast %struct.gs_point_s* %subpath_start5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !25
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %current_point_valid6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 6
  store i32 1, i32* %current_point_valid6, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @gx_path_add_path(%struct.gx_path_s*, %struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define %struct.gx_path_s* @gx_current_path(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 61
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  ret %struct.gx_path_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentpoint(%struct.gs_state_s* %pgs, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 6
  %1 = load i32, i32* %current_point_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %4 = load double, double* %x, align 8, !tbaa !28
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point1, i32 0, i32 1
  %6 = load double, double* %y, align 8, !tbaa !29
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call = call i32 @gs_itransform(%struct.gs_state_s* %2, double %4, double %6, %struct.gs_point_s* %7) #5
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_itransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_moveto_aux(%struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %clamp_coordinates = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 9
  %3 = load i32, i32* %clamp_coordinates, align 4, !tbaa !30
  %4 = load double, double* %x.addr, align 8, !tbaa !26
  %5 = load double, double* %y.addr, align 8, !tbaa !26
  %call = call i32 @clamp_point_aux(i32 %3, %struct.gs_fixed_point_s* %pt, double %4, double %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %hpgl_path_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 4
  %9 = load i32, i32* %hpgl_path_mode, align 4, !tbaa !32
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 8
  %11 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 2
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %13 = load i32, i32* %x4, align 4, !tbaa !39
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %14 = load i32, i32* %y5, align 4, !tbaa !40
  %call6 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %12, i32 %13, i32 %14, i32 0) #5
  store i32 %call6, i32* %code, align 4, !tbaa !24
  %15 = load i32, i32* %code, align 4, !tbaa !24
  %cmp7 = icmp slt i32 %15, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.3
  %16 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.3
  %17 = load double, double* %x.addr, align 8, !tbaa !26
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 7
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %17, double* %x11, align 8, !tbaa !41
  %19 = load double, double* %y.addr, align 8, !tbaa !26
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 7
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point12, i32 0, i32 1
  store double %19, double* %y13, align 8, !tbaa !42
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x14, align 4, !tbaa !39
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %23 = load i32, i32* %y15, align 4, !tbaa !40
  %call16 = call i32 @gx_path_add_point(%struct.gx_path_s* %21, i32 %22, i32 %23) #5
  store i32 %call16, i32* %code, align 4, !tbaa !24
  %24 = load i32, i32* %code, align 4, !tbaa !24
  %cmp17 = icmp slt i32 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %25 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.else
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 8
  %27 = load i8, i8* %state_flags21, align 1, !tbaa !33
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %start_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 7
  store i8 %27, i8* %start_flags, align 1, !tbaa !43
  %29 = load double, double* %x.addr, align 8, !tbaa !26
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 7
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point22, i32 0, i32 0
  store double %29, double* %x23, align 8, !tbaa !41
  %31 = load double, double* %y.addr, align 8, !tbaa !26
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 7
  %y25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point24, i32 0, i32 1
  store double %31, double* %y25, align 8, !tbaa !42
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %subpath_start = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 8
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 7
  %35 = bitcast %struct.gs_point_s* %subpath_start to i8*
  %36 = bitcast %struct.gs_point_s* %current_point26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.20, %if.end.10
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 6
  store i32 1, i32* %current_point_valid, align 4, !tbaa !44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.19, %if.then.9, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clamp_point_aux(i32 %clamp_coordinates, %struct.gs_fixed_point_s* %ppt, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %clamp_coordinates.addr = alloca i32, align 4
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store i32 %clamp_coordinates, i32* %clamp_coordinates.addr, align 4, !tbaa !24
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = load double, double* %x.addr, align 8, !tbaa !26
  %cmp = fcmp oge double %0, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !tbaa !26
  %cmp1 = fcmp olt double %1, 8.388608e+06
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load double, double* %y.addr, align 8, !tbaa !26
  %cmp2 = fcmp oge double %2, -8.388608e+06
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load double, double* %y.addr, align 8, !tbaa !26
  %cmp4 = fcmp olt double %3, 8.388608e+06
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false, %land.lhs.true, %entry
  %4 = load i32, i32* %clamp_coordinates.addr, align 4, !tbaa !24
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %6 = load double, double* %x.addr, align 8, !tbaa !26
  %7 = load double, double* %y.addr, align 8, !tbaa !26
  call void @clamp_point(%struct.gs_fixed_point_s* %5, double %6, double %7) #5
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true.3
  %8 = load double, double* %x.addr, align 8, !tbaa !26
  %mul = fmul double %8, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #6
  %conv = fptosi double %call to i32
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i32 0, i32 0
  store i32 %conv, i32* %x6, align 4, !tbaa !39
  %10 = load double, double* %y.addr, align 8, !tbaa !26
  %mul7 = fmul double %10, 2.560000e+02
  %add8 = fadd double %mul7, 5.000000e-01
  %call9 = call double @floor(double %add8) #6
  %conv10 = fptosi double %call9 to i32
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 1
  store i32 %conv10, i32* %y11, align 4, !tbaa !40
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.5
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gx_path_add_gap_notes(%struct.gx_path_s*, i32, i32, i32) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_moveto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load double, double* %x.addr, align 8, !tbaa !26
  %3 = load double, double* %y.addr, align 8, !tbaa !26
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %call = call i32 @gs_point_transform_compat(double %2, double %3, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %pt) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %5 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_state_s* %7 to %struct.gs_imager_state_s*
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 61
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %11 = load double, double* %x1, align 8, !tbaa !45
  %y2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %12 = load double, double* %y2, align 8, !tbaa !46
  %call3 = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %8, %struct.gx_path_s* %10, double %11, double %12) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_point_transform_compat(double %x, double %y, %struct.gs_matrix_fixed_s* %m, %struct.gs_point_s* %pt) #3 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %m.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  store %struct.gs_matrix_fixed_s* %m, %struct.gs_matrix_fixed_s** %m.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load double, double* %x.addr, align 8, !tbaa !26
  %1 = load double, double* %y.addr, align 8, !tbaa !26
  %2 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %m.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_fixed_s* %2 to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_point_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_rmoveto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %dd = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %dd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 6
  %3 = load i32, i32* %current_point_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !tbaa !26
  %5 = load double, double* %y.addr, align 8, !tbaa !26
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %call = call i32 @gs_distance_transform_compat(double %4, double %5, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %dd) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_state_s* %9 to %struct.gs_imager_state_s*
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 61
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd, i32 0, i32 0
  %13 = load double, double* %x3, align 8, !tbaa !45
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %15 = load double, double* %x4, align 8, !tbaa !28
  %add = fadd double %13, %15
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd, i32 0, i32 1
  %16 = load double, double* %y5, align 8, !tbaa !46
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point6, i32 0, i32 1
  %18 = load double, double* %y7, align 8, !tbaa !29
  %add8 = fadd double %16, %18
  %call9 = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %10, %struct.gx_path_s* %12, double %add, double %add8) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_point_s* %dd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_distance_transform_compat(double %x, double %y, %struct.gs_matrix_fixed_s* %m, %struct.gs_point_s* %pt) #3 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %m.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  store %struct.gs_matrix_fixed_s* %m, %struct.gs_matrix_fixed_s** %m.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load double, double* %x.addr, align 8, !tbaa !26
  %1 = load double, double* %y.addr, align 8, !tbaa !26
  %2 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %m.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_fixed_s* %2 to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_lineto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load double, double* %x.addr, align 8, !tbaa !26
  %3 = load double, double* %y.addr, align 8, !tbaa !26
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %call = call i32 @gs_point_transform_compat(double %2, double %3, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %pt) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %5 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %8 = load double, double* %x1, align 8, !tbaa !45
  %y2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %9 = load double, double* %y2, align 8, !tbaa !46
  %call3 = call i32 @gs_lineto_aux(%struct.gs_state_s* %7, double %8, double %9) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_lineto_aux(%struct.gs_state_s* %pgs, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  store %struct.gx_path_s* %2, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 9
  %6 = load i32, i32* %clamp_coordinates, align 4, !tbaa !47
  %7 = load double, double* %x.addr, align 8, !tbaa !26
  %8 = load double, double* %y.addr, align 8, !tbaa !26
  %call = call i32 @clamp_point_aux(i32 %6, %struct.gs_fixed_point_s* %pt, double %7, double %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %9 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %12 = load i32, i32* %x1, align 4, !tbaa !39
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %13 = load i32, i32* %y2, align 4, !tbaa !40
  %call3 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %11, i32 %12, i32 %13, i32 0) #5
  store i32 %call3, i32* %code, align 4, !tbaa !24
  %14 = load i32, i32* %code, align 4, !tbaa !24
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load double, double* %x.addr, align 8, !tbaa !26
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %16, double* %x7, align 8, !tbaa !28
  %18 = load double, double* %y.addr, align 8, !tbaa !26
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 7
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point8, i32 0, i32 1
  store double %18, double* %y9, align 8, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gs_rlineto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %dd = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %dd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 6
  %3 = load i32, i32* %current_point_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !tbaa !26
  %5 = load double, double* %y.addr, align 8, !tbaa !26
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %call = call i32 @gs_distance_transform_compat(double %4, double %5, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %dd) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd, i32 0, i32 0
  %10 = load double, double* %x3, align 8, !tbaa !45
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %12 = load double, double* %x4, align 8, !tbaa !28
  %add = fadd double %10, %12
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd, i32 0, i32 1
  %13 = load double, double* %y5, align 8, !tbaa !46
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point6, i32 0, i32 1
  %15 = load double, double* %y7, align 8, !tbaa !29
  %add8 = fadd double %13, %15
  %call9 = call i32 @gs_lineto_aux(%struct.gs_state_s* %9, double %add, double %add8) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gs_point_s* %dd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gs_curveto(%struct.gs_state_s* %pgs, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %pt1 = alloca %struct.gs_point_s, align 8
  %pt2 = alloca %struct.gs_point_s, align 8
  %pt3 = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !26
  store double %y1, double* %y1.addr, align 8, !tbaa !26
  store double %x2, double* %x2.addr, align 8, !tbaa !26
  store double %y2, double* %y2.addr, align 8, !tbaa !26
  store double %x3, double* %x3.addr, align 8, !tbaa !26
  store double %y3, double* %y3.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %pt1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_point_s* %pt2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.gs_point_s* %pt3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load double, double* %x1.addr, align 8, !tbaa !26
  %5 = load double, double* %y1.addr, align 8, !tbaa !26
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %call = call i32 @gs_point_transform_compat(double %4, double %5, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %pt1) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load double, double* %x2.addr, align 8, !tbaa !26
  %10 = load double, double* %y2.addr, align 8, !tbaa !26
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 5
  %call2 = call i32 @gs_point_transform_compat(double %9, double %10, %struct.gs_matrix_fixed_s* %ctm1, %struct.gs_point_s* %pt2) #5
  store i32 %call2, i32* %code, align 4, !tbaa !24
  %12 = load i32, i32* %code, align 4, !tbaa !24
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load double, double* %x3.addr, align 8, !tbaa !26
  %15 = load double, double* %y3.addr, align 8, !tbaa !26
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 5
  %call7 = call i32 @gs_point_transform_compat(double %14, double %15, %struct.gs_matrix_fixed_s* %ctm6, %struct.gs_point_s* %pt3) #5
  store i32 %call7, i32* %code, align 4, !tbaa !24
  %17 = load i32, i32* %code, align 4, !tbaa !24
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %18 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt1, i32 0, i32 0
  %20 = load double, double* %x, align 8, !tbaa !45
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt1, i32 0, i32 1
  %21 = load double, double* %y, align 8, !tbaa !46
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt2, i32 0, i32 0
  %22 = load double, double* %x11, align 8, !tbaa !45
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt2, i32 0, i32 1
  %23 = load double, double* %y12, align 8, !tbaa !46
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt3, i32 0, i32 0
  %24 = load double, double* %x13, align 8, !tbaa !45
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt3, i32 0, i32 1
  %25 = load double, double* %y14, align 8, !tbaa !46
  %call15 = call i32 @gs_curveto_aux(%struct.gs_state_s* %19, double %20, double %21, double %22, double %23, double %24, double %25) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gs_point_s* %pt3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #2
  %28 = bitcast %struct.gs_point_s* %pt2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #2
  %29 = bitcast %struct.gs_point_s* %pt1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_curveto_aux(%struct.gs_state_s* %pgs, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #3 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %p1 = alloca %struct.gs_fixed_point_s, align 4
  %p2 = alloca %struct.gs_fixed_point_s, align 4
  %p3 = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %ppath = alloca %struct.gx_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !26
  store double %y1, double* %y1.addr, align 8, !tbaa !26
  store double %x2, double* %x2.addr, align 8, !tbaa !26
  store double %y2, double* %y2.addr, align 8, !tbaa !26
  store double %x3, double* %x3.addr, align 8, !tbaa !26
  store double %y3, double* %y3.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_fixed_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_fixed_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gs_fixed_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 61
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  store %struct.gx_path_s* %6, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 9
  %8 = load i32, i32* %clamp_coordinates, align 4, !tbaa !47
  %9 = load double, double* %x1.addr, align 8, !tbaa !26
  %10 = load double, double* %y1.addr, align 8, !tbaa !26
  %call = call i32 @clamp_point_aux(i32 %8, %struct.gs_fixed_point_s* %p1, double %9, double %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %11 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 9
  %14 = load i32, i32* %clamp_coordinates1, align 4, !tbaa !47
  %15 = load double, double* %x2.addr, align 8, !tbaa !26
  %16 = load double, double* %y2.addr, align 8, !tbaa !26
  %call2 = call i32 @clamp_point_aux(i32 %14, %struct.gs_fixed_point_s* %p2, double %15, double %16) #5
  store i32 %call2, i32* %code, align 4, !tbaa !24
  %17 = load i32, i32* %code, align 4, !tbaa !24
  %cmp3 = icmp slt i32 %17, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 9
  %20 = load i32, i32* %clamp_coordinates6, align 4, !tbaa !47
  %21 = load double, double* %x3.addr, align 8, !tbaa !26
  %22 = load double, double* %y3.addr, align 8, !tbaa !26
  %call7 = call i32 @clamp_point_aux(i32 %20, %struct.gs_fixed_point_s* %p3, double %21, double %22) #5
  store i32 %call7, i32* %code, align 4, !tbaa !24
  %23 = load i32, i32* %code, align 4, !tbaa !24
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %24 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %26 = load i32, i32* %x, align 4, !tbaa !39
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %27 = load i32, i32* %y, align 4, !tbaa !40
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %28 = load i32, i32* %x11, align 4, !tbaa !39
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %29 = load i32, i32* %y12, align 4, !tbaa !40
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %30 = load i32, i32* %x13, align 4, !tbaa !39
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %31 = load i32, i32* %y14, align 4, !tbaa !40
  %call15 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 0) #5
  store i32 %call15, i32* %code, align 4, !tbaa !24
  %32 = load i32, i32* %code, align 4, !tbaa !24
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  %33 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.10
  %34 = load double, double* %x3.addr, align 8, !tbaa !26
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 7
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %34, double* %x19, align 8, !tbaa !28
  %36 = load double, double* %y3.addr, align 8, !tbaa !26
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 7
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point20, i32 0, i32 1
  store double %36, double* %y21, align 8, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.9, %if.then.4, %if.then
  %38 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_fixed_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gs_fixed_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.gs_fixed_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @gs_rcurveto(%struct.gs_state_s* %pgs, double %dx1, double %dy1, double %dx2, double %dy2, double %dx3, double %dy3) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx1.addr = alloca double, align 8
  %dy1.addr = alloca double, align 8
  %dx2.addr = alloca double, align 8
  %dy2.addr = alloca double, align 8
  %dx3.addr = alloca double, align 8
  %dy3.addr = alloca double, align 8
  %dd1 = alloca %struct.gs_point_s, align 8
  %dd2 = alloca %struct.gs_point_s, align 8
  %dd3 = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %dx1, double* %dx1.addr, align 8, !tbaa !26
  store double %dy1, double* %dy1.addr, align 8, !tbaa !26
  store double %dx2, double* %dx2.addr, align 8, !tbaa !26
  store double %dy2, double* %dy2.addr, align 8, !tbaa !26
  store double %dx3, double* %dx3.addr, align 8, !tbaa !26
  store double %dy3, double* %dy3.addr, align 8, !tbaa !26
  %0 = bitcast %struct.gs_point_s* %dd1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_point_s* %dd2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.gs_point_s* %dd3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 6
  %5 = load i32, i32* %current_point_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load double, double* %dx1.addr, align 8, !tbaa !26
  %7 = load double, double* %dy1.addr, align 8, !tbaa !26
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 5
  %call = call i32 @gs_distance_transform_compat(double %6, double %7, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_point_s* %dd1) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %9 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %11 = load double, double* %dx2.addr, align 8, !tbaa !26
  %12 = load double, double* %dy2.addr, align 8, !tbaa !26
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 5
  %call4 = call i32 @gs_distance_transform_compat(double %11, double %12, %struct.gs_matrix_fixed_s* %ctm3, %struct.gs_point_s* %dd2) #5
  store i32 %call4, i32* %code, align 4, !tbaa !24
  %14 = load i32, i32* %code, align 4, !tbaa !24
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %15 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.2
  %16 = load double, double* %dx3.addr, align 8, !tbaa !26
  %17 = load double, double* %dy3.addr, align 8, !tbaa !26
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %call9 = call i32 @gs_distance_transform_compat(double %16, double %17, %struct.gs_matrix_fixed_s* %ctm8, %struct.gs_point_s* %dd3) #5
  store i32 %call9, i32* %code, align 4, !tbaa !24
  %19 = load i32, i32* %code, align 4, !tbaa !24
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %20 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd1, i32 0, i32 0
  %22 = load double, double* %x, align 8, !tbaa !45
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 7
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %24 = load double, double* %x13, align 8, !tbaa !28
  %add = fadd double %22, %24
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd1, i32 0, i32 1
  %25 = load double, double* %y, align 8, !tbaa !46
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 7
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point14, i32 0, i32 1
  %27 = load double, double* %y15, align 8, !tbaa !29
  %add16 = fadd double %25, %27
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd2, i32 0, i32 0
  %28 = load double, double* %x17, align 8, !tbaa !45
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 7
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point18, i32 0, i32 0
  %30 = load double, double* %x19, align 8, !tbaa !28
  %add20 = fadd double %28, %30
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd2, i32 0, i32 1
  %31 = load double, double* %y21, align 8, !tbaa !46
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 7
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point22, i32 0, i32 1
  %33 = load double, double* %y23, align 8, !tbaa !29
  %add24 = fadd double %31, %33
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd3, i32 0, i32 0
  %34 = load double, double* %x25, align 8, !tbaa !45
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 7
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point26, i32 0, i32 0
  %36 = load double, double* %x27, align 8, !tbaa !28
  %add28 = fadd double %34, %36
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dd3, i32 0, i32 1
  %37 = load double, double* %y29, align 8, !tbaa !46
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 7
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point30, i32 0, i32 1
  %39 = load double, double* %y31, align 8, !tbaa !29
  %add32 = fadd double %37, %39
  %call33 = call i32 @gs_curveto_aux(%struct.gs_state_s* %21, double %add, double %add16, double %add20, double %add24, double %add28, double %add32) #5
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.6, %if.then.1, %if.then
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.gs_point_s* %dd3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #2
  %42 = bitcast %struct.gs_point_s* %dd2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #2
  %43 = bitcast %struct.gs_point_s* %dd1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @gx_curr_bbox(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %bbox, i32 %comp_type) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %bbox.addr = alloca %struct.gs_rect_s*, align 8
  %comp_type.addr = alloca i32, align 4
  %clip_path = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %path_bbox = alloca %struct.gs_fixed_rect_s, align 4
  %expansion_code = alloca i32, align 4
  %include_path = alloca i32, align 4
  %expansion = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %bbox, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  store i32 %comp_type, i32* %comp_type.addr, align 4, !tbaa !48
  %0 = bitcast %struct.gx_clip_path_s** %clip_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.gs_fixed_rect_s* %path_bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %expansion_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %include_path to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 1, i32* %include_path, align 4, !tbaa !24
  %5 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gx_effective_clip_path(%struct.gs_state_s* %6, %struct.gx_clip_path_s** %clip_path) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %comp_type.addr, align 4, !tbaa !48
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.then.2, label %if.end.24

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %11 = load i32, i32* %x, align 4, !tbaa !49
  %conv = sitofp i32 %11 to double
  %mul = fmul double %conv, 3.906250e-03
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 0
  store double %mul, double* %x4, align 8, !tbaa !54
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 4
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !56
  %conv7 = sitofp i32 %14 to double
  %mul8 = fmul double %conv7, 3.906250e-03
  %15 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p9 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %15, i32 0, i32 0
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p9, i32 0, i32 1
  store double %mul8, double* %y10, align 8, !tbaa !57
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box11 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box11, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %17 = load i32, i32* %x12, align 4, !tbaa !58
  %conv13 = sitofp i32 %17 to double
  %mul14 = fmul double %conv13, 3.906250e-03
  %18 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %18, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q15, i32 0, i32 0
  store double %mul14, double* %x16, align 8, !tbaa !59
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box17 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %19, i32 0, i32 4
  %q18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box17, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q18, i32 0, i32 1
  %20 = load i32, i32* %y19, align 4, !tbaa !60
  %conv20 = sitofp i32 %20 to double
  %mul21 = fmul double %conv20, 3.906250e-03
  %21 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %21, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q22, i32 0, i32 1
  store double %mul21, double* %y23, align 8, !tbaa !61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 61
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %call25 = call i32 @gx_path_bbox(%struct.gx_path_s* %23, %struct.gs_fixed_rect_s* %path_bbox) #5
  store i32 %call25, i32* %code, align 4, !tbaa !24
  %24 = load i32, i32* %code, align 4, !tbaa !24
  %cmp26 = icmp slt i32 %24, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %25 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %26 = load i32, i32* %comp_type.addr, align 4, !tbaa !48
  %cmp30 = icmp eq i32 %26, 1
  br i1 %cmp30, label %if.then.32, label %if.end.53

if.then.32:                                       ; preds = %if.end.29
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_state_s* %27 to %struct.gs_imager_state_s*
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 61
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %path33, align 8, !tbaa !23
  %call34 = call i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s* %28, %struct.gx_path_s* %30, %struct.gs_fixed_point_s* %expansion) #5
  store i32 %call34, i32* %expansion_code, align 4, !tbaa !24
  %31 = load i32, i32* %expansion_code, align 4, !tbaa !24
  %cmp35 = icmp sge i32 %31, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.32
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %32 = load i32, i32* %x38, align 4, !tbaa !39
  %p39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p39, i32 0, i32 0
  %33 = load i32, i32* %x40, align 4, !tbaa !62
  %sub = sub nsw i32 %33, %32
  store i32 %sub, i32* %x40, align 4, !tbaa !62
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %34 = load i32, i32* %y41, align 4, !tbaa !40
  %p42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p42, i32 0, i32 1
  %35 = load i32, i32* %y43, align 4, !tbaa !63
  %sub44 = sub nsw i32 %35, %34
  store i32 %sub44, i32* %y43, align 4, !tbaa !63
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %36 = load i32, i32* %x45, align 4, !tbaa !39
  %q46 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q46, i32 0, i32 0
  %37 = load i32, i32* %x47, align 4, !tbaa !64
  %add = add nsw i32 %37, %36
  store i32 %add, i32* %x47, align 4, !tbaa !64
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %38 = load i32, i32* %y48, align 4, !tbaa !40
  %q49 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q49, i32 0, i32 1
  %39 = load i32, i32* %y50, align 4, !tbaa !65
  %add51 = add nsw i32 %39, %38
  store i32 %add51, i32* %y50, align 4, !tbaa !65
  br label %if.end.52

if.else:                                          ; preds = %if.then.32
  store i32 0, i32* %include_path, align 4, !tbaa !24
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.37
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.29
  %40 = load i32, i32* %include_path, align 4, !tbaa !24
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.54, label %if.else.135

if.then.54:                                       ; preds = %if.end.53
  br label %do.body

do.body:                                          ; preds = %if.then.54
  %41 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box55 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %41, i32 0, i32 4
  %p56 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box55, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p56, i32 0, i32 0
  %42 = load i32, i32* %x57, align 4, !tbaa !49
  %p58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 0
  %43 = load i32, i32* %x59, align 4, !tbaa !62
  %cmp60 = icmp sgt i32 %42, %43
  br i1 %cmp60, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %do.body
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box63 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %44, i32 0, i32 4
  %p64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box63, i32 0, i32 0
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p64, i32 0, i32 0
  %45 = load i32, i32* %x65, align 4, !tbaa !49
  %p66 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p66, i32 0, i32 0
  store i32 %45, i32* %x67, align 4, !tbaa !62
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %do.body
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box69 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %46, i32 0, i32 4
  %q70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box69, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q70, i32 0, i32 0
  %47 = load i32, i32* %x71, align 4, !tbaa !58
  %q72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q72, i32 0, i32 0
  %48 = load i32, i32* %x73, align 4, !tbaa !64
  %cmp74 = icmp slt i32 %47, %48
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %if.end.68
  %49 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box77 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %49, i32 0, i32 4
  %q78 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box77, i32 0, i32 1
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q78, i32 0, i32 0
  %50 = load i32, i32* %x79, align 4, !tbaa !58
  %q80 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %x81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q80, i32 0, i32 0
  store i32 %50, i32* %x81, align 4, !tbaa !64
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.76, %if.end.68
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box83 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %51, i32 0, i32 4
  %p84 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box83, i32 0, i32 0
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p84, i32 0, i32 1
  %52 = load i32, i32* %y85, align 4, !tbaa !56
  %p86 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %y87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p86, i32 0, i32 1
  %53 = load i32, i32* %y87, align 4, !tbaa !63
  %cmp88 = icmp sgt i32 %52, %53
  br i1 %cmp88, label %if.then.90, label %if.end.96

if.then.90:                                       ; preds = %if.end.82
  %54 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box91 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %54, i32 0, i32 4
  %p92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box91, i32 0, i32 0
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p92, i32 0, i32 1
  %55 = load i32, i32* %y93, align 4, !tbaa !56
  %p94 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p94, i32 0, i32 1
  store i32 %55, i32* %y95, align 4, !tbaa !63
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.90, %if.end.82
  %56 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box97 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %56, i32 0, i32 4
  %q98 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box97, i32 0, i32 1
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q98, i32 0, i32 1
  %57 = load i32, i32* %y99, align 4, !tbaa !60
  %q100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q100, i32 0, i32 1
  %58 = load i32, i32* %y101, align 4, !tbaa !65
  %cmp102 = icmp slt i32 %57, %58
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.end.96
  %59 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box105 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %59, i32 0, i32 4
  %q106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box105, i32 0, i32 1
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q106, i32 0, i32 1
  %60 = load i32, i32* %y107, align 4, !tbaa !60
  %q108 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %y109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q108, i32 0, i32 1
  store i32 %60, i32* %y109, align 4, !tbaa !65
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %if.end.96
  br label %do.cond

do.cond:                                          ; preds = %if.end.110
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p111 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p111, i32 0, i32 0
  %61 = load i32, i32* %x112, align 4, !tbaa !62
  %conv113 = sitofp i32 %61 to double
  %mul114 = fmul double %conv113, 3.906250e-03
  %62 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p115 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %62, i32 0, i32 0
  %x116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p115, i32 0, i32 0
  store double %mul114, double* %x116, align 8, !tbaa !54
  %p117 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 0
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p117, i32 0, i32 1
  %63 = load i32, i32* %y118, align 4, !tbaa !63
  %conv119 = sitofp i32 %63 to double
  %mul120 = fmul double %conv119, 3.906250e-03
  %64 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p121 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %64, i32 0, i32 0
  %y122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p121, i32 0, i32 1
  store double %mul120, double* %y122, align 8, !tbaa !57
  %q123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q123, i32 0, i32 0
  %65 = load i32, i32* %x124, align 4, !tbaa !64
  %conv125 = sitofp i32 %65 to double
  %mul126 = fmul double %conv125, 3.906250e-03
  %66 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q127 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %66, i32 0, i32 1
  %x128 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q127, i32 0, i32 0
  store double %mul126, double* %x128, align 8, !tbaa !59
  %q129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_bbox, i32 0, i32 1
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q129, i32 0, i32 1
  %67 = load i32, i32* %y130, align 4, !tbaa !65
  %conv131 = sitofp i32 %67 to double
  %mul132 = fmul double %conv131, 3.906250e-03
  %68 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q133 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %68, i32 0, i32 1
  %y134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q133, i32 0, i32 1
  store double %mul132, double* %y134, align 8, !tbaa !61
  br label %if.end.164

if.else.135:                                      ; preds = %if.end.53
  %69 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box136 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %69, i32 0, i32 4
  %p137 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box136, i32 0, i32 0
  %x138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p137, i32 0, i32 0
  %70 = load i32, i32* %x138, align 4, !tbaa !49
  %conv139 = sitofp i32 %70 to double
  %mul140 = fmul double %conv139, 3.906250e-03
  %71 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p141 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %71, i32 0, i32 0
  %x142 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p141, i32 0, i32 0
  store double %mul140, double* %x142, align 8, !tbaa !54
  %72 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box143 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %72, i32 0, i32 4
  %p144 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box143, i32 0, i32 0
  %y145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p144, i32 0, i32 1
  %73 = load i32, i32* %y145, align 4, !tbaa !56
  %conv146 = sitofp i32 %73 to double
  %mul147 = fmul double %conv146, 3.906250e-03
  %74 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p148 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %74, i32 0, i32 0
  %y149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p148, i32 0, i32 1
  store double %mul147, double* %y149, align 8, !tbaa !57
  %75 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box150 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %75, i32 0, i32 4
  %q151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box150, i32 0, i32 1
  %x152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q151, i32 0, i32 0
  %76 = load i32, i32* %x152, align 4, !tbaa !58
  %conv153 = sitofp i32 %76 to double
  %mul154 = fmul double %conv153, 3.906250e-03
  %77 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q155 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %77, i32 0, i32 1
  %x156 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q155, i32 0, i32 0
  store double %mul154, double* %x156, align 8, !tbaa !59
  %78 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !1
  %outer_box157 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %78, i32 0, i32 4
  %q158 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box157, i32 0, i32 1
  %y159 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q158, i32 0, i32 1
  %79 = load i32, i32* %y159, align 4, !tbaa !60
  %conv160 = sitofp i32 %79 to double
  %mul161 = fmul double %conv160, 3.906250e-03
  %80 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q162 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %80, i32 0, i32 1
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q162, i32 0, i32 1
  store double %mul161, double* %y163, align 8, !tbaa !61
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.135, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.164, %if.then.28, %if.then.2, %if.then
  %81 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i32* %include_path to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %expansion_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast %struct.gs_fixed_rect_s* %path_bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %84) #2
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast %struct.gx_clip_path_s** %clip_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define i32 @gx_effective_clip_path(%struct.gs_state_s* %pgs, %struct.gx_clip_path_s** %ppcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppcpath.addr = alloca %struct.gx_clip_path_s**, align 8
  %view_clip_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %vcbox = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %ipath = alloca %struct.gx_clip_path_s, align 8
  %vpath = alloca %struct.gx_path_s, align 8
  %npath = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s** %ppcpath, %struct.gx_clip_path_s*** %ppcpath.addr, align 8, !tbaa !1
  %0 = bitcast i64* %view_clip_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 64
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !66
  %cmp = icmp eq %struct.gx_clip_path_s* %2, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 64
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip1, align 8, !tbaa !66
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 2
  %5 = load i32, i32* %rule, align 4, !tbaa !67
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 64
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip3, align 8, !tbaa !66
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 8
  %8 = load i64, i64* %id, align 8, !tbaa !68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %8, %cond.false ]
  store i64 %cond, i64* %view_clip_id, align 8, !tbaa !69
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !70
  %call = call i32 @gs_device_is_memory(%struct.gx_device_s* %10) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 62
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !71
  %13 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %12, %struct.gx_clip_path_s** %13, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end:                                           ; preds = %cond.end
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_id = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 65
  %15 = load i64, i64* %effective_clip_id, align 8, !tbaa !72
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 62
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path4, align 8, !tbaa !71
  %id5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %17, i32 0, i32 8
  %18 = load i64, i64* %id5, align 8, !tbaa !68
  %cmp6 = icmp eq i64 %15, %18
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_view_clip_id = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 66
  %20 = load i64, i64* %effective_view_clip_id, align 8, !tbaa !73
  %21 = load i64, i64* %view_clip_id, align 8, !tbaa !69
  %cmp7 = icmp eq i64 %20, %21
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 67
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !74
  %24 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %23, %struct.gx_clip_path_s** %24, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %25 = load i64, i64* %view_clip_id, align 8, !tbaa !69
  %cmp10 = icmp eq i64 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 68
  %27 = load i32, i32* %effective_clip_shared, align 4, !tbaa !75
  %tobool12 = icmp ne i32 %27, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 67
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path14, align 8, !tbaa !74
  call void @gx_cpath_free(%struct.gx_clip_path_s* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 62
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path16, align 8, !tbaa !71
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 67
  store %struct.gx_clip_path_s* %31, %struct.gx_clip_path_s** %effective_clip_path17, align 8, !tbaa !74
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 68
  store i32 1, i32* %effective_clip_shared18, align 4, !tbaa !75
  br label %if.end.94

if.else:                                          ; preds = %if.end.9
  %34 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #2
  %35 = bitcast %struct.gs_fixed_rect_s* %vcbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %35) #2
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 62
  %37 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path19, align 8, !tbaa !71
  %call20 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %37, %struct.gs_fixed_rect_s* %cbox) #5
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 64
  %39 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip21, align 8, !tbaa !66
  %call22 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %39, %struct.gs_fixed_rect_s* %vcbox) #5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %vcbox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %40 = load i32, i32* %y, align 4, !tbaa !65
  %q23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q23, i32 0, i32 1
  %41 = load i32, i32* %y24, align 4, !tbaa !65
  %cmp25 = icmp sle i32 %40, %41
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.51

land.lhs.true.26:                                 ; preds = %if.else
  %q27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %vcbox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q27, i32 0, i32 0
  %42 = load i32, i32* %x, align 4, !tbaa !64
  %q28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q28, i32 0, i32 0
  %43 = load i32, i32* %x29, align 4, !tbaa !64
  %cmp30 = icmp sle i32 %42, %43
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.51

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %vcbox, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %44 = load i32, i32* %y32, align 4, !tbaa !63
  %p33 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p33, i32 0, i32 1
  %45 = load i32, i32* %y34, align 4, !tbaa !63
  %cmp35 = icmp sge i32 %44, %45
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.51

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %p37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %vcbox, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p37, i32 0, i32 0
  %46 = load i32, i32* %x38, align 4, !tbaa !62
  %p39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p39, i32 0, i32 0
  %47 = load i32, i32* %x40, align 4, !tbaa !62
  %cmp41 = icmp sge i32 %46, %47
  br i1 %cmp41, label %if.then.42, label %if.else.51

if.then.42:                                       ; preds = %land.lhs.true.36
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 68
  %49 = load i32, i32* %effective_clip_shared43, align 4, !tbaa !75
  %tobool44 = icmp ne i32 %49, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.then.42
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 67
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path46, align 8, !tbaa !74
  call void @gx_cpath_free(%struct.gx_clip_path_s* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.42
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 64
  %53 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip48, align 8, !tbaa !66
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 67
  store %struct.gx_clip_path_s* %53, %struct.gx_clip_path_s** %effective_clip_path49, align 8, !tbaa !74
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 68
  store i32 1, i32* %effective_clip_shared50, align 4, !tbaa !75
  br label %if.end.89

if.else.51:                                       ; preds = %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.26, %if.else
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = bitcast %struct.gx_clip_path_s* %ipath to i8*
  call void @llvm.lifetime.start(i64 304, i8* %57) #2
  %58 = bitcast %struct.gx_path_s* %vpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %58) #2
  %59 = bitcast %struct.gx_clip_path_s** %npath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 67
  %61 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path52, align 8, !tbaa !74
  store %struct.gx_clip_path_s* %61, %struct.gx_clip_path_s** %npath, align 8, !tbaa !1
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 68
  %63 = load i32, i32* %effective_clip_shared53, align 4, !tbaa !75
  %tobool54 = icmp ne i32 %63, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.else.51
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  %call56 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* null, %struct.gs_memory_s* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.gx_clip_path_s* %call56, %struct.gx_clip_path_s** %npath, align 8, !tbaa !1
  %66 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %npath, align 8, !tbaa !1
  %cmp57 = icmp eq %struct.gx_clip_path_s* %66, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.else.51
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 1
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !76
  %call62 = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %ipath, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %68) #5
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path63 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 62
  %70 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path63, align 8, !tbaa !71
  %call64 = call i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s* %ipath, %struct.gx_clip_path_s* %70) #5
  store i32 %call64, i32* %code, align 4, !tbaa !24
  %71 = load i32, i32* %code, align 4, !tbaa !24
  %cmp65 = icmp slt i32 %71, 0
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  %72 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.60
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %73, i32 0, i32 1
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !76
  %call69 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %vpath, %struct.gx_path_s* null, %struct.gs_memory_s* %74) #5
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %75, i32 0, i32 64
  %76 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip70, align 8, !tbaa !66
  %call71 = call i32 @gx_cpath_to_path(%struct.gx_clip_path_s* %76, %struct.gx_path_s* %vpath) #5
  store i32 %call71, i32* %code, align 4, !tbaa !24
  %77 = load i32, i32* %code, align 4, !tbaa !24
  %cmp72 = icmp slt i32 %77, 0
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.end.67
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call74 = call i32 @gx_cpath_clip(%struct.gs_state_s* %78, %struct.gx_clip_path_s* %ipath, %struct.gx_path_s* %vpath, i32 -1) #5
  store i32 %call74, i32* %code, align 4, !tbaa !24
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.73
  %79 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %npath, align 8, !tbaa !1
  %call77 = call i32 @gx_cpath_assign_free(%struct.gx_clip_path_s* %79, %struct.gx_clip_path_s* %ipath) #5
  store i32 %call77, i32* %code, align 4, !tbaa !24
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.76, %lor.lhs.false.73, %if.end.67
  br label %do.body

do.body:                                          ; preds = %if.then.79
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.80

if.end.80:                                        ; preds = %do.end, %lor.lhs.false.76
  call void @gx_path_free(%struct.gx_path_s* %vpath, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  call void @gx_cpath_free(%struct.gx_clip_path_s* %ipath, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  %80 = load i32, i32* %code, align 4, !tbaa !24
  %cmp81 = icmp slt i32 %80, 0
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  %81 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.80
  %82 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %npath, align 8, !tbaa !1
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path84 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 67
  store %struct.gx_clip_path_s* %82, %struct.gx_clip_path_s** %effective_clip_path84, align 8, !tbaa !74
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_shared85 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 68
  store i32 0, i32* %effective_clip_shared85, align 4, !tbaa !75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.82, %if.then.66, %if.then.58
  %85 = bitcast %struct.gx_clip_path_s** %npath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct.gx_path_s* %vpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %86) #2
  %87 = bitcast %struct.gx_clip_path_s* %ipath to i8*
  call void @llvm.lifetime.end(i64 304, i8* %87) #2
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.89

if.end.89:                                        ; preds = %cleanup.cont, %if.end.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %cleanup
  %89 = bitcast %struct.gs_fixed_rect_s* %vcbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #2
  %90 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #2
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.100 [
    i32 0, label %cleanup.cont.93
  ]

cleanup.cont.93:                                  ; preds = %cleanup.90
  br label %if.end.94

if.end.94:                                        ; preds = %cleanup.cont.93, %if.end.15
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path95 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 67
  %92 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path95, align 8, !tbaa !74
  %id96 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %92, i32 0, i32 8
  %93 = load i64, i64* %id96, align 8, !tbaa !68
  %94 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_id97 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %94, i32 0, i32 65
  store i64 %93, i64* %effective_clip_id97, align 8, !tbaa !72
  %95 = load i64, i64* %view_clip_id, align 8, !tbaa !69
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_view_clip_id98 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %96, i32 0, i32 66
  store i64 %95, i64* %effective_view_clip_id98, align 8, !tbaa !73
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path99 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %97, i32 0, i32 67
  %98 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path99, align 8, !tbaa !74
  %99 = load %struct.gx_clip_path_s**, %struct.gx_clip_path_s*** %ppcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %98, %struct.gx_clip_path_s** %99, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.94, %cleanup.90, %if.then.8, %if.then
  %100 = bitcast i64* %view_clip_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_fixed_point_s*) #1

declare i32 @gs_device_is_memory(%struct.gx_device_s*) #1

declare void @gx_cpath_free(%struct.gx_clip_path_s*, i8*) #1

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #1

declare %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s*, %struct.gs_memory_s*, i8*) #1

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_cpath_to_path(%struct.gx_clip_path_s*, %struct.gx_path_s*) #1

declare i32 @gx_cpath_clip(%struct.gs_state_s*, %struct.gx_clip_path_s*, %struct.gx_path_s*, i32) #1

declare i32 @gx_cpath_assign_free(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*) #1

declare void @gx_path_free(%struct.gx_path_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_clippath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s* %cpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !77
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %cpath, %struct.gx_path_s* null, %struct.gs_memory_s* %4) #5
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 62
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !71
  %call1 = call i32 @gx_cpath_to_path(%struct.gx_clip_path_s* %6, %struct.gx_path_s* %cpath) #5
  store i32 %call1, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 61
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8, !tbaa !23
  %call3 = call i32 @gx_path_assign_free(%struct.gx_path_s* %9, %struct.gx_path_s* %cpath) #5
  store i32 %call3, i32* %code, align 4, !tbaa !24
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 61
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %path4, align 8, !tbaa !23
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !78
  %conv = sitofp i32 %12 to double
  %mul = fmul double %conv, 3.906250e-03
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 7
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %mul, double* %x5, align 8, !tbaa !28
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 61
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8, !tbaa !23
  %position7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position7, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !79
  %conv8 = sitofp i32 %16 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point10, i32 0, i32 1
  store double %mul9, double* %y11, align 8, !tbaa !29
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 6
  store i32 1, i32* %current_point_valid, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %code, align 4, !tbaa !24
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  call void @gx_path_free(%struct.gx_path_s* %cpath, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !24
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gx_path_s* %cpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %22) #2
  ret i32 %20
}

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_initclip(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %box = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_clip_box(%struct.gs_state_s* %2, %struct.gs_fixed_rect_s* %box) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %3 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %5, %struct.gs_fixed_rect_s* %box) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #2
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_clip_box(%struct.gs_state_s* %pgs, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #2
  %3 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 21
  %6 = load i32, i32* %ImagingBBox_set, align 4, !tbaa !80
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_defaultmatrix(%struct.gs_state_s* %7, %struct.gs_matrix_s* %imat) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ImagingBBox = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 20
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i64 0
  %9 = load float, float* %arrayidx, align 4, !tbaa !90
  %conv = fpext float %9 to double
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !54
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ImagingBBox2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 20
  %arrayidx3 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox2, i32 0, i64 1
  %11 = load float, float* %arrayidx3, align 4, !tbaa !90
  %conv4 = fpext float %11 to double
  %p5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p5, i32 0, i32 1
  store double %conv4, double* %y, align 8, !tbaa !57
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ImagingBBox6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 20
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox6, i32 0, i64 2
  %13 = load float, float* %arrayidx7, align 4, !tbaa !90
  %conv8 = fpext float %13 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv8, double* %x9, align 8, !tbaa !59
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ImagingBBox10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox10, i32 0, i64 3
  %15 = load float, float* %arrayidx11, align 4, !tbaa !90
  %conv12 = fpext float %15 to double
  %q13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q13, i32 0, i32 1
  store double %conv12, double* %y14, align 8, !tbaa !61
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %17 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !91
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void %17(%struct.gx_device_s* %18, %struct.gs_matrix_s* %imat) #5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 24
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  %20 = load float, float* %arrayidx15, align 4, !tbaa !90
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 22
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %22 = load float, float* %arrayidx16, align 4, !tbaa !90
  %mul = fmul float %20, %22
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 23
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %24 = load float, float* %arrayidx17, align 4, !tbaa !90
  %div = fdiv float %mul, %24
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %25 = load float, float* %tx, align 4, !tbaa !92
  %add = fadd float %25, %div
  store float %add, float* %tx, align 4, !tbaa !92
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %Margins18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 24
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %Margins18, i32 0, i64 1
  %27 = load float, float* %arrayidx19, align 4, !tbaa !90
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 22
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution20, i32 0, i64 1
  %29 = load float, float* %arrayidx21, align 4, !tbaa !90
  %mul22 = fmul float %27, %29
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MarginsHWResolution23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 23
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution23, i32 0, i64 1
  %31 = load float, float* %arrayidx24, align 4, !tbaa !90
  %div25 = fdiv float %mul22, %31
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %32 = load float, float* %ty, align 4, !tbaa !93
  %add26 = fadd float %32, %div25
  store float %add26, float* %ty, align 4, !tbaa !93
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 25
  %arrayidx27 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %34 = load float, float* %arrayidx27, align 4, !tbaa !90
  %conv28 = fpext float %34 to double
  %p29 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p29, i32 0, i32 0
  store double %conv28, double* %x30, align 8, !tbaa !54
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWMargins31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 25
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins31, i32 0, i64 1
  %36 = load float, float* %arrayidx32, align 4, !tbaa !90
  %conv33 = fpext float %36 to double
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 1
  store double %conv33, double* %y35, align 8, !tbaa !57
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 19
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %38 = load float, float* %arrayidx36, align 4, !tbaa !90
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWMargins37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 25
  %arrayidx38 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins37, i32 0, i64 2
  %40 = load float, float* %arrayidx38, align 4, !tbaa !90
  %sub = fsub float %38, %40
  %conv39 = fpext float %sub to double
  %q40 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q40, i32 0, i32 0
  store double %conv39, double* %x41, align 8, !tbaa !59
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MediaSize42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 19
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize42, i32 0, i64 1
  %42 = load float, float* %arrayidx43, align 4, !tbaa !90
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWMargins44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 25
  %arrayidx45 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins44, i32 0, i64 3
  %44 = load float, float* %arrayidx45, align 4, !tbaa !90
  %sub46 = fsub float %42, %44
  %conv47 = fpext float %sub46 to double
  %q48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q48, i32 0, i32 1
  store double %conv47, double* %y49, align 8, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call50 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %imat, %struct.gs_rect_s* %bbox) #5
  store i32 %call50, i32* %code, align 4, !tbaa !24
  %45 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %45, 0
  br i1 %cmp, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end
  %46 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end
  %p54 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p54, i32 0, i32 0
  %47 = load double, double* %x55, align 8, !tbaa !54
  %mul56 = fmul double %47, 2.560000e+02
  %conv57 = fptosi double %mul56 to i32
  %add58 = add nsw i32 %conv57, 128
  %conv59 = sext i32 %add58 to i64
  %and = and i64 %conv59, -256
  %conv60 = trunc i64 %and to i32
  %48 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p61 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %48, i32 0, i32 0
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p61, i32 0, i32 0
  store i32 %conv60, i32* %x62, align 4, !tbaa !62
  %p63 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p63, i32 0, i32 1
  %49 = load double, double* %y64, align 8, !tbaa !57
  %mul65 = fmul double %49, 2.560000e+02
  %conv66 = fptosi double %mul65 to i32
  %add67 = add nsw i32 %conv66, 128
  %conv68 = sext i32 %add67 to i64
  %and69 = and i64 %conv68, -256
  %conv70 = trunc i64 %and69 to i32
  %50 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %50, i32 0, i32 0
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p71, i32 0, i32 1
  store i32 %conv70, i32* %y72, align 4, !tbaa !63
  %q73 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q73, i32 0, i32 0
  %51 = load double, double* %x74, align 8, !tbaa !59
  %mul75 = fmul double %51, 2.560000e+02
  %conv76 = fptosi double %mul75 to i32
  %add77 = add nsw i32 %conv76, 128
  %conv78 = sext i32 %add77 to i64
  %and79 = and i64 %conv78, -256
  %conv80 = trunc i64 %and79 to i32
  %52 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q81 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %52, i32 0, i32 1
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q81, i32 0, i32 0
  store i32 %conv80, i32* %x82, align 4, !tbaa !64
  %q83 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q83, i32 0, i32 1
  %53 = load double, double* %y84, align 8, !tbaa !61
  %mul85 = fmul double %53, 2.560000e+02
  %conv86 = fptosi double %mul85 to i32
  %add87 = add nsw i32 %conv86, 128
  %conv88 = sext i32 %add87 to i64
  %and89 = and i64 %conv88, -256
  %conv90 = trunc i64 %and89 to i32
  %54 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q91 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %54, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q91, i32 0, i32 1
  store i32 %conv90, i32* %y92, align 4, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %56) #2
  %57 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #2
  %58 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @gx_clip_to_rectangle(%struct.gs_state_s* %pgs, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 62
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !71
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s* %2, %struct.gs_fixed_rect_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %4 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 62
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path1, align 8, !tbaa !71
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 2
  store i32 -1, i32* %rule, align 4, !tbaa !67
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gs_clip(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @common_clip(%struct.gs_state_s* %0, i32 -1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @common_clip(%struct.gs_state_s* %pgs, i32 %rule) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %rule.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !24
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 62
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !71
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 61
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %6 = load i32, i32* %rule.addr, align 4, !tbaa !24
  %call = call i32 @gx_cpath_clip(%struct.gs_state_s* %1, %struct.gx_clip_path_s* %3, %struct.gx_path_s* %5, i32 %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %7 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %rule.addr, align 4, !tbaa !24
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 62
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path1, align 8, !tbaa !71
  %rule2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 2
  store i32 %9, i32* %rule2, align 4, !tbaa !67
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gs_eoclip(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @common_clip(%struct.gs_state_s* %0, i32 1) #5
  ret i32 %call
}

declare i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_clip_to_path(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !23
  %call = call i32 @gx_path_bbox(%struct.gx_path_s* %3, %struct.gs_fixed_rect_s* %bbox) #5
  store i32 %call, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %4, %struct.gs_fixed_rect_s* %bbox) #5
  store i32 %call1, i32* %code, align 4, !tbaa !24
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_clip(%struct.gs_state_s* %5) #5
  store i32 %call4, i32* %code, align 4, !tbaa !24
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #1

declare i32 @gs_defaultmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clamp_point(%struct.gs_fixed_point_s* %ppt, double %x, double %y) #3 {
entry:
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !26
  store double %y, double* %y.addr, align 8, !tbaa !26
  %0 = load double, double* %x.addr, align 8, !tbaa !26
  %cmp = fcmp ogt double %0, 0x415FFF05FFC00000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !tbaa !26
  %cmp1 = fcmp olt double %1, 0xC15FFF05FFC00000
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !tbaa !26
  %mul = fmul double %2, 2.560000e+02
  %conv = fptosi double %mul to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ -2147227647, %cond.true.2 ], [ %conv, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 2147227647, %cond.true ], [ %cond, %cond.end ]
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i32 0, i32 0
  store i32 %cond5, i32* %x6, align 4, !tbaa !39
  %4 = load double, double* %y.addr, align 8, !tbaa !26
  %cmp7 = fcmp ogt double %4, 0x415FFF05FFC00000
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.4
  br label %cond.end.19

cond.false.10:                                    ; preds = %cond.end.4
  %5 = load double, double* %y.addr, align 8, !tbaa !26
  %cmp11 = fcmp olt double %5, 0xC15FFF05FFC00000
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false.10
  br label %cond.end.17

cond.false.14:                                    ; preds = %cond.false.10
  %6 = load double, double* %y.addr, align 8, !tbaa !26
  %mul15 = fmul double %6, 2.560000e+02
  %conv16 = fptosi double %mul15 to i32
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.14, %cond.true.13
  %cond18 = phi i32 [ -2147227647, %cond.true.13 ], [ %conv16, %cond.false.14 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true.9
  %cond20 = phi i32 [ 2147227647, %cond.true.9 ], [ %cond18, %cond.end.17 ]
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 1
  store i32 %cond20, i32* %y21, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #1

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 168}
!6 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !7, i64 128, !12, i64 132, !7, i64 168, !13, i64 176, !13, i64 192, !7, i64 208, !7, i64 212, !15, i64 216, !3, i64 220, !16, i64 224, !16, i64 228, !17, i64 232, !18, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !19, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !9, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !20, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !21, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !21, i64 1336, !2, i64 1616, !10, i64 1624, !7, i64 1648, !10, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !18, i64 1712, !18, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !12, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !22, i64 1888}
!7 = !{!"int", !3, i64 0}
!8 = !{!"gx_line_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !7, i64 36, !10, i64 40, !11, i64 64}
!9 = !{!"float", !3, i64 0}
!10 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!11 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !9, i64 12, !7, i64 16, !9, i64 20, !7, i64 24, !7, i64 28, !9, i64 32}
!12 = !{!"gs_matrix_fixed_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!13 = !{!"gs_point_s", !14, i64 0, !14, i64 8}
!14 = !{!"double", !3, i64 0}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gs_transparency_source_s", !9, i64 0}
!17 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!20 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!21 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !18, i64 16, !3, i64 24}
!22 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!6, !2, i64 1680}
!24 = !{!7, !7, i64 0}
!25 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!26 = !{!14, !14, i64 0}
!27 = !{!6, !2, i64 1616}
!28 = !{!6, !14, i64 176}
!29 = !{!6, !14, i64 184}
!30 = !{!31, !7, i64 208}
!31 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !7, i64 128, !12, i64 132, !7, i64 168, !13, i64 176, !13, i64 192, !7, i64 208, !7, i64 212, !15, i64 216, !3, i64 220, !16, i64 224, !16, i64 228, !17, i64 232, !18, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !19, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !9, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !20, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !21, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !21, i64 1336}
!32 = !{!31, !7, i64 128}
!33 = !{!34, !3, i64 97}
!34 = !{!"gx_path_s", !35, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !38, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !7, i64 104, !7, i64 108, !19, i64 112, !2, i64 120}
!35 = !{!"gx_path_segments_s", !36, i64 0, !37, i64 24}
!36 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"psc_", !2, i64 0, !2, i64 8}
!38 = !{!"gs_fixed_rect_s", !19, i64 0, !19, i64 8}
!39 = !{!19, !7, i64 0}
!40 = !{!19, !7, i64 4}
!41 = !{!31, !14, i64 176}
!42 = !{!31, !14, i64 184}
!43 = !{!34, !3, i64 96}
!44 = !{!31, !7, i64 168}
!45 = !{!13, !14, i64 0}
!46 = !{!13, !14, i64 8}
!47 = !{!6, !7, i64 208}
!48 = !{!3, !3, i64 0}
!49 = !{!50, !7, i64 252}
!50 = !{!"gx_clip_path_s", !34, i64 0, !51, i64 128, !7, i64 232, !38, i64 236, !38, i64 252, !2, i64 272, !7, i64 280, !2, i64 288, !18, i64 296}
!51 = !{!"gx_clip_rect_list_s", !36, i64 0, !52, i64 24}
!52 = !{!"gx_clip_list_s", !53, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !7, i64 72}
!53 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !3, i64 32}
!54 = !{!55, !14, i64 0}
!55 = !{!"gs_rect_s", !13, i64 0, !13, i64 16}
!56 = !{!50, !7, i64 256}
!57 = !{!55, !14, i64 8}
!58 = !{!50, !7, i64 260}
!59 = !{!55, !14, i64 16}
!60 = !{!50, !7, i64 264}
!61 = !{!55, !14, i64 24}
!62 = !{!38, !7, i64 0}
!63 = !{!38, !7, i64 4}
!64 = !{!38, !7, i64 8}
!65 = !{!38, !7, i64 12}
!66 = !{!6, !2, i64 1704}
!67 = !{!50, !7, i64 232}
!68 = !{!50, !18, i64 296}
!69 = !{!18, !18, i64 0}
!70 = !{!6, !2, i64 1872}
!71 = !{!6, !2, i64 1688}
!72 = !{!6, !18, i64 1712}
!73 = !{!6, !18, i64 1720}
!74 = !{!6, !2, i64 1728}
!75 = !{!6, !7, i64 1736}
!76 = !{!6, !2, i64 8}
!77 = !{!34, !2, i64 40}
!78 = !{!34, !7, i64 112}
!79 = !{!34, !7, i64 116}
!80 = !{!81, !7, i64 880}
!81 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !36, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !82, i64 96, !84, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !18, i64 928, !18, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !18, i64 968, !18, i64 976, !85, i64 984, !7, i64 1052, !7, i64 1056, !86, i64 1064, !2, i64 1104, !3, i64 1112, !88, i64 1120, !89, i64 1144}
!82 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !83, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !18, i64 704, !7, i64 712}
!83 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!84 = !{!"gx_device_cached_colors_s", !18, i64 0, !18, i64 8}
!85 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!86 = !{!"gdev_space_params_s", !18, i64 0, !18, i64 8, !87, i64 16, !7, i64 32, !3, i64 36}
!87 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !18, i64 8}
!88 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!89 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!90 = !{!9, !9, i64 0}
!91 = !{!81, !2, i64 1152}
!92 = !{!10, !9, i64 16}
!93 = !{!10, !9, i64 20}
