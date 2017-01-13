; ModuleID = './gspaint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
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
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"\0A   *** Error: No get_color_mapping_procs for device: %s\0A\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"alpha_buffer_init\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gs_stroke\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gs_strokepath\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_erasepage(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_gsave(%struct.gs_state_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_setgray(%struct.gs_state_s* %3, double 1.000000e+00) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_fillpage(%struct.gs_state_s* %4) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_grestore(%struct.gs_state_s* %5) #4
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setgray(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_fillpage(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %4 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !7
  %cmp = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %get_color_mapping_procs2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 49
  %6 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs2, align 8, !tbaa !7
  %cmp3 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %6, @gx_error_get_color_mapping_procs
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !20
  %call4 = call i8* @gs_program_name() #4
  %call5 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %8, i8* %call4, i64 %call5) #4
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !20
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %dname, align 8, !tbaa !21
  %call7 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i8* %12) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 78
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %procs8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 68
  %15 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !37
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 78
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !22
  call void %15(%struct.gx_device_s* %17, i32 4) #4
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !38
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 0
  %20 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !40
  %cmp10 = icmp ne %struct.gx_device_color_type_s* %20, @gx_dc_type_data_none
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call11 = call i32 @gx_remap_color(%struct.gs_state_s* %21) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call11, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %cond.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %cond.end
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 61
  %25 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !47
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_state_s* %27 to %struct.gs_imager_state_s*
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 69
  %arrayidx17 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color16, i32 0, i64 0
  %dev_color18 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx17, i32 0, i32 2
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color18, align 8, !tbaa !38
  %call19 = call i32 %25(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %28, %struct.gx_device_color_s* %30) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %31, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.14
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.14
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs23, i32 0, i32 2
  %34 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !48
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call24 = call i32 %34(%struct.gx_device_s* %35) #4
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.13, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gs_grestore(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare %struct.gx_cm_color_map_procs_s* @gx_error_get_color_mapping_procs(%struct.gx_device_s*) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @gx_remap_color(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_fill(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !49
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @fill_with_rule(%struct.gs_state_s* %2, i32 -1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_with_rule(%struct.gs_state_s* %pgs, i32 %rule) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %rule.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 75
  %2 = load i32, i32* %in_charpath, align 4, !tbaa !50
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 76
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !51
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 61
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 61
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8, !tbaa !52
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 75
  %9 = load i32, i32* %in_charpath2, align 4, !tbaa !50
  %call = call i32 @gx_path_add_char_path(%struct.gx_path_s* %5, %struct.gx_path_s* %7, i32 %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 78
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %call3 = call i32 @gs_is_null_device(%struct.gx_device_s* %11) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 76
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate5, align 8, !tbaa !51
  %tobool6 = icmp ne %struct.gs_state_s* %13, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_rendering_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 18
  %15 = load i32, i32* %text_rendering_mode, align 4, !tbaa !53
  %cmp = icmp eq i32 %15, 3
  br i1 %cmp, label %land.lhs.true.7, label %if.else.11

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 74
  %17 = load i32, i32* %in_cachedevice, align 4, !tbaa !54
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %land.lhs.true.7, %if.else
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_newpath(%struct.gs_state_s* %18) #4
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.else.11:                                       ; preds = %land.lhs.true.7, %land.lhs.true, %lor.lhs.false
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %20 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %call12 = call i32 @do_fill(%struct.gs_state_s* %19, i32 %20) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %21, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else.11
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call15 = call i32 @gs_newpath(%struct.gs_state_s* %22) #4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gs_eofill(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !49
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @fill_with_rule(%struct.gs_state_s* %2, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_stroke(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 75
  %2 = load i32, i32* %in_charpath, align 4, !tbaa !50
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 75
  %4 = load i32, i32* %in_charpath1, align 4, !tbaa !50
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_strokepath(%struct.gs_state_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 76
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !51
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 61
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 61
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8, !tbaa !52
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 75
  %14 = load i32, i32* %in_charpath7, align 4, !tbaa !50
  %call8 = call i32 @gx_path_add_char_path(%struct.gx_path_s* %10, %struct.gx_path_s* %12, i32 %14) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.5, %entry
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 78
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %call10 = call i32 @gs_is_null_device(%struct.gx_device_s* %16) #4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call13 = call i32 @gs_newpath(%struct.gs_state_s* %17) #4
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.end.9
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call14 = call i32 @do_stroke(%struct.gs_state_s* %18) #4
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %19, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.else
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call i32 @gs_newpath(%struct.gs_state_s* %20) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.4
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gs_strokepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_strokepath_aux(%struct.gs_state_s* %0, i32 1) #4
  ret i32 %call
}

declare i32 @gx_path_add_char_path(%struct.gx_path_s*, %struct.gx_path_s*, i32) #2

declare i32 @gs_is_null_device(%struct.gx_device_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_stroke(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %abits = alloca i32, align 4
  %acode = alloca i32, align 4
  %rcode = alloca i32, align 4
  %devn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %col = alloca %struct.gx_device_color_s*, align 8
  %xxyy = alloca float, align 4
  %xyyx = alloca float, align 4
  %scale = alloca float, align 4
  %orig_width = alloca float, align 4
  %new_width = alloca float, align 4
  %extra_adjust = alloca i32, align 4
  %orig_flatness = alloca float, align 4
  %spath = alloca %struct.gx_path_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %abits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %rcode, align 4, !tbaa !5
  %4 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #4
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %call, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !55
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %7) #4
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %call1, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 4
  %8 = load i8, i8* %gray_index, align 1, !tbaa !56
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %11 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !37
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 78
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device5, align 8, !tbaa !22
  call void %11(%struct.gx_device_s* %13, i32 4) #4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device6, align 8, !tbaa !22
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %set_graphics_type_tag8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 68
  %16 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag8, align 8, !tbaa !37
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 78
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !22
  call void %16(%struct.gx_device_s* %18, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !38
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !40
  %cmp10 = icmp ne %struct.gx_device_color_type_s* %21, @gx_dc_type_data_none
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call12 = call i32 @gx_remap_color(%struct.gs_state_s* %22) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call12, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.16:                                        ; preds = %cond.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx18 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color17, i32 0, i64 0
  %dev_color19 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx18, i32 0, i32 2
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color19, align 8, !tbaa !38
  %type20 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 0
  %27 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type20, align 8, !tbaa !40
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %27, i32 0, i32 4
  %28 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !57
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 69
  %arrayidx22 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color21, i32 0, i64 0
  %dev_color23 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 2
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color23, align 8, !tbaa !38
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_state_s* %31 to %struct.gs_imager_state_s*
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device24, align 8, !tbaa !22
  %call25 = call i32 %28(%struct.gx_device_color_s* %30, %struct.gs_imager_state_s* %32, %struct.gx_device_s* %34, i32 0) #4
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %35, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.16
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.29:                                        ; preds = %if.end.16
  store i32 0, i32* %abits, align 4, !tbaa !5
  %37 = bitcast %struct.gx_device_color_s** %col to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 69
  %arrayidx31 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color30, i32 0, i64 0
  %dev_color32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 2
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color32, align 8, !tbaa !38
  store %struct.gx_device_color_s* %39, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %type33 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 0
  %41 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type33, align 8, !tbaa !40
  %cmp34 = icmp eq %struct.gx_device_color_type_s* %41, @gx_dc_type_data_devn
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, i32* %devn, align 4, !tbaa !5
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %type36 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 0
  %43 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type36, align 8, !tbaa !40
  %cmp37 = icmp eq %struct.gx_device_color_type_s* %43, @gx_dc_type_data_pure
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.29
  %44 = load i32, i32* %devn, align 4, !tbaa !5
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false.39, %if.end.29
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call41 = call i32 @alpha_buffer_bits(%struct.gs_state_s* %45) #4
  store i32 %call41, i32* %abits, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false.39
  %46 = bitcast %struct.gx_device_color_s** %col to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %abits, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %47, 1
  br i1 %cmp43, label %if.then.45, label %if.else.126

if.then.45:                                       ; preds = %if.end.42
  %48 = bitcast float* %xxyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %50 = load float, float* %xx, align 4, !tbaa !59
  %conv46 = fpext float %50 to double
  %call47 = call double @fabs(double %conv46) #5
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm48, i32 0, i32 3
  %52 = load float, float* %yy, align 4, !tbaa !60
  %conv49 = fpext float %52 to double
  %call50 = call double @fabs(double %conv49) #5
  %add = fadd double %call47, %call50
  %conv51 = fptrunc double %add to float
  store float %conv51, float* %xxyy, align 4, !tbaa !61
  %53 = bitcast float* %xyyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm52, i32 0, i32 1
  %55 = load float, float* %xy, align 4, !tbaa !62
  %conv53 = fpext float %55 to double
  %call54 = call double @fabs(double %conv53) #5
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm55, i32 0, i32 2
  %57 = load float, float* %yx, align 4, !tbaa !63
  %conv56 = fpext float %57 to double
  %call57 = call double @fabs(double %conv56) #5
  %add58 = fadd double %call54, %call57
  %conv59 = fptrunc double %add58 to float
  store float %conv59, float* %xyyx, align 4, !tbaa !61
  %58 = bitcast float* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %abits, align 4, !tbaa !5
  %div = sdiv i32 %59, 2
  %shl = shl i32 1, %div
  %conv60 = sitofp i32 %shl to float
  store float %conv60, float* %scale, align 4, !tbaa !61
  %60 = bitcast float* %orig_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call61 = call float @gs_currentlinewidth(%struct.gs_state_s* %61) #4
  store float %call61, float* %orig_width, align 4, !tbaa !61
  %62 = bitcast float* %new_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load float, float* %orig_width, align 4, !tbaa !61
  %64 = load float, float* %scale, align 4, !tbaa !61
  %mul = fmul float %63, %64
  store float %mul, float* %new_width, align 4, !tbaa !61
  %65 = bitcast i32* %extra_adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load float, float* %xxyy, align 4, !tbaa !61
  %67 = load float, float* %xyyx, align 4, !tbaa !61
  %cmp62 = fcmp ogt float %66, %67
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.45
  %68 = load float, float* %xxyy, align 4, !tbaa !61
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.then.45
  %69 = load float, float* %xyyx, align 4, !tbaa !61
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi float [ %68, %cond.true.64 ], [ %69, %cond.false.65 ]
  %70 = load float, float* %new_width, align 4, !tbaa !61
  %mul68 = fmul float %cond67, %70
  %div69 = fdiv float %mul68, 2.000000e+00
  %mul70 = fmul float %div69, 2.560000e+02
  %conv71 = fptosi float %mul70 to i32
  store i32 %conv71, i32* %extra_adjust, align 4, !tbaa !5
  %71 = bitcast float* %orig_flatness to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call72 = call float @gs_currentflat(%struct.gs_state_s* %72) #4
  store float %call72, float* %orig_flatness, align 4, !tbaa !61
  %73 = bitcast %struct.gx_path_s* %spath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %73) #1
  %74 = load i32, i32* %extra_adjust, align 4, !tbaa !5
  %conv73 = sext i32 %74 to i64
  %cmp74 = icmp slt i64 %conv73, 256
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %cond.end.66
  store i32 256, i32* %extra_adjust, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %cond.end.66
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %77 = load i32, i32* %x, align 4, !tbaa !64
  %78 = load i32, i32* %extra_adjust, align 4, !tbaa !5
  %add78 = add nsw i32 %77, %78
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust79 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust79, i32 0, i32 1
  %80 = load i32, i32* %y, align 4, !tbaa !65
  %81 = load i32, i32* %extra_adjust, align 4, !tbaa !5
  %add80 = add nsw i32 %80, %81
  %82 = load i32, i32* %abits, align 4, !tbaa !5
  %83 = load i32, i32* %devn, align 4, !tbaa !5
  %call81 = call i32 @alpha_buffer_init(%struct.gs_state_s* %75, i32 %add78, i32 %add80, i32 %82, i32 %83) #4
  store i32 %call81, i32* %acode, align 4, !tbaa !5
  %84 = load i32, i32* %acode, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %84, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.77
  %85 = load i32, i32* %acode, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.end.77
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %87 = load float, float* %new_width, align 4, !tbaa !61
  %conv86 = fpext float %87 to double
  %call87 = call i32 @gs_setlinewidth(%struct.gs_state_s* %86, double %conv86) #4
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %89 = load float, float* %scale, align 4, !tbaa !61
  %conv88 = fpext float %89 to double
  call void @scale_dash_pattern(%struct.gs_state_s* %88, double %conv88) #4
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %91 = load float, float* %orig_flatness, align 4, !tbaa !61
  %92 = load float, float* %scale, align 4, !tbaa !61
  %mul89 = fmul float %91, %92
  %conv90 = fpext float %mul89 to double
  %call91 = call i32 @gs_setflat(%struct.gs_state_s* %90, double %conv90) #4
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 1
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call92 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %spath, %struct.gx_path_s* null, %struct.gs_memory_s* %94) #4
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %95, i32 0, i32 61
  %96 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call93 = call i32 @gx_stroke_add(%struct.gx_path_s* %96, %struct.gx_path_s* %spath, %struct.gs_state_s* %97, i32 0) #4
  store i32 %call93, i32* %code, align 4, !tbaa !5
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %99 = load float, float* %orig_width, align 4, !tbaa !61
  %conv94 = fpext float %99 to double
  %call95 = call i32 @gs_setlinewidth(%struct.gs_state_s* %98, double %conv94) #4
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %101 = load float, float* %scale, align 4, !tbaa !61
  %conv96 = fpext float %101 to double
  %div97 = fdiv double 1.000000e+00, %conv96
  call void @scale_dash_pattern(%struct.gs_state_s* %100, double %div97) #4
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %102, 0
  br i1 %cmp98, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.end.85
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color101 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 69
  %arrayidx102 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color101, i32 0, i64 0
  %dev_color103 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx102, i32 0, i32 2
  %104 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color103, align 8, !tbaa !38
  %105 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %106 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust104 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %106, i32 0, i32 28
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust104, i32 0, i32 0
  %107 = load i32, i32* %x105, align 4, !tbaa !64
  %108 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust106 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %108, i32 0, i32 28
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust106, i32 0, i32 1
  %109 = load i32, i32* %y107, align 4, !tbaa !65
  %call108 = call i32 @gx_fill_path(%struct.gx_path_s* %spath, %struct.gx_device_color_s* %104, %struct.gs_state_s* %105, i32 -1, i32 %107, i32 %109) #4
  store i32 %call108, i32* %code, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.end.85
  %110 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %111 = load float, float* %orig_flatness, align 4, !tbaa !61
  %conv110 = fpext float %111 to double
  %call111 = call i32 @gs_setflat(%struct.gs_state_s* %110, double %conv110) #4
  call void @gx_path_free(%struct.gx_path_s* %spath, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #4
  %112 = load i32, i32* %acode, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %112, 0
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %if.end.109
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %114 = load i32, i32* %code, align 4, !tbaa !5
  %cmp115 = icmp sge i32 %114, 0
  %conv116 = zext i1 %cmp115 to i32
  %call117 = call i32 @alpha_buffer_release(%struct.gs_state_s* %113, i32 %conv116) #4
  store i32 %call117, i32* %rcode, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %if.end.109
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.84
  %115 = bitcast %struct.gx_path_s* %spath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %115) #1
  %116 = bitcast float* %orig_flatness to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %extra_adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast float* %new_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast float* %orig_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast float* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast float* %xyyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast float* %xxyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.136 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.129

if.else.126:                                      ; preds = %if.end.42
  %123 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path127 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %123, i32 0, i32 61
  %124 = load %struct.gx_path_s*, %struct.gx_path_s** %path127, align 8, !tbaa !52
  %125 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call128 = call i32 @gx_stroke_fill(%struct.gx_path_s* %124, %struct.gs_state_s* %125) #4
  store i32 %call128, i32* %code, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %cleanup.cont
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp sge i32 %126, 0
  br i1 %cmp130, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %if.end.129
  %127 = load i32, i32* %rcode, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %127, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %land.lhs.true
  %128 = load i32, i32* %rcode, align 4, !tbaa !5
  store i32 %128, i32* %code, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %land.lhs.true, %if.end.129
  %129 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %if.end.135, %cleanup, %if.then.28, %if.then.15
  %130 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %abits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_strokepath_aux(%struct.gs_state_s* %pgs, i32 %traditional) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %traditional.addr = alloca i32, align 4
  %spath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %traditional, i32* %traditional.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_path_s* %spath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %spath, %struct.gx_path_s* null, %struct.gs_memory_s* %4) #4
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 61
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8, !tbaa !52
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = load i32, i32* %traditional.addr, align 4, !tbaa !5
  %call2 = call i32 @gx_stroke_add(%struct.gx_path_s* %6, %struct.gx_path_s* %spath, %struct.gs_state_s* %7, i32 %8) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gx_path_free(%struct.gx_path_s* %spath, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #4
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 78
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !49
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 61
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %path3, align 8, !tbaa !52
  %call4 = call i32 @gx_path_assign_free(%struct.gx_path_s* %14, %struct.gx_path_s* %spath) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 61
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %path8, align 8, !tbaa !52
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 3
  %19 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !72
  %cmp9 = icmp ne %struct.gx_path_segments_s* %19, null
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.7
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 61
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %path10, align 8, !tbaa !52
  %segments11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %22 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments11, align 8, !tbaa !72
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %22, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %23 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !73
  %cmp12 = icmp eq %struct.subpath_s* %23, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 6
  store i32 0, i32* %current_point_valid, align 4, !tbaa !74
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.end.7
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %spath, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %25 = load i32, i32* %x, align 4, !tbaa !75
  %conv = sitofp i32 %25 to double
  %mul = fmul double %conv, 3.906250e-03
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 7
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %mul, double* %x14, align 8, !tbaa !76
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %position16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %spath, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position16, i32 0, i32 1
  %27 = load i32, i32* %y, align 4, !tbaa !77
  %conv17 = sitofp i32 %27 to double
  %mul18 = fmul double %conv17, 3.906250e-03
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 7
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point19, i32 0, i32 1
  store double %mul18, double* %y20, align 8, !tbaa !78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.6, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gx_path_s* %spath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @gs_strokepath2(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_strokepath_aux(%struct.gs_state_s* %0, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @do_fill(%struct.gs_state_s* %pgs, i32 %rule) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %rule.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %abits = alloca i32, align 4
  %acode = alloca i32, align 4
  %rcode = alloca i32, align 4
  %devn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %col = alloca %struct.gx_device_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %abits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %rcode, align 4, !tbaa !5
  %4 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #4
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %call, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !55
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %7) #4
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %call1, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 4
  %8 = load i8, i8* %gray_index, align 1, !tbaa !56
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %11 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !37
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 78
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device5, align 8, !tbaa !22
  call void %11(%struct.gx_device_s* %13, i32 4) #4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device6, align 8, !tbaa !22
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %set_graphics_type_tag8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 68
  %16 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag8, align 8, !tbaa !37
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 78
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !22
  call void %16(%struct.gx_device_s* %18, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !38
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !40
  %cmp10 = icmp ne %struct.gx_device_color_type_s* %21, @gx_dc_type_data_none
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call12 = call i32 @gx_remap_color(%struct.gs_state_s* %22) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call12, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %cond.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx18 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color17, i32 0, i64 0
  %dev_color19 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx18, i32 0, i32 2
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color19, align 8, !tbaa !38
  %type20 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 0
  %27 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type20, align 8, !tbaa !40
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %27, i32 0, i32 4
  %28 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !57
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 69
  %arrayidx22 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color21, i32 0, i64 0
  %dev_color23 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 2
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color23, align 8, !tbaa !38
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_state_s* %31 to %struct.gs_imager_state_s*
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device24, align 8, !tbaa !22
  %call25 = call i32 %28(%struct.gx_device_color_s* %30, %struct.gs_imager_state_s* %32, %struct.gx_device_s* %34, i32 0) #4
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %35, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.16
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.16
  store i32 0, i32* %abits, align 4, !tbaa !5
  %37 = bitcast %struct.gx_device_color_s** %col to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 69
  %arrayidx31 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color30, i32 0, i64 0
  %dev_color32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 2
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color32, align 8, !tbaa !38
  store %struct.gx_device_color_s* %39, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %type33 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 0
  %41 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type33, align 8, !tbaa !40
  %cmp34 = icmp eq %struct.gx_device_color_type_s* %41, @gx_dc_type_data_devn
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, i32* %devn, align 4, !tbaa !5
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %col, align 8, !tbaa !1
  %type36 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 0
  %43 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type36, align 8, !tbaa !40
  %cmp37 = icmp eq %struct.gx_device_color_type_s* %43, @gx_dc_type_data_pure
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.29
  %44 = load i32, i32* %devn, align 4, !tbaa !5
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false.39, %if.end.29
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call41 = call i32 @alpha_buffer_bits(%struct.gs_state_s* %45) #4
  store i32 %call41, i32* %abits, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false.39
  %46 = bitcast %struct.gx_device_color_s** %col to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %abits, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %47, 1
  br i1 %cmp43, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %if.end.42
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %50 = load i32, i32* %x, align 4, !tbaa !64
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust46, i32 0, i32 1
  %52 = load i32, i32* %y, align 4, !tbaa !65
  %53 = load i32, i32* %abits, align 4, !tbaa !5
  %54 = load i32, i32* %devn, align 4, !tbaa !5
  %call47 = call i32 @alpha_buffer_init(%struct.gs_state_s* %48, i32 %50, i32 %52, i32 %53, i32 %54) #4
  store i32 %call47, i32* %acode, align 4, !tbaa !5
  %55 = load i32, i32* %acode, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %55, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  %56 = load i32, i32* %acode, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.42
  store i32 0, i32* %acode, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 61
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 69
  %arrayidx55 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color54, i32 0, i64 0
  %dev_color56 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx55, i32 0, i32 2
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color56, align 8, !tbaa !38
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %62 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %63, i32 0, i32 28
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust57, i32 0, i32 0
  %64 = load i32, i32* %x58, align 4, !tbaa !64
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 28
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust59, i32 0, i32 1
  %66 = load i32, i32* %y60, align 4, !tbaa !65
  %call61 = call i32 @gx_fill_path(%struct.gx_path_s* %58, %struct.gx_device_color_s* %60, %struct.gs_state_s* %61, i32 %62, i32 %64, i32 %66) #4
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %acode, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %67, 0
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.end.53
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp65 = icmp sge i32 %69, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @alpha_buffer_release(%struct.gs_state_s* %68, i32 %conv66) #4
  store i32 %call67, i32* %rcode, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %if.end.53
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp sge i32 %70, 0
  br i1 %cmp69, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %if.end.68
  %71 = load i32, i32* %rcode, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %71, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true
  %72 = load i32, i32* %rcode, align 4, !tbaa !5
  store i32 %72, i32* %code, align 4, !tbaa !5
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true, %if.end.68
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.50, %if.then.28, %if.then.15
  %74 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %abits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @alpha_buffer_bits(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @alpha_buffer_init(%struct.gs_state_s* %pgs, i32 %extra_x, i32 %extra_y, i32 %alpha_bits, i32 %devn) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %extra_x.addr = alloca i32, align 4
  %extra_y.addr = alloca i32, align 4
  %alpha_bits.addr = alloca i32, align 4
  %devn.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %log2_alpha_bits = alloca i32, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %ibox = alloca %struct.gs_int_rect_s, align 4
  %width = alloca i32, align 4
  %raster = alloca i32, align 4
  %band_space = alloca i32, align 4
  %height = alloca i32, align 4
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %extra_x, i32* %extra_x.addr, align 4, !tbaa !5
  store i32 %extra_y, i32* %extra_y.addr, align 4, !tbaa !5
  store i32 %alpha_bits, i32* %alpha_bits.addr, align 4, !tbaa !5
  store i32 %devn, i32* %devn.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast i32* %log2_alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %call = call i32 @ilog2(i32 %4) #4
  store i32 %call, i32* %log2_alpha_bits, align 4, !tbaa !5
  %5 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_int_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %band_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %log2_alpha_bits, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 %14, i32* %y, align 4, !tbaa !79
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 %14, i32* %x, align 4, !tbaa !81
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 61
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %call1 = call i32 @gx_path_bbox(%struct.gx_path_s* %16, %struct.gs_fixed_rect_s* %bbox) #4
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %17 = load i32, i32* %x2, align 4, !tbaa !82
  %18 = load i32, i32* %extra_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %17, %18
  %shr = ashr i32 %sub, 8
  %sub3 = sub nsw i32 %shr, 1
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 0
  store i32 %sub3, i32* %x5, align 4, !tbaa !83
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %19 = load i32, i32* %y7, align 4, !tbaa !85
  %20 = load i32, i32* %extra_y.addr, align 4, !tbaa !5
  %sub8 = sub nsw i32 %19, %20
  %shr9 = ashr i32 %sub8, 8
  %sub10 = sub nsw i32 %shr9, 1
  %p11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p11, i32 0, i32 1
  store i32 %sub10, i32* %y12, align 4, !tbaa !86
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %21 = load i32, i32* %x13, align 4, !tbaa !87
  %22 = load i32, i32* %extra_x.addr, align 4, !tbaa !5
  %add = add nsw i32 %21, %22
  %add14 = add nsw i32 %add, 255
  %shr15 = ashr i32 %add14, 8
  %add16 = add nsw i32 %shr15, 1
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 0
  store i32 %add16, i32* %x18, align 4, !tbaa !88
  %q19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q19, i32 0, i32 1
  %23 = load i32, i32* %y20, align 4, !tbaa !89
  %24 = load i32, i32* %extra_y.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %23, %24
  %add22 = add nsw i32 %add21, 255
  %shr23 = ashr i32 %add22, 8
  %add24 = add nsw i32 %shr23, 1
  %q25 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q25, i32 0, i32 1
  store i32 %add24, i32* %y26, align 4, !tbaa !90
  %q27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q27, i32 0, i32 0
  %25 = load i32, i32* %x28, align 4, !tbaa !88
  %p29 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %x30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p29, i32 0, i32 0
  %26 = load i32, i32* %x30, align 4, !tbaa !83
  %sub31 = sub nsw i32 %25, %26
  %x32 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %27 = load i32, i32* %x32, align 4, !tbaa !81
  %shl = shl i32 %sub31, %27
  store i32 %shl, i32* %width, align 4, !tbaa !5
  %28 = load i32, i32* %width, align 4, !tbaa !5
  %add33 = add i32 %28, 63
  %shr34 = lshr i32 %add33, 6
  %shl35 = shl i32 %shr34, 3
  store i32 %shl35, i32* %raster, align 4, !tbaa !5
  %29 = load i32, i32* %raster, align 4, !tbaa !5
  %y36 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %30 = load i32, i32* %y36, align 4, !tbaa !79
  %shl37 = shl i32 %29, %30
  store i32 %shl37, i32* %band_space, align 4, !tbaa !5
  %31 = load i32, i32* %band_space, align 4, !tbaa !5
  %div = udiv i32 2000, %31
  %y38 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %32 = load i32, i32* %y38, align 4, !tbaa !79
  %shl39 = shl i32 %div, %32
  store i32 %shl39, i32* %height, align 4, !tbaa !5
  %33 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %y40 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %34 = load i32, i32* %y40, align 4, !tbaa !79
  %shl41 = shl i32 1, %34
  store i32 %shl41, i32* %height, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  store %struct.gs_memory_s* %36, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %38 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !91
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call42 = call i8* %38(%struct.gs_memory_s* %39, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #4
  %40 = bitcast i8* %call42 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %40, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %cmp43 = icmp eq %struct.gx_device_memory_s* %41, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs46 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs46, i32 0, i32 65
  %43 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !94
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call47 = call i32 %43(%struct.gx_device_s* %44, i32 9, i8* null, i32 0) #4
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.45
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call50 = call i32 @gs_update_trans_marking_params(%struct.gs_state_s* %45) #4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.45
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %49 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %p52 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p52, i32 0, i32 0
  %50 = load i32, i32* %x53, align 4, !tbaa !83
  %x54 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %51 = load i32, i32* %x54, align 4, !tbaa !81
  %shl55 = shl i32 %50, %51
  %52 = load i32, i32* %devn.addr, align 4, !tbaa !5
  call void @gs_make_mem_abuf_device(%struct.gx_device_memory_s* %46, %struct.gs_memory_s* %47, %struct.gx_device_s* %48, %struct.gs_log2_scale_point_s* %log2_scale, i32 %49, i32 %shl55, i32 %52) #4
  %53 = load i32, i32* %width, align 4, !tbaa !5
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 13
  store i32 %53, i32* %width56, align 4, !tbaa !95
  %55 = load i32, i32* %height, align 4, !tbaa !5
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 14
  store i32 %55, i32* %height57, align 4, !tbaa !103
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %58, i32 0, i32 46
  store %struct.gs_memory_s* %57, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !104
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs58, i32 0, i32 0
  %60 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !105
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_memory_s* %61 to %struct.gx_device_s*
  %call59 = call i32 %60(%struct.gx_device_s* %62) #4
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.51
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !106
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %66 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %67 = bitcast %struct.gx_device_memory_s* %66 to i8*
  call void %64(%struct.gs_memory_s* %65, i8* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.51
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_memory_s* %69 to %struct.gx_device_s*
  call void @gx_set_device_only(%struct.gs_state_s* %68, %struct.gx_device_s* %70) #4
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x64 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %72 = load i32, i32* %x64, align 4, !tbaa !81
  %y65 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %73 = load i32, i32* %y65, align 4, !tbaa !79
  %call66 = call i32 @scale_paths(%struct.gs_state_s* %71, i32 %72, i32 %73, i32 1) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.61, %if.then.44
  %74 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %band_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.gs_int_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %81) #1
  %82 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #1
  %83 = bitcast i32* %log2_alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare i32 @gx_fill_path(%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @alpha_buffer_release(%struct.gs_state_s* %pgs, i32 %newpath) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %newpath.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %newpath, i32* %newpath.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !22
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %3, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %6 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !107
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_memory_s* %7 to %struct.gx_device_s*
  %call = call i32 %6(%struct.gx_device_s* %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 59
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !108
  %sub = sub nsw i32 0, %12
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %log2_scale1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 59
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale1, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !109
  %sub2 = sub nsw i32 0, %14
  %15 = load i32, i32* %newpath.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.rhs, label %land.end.8

land.rhs:                                         ; preds = %if.then
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 61
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !52
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 3
  %18 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !72
  %cmp3 = icmp ne %struct.gx_path_segments_s* %18, null
  br i1 %cmp3, label %land.rhs.4, label %land.end

land.rhs.4:                                       ; preds = %land.rhs
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 61
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %path5, align 8, !tbaa !52
  %segments6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 3
  %21 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments6, align 8, !tbaa !72
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %21, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %22 = load i64, i64* %ref_count, align 8, !tbaa !110
  %cmp7 = icmp sgt i64 %22, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs.4, %land.rhs
  %23 = phi i1 [ false, %land.rhs ], [ %cmp7, %land.rhs.4 ]
  %lnot = xor i1 %23, true
  br label %land.end.8

land.end.8:                                       ; preds = %land.end, %if.then
  %24 = phi i1 [ false, %if.then ], [ %lnot, %land.end ]
  %lnot9 = xor i1 %24, true
  %lnot.ext = zext i1 %lnot9 to i32
  %call10 = call i32 @scale_paths(%struct.gs_state_s* %10, i32 %sub, i32 %sub2, i32 %lnot.ext) #4
  br label %if.end

if.end:                                           ; preds = %land.end.8, %entry
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 43
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !111
  call void @gx_set_device_only(%struct.gs_state_s* %25, %struct.gx_device_s* %27) #4
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %28
}

declare i32 @ilog2(i32) #2

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_update_trans_marking_params(%struct.gs_state_s*) #2

declare void @gs_make_mem_abuf_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*, %struct.gs_log2_scale_point_s*, i32, i32, i32) #2

declare void @gx_set_device_only(%struct.gs_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @scale_paths(%struct.gs_state_s* %pgs, i32 %log2_scale_x, i32 %log2_scale_y, i32 %do_path) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %log2_scale_x.addr = alloca i32, align 4
  %log2_scale_y.addr = alloca i32, align 4
  %do_path.addr = alloca i32, align 4
  %seg_clip = alloca %struct.gx_path_segments_s*, align 8
  %list_clip = alloca %struct.gx_clip_rect_list_s*, align 8
  %seg_view_clip = alloca %struct.gx_path_segments_s*, align 8
  %list_view_clip = alloca %struct.gx_clip_rect_list_s*, align 8
  %seg_effective_clip = alloca %struct.gx_path_segments_s*, align 8
  %list_effective_clip = alloca %struct.gx_clip_rect_list_s*, align 8
  %seg_path = alloca %struct.gx_path_segments_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %log2_scale_x, i32* %log2_scale_x.addr, align 4, !tbaa !5
  store i32 %log2_scale_y, i32* %log2_scale_y.addr, align 4, !tbaa !5
  store i32 %do_path, i32* %do_path.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_path_segments_s** %seg_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 62
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !112
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 6
  %3 = load i32, i32* %path_valid, align 4, !tbaa !113
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 62
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path1, align 8, !tbaa !112
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %5, i32 0, i32 0
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 3
  %6 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !118
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_path_segments_s* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct.gx_path_segments_s* %cond, %struct.gx_path_segments_s** %seg_clip, align 8, !tbaa !1
  %7 = bitcast %struct.gx_clip_rect_list_s** %list_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 62
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path2, align 8, !tbaa !112
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 5
  %10 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !119
  store %struct.gx_clip_rect_list_s* %10, %struct.gx_clip_rect_list_s** %list_clip, align 8, !tbaa !1
  %11 = bitcast %struct.gx_path_segments_s** %seg_view_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gx_clip_rect_list_s** %list_view_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gx_path_segments_s** %seg_effective_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 67
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !120
  %path_valid3 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 6
  %16 = load i32, i32* %path_valid3, align 4, !tbaa !113
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.end
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 67
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path6, align 8, !tbaa !120
  %path7 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 0
  %segments8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path7, i32 0, i32 3
  %19 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments8, align 8, !tbaa !118
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.5
  %cond11 = phi %struct.gx_path_segments_s* [ %19, %cond.true.5 ], [ null, %cond.false.9 ]
  store %struct.gx_path_segments_s* %cond11, %struct.gx_path_segments_s** %seg_effective_clip, align 8, !tbaa !1
  %20 = bitcast %struct.gx_clip_rect_list_s** %list_effective_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 67
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path12, align 8, !tbaa !120
  %rect_list13 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %22, i32 0, i32 5
  %23 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list13, align 8, !tbaa !119
  store %struct.gx_clip_rect_list_s* %23, %struct.gx_clip_rect_list_s** %list_effective_clip, align 8, !tbaa !1
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 62
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path14, align 8, !tbaa !112
  %26 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %call = call i32 @gx_cpath_scale_exp2_shared(%struct.gx_clip_path_s* %25, i32 %26, i32 %27, i32 0, i32 0) #4
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 64
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !121
  %cmp = icmp ne %struct.gx_clip_path_s* %29, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.10
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 64
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip15, align 8, !tbaa !121
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 62
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path16, align 8, !tbaa !112
  %cmp17 = icmp ne %struct.gx_clip_path_s* %31, %33
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 64
  %35 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip18, align 8, !tbaa !121
  %path_valid19 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %35, i32 0, i32 6
  %36 = load i32, i32* %path_valid19, align 4, !tbaa !113
  %tobool20 = icmp ne i32 %36, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %if.then
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 64
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip22, align 8, !tbaa !121
  %path23 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %38, i32 0, i32 0
  %segments24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path23, i32 0, i32 3
  %39 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments24, align 8, !tbaa !118
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.then
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.21
  %cond27 = phi %struct.gx_path_segments_s* [ %39, %cond.true.21 ], [ null, %cond.false.25 ]
  store %struct.gx_path_segments_s* %cond27, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 64
  %41 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip28, align 8, !tbaa !121
  %rect_list29 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %41, i32 0, i32 5
  %42 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list29, align 8, !tbaa !119
  store %struct.gx_clip_rect_list_s* %42, %struct.gx_clip_rect_list_s** %list_view_clip, align 8, !tbaa !1
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 64
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip30, align 8, !tbaa !121
  %45 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %46 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %47 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_view_clip, align 8, !tbaa !1
  %48 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_clip, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.gx_clip_rect_list_s* %47, %48
  %conv = zext i1 %cmp31 to i32
  %49 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  %tobool32 = icmp ne %struct.gx_path_segments_s* %49, null
  br i1 %tobool32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.26
  %50 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  %51 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_clip, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.gx_path_segments_s* %50, %51
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.26
  %52 = phi i1 [ false, %cond.end.26 ], [ %cmp33, %land.rhs ]
  %land.ext = zext i1 %52 to i32
  %call35 = call i32 @gx_cpath_scale_exp2_shared(%struct.gx_clip_path_s* %44, i32 %45, i32 %46, i32 %conv, i32 %land.ext) #4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end.10
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %list_view_clip, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 67
  %54 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path36, align 8, !tbaa !120
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 62
  %56 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path37, align 8, !tbaa !112
  %cmp38 = icmp ne %struct.gx_clip_path_s* %54, %56
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.63

land.lhs.true.40:                                 ; preds = %if.end
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 67
  %58 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path41, align 8, !tbaa !120
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 64
  %60 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip42, align 8, !tbaa !121
  %cmp43 = icmp ne %struct.gx_clip_path_s* %58, %60
  br i1 %cmp43, label %if.then.45, label %if.end.63

if.then.45:                                       ; preds = %land.lhs.true.40
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 67
  %62 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path46, align 8, !tbaa !120
  %63 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %64 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %65 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_effective_clip, align 8, !tbaa !1
  %66 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_clip, align 8, !tbaa !1
  %cmp47 = icmp eq %struct.gx_clip_rect_list_s* %65, %66
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.45
  %67 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_effective_clip, align 8, !tbaa !1
  %68 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %list_view_clip, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.gx_clip_rect_list_s* %67, %68
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.45
  %69 = phi i1 [ true, %if.then.45 ], [ %cmp49, %lor.rhs ]
  %lor.ext = zext i1 %69 to i32
  %70 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_effective_clip, align 8, !tbaa !1
  %tobool51 = icmp ne %struct.gx_path_segments_s* %70, null
  br i1 %tobool51, label %land.rhs.52, label %land.end.60

land.rhs.52:                                      ; preds = %lor.end
  %71 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_effective_clip, align 8, !tbaa !1
  %72 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_clip, align 8, !tbaa !1
  %cmp53 = icmp eq %struct.gx_path_segments_s* %71, %72
  br i1 %cmp53, label %lor.end.58, label %lor.rhs.55

lor.rhs.55:                                       ; preds = %land.rhs.52
  %73 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_effective_clip, align 8, !tbaa !1
  %74 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.gx_path_segments_s* %73, %74
  br label %lor.end.58

lor.end.58:                                       ; preds = %lor.rhs.55, %land.rhs.52
  %75 = phi i1 [ true, %land.rhs.52 ], [ %cmp56, %lor.rhs.55 ]
  br label %land.end.60

land.end.60:                                      ; preds = %lor.end.58, %lor.end
  %76 = phi i1 [ false, %lor.end ], [ %75, %lor.end.58 ]
  %land.ext61 = zext i1 %76 to i32
  %call62 = call i32 @gx_cpath_scale_exp2_shared(%struct.gx_clip_path_s* %62, i32 %63, i32 %64, i32 %lor.ext, i32 %land.ext61) #4
  br label %if.end.63

if.end.63:                                        ; preds = %land.end.60, %land.lhs.true.40, %if.end
  %77 = load i32, i32* %do_path.addr, align 4, !tbaa !5
  %tobool64 = icmp ne i32 %77, 0
  br i1 %tobool64, label %if.then.65, label %if.end.79

if.then.65:                                       ; preds = %if.end.63
  %78 = bitcast %struct.gx_path_segments_s** %seg_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 61
  %80 = load %struct.gx_path_s*, %struct.gx_path_s** %path66, align 8, !tbaa !52
  %segments67 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %80, i32 0, i32 3
  %81 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments67, align 8, !tbaa !72
  store %struct.gx_path_segments_s* %81, %struct.gx_path_segments_s** %seg_path, align 8, !tbaa !1
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %82, i32 0, i32 61
  %83 = load %struct.gx_path_s*, %struct.gx_path_s** %path68, align 8, !tbaa !52
  %84 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %85 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %86 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_path, align 8, !tbaa !1
  %87 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_clip, align 8, !tbaa !1
  %cmp69 = icmp eq %struct.gx_path_segments_s* %86, %87
  br i1 %cmp69, label %lor.end.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %88 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_path, align 8, !tbaa !1
  %89 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_view_clip, align 8, !tbaa !1
  %cmp71 = icmp eq %struct.gx_path_segments_s* %88, %89
  br i1 %cmp71, label %lor.end.76, label %lor.rhs.73

lor.rhs.73:                                       ; preds = %lor.lhs.false
  %90 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_path, align 8, !tbaa !1
  %91 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %seg_effective_clip, align 8, !tbaa !1
  %cmp74 = icmp eq %struct.gx_path_segments_s* %90, %91
  br label %lor.end.76

lor.end.76:                                       ; preds = %lor.rhs.73, %lor.lhs.false, %if.then.65
  %92 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then.65 ], [ %cmp74, %lor.rhs.73 ]
  %lor.ext77 = zext i1 %92 to i32
  %call78 = call i32 @gx_path_scale_exp2_shared(%struct.gx_path_s* %83, i32 %84, i32 %85, i32 %lor.ext77) #4
  %93 = bitcast %struct.gx_path_segments_s** %seg_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  br label %if.end.79

if.end.79:                                        ; preds = %lor.end.76, %if.end.63
  %94 = bitcast %struct.gx_clip_rect_list_s** %list_effective_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gx_path_segments_s** %seg_effective_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.gx_clip_rect_list_s** %list_view_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.gx_path_segments_s** %seg_view_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gx_clip_rect_list_s** %list_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.gx_path_segments_s** %seg_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  ret i32 0
}

declare i32 @gx_cpath_scale_exp2_shared(%struct.gx_clip_path_s*, i32, i32, i32, i32) #2

declare i32 @gx_path_scale_exp2_shared(%struct.gx_path_s*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare float @gs_currentlinewidth(%struct.gs_state_s*) #2

declare float @gs_currentflat(%struct.gs_state_s*) #2

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define internal void @scale_dash_pattern(%struct.gs_state_s* %pgs, double %scale) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %scale.addr = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !122
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %3 = load i32, i32* %pattern_size, align 4, !tbaa !123
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %scale.addr, align 8, !tbaa !122
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 3
  %dash2 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash2, i32 0, i32 0
  %7 = load float*, float** %pattern, align 8, !tbaa !124
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4, !tbaa !61
  %conv = fpext float %8 to double
  %mul = fmul double %conv, %4
  %conv3 = fptrunc double %mul to float
  store float %conv3, float* %arrayidx, align 4, !tbaa !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %scale.addr, align 8, !tbaa !122
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 3
  %dash5 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params4, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash5, i32 0, i32 2
  %12 = load float, float* %offset, align 4, !tbaa !125
  %conv6 = fpext float %12 to double
  %mul7 = fmul double %conv6, %10
  %conv8 = fptrunc double %mul7 to float
  store float %conv8, float* %offset, align 4, !tbaa !125
  %13 = load double, double* %scale.addr, align 8, !tbaa !122
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 3
  %dash10 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params9, i32 0, i32 11
  %pattern_length = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash10, i32 0, i32 4
  %15 = load float, float* %pattern_length, align 4, !tbaa !126
  %conv11 = fpext float %15 to double
  %mul12 = fmul double %conv11, %13
  %conv13 = fptrunc double %mul12 to float
  store float %conv13, float* %pattern_length, align 4, !tbaa !126
  %16 = load double, double* %scale.addr, align 8, !tbaa !122
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 3
  %dash15 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params14, i32 0, i32 11
  %init_dist_left = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash15, i32 0, i32 7
  %18 = load float, float* %init_dist_left, align 4, !tbaa !127
  %conv16 = fpext float %18 to double
  %mul17 = fmul double %conv16, %16
  %conv18 = fptrunc double %mul17 to float
  store float %conv18, float* %init_dist_left, align 4, !tbaa !127
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 3
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params19, i32 0, i32 9
  %20 = load i32, i32* %dot_length_absolute, align 4, !tbaa !128
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load double, double* %scale.addr, align 8, !tbaa !122
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 3
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params20, i32 0, i32 8
  %23 = load float, float* %dot_length, align 4, !tbaa !129
  %conv21 = fpext float %23 to double
  %mul22 = fmul double %conv21, %21
  %conv23 = fptrunc double %mul22 to float
  store float %conv23, float* %dot_length, align 4, !tbaa !129
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

declare i32 @gs_setflat(%struct.gs_state_s*, double) #2

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_stroke_add(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, i32) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare i32 @gx_stroke_fill(%struct.gx_path_s*, %struct.gs_state_s*) #2

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 1536}
!8 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
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
!20 = !{!8, !2, i64 24}
!21 = !{!8, !2, i64 16}
!22 = !{!23, !2, i64 1872}
!23 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !24, i64 24, !6, i64 128, !28, i64 132, !6, i64 168, !29, i64 176, !29, i64 192, !6, i64 208, !6, i64 212, !12, i64 216, !3, i64 220, !31, i64 224, !31, i64 228, !32, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !25, i64 296, !33, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !25, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !34, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !35, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !35, i64 1336, !2, i64 1616, !26, i64 1624, !6, i64 1648, !26, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !28, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !36, i64 1888}
!24 = !{!"gx_line_params_s", !25, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !6, i64 36, !26, i64 40, !27, i64 64}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!27 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !25, i64 12, !6, i64 16, !25, i64 20, !6, i64 24, !6, i64 28, !25, i64 32}
!28 = !{!"gs_matrix_fixed_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !3, i64 0}
!31 = !{!"gs_transparency_source_s", !25, i64 0}
!32 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!33 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!34 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!35 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!36 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!37 = !{!8, !2, i64 1688}
!38 = !{!39, !2, i64 16}
!39 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!40 = !{!41, !2, i64 0}
!41 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !42, i64 352, !6, i64 360, !43, i64 368, !45, i64 632}
!42 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!43 = !{!"gs_client_color_s", !2, i64 0, !44, i64 8}
!44 = !{!"gs_paint_color_s", !3, i64 0}
!45 = !{!"_mask", !46, i64 0, !10, i64 8, !2, i64 16}
!46 = !{!"mp_", !6, i64 0, !6, i64 4}
!47 = !{!8, !2, i64 1632}
!48 = !{!8, !2, i64 1160}
!49 = !{!8, !6, i64 984}
!50 = !{!23, !3, i64 1852}
!51 = !{!23, !2, i64 1856}
!52 = !{!23, !2, i64 1680}
!53 = !{!23, !6, i64 252}
!54 = !{!23, !3, i64 1848}
!55 = !{!8, !6, i64 100}
!56 = !{!8, !3, i64 110}
!57 = !{!58, !2, i64 32}
!58 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!59 = !{!23, !25, i64 132}
!60 = !{!23, !25, i64 144}
!61 = !{!25, !25, i64 0}
!62 = !{!23, !25, i64 136}
!63 = !{!23, !25, i64 140}
!64 = !{!23, !6, i64 300}
!65 = !{!23, !6, i64 304}
!66 = !{!23, !2, i64 8}
!67 = !{!68, !2, i64 40}
!68 = !{!"gx_path_s", !69, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !71, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !33, i64 112, !2, i64 120}
!69 = !{!"gx_path_segments_s", !9, i64 0, !70, i64 24}
!70 = !{!"psc_", !2, i64 0, !2, i64 8}
!71 = !{!"gs_fixed_rect_s", !33, i64 0, !33, i64 8}
!72 = !{!68, !2, i64 56}
!73 = !{!69, !2, i64 24}
!74 = !{!23, !6, i64 168}
!75 = !{!68, !6, i64 112}
!76 = !{!23, !30, i64 176}
!77 = !{!68, !6, i64 116}
!78 = !{!23, !30, i64 184}
!79 = !{!80, !6, i64 4}
!80 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!81 = !{!80, !6, i64 0}
!82 = !{!71, !6, i64 0}
!83 = !{!84, !6, i64 0}
!84 = !{!"gs_int_rect_s", !42, i64 0, !42, i64 8}
!85 = !{!71, !6, i64 4}
!86 = !{!84, !6, i64 4}
!87 = !{!71, !6, i64 8}
!88 = !{!84, !6, i64 8}
!89 = !{!71, !6, i64 12}
!90 = !{!84, !6, i64 12}
!91 = !{!92, !2, i64 72}
!92 = !{!"gs_memory_s", !2, i64 0, !93, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!93 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!94 = !{!8, !2, i64 1664}
!95 = !{!96, !6, i64 832}
!96 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !26, i64 2548, !2, i64 2576, !97, i64 2584, !98, i64 2600, !99, i64 2624, !100, i64 2656, !101, i64 2680, !102, i64 2720, !80, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!97 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!98 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!99 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!100 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!101 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!102 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!103 = !{!96, !6, i64 836}
!104 = !{!96, !2, i64 1752}
!105 = !{!96, !2, i64 1144}
!106 = !{!92, !2, i64 24}
!107 = !{!96, !2, i64 1176}
!108 = !{!96, !6, i64 2736}
!109 = !{!96, !6, i64 2740}
!110 = !{!69, !10, i64 0}
!111 = !{!96, !2, i64 1728}
!112 = !{!23, !2, i64 1688}
!113 = !{!114, !6, i64 280}
!114 = !{!"gx_clip_path_s", !68, i64 0, !115, i64 128, !6, i64 232, !71, i64 236, !71, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !10, i64 296}
!115 = !{!"gx_clip_rect_list_s", !9, i64 0, !116, i64 24}
!116 = !{!"gx_clip_list_s", !117, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!117 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!118 = !{!114, !2, i64 56}
!119 = !{!114, !2, i64 272}
!120 = !{!23, !2, i64 1728}
!121 = !{!23, !2, i64 1704}
!122 = !{!30, !30, i64 0}
!123 = !{!23, !6, i64 96}
!124 = !{!23, !2, i64 88}
!125 = !{!23, !25, i64 100}
!126 = !{!23, !25, i64 108}
!127 = !{!23, !25, i64 120}
!128 = !{!23, !6, i64 60}
!129 = !{!23, !25, i64 56}
