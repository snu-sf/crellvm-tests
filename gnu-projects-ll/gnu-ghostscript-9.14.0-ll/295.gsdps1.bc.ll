; ModuleID = './gsdps1.bc'
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
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
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

@.str = private unnamed_addr constant [12 x i8] c"gs_rectclip\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gs_setbbox(%struct.gs_state_s* %pgs, double %llx, double %lly, double %urx, double %ury) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %llx.addr = alloca double, align 8
  %lly.addr = alloca double, align 8
  %urx.addr = alloca double, align 8
  %ury.addr = alloca double, align 8
  %ubox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  %obox = alloca %struct.gs_fixed_rect_s, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %llx, double* %llx.addr, align 8, !tbaa !5
  store double %lly, double* %lly.addr, align 8, !tbaa !5
  store double %urx, double* %urx.addr, align 8, !tbaa !5
  store double %ury, double* %ury.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_rect_s* %ubox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 61
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !7
  store %struct.gx_path_s* %6, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load double, double* %llx.addr, align 8, !tbaa !5
  %9 = load double, double* %urx.addr, align 8, !tbaa !5
  %cmp = fcmp ogt double %8, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load double, double* %lly.addr, align 8, !tbaa !5
  %11 = load double, double* %ury.addr, align 8, !tbaa !5
  %cmp1 = fcmp ogt double %10, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load double, double* %llx.addr, align 8, !tbaa !5
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ubox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %12, double* %x, align 8, !tbaa !24
  %13 = load double, double* %lly.addr, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ubox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  store double %13, double* %y, align 8, !tbaa !26
  %14 = load double, double* %urx.addr, align 8, !tbaa !5
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ubox, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %14, double* %x3, align 8, !tbaa !27
  %15 = load double, double* %ury.addr, align 8, !tbaa !5
  %q4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ubox, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q4, i32 0, i32 1
  store double %15, double* %y5, align 8, !tbaa !28
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 5
  %17 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_bbox_transform(%struct.gs_rect_s* %ubox, %struct.gs_matrix_s* %17, %struct.gs_rect_s* %dbox) #4
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %p9 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p9, i32 0, i32 0
  %19 = load double, double* %x10, align 8, !tbaa !24
  %cmp11 = fcmp olt double %19, 0xC15FFFFFFF400000
  br i1 %cmp11, label %if.then.24, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.8
  %p13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p13, i32 0, i32 1
  %20 = load double, double* %y14, align 8, !tbaa !26
  %cmp15 = fcmp olt double %20, 0xC15FFFFFFF400000
  br i1 %cmp15, label %if.then.24, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %q17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q17, i32 0, i32 0
  %21 = load double, double* %x18, align 8, !tbaa !27
  %cmp19 = fcmp oge double %21, 0x415FFFFFFF400000
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %q21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q21, i32 0, i32 1
  %22 = load double, double* %y22, align 8, !tbaa !28
  %cmp23 = fcmp oge double %22, 0x415FFFFFFF400000
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %if.end.8
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false.20
  %p26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p26, i32 0, i32 0
  %23 = load double, double* %x27, align 8, !tbaa !24
  %mul = fmul double %23, 2.560000e+02
  %call28 = call double @floor(double %mul) #5
  %conv = fptosi double %call28 to i32
  %conv29 = sext i32 %conv to i64
  %sub = sub nsw i64 %conv29, 3
  %conv30 = trunc i64 %sub to i32
  %p31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 0
  store i32 %conv30, i32* %x32, align 4, !tbaa !30
  %p33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p33, i32 0, i32 1
  %24 = load double, double* %y34, align 8, !tbaa !26
  %mul35 = fmul double %24, 2.560000e+02
  %call36 = call double @floor(double %mul35) #5
  %conv37 = fptosi double %call36 to i32
  %conv38 = sext i32 %conv37 to i64
  %sub39 = sub nsw i64 %conv38, 3
  %conv40 = trunc i64 %sub39 to i32
  %p41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p41, i32 0, i32 1
  store i32 %conv40, i32* %y42, align 4, !tbaa !32
  %q43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q43, i32 0, i32 0
  %25 = load double, double* %x44, align 8, !tbaa !27
  %mul45 = fmul double %25, 2.560000e+02
  %call46 = call double @ceil(double %mul45) #5
  %conv47 = fptosi double %call46 to i32
  %conv48 = sext i32 %conv47 to i64
  %add = add nsw i64 %conv48, 3
  %conv49 = trunc i64 %add to i32
  %q50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q50, i32 0, i32 0
  store i32 %conv49, i32* %x51, align 4, !tbaa !33
  %q52 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q52, i32 0, i32 1
  %26 = load double, double* %y53, align 8, !tbaa !28
  %mul54 = fmul double %26, 2.560000e+02
  %call55 = call double @ceil(double %mul54) #5
  %conv56 = fptosi double %call55 to i32
  %conv57 = sext i32 %conv56 to i64
  %add58 = add nsw i64 %conv57, 3
  %conv59 = trunc i64 %add58 to i32
  %q60 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q60, i32 0, i32 1
  store i32 %conv59, i32* %y61, align 4, !tbaa !34
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call62 = call i32 @gx_path_bbox_set(%struct.gx_path_s* %27, %struct.gs_fixed_rect_s* %obox) #4
  %cmp63 = icmp sge i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.end.25
  %p66 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p66, i32 0, i32 0
  %28 = load i32, i32* %x67, align 4, !tbaa !30
  %p68 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p68, i32 0, i32 0
  %29 = load i32, i32* %x69, align 4, !tbaa !30
  %cmp70 = icmp slt i32 %28, %29
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.65
  %p72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p72, i32 0, i32 0
  %30 = load i32, i32* %x73, align 4, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  %p74 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p74, i32 0, i32 0
  %31 = load i32, i32* %x75, align 4, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox76 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 5
  %p77 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox76, i32 0, i32 0
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p77, i32 0, i32 0
  store i32 %cond, i32* %x78, align 4, !tbaa !35
  %p79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p79, i32 0, i32 1
  %33 = load i32, i32* %y80, align 4, !tbaa !32
  %p81 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p81, i32 0, i32 1
  %34 = load i32, i32* %y82, align 4, !tbaa !32
  %cmp83 = icmp slt i32 %33, %34
  br i1 %cmp83, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.end
  %p86 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p86, i32 0, i32 1
  %35 = load i32, i32* %y87, align 4, !tbaa !32
  br label %cond.end.91

cond.false.88:                                    ; preds = %cond.end
  %p89 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p89, i32 0, i32 1
  %36 = load i32, i32* %y90, align 4, !tbaa !32
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.88, %cond.true.85
  %cond92 = phi i32 [ %35, %cond.true.85 ], [ %36, %cond.false.88 ]
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox93 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 5
  %p94 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox93, i32 0, i32 0
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p94, i32 0, i32 1
  store i32 %cond92, i32* %y95, align 4, !tbaa !40
  %q96 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %x97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q96, i32 0, i32 0
  %38 = load i32, i32* %x97, align 4, !tbaa !33
  %q98 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q98, i32 0, i32 0
  %39 = load i32, i32* %x99, align 4, !tbaa !33
  %cmp100 = icmp sgt i32 %38, %39
  br i1 %cmp100, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %cond.end.91
  %q103 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q103, i32 0, i32 0
  %40 = load i32, i32* %x104, align 4, !tbaa !33
  br label %cond.end.108

cond.false.105:                                   ; preds = %cond.end.91
  %q106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q106, i32 0, i32 0
  %41 = load i32, i32* %x107, align 4, !tbaa !33
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.105, %cond.true.102
  %cond109 = phi i32 [ %40, %cond.true.102 ], [ %41, %cond.false.105 ]
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox110 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %42, i32 0, i32 5
  %q111 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox110, i32 0, i32 1
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q111, i32 0, i32 0
  store i32 %cond109, i32* %x112, align 4, !tbaa !41
  %q113 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q113, i32 0, i32 1
  %43 = load i32, i32* %y114, align 4, !tbaa !34
  %q115 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q115, i32 0, i32 1
  %44 = load i32, i32* %y116, align 4, !tbaa !34
  %cmp117 = icmp sgt i32 %43, %44
  br i1 %cmp117, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.end.108
  %q120 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q120, i32 0, i32 1
  %45 = load i32, i32* %y121, align 4, !tbaa !34
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.end.108
  %q123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q123, i32 0, i32 1
  %46 = load i32, i32* %y124, align 4, !tbaa !34
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.119
  %cond126 = phi i32 [ %45, %cond.true.119 ], [ %46, %cond.false.122 ]
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox127 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %47, i32 0, i32 5
  %q128 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox127, i32 0, i32 1
  %y129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q128, i32 0, i32 1
  store i32 %cond126, i32* %y129, align 4, !tbaa !42
  br label %if.end.131

if.else:                                          ; preds = %if.end.25
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox130 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %48, i32 0, i32 5
  %49 = bitcast %struct.gs_fixed_rect_s* %bbox130 to i8*
  %50 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 4, i1 false), !tbaa.struct !43
  br label %if.end.131

if.end.131:                                       ; preds = %if.else, %cond.end.125
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 9
  store i8 1, i8* %bbox_set, align 1, !tbaa !44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.131, %if.then.24, %if.then.7, %if.then
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #1
  %55 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #1
  %56 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %56) #1
  %57 = bitcast %struct.gs_rect_s* %ubox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare i32 @gx_path_bbox_set(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_rectappend(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pr, i32 %count) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr.addr = alloca %struct.gs_rect_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !29
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !29
  %call = call i32 @gs_rectappend_compat(%struct.gs_state_s* %0, %struct.gs_rect_s* %1, i32 %2, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_rectappend_compat(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pr, i32 %count, i32 %clip) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr.addr = alloca %struct.gs_rect_s*, align 8
  %count.addr = alloca i32, align 4
  %clip.addr = alloca i32, align 4
  %CPSI_mode = alloca i32, align 4
  %px = alloca double, align 8
  %py = alloca double, align 8
  %qx = alloca double, align 8
  %qy = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !29
  store i32 %clip, i32* %clip.addr, align 4, !tbaa !29
  %0 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %call = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %2) #4
  store i32 %call, i32* %CPSI_mode, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %count.addr, align 4, !tbaa !29
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast double* %px to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %5, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %6 = load double, double* %x, align 8, !tbaa !24
  store double %6, double* %px, align 8, !tbaa !5
  %7 = bitcast double* %py to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %8, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %9 = load double, double* %y, align 8, !tbaa !26
  store double %9, double* %py, align 8, !tbaa !5
  %10 = bitcast double* %qx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %11, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %12 = load double, double* %x2, align 8, !tbaa !27
  store double %12, double* %qx, align 8, !tbaa !5
  %13 = bitcast double* %qy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %14, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q3, i32 0, i32 1
  %15 = load double, double* %y4, align 8, !tbaa !28
  store double %15, double* %qy, align 8, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %CPSI_mode, align 4, !tbaa !29
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else.48

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %clip.addr, align 4, !tbaa !29
  %tobool5 = icmp ne i32 %18, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %20 = load double, double* %qx, align 8, !tbaa !5
  %21 = load double, double* %qy, align 8, !tbaa !5
  %call7 = call i32 @gs_moveto(%struct.gs_state_s* %19, double %20, double %21) #4
  store i32 %call7, i32* %code, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.6
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %23 = load double, double* %qx, align 8, !tbaa !5
  %24 = load double, double* %py, align 8, !tbaa !5
  %call9 = call i32 @gs_lineto(%struct.gs_state_s* %22, double %23, double %24) #4
  store i32 %call9, i32* %code, align 4, !tbaa !29
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %26 = load double, double* %px, align 8, !tbaa !5
  %27 = load double, double* %py, align 8, !tbaa !5
  %call12 = call i32 @gs_lineto(%struct.gs_state_s* %25, double %26, double %27) #4
  store i32 %call12, i32* %code, align 4, !tbaa !29
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %29 = load double, double* %px, align 8, !tbaa !5
  %30 = load double, double* %qy, align 8, !tbaa !5
  %call15 = call i32 @gs_lineto(%struct.gs_state_s* %28, double %29, double %30) #4
  store i32 %call15, i32* %code, align 4, !tbaa !29
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call18 = call i32 @gs_closepath(%struct.gs_state_s* %31) #4
  store i32 %call18, i32* %code, align 4, !tbaa !29
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %if.then.6
  %32 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.17
  br label %if.end.47

if.else:                                          ; preds = %if.then
  %33 = load double, double* %px, align 8, !tbaa !5
  %34 = load double, double* %qx, align 8, !tbaa !5
  %cmp21 = fcmp ogt double %33, %34
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.else
  %35 = load double, double* %qx, align 8, !tbaa !5
  store double %35, double* %px, align 8, !tbaa !5
  %36 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %36, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 0
  %37 = load double, double* %x24, align 8, !tbaa !24
  store double %37, double* %qx, align 8, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.else
  %38 = load double, double* %py, align 8, !tbaa !5
  %39 = load double, double* %qy, align 8, !tbaa !5
  %cmp26 = fcmp ogt double %38, %39
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.25
  %40 = load double, double* %qy, align 8, !tbaa !5
  store double %40, double* %py, align 8, !tbaa !5
  %41 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %p28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %41, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p28, i32 0, i32 1
  %42 = load double, double* %y29, align 8, !tbaa !26
  store double %42, double* %qy, align 8, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.25
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %44 = load double, double* %px, align 8, !tbaa !5
  %45 = load double, double* %py, align 8, !tbaa !5
  %call31 = call i32 @gs_moveto(%struct.gs_state_s* %43, double %44, double %45) #4
  store i32 %call31, i32* %code, align 4, !tbaa !29
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.45, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.30
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %47 = load double, double* %qx, align 8, !tbaa !5
  %48 = load double, double* %py, align 8, !tbaa !5
  %call34 = call i32 @gs_lineto(%struct.gs_state_s* %46, double %47, double %48) #4
  store i32 %call34, i32* %code, align 4, !tbaa !29
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.45, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %50 = load double, double* %qx, align 8, !tbaa !5
  %51 = load double, double* %qy, align 8, !tbaa !5
  %call37 = call i32 @gs_lineto(%struct.gs_state_s* %49, double %50, double %51) #4
  store i32 %call37, i32* %code, align 4, !tbaa !29
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %53 = load double, double* %px, align 8, !tbaa !5
  %54 = load double, double* %qy, align 8, !tbaa !5
  %call40 = call i32 @gs_lineto(%struct.gs_state_s* %52, double %53, double %54) #4
  store i32 %call40, i32* %code, align 4, !tbaa !29
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call43 = call i32 @gs_closepath(%struct.gs_state_s* %55) #4
  store i32 %call43, i32* %code, align 4, !tbaa !29
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false.33, %if.end.30
  %56 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.lhs.false.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  br label %if.end.79

if.else.48:                                       ; preds = %for.body
  %57 = load double, double* %qx, align 8, !tbaa !5
  %58 = load double, double* %px, align 8, !tbaa !5
  %cmp49 = fcmp oge double %57, %58
  %conv = zext i1 %cmp49 to i32
  %59 = load double, double* %qy, align 8, !tbaa !5
  %60 = load double, double* %py, align 8, !tbaa !5
  %cmp50 = fcmp oge double %59, %60
  %conv51 = zext i1 %cmp50 to i32
  %cmp52 = icmp ne i32 %conv, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.else.48
  %61 = load double, double* %px, align 8, !tbaa !5
  store double %61, double* %qx, align 8, !tbaa !5
  %62 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %q55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %62, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q55, i32 0, i32 0
  %63 = load double, double* %x56, align 8, !tbaa !27
  store double %63, double* %px, align 8, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.else.48
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %65 = load double, double* %px, align 8, !tbaa !5
  %66 = load double, double* %py, align 8, !tbaa !5
  %call58 = call i32 @gs_moveto(%struct.gs_state_s* %64, double %65, double %66) #4
  store i32 %call58, i32* %code, align 4, !tbaa !29
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.77, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.57
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %68 = load double, double* %qx, align 8, !tbaa !5
  %69 = load double, double* %py, align 8, !tbaa !5
  %call62 = call i32 @gs_lineto(%struct.gs_state_s* %67, double %68, double %69) #4
  store i32 %call62, i32* %code, align 4, !tbaa !29
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.77, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %71 = load double, double* %qx, align 8, !tbaa !5
  %72 = load double, double* %qy, align 8, !tbaa !5
  %call66 = call i32 @gs_lineto(%struct.gs_state_s* %70, double %71, double %72) #4
  store i32 %call66, i32* %code, align 4, !tbaa !29
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.77, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.65
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %74 = load double, double* %px, align 8, !tbaa !5
  %75 = load double, double* %qy, align 8, !tbaa !5
  %call70 = call i32 @gs_lineto(%struct.gs_state_s* %73, double %74, double %75) #4
  store i32 %call70, i32* %code, align 4, !tbaa !29
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.69
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call74 = call i32 @gs_closepath(%struct.gs_state_s* %76) #4
  store i32 %call74, i32* %code, align 4, !tbaa !29
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.69, %lor.lhs.false.65, %lor.lhs.false.61, %if.end.57
  %77 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %lor.lhs.false.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.77, %if.then.45, %if.then.20
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast double* %qy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast double* %qx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast double* %py to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast double* %px to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %83 = load i32, i32* %count.addr, align 4, !tbaa !29
  %dec = add i32 %83, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !29
  %84 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %84, i32 1
  store %struct.gs_rect_s* %incdec.ptr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %for.end, %cleanup
  %85 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @gs_rectclip(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pr, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr.addr = alloca %struct.gs_rect_s*, align 8
  %count.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %save = alloca %struct.gx_path_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !29
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %save, %struct.gx_path_s* null, %struct.gs_memory_s* %3) #4
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 61
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !7
  %call1 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %save, %struct.gx_path_s* %5) #4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_newpath(%struct.gs_state_s* %6) #4
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %9 = load i32, i32* %count.addr, align 4, !tbaa !29
  %call3 = call i32 @gs_rectappend_compat(%struct.gs_state_s* %7, %struct.gs_rect_s* %8, i32 %9, i32 1) #4
  store i32 %call3, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_clip(%struct.gs_state_s* %10) #4
  store i32 %call4, i32* %code, align 4, !tbaa !29
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 61
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8, !tbaa !7
  %call7 = call i32 @gx_path_assign_free(%struct.gx_path_s* %12, %struct.gx_path_s* %save) #4
  %13 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @gx_path_free(%struct.gx_path_s* %save, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_newpath(%struct.gs_state_s* %14) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.end(i64 128, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_path_assign_preserve(%struct.gx_path_s*, %struct.gx_path_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

declare i32 @gs_clip(%struct.gs_state_s*) #2

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_rectfill(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pr, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr.addr = alloca %struct.gs_rect_s*, align 8
  %count.addr = alloca i32, align 4
  %rlist = alloca %struct.gs_rect_s*, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %rcount = alloca i32, align 4
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_s*, align 8
  %pdc = alloca %struct.gx_device_color_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %hl_color_available = alloca i32, align 4
  %hl_color = alloca i32, align 4
  %center_of_pixel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %clip_rect = alloca %struct.gs_fixed_rect_s, align 4
  %p93 = alloca %struct.gs_fixed_point_s, align 4
  %q94 = alloca %struct.gs_fixed_point_s, align 4
  %draw_rect = alloca %struct.gs_fixed_rect_s, align 4
  %x240 = alloca i32, align 4
  %y241 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %do_save = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gs_rect_s** %rlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %1, %struct.gs_rect_s** %rlist, align 8, !tbaa !1
  %2 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %count.addr, align 4, !tbaa !29
  store i32 %4, i32* %rcount, align 4, !tbaa !29
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !46
  store %struct.gx_device_s* %8, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !47
  store %struct.gx_device_color_s* %11, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %12 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_state_s* %13 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %14, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %15 = bitcast i32* %hl_color_available to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %call = call i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s* %16, %struct.gx_device_color_s* %17) #4
  store i32 %call, i32* %hl_color_available, align 4, !tbaa !29
  %18 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %hl_color_available, align 4, !tbaa !29
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %21 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !49
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call1 = call i32 %21(%struct.gx_device_s* %22, i32 12, i8* null, i32 0) #4
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %23 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %hl_color, align 4, !tbaa !29
  %24 = bitcast i32* %center_of_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %26 = load i32, i32* %x, align 4, !tbaa !59
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %land.rhs.3, label %land.end.6

land.rhs.3:                                       ; preds = %land.end
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust4, i32 0, i32 1
  %28 = load i32, i32* %y, align 4, !tbaa !60
  %cmp5 = icmp eq i32 %28, 0
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.3, %land.end
  %29 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs.3 ]
  %land.ext7 = zext i1 %29 to i32
  store i32 %land.ext7, i32* %center_of_pixel, align 4, !tbaa !29
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 78
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %device8, align 8, !tbaa !46
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 68
  %32 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !61
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !46
  call void %32(%struct.gx_device_s* %34, i32 4) #4
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 69
  %arrayidx12 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color11, i32 0, i64 0
  %dev_color13 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx12, i32 0, i32 2
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color13, align 8, !tbaa !47
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %36, i32 0, i32 0
  %37 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !62
  %cmp14 = icmp ne %struct.gx_device_color_type_s* %37, @gx_dc_type_data_none
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.6
  br label %cond.end

cond.false:                                       ; preds = %land.end.6
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_remap_color(%struct.gs_state_s* %38) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call15, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !29
  %39 = load i32, i32* %code, align 4, !tbaa !29
  %cmp16 = icmp ne i32 %39, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %40 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.438

if.end:                                           ; preds = %cond.end
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %42 = load float, float* %xy, align 4, !tbaa !69
  %conv = fpext float %42 to double
  %cmp17 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm19, i32 0, i32 2
  %44 = load float, float* %yx, align 4, !tbaa !70
  %conv20 = fpext float %44 to double
  %cmp21 = fcmp oeq double %conv20, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 0
  %46 = load float, float* %xx, align 4, !tbaa !71
  %conv24 = fpext float %46 to double
  %cmp25 = fcmp oeq double %conv24, 0.000000e+00
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.401

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm28, i32 0, i32 3
  %48 = load float, float* %yy, align 4, !tbaa !72
  %conv29 = fpext float %48 to double
  %cmp30 = fcmp oeq double %conv29, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.401

land.lhs.true.32:                                 ; preds = %land.lhs.true.27, %land.lhs.true
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call33 = call i32 @gx_effective_clip_path(%struct.gs_state_s* %49, %struct.gx_clip_path_s** %pcpath) #4
  %cmp34 = icmp sge i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.401

land.lhs.true.36:                                 ; preds = %land.lhs.true.32
  %50 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call37 = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %50) #4
  %count38 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %call37, i32 0, i32 6
  %51 = load i32, i32* %count38, align 4, !tbaa !73
  %cmp39 = icmp sle i32 %51, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.401

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %52 = load i32, i32* %hl_color, align 4, !tbaa !29
  %tobool42 = icmp ne i32 %52, 0
  br i1 %tobool42, label %land.lhs.true.55, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.41
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type44 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %53, i32 0, i32 0
  %54 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type44, align 8, !tbaa !62
  %cmp45 = icmp eq %struct.gx_device_color_type_s* %54, @gx_dc_type_data_pure
  br i1 %cmp45, label %land.lhs.true.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type48 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 0
  %56 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type48, align 8, !tbaa !62
  %cmp49 = icmp eq %struct.gx_device_color_type_s* %56, @gx_dc_type_data_ht_binary
  br i1 %cmp49, label %land.lhs.true.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %57, i32 0, i32 0
  %58 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type52, align 8, !tbaa !62
  %cmp53 = icmp eq %struct.gx_device_color_type_s* %58, @gx_dc_type_data_ht_colored
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.401

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.43, %land.lhs.true.41
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 69
  %arrayidx57 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color56, i32 0, i64 0
  %dev_color58 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx57, i32 0, i32 2
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color58, align 8, !tbaa !47
  %type59 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %60, i32 0, i32 0
  %61 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type59, align 8, !tbaa !62
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %61, i32 0, i32 4
  %62 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !76
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color60 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %63, i32 0, i32 69
  %arrayidx61 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color60, i32 0, i64 0
  %dev_color62 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx61, i32 0, i32 2
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color62, align 8, !tbaa !47
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gs_state_s* %65 to %struct.gs_imager_state_s*
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device63 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 78
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %device63, align 8, !tbaa !46
  %call64 = call i32 %62(%struct.gx_device_color_s* %64, %struct.gs_imager_state_s* %66, %struct.gx_device_s* %68, i32 0) #4
  %cmp65 = icmp sge i32 %call64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.401

land.lhs.true.67:                                 ; preds = %land.lhs.true.55
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %procs68 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs68, i32 0, i32 20
  %70 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !78
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call69 = call i32 %70(%struct.gx_device_s* %71, i32 1) #4
  %cmp70 = icmp sle i32 %call69, 1
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.401

land.lhs.true.72:                                 ; preds = %land.lhs.true.67
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 21
  %73 = load i32, i32* %overprint, align 4, !tbaa !79
  %tobool73 = icmp ne i32 %73, 0
  br i1 %tobool73, label %lor.lhs.false.74, label %if.then.76

lor.lhs.false.74:                                 ; preds = %land.lhs.true.72
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %74, i32 0, i32 23
  %75 = load i32, i32* %effective_overprint_mode, align 4, !tbaa !80
  %tobool75 = icmp ne i32 %75, 0
  br i1 %tobool75, label %if.end.401, label %if.then.76

if.then.76:                                       ; preds = %lor.lhs.false.74, %land.lhs.true.72
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast %struct.gs_fixed_rect_s* %clip_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %77) #1
  %78 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call77 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %78, %struct.gs_fixed_rect_s* %clip_rect) #4
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %79 = load i32, i32* %x78, align 4, !tbaa !30
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %80 = load i32, i32* %x79, align 4, !tbaa !33
  %cmp80 = icmp sge i32 %79, %80
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.90

land.lhs.true.82:                                 ; preds = %if.then.76
  %p83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p83, i32 0, i32 1
  %81 = load i32, i32* %y84, align 4, !tbaa !32
  %q85 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %y86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q85, i32 0, i32 1
  %82 = load i32, i32* %y86, align 4, !tbaa !34
  %cmp87 = icmp sge i32 %81, %82
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.lhs.true.82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.397

if.end.90:                                        ; preds = %land.lhs.true.82, %if.then.76
  store i32 0, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.90
  %83 = load i32, i32* %i, align 4, !tbaa !29
  %84 = load i32, i32* %count.addr, align 4, !tbaa !29
  %cmp91 = icmp ult i32 %83, %84
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = bitcast %struct.gs_fixed_point_s* %p93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = bitcast %struct.gs_fixed_point_s* %q94 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = bitcast %struct.gs_fixed_rect_s* %draw_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %87) #1
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm95 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %88, i32 0, i32 5
  %89 = load i32, i32* %i, align 4, !tbaa !29
  %idxprom = zext i32 %89 to i64
  %90 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %90, i64 %idxprom
  %p97 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx96, i32 0, i32 0
  %x98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p97, i32 0, i32 0
  %91 = load double, double* %x98, align 8, !tbaa !24
  %92 = load i32, i32* %i, align 4, !tbaa !29
  %idxprom99 = zext i32 %92 to i64
  %93 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %93, i64 %idxprom99
  %p101 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx100, i32 0, i32 0
  %y102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p101, i32 0, i32 1
  %94 = load double, double* %y102, align 8, !tbaa !26
  %call103 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm95, double %91, double %94, %struct.gs_fixed_point_s* %p93) #4
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then.119, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %for.body
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %95, i32 0, i32 5
  %96 = load i32, i32* %i, align 4, !tbaa !29
  %idxprom108 = zext i32 %96 to i64
  %97 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %97, i64 %idxprom108
  %q110 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx109, i32 0, i32 1
  %x111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q110, i32 0, i32 0
  %98 = load double, double* %x111, align 8, !tbaa !27
  %99 = load i32, i32* %i, align 4, !tbaa !29
  %idxprom112 = zext i32 %99 to i64
  %100 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %100, i64 %idxprom112
  %q114 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx113, i32 0, i32 1
  %y115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q114, i32 0, i32 1
  %101 = load double, double* %y115, align 8, !tbaa !28
  %call116 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm107, double %98, double %101, %struct.gs_fixed_point_s* %q94) #4
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.106, %for.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.391

if.end.120:                                       ; preds = %lor.lhs.false.106
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 0
  %102 = load i32, i32* %x121, align 4, !tbaa !81
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 0
  %103 = load i32, i32* %x122, align 4, !tbaa !81
  %cmp123 = icmp slt i32 %102, %103
  br i1 %cmp123, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %if.end.120
  %x126 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 0
  %104 = load i32, i32* %x126, align 4, !tbaa !81
  br label %cond.end.129

cond.false.127:                                   ; preds = %if.end.120
  %x128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 0
  %105 = load i32, i32* %x128, align 4, !tbaa !81
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.125
  %cond130 = phi i32 [ %104, %cond.true.125 ], [ %105, %cond.false.127 ]
  %p131 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p131, i32 0, i32 0
  store i32 %cond130, i32* %x132, align 4, !tbaa !30
  %y133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 1
  %106 = load i32, i32* %y133, align 4, !tbaa !82
  %y134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 1
  %107 = load i32, i32* %y134, align 4, !tbaa !82
  %cmp135 = icmp slt i32 %106, %107
  br i1 %cmp135, label %cond.true.137, label %cond.false.139

cond.true.137:                                    ; preds = %cond.end.129
  %y138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 1
  %108 = load i32, i32* %y138, align 4, !tbaa !82
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.end.129
  %y140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 1
  %109 = load i32, i32* %y140, align 4, !tbaa !82
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.137
  %cond142 = phi i32 [ %108, %cond.true.137 ], [ %109, %cond.false.139 ]
  %p143 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p143, i32 0, i32 1
  store i32 %cond142, i32* %y144, align 4, !tbaa !32
  %x145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 0
  %110 = load i32, i32* %x145, align 4, !tbaa !81
  %x146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 0
  %111 = load i32, i32* %x146, align 4, !tbaa !81
  %cmp147 = icmp sgt i32 %110, %111
  br i1 %cmp147, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %cond.end.141
  %x150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 0
  %112 = load i32, i32* %x150, align 4, !tbaa !81
  br label %cond.end.153

cond.false.151:                                   ; preds = %cond.end.141
  %x152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 0
  %113 = load i32, i32* %x152, align 4, !tbaa !81
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.151, %cond.true.149
  %cond154 = phi i32 [ %112, %cond.true.149 ], [ %113, %cond.false.151 ]
  %q155 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q155, i32 0, i32 0
  store i32 %cond154, i32* %x156, align 4, !tbaa !33
  %y157 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 1
  %114 = load i32, i32* %y157, align 4, !tbaa !82
  %y158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 1
  %115 = load i32, i32* %y158, align 4, !tbaa !82
  %cmp159 = icmp sgt i32 %114, %115
  br i1 %cmp159, label %cond.true.161, label %cond.false.163

cond.true.161:                                    ; preds = %cond.end.153
  %y162 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 1
  %116 = load i32, i32* %y162, align 4, !tbaa !82
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.end.153
  %y164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 1
  %117 = load i32, i32* %y164, align 4, !tbaa !82
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.161
  %cond166 = phi i32 [ %116, %cond.true.161 ], [ %117, %cond.false.163 ]
  %q167 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q167, i32 0, i32 1
  store i32 %cond166, i32* %y168, align 4, !tbaa !34
  %118 = load i32, i32* %hl_color, align 4, !tbaa !29
  %tobool169 = icmp ne i32 %118, 0
  br i1 %tobool169, label %if.then.170, label %if.else

if.then.170:                                      ; preds = %cond.end.165
  br label %do.body

do.body:                                          ; preds = %if.then.170
  %p171 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %x172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p171, i32 0, i32 0
  %119 = load i32, i32* %x172, align 4, !tbaa !30
  %p173 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x174 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p173, i32 0, i32 0
  %120 = load i32, i32* %x174, align 4, !tbaa !30
  %cmp175 = icmp sgt i32 %119, %120
  br i1 %cmp175, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %do.body
  %p178 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %x179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p178, i32 0, i32 0
  %121 = load i32, i32* %x179, align 4, !tbaa !30
  %p180 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p180, i32 0, i32 0
  store i32 %121, i32* %x181, align 4, !tbaa !30
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.177, %do.body
  %q183 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %x184 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q183, i32 0, i32 0
  %122 = load i32, i32* %x184, align 4, !tbaa !33
  %q185 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x186 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q185, i32 0, i32 0
  %123 = load i32, i32* %x186, align 4, !tbaa !33
  %cmp187 = icmp slt i32 %122, %123
  br i1 %cmp187, label %if.then.189, label %if.end.194

if.then.189:                                      ; preds = %if.end.182
  %q190 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %x191 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q190, i32 0, i32 0
  %124 = load i32, i32* %x191, align 4, !tbaa !33
  %q192 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x193 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q192, i32 0, i32 0
  store i32 %124, i32* %x193, align 4, !tbaa !33
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.189, %if.end.182
  %p195 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p195, i32 0, i32 1
  %125 = load i32, i32* %y196, align 4, !tbaa !32
  %p197 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p197, i32 0, i32 1
  %126 = load i32, i32* %y198, align 4, !tbaa !32
  %cmp199 = icmp sgt i32 %125, %126
  br i1 %cmp199, label %if.then.201, label %if.end.206

if.then.201:                                      ; preds = %if.end.194
  %p202 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %y203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p202, i32 0, i32 1
  %127 = load i32, i32* %y203, align 4, !tbaa !32
  %p204 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p204, i32 0, i32 1
  store i32 %127, i32* %y205, align 4, !tbaa !32
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.201, %if.end.194
  %q207 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %y208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q207, i32 0, i32 1
  %128 = load i32, i32* %y208, align 4, !tbaa !34
  %q209 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q209, i32 0, i32 1
  %129 = load i32, i32* %y210, align 4, !tbaa !34
  %cmp211 = icmp slt i32 %128, %129
  br i1 %cmp211, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %if.end.206
  %q214 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %y215 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q214, i32 0, i32 1
  %130 = load i32, i32* %y215, align 4, !tbaa !34
  %q216 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q216, i32 0, i32 1
  store i32 %130, i32* %y217, align 4, !tbaa !34
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %if.end.206
  br label %do.cond

do.cond:                                          ; preds = %if.end.218
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p219 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x220 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p219, i32 0, i32 0
  %131 = load i32, i32* %x220, align 4, !tbaa !30
  %q221 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x222 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q221, i32 0, i32 0
  %132 = load i32, i32* %x222, align 4, !tbaa !33
  %cmp223 = icmp sle i32 %131, %132
  br i1 %cmp223, label %land.lhs.true.225, label %if.end.239

land.lhs.true.225:                                ; preds = %do.end
  %p226 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y227 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p226, i32 0, i32 1
  %133 = load i32, i32* %y227, align 4, !tbaa !32
  %q228 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y229 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q228, i32 0, i32 1
  %134 = load i32, i32* %y229, align 4, !tbaa !34
  %cmp230 = icmp sle i32 %133, %134
  br i1 %cmp230, label %if.then.232, label %if.end.239

if.then.232:                                      ; preds = %land.lhs.true.225
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %procs233 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %135, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs233, i32 0, i32 54
  %136 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !83
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %139 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %140 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call234 = call i32 %136(%struct.gx_device_s* %137, %struct.gs_fixed_rect_s* %draw_rect, %struct.gs_imager_state_s* %138, %struct.gx_device_color_s* %139, %struct.gx_clip_path_s* %140) #4
  store i32 %call234, i32* %code, align 4, !tbaa !29
  %141 = load i32, i32* %code, align 4, !tbaa !29
  %cmp235 = icmp slt i32 %141, 0
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.then.232
  %142 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.391

if.end.238:                                       ; preds = %if.then.232
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.225, %do.end
  br label %if.end.390

if.else:                                          ; preds = %cond.end.165
  %143 = bitcast i32* %x240 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = bitcast i32* %y241 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  br label %do.body.242

do.body.242:                                      ; preds = %if.else
  %p243 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %x244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p243, i32 0, i32 0
  %147 = load i32, i32* %x244, align 4, !tbaa !30
  %p245 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x246 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p245, i32 0, i32 0
  %148 = load i32, i32* %x246, align 4, !tbaa !30
  %cmp247 = icmp sgt i32 %147, %148
  br i1 %cmp247, label %if.then.249, label %if.end.254

if.then.249:                                      ; preds = %do.body.242
  %p250 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %x251 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p250, i32 0, i32 0
  %149 = load i32, i32* %x251, align 4, !tbaa !30
  %p252 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x253 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p252, i32 0, i32 0
  store i32 %149, i32* %x253, align 4, !tbaa !30
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.249, %do.body.242
  %q255 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %x256 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q255, i32 0, i32 0
  %150 = load i32, i32* %x256, align 4, !tbaa !33
  %q257 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q257, i32 0, i32 0
  %151 = load i32, i32* %x258, align 4, !tbaa !33
  %cmp259 = icmp slt i32 %150, %151
  br i1 %cmp259, label %if.then.261, label %if.end.266

if.then.261:                                      ; preds = %if.end.254
  %q262 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %x263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q262, i32 0, i32 0
  %152 = load i32, i32* %x263, align 4, !tbaa !33
  %q264 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x265 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q264, i32 0, i32 0
  store i32 %152, i32* %x265, align 4, !tbaa !33
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.261, %if.end.254
  %p267 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %y268 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p267, i32 0, i32 1
  %153 = load i32, i32* %y268, align 4, !tbaa !32
  %p269 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y270 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p269, i32 0, i32 1
  %154 = load i32, i32* %y270, align 4, !tbaa !32
  %cmp271 = icmp sgt i32 %153, %154
  br i1 %cmp271, label %if.then.273, label %if.end.278

if.then.273:                                      ; preds = %if.end.266
  %p274 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 0
  %y275 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p274, i32 0, i32 1
  %155 = load i32, i32* %y275, align 4, !tbaa !32
  %p276 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p276, i32 0, i32 1
  store i32 %155, i32* %y277, align 4, !tbaa !32
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.273, %if.end.266
  %q279 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q279, i32 0, i32 1
  %156 = load i32, i32* %y280, align 4, !tbaa !34
  %q281 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y282 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q281, i32 0, i32 1
  %157 = load i32, i32* %y282, align 4, !tbaa !34
  %cmp283 = icmp slt i32 %156, %157
  br i1 %cmp283, label %if.then.285, label %if.end.290

if.then.285:                                      ; preds = %if.end.278
  %q286 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_rect, i32 0, i32 1
  %y287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q286, i32 0, i32 1
  %158 = load i32, i32* %y287, align 4, !tbaa !34
  %q288 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y289 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q288, i32 0, i32 1
  store i32 %158, i32* %y289, align 4, !tbaa !34
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.285, %if.end.278
  br label %do.cond.291

do.cond.291:                                      ; preds = %if.end.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  %159 = load i32, i32* %center_of_pixel, align 4, !tbaa !29
  %tobool293 = icmp ne i32 %159, 0
  br i1 %tobool293, label %if.then.294, label %if.else.325

if.then.294:                                      ; preds = %do.end.292
  %p295 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x296 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p295, i32 0, i32 0
  %160 = load i32, i32* %x296, align 4, !tbaa !30
  %add = add nsw i32 %160, 128
  %conv297 = sext i32 %add to i64
  %and = and i64 %conv297, -256
  %conv298 = trunc i64 %and to i32
  %p299 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x300 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p299, i32 0, i32 0
  store i32 %conv298, i32* %x300, align 4, !tbaa !30
  %p301 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y302 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p301, i32 0, i32 1
  %161 = load i32, i32* %y302, align 4, !tbaa !32
  %add303 = add nsw i32 %161, 128
  %conv304 = sext i32 %add303 to i64
  %and305 = and i64 %conv304, -256
  %conv306 = trunc i64 %and305 to i32
  %p307 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y308 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p307, i32 0, i32 1
  store i32 %conv306, i32* %y308, align 4, !tbaa !32
  %q309 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q309, i32 0, i32 0
  %162 = load i32, i32* %x310, align 4, !tbaa !33
  %add311 = add nsw i32 %162, 128
  %conv312 = sext i32 %add311 to i64
  %and313 = and i64 %conv312, -256
  %conv314 = trunc i64 %and313 to i32
  %q315 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x316 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q315, i32 0, i32 0
  store i32 %conv314, i32* %x316, align 4, !tbaa !33
  %q317 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y318 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q317, i32 0, i32 1
  %163 = load i32, i32* %y318, align 4, !tbaa !34
  %add319 = add nsw i32 %163, 128
  %conv320 = sext i32 %add319 to i64
  %and321 = and i64 %conv320, -256
  %conv322 = trunc i64 %and321 to i32
  %q323 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y324 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q323, i32 0, i32 1
  store i32 %conv322, i32* %y324, align 4, !tbaa !34
  br label %if.end.356

if.else.325:                                      ; preds = %do.end.292
  %p326 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x327 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p326, i32 0, i32 0
  %164 = load i32, i32* %x327, align 4, !tbaa !30
  %conv328 = sext i32 %164 to i64
  %and329 = and i64 %conv328, -256
  %conv330 = trunc i64 %and329 to i32
  %p331 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x332 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p331, i32 0, i32 0
  store i32 %conv330, i32* %x332, align 4, !tbaa !30
  %p333 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y334 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p333, i32 0, i32 1
  %165 = load i32, i32* %y334, align 4, !tbaa !32
  %conv335 = sext i32 %165 to i64
  %and336 = and i64 %conv335, -256
  %conv337 = trunc i64 %and336 to i32
  %p338 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y339 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p338, i32 0, i32 1
  store i32 %conv337, i32* %y339, align 4, !tbaa !32
  %q340 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x341 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q340, i32 0, i32 0
  %166 = load i32, i32* %x341, align 4, !tbaa !33
  %add342 = add nsw i32 %166, 255
  %conv343 = sext i32 %add342 to i64
  %and344 = and i64 %conv343, -256
  %conv345 = trunc i64 %and344 to i32
  %q346 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x347 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q346, i32 0, i32 0
  store i32 %conv345, i32* %x347, align 4, !tbaa !33
  %q348 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y349 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q348, i32 0, i32 1
  %167 = load i32, i32* %y349, align 4, !tbaa !34
  %add350 = add nsw i32 %167, 255
  %conv351 = sext i32 %add350 to i64
  %and352 = and i64 %conv351, -256
  %conv353 = trunc i64 %and352 to i32
  %q354 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y355 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q354, i32 0, i32 1
  store i32 %conv353, i32* %y355, align 4, !tbaa !34
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.325, %if.then.294
  %p357 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %x358 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p357, i32 0, i32 0
  %168 = load i32, i32* %x358, align 4, !tbaa !30
  %shr = ashr i32 %168, 8
  store i32 %shr, i32* %x240, align 4, !tbaa !29
  %p359 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 0
  %y360 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p359, i32 0, i32 1
  %169 = load i32, i32* %y360, align 4, !tbaa !32
  %shr361 = ashr i32 %169, 8
  store i32 %shr361, i32* %y241, align 4, !tbaa !29
  %q362 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %x363 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q362, i32 0, i32 0
  %170 = load i32, i32* %x363, align 4, !tbaa !33
  %shr364 = ashr i32 %170, 8
  %171 = load i32, i32* %x240, align 4, !tbaa !29
  %sub = sub nsw i32 %shr364, %171
  store i32 %sub, i32* %w, align 4, !tbaa !29
  %q365 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %draw_rect, i32 0, i32 1
  %y366 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q365, i32 0, i32 1
  %172 = load i32, i32* %y366, align 4, !tbaa !34
  %shr367 = ashr i32 %172, 8
  %173 = load i32, i32* %y241, align 4, !tbaa !29
  %sub368 = sub nsw i32 %shr367, %173
  store i32 %sub368, i32* %h, align 4, !tbaa !29
  %174 = load i32, i32* %center_of_pixel, align 4, !tbaa !29
  %tobool369 = icmp ne i32 %174, 0
  br i1 %tobool369, label %if.end.379, label %if.then.370

if.then.370:                                      ; preds = %if.end.356
  %175 = load i32, i32* %w, align 4, !tbaa !29
  %cmp371 = icmp eq i32 %175, 0
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %if.then.370
  store i32 1, i32* %w, align 4, !tbaa !29
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.373, %if.then.370
  %176 = load i32, i32* %h, align 4, !tbaa !29
  %cmp375 = icmp eq i32 %176, 0
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.374
  %177 = load i32, i32* %y241, align 4, !tbaa !29
  %dec = add nsw i32 %177, -1
  store i32 %dec, i32* %y241, align 4, !tbaa !29
  store i32 1, i32* %h, align 4, !tbaa !29
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %if.end.374
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.end.356
  %178 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %type380 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %178, i32 0, i32 0
  %179 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type380, align 8, !tbaa !62
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %179, i32 0, i32 5
  %180 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !84
  %181 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc, align 8, !tbaa !1
  %182 = load i32, i32* %x240, align 4, !tbaa !29
  %183 = load i32, i32* %y241, align 4, !tbaa !29
  %184 = load i32, i32* %w, align 4, !tbaa !29
  %185 = load i32, i32* %h, align 4, !tbaa !29
  %186 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device381 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %186, i32 0, i32 78
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %device381, align 8, !tbaa !46
  %188 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %188, i32 0, i32 10
  %189 = load i32, i32* %log_op, align 4, !tbaa !85
  %call382 = call i32 %180(%struct.gx_device_color_s* %181, i32 %182, i32 %183, i32 %184, i32 %185, %struct.gx_device_s* %187, i32 %189, %struct.gx_rop_source_s* null) #4
  %cmp383 = icmp slt i32 %call382, 0
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.end.379
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.386:                                       ; preds = %if.end.379
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.385, %if.end.386
  %190 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %y241 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %x240 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.391 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.390

if.end.390:                                       ; preds = %cleanup.cont, %if.end.239
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.391

cleanup.391:                                      ; preds = %if.then.119, %if.end.390, %cleanup, %if.then.237
  %194 = bitcast %struct.gs_fixed_rect_s* %draw_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %194) #1
  %195 = bitcast %struct.gs_fixed_point_s* %q94 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast %struct.gs_fixed_point_s* %p93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %cleanup.dest.394 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.394, label %cleanup.397 [
    i32 0, label %cleanup.cont.395
    i32 5, label %slow
  ]

cleanup.cont.395:                                 ; preds = %cleanup.391
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.395
  %197 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add i32 %197, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.397

slow:                                             ; preds = %cleanup.391
  %198 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %199 = load i32, i32* %i, align 4, !tbaa !29
  %idx.ext = zext i32 %199 to i64
  %add.ptr = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %198, i64 %idx.ext
  store %struct.gs_rect_s* %add.ptr, %struct.gs_rect_s** %rlist, align 8, !tbaa !1
  %200 = load i32, i32* %count.addr, align 4, !tbaa !29
  %201 = load i32, i32* %i, align 4, !tbaa !29
  %sub396 = sub i32 %200, %201
  store i32 %sub396, i32* %rcount, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.397

cleanup.397:                                      ; preds = %slow, %for.end, %cleanup.391, %if.then.89
  %202 = bitcast %struct.gs_fixed_rect_s* %clip_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %202) #1
  %203 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %cleanup.dest.399 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.399, label %cleanup.438 [
    i32 0, label %cleanup.cont.400
  ]

cleanup.cont.400:                                 ; preds = %cleanup.397
  br label %if.end.401

if.end.401:                                       ; preds = %cleanup.cont.400, %lor.lhs.false.74, %land.lhs.true.67, %land.lhs.true.55, %lor.lhs.false.51, %land.lhs.true.36, %land.lhs.true.32, %land.lhs.true.27, %lor.lhs.false
  %204 = bitcast i32* %do_save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  %205 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %205, i32 0, i32 61
  %206 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !7
  %call402 = call i32 @gx_path_is_null(%struct.gx_path_s* %206) #4
  %tobool403 = icmp ne i32 %call402, 0
  %lnot = xor i1 %tobool403, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %do_save, align 4, !tbaa !29
  %207 = load i32, i32* %do_save, align 4, !tbaa !29
  %tobool404 = icmp ne i32 %207, 0
  br i1 %tobool404, label %if.then.405, label %if.end.412

if.then.405:                                      ; preds = %if.end.401
  %208 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call406 = call i32 @gs_gsave(%struct.gs_state_s* %208) #4
  store i32 %call406, i32* %code, align 4, !tbaa !29
  %cmp407 = icmp slt i32 %call406, 0
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.then.405
  %209 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.435

if.end.410:                                       ; preds = %if.then.405
  %210 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call411 = call i32 @gs_newpath(%struct.gs_state_s* %210) #4
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.410, %if.end.401
  %211 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %212 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rlist, align 8, !tbaa !1
  %213 = load i32, i32* %rcount, align 4, !tbaa !29
  %call413 = call i32 @gs_rectappend(%struct.gs_state_s* %211, %struct.gs_rect_s* %212, i32 %213) #4
  store i32 %call413, i32* %code, align 4, !tbaa !29
  %cmp414 = icmp slt i32 %call413, 0
  br i1 %cmp414, label %if.then.420, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %if.end.412
  %214 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call417 = call i32 @gs_fill(%struct.gs_state_s* %214) #4
  store i32 %call417, i32* %code, align 4, !tbaa !29
  %cmp418 = icmp slt i32 %call417, 0
  br i1 %cmp418, label %if.then.420, label %if.end.424

if.then.420:                                      ; preds = %lor.lhs.false.416, %if.end.412
  br label %do.body.421

do.body.421:                                      ; preds = %if.then.420
  br label %do.cond.422

do.cond.422:                                      ; preds = %do.body.421
  br label %do.end.423

do.end.423:                                       ; preds = %do.cond.422
  br label %if.end.424

if.end.424:                                       ; preds = %do.end.423, %lor.lhs.false.416
  %215 = load i32, i32* %do_save, align 4, !tbaa !29
  %tobool425 = icmp ne i32 %215, 0
  br i1 %tobool425, label %if.then.426, label %if.else.428

if.then.426:                                      ; preds = %if.end.424
  %216 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call427 = call i32 @gs_grestore(%struct.gs_state_s* %216) #4
  br label %if.end.434

if.else.428:                                      ; preds = %if.end.424
  %217 = load i32, i32* %code, align 4, !tbaa !29
  %cmp429 = icmp slt i32 %217, 0
  br i1 %cmp429, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %if.else.428
  %218 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call432 = call i32 @gs_newpath(%struct.gs_state_s* %218) #4
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %if.else.428
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %if.then.426
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.435

cleanup.435:                                      ; preds = %if.end.434, %if.then.409
  %219 = bitcast i32* %do_save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %cleanup.dest.436 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.436, label %cleanup.438 [
    i32 0, label %cleanup.cont.437
  ]

cleanup.cont.437:                                 ; preds = %cleanup.435
  %220 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %220, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.438

cleanup.438:                                      ; preds = %cleanup.cont.437, %cleanup.435, %cleanup.397, %if.then
  %221 = bitcast i32* %center_of_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %hl_color_available to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast %struct.gx_device_color_s** %pdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast %struct.gs_rect_s** %rlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = load i32, i32* %retval
  ret i32 %231
}

declare i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s*, %struct.gx_device_color_s*) #2

declare i32 @gx_remap_color(%struct.gs_state_s*) #2

declare i32 @gx_effective_clip_path(%struct.gs_state_s*, %struct.gx_clip_path_s**) #2

declare %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s*) #2

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

declare i32 @gx_path_is_null(%struct.gx_path_s*) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_fill(%struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_rectstroke(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pr, i32 %count, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr.addr = alloca %struct.gs_rect_s*, align 8
  %count.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %do_save = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pr, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !29
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %do_save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_matrix_s* %1, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !7
  %call = call i32 @gx_path_is_null(%struct.gx_path_s* %3) #4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  store i32 %lor.ext, i32* %do_save, align 4, !tbaa !29
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %do_save, align 4, !tbaa !29
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.end
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_gsave(%struct.gs_state_s* %7) #4
  store i32 %call2, i32* %code, align 4, !tbaa !29
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_newpath(%struct.gs_state_s* %9) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.end
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %count.addr, align 4, !tbaa !29
  %call7 = call i32 @gs_rectappend(%struct.gs_state_s* %10, %struct.gs_rect_s* %11, i32 %12) #4
  store i32 %call7, i32* %code, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.gs_matrix_s* %13, null
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_concat(%struct.gs_state_s* %14, %struct.gs_matrix_s* %15) #4
  store i32 %call10, i32* %code, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call13 = call i32 @gs_stroke(%struct.gs_state_s* %16) #4
  store i32 %call13, i32* %code, align 4, !tbaa !29
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.12, %land.lhs.true, %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %lor.lhs.false.12
  %17 = load i32, i32* %do_save, align 4, !tbaa !29
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call19 = call i32 @gs_grestore(%struct.gs_state_s* %18) #4
  br label %if.end.24

if.else:                                          ; preds = %if.end.16
  %19 = load i32, i32* %code, align 4, !tbaa !29
  %cmp20 = icmp slt i32 %19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call22 = call i32 @gs_newpath(%struct.gs_state_s* %20) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.18
  %21 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.4
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %do_save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_stroke(%struct.gs_state_s*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_closepath(%struct.gs_state_s*) #2

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
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !2, i64 1680}
!8 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 128, !14, i64 132, !9, i64 168, !15, i64 176, !15, i64 192, !9, i64 208, !9, i64 212, !16, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !11, i64 296, !20, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !11, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !21, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !22, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !22, i64 1336, !2, i64 1616, !12, i64 1624, !9, i64 1648, !12, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !19, i64 1712, !19, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !14, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !23, i64 1888}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gx_line_params_s", !11, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !9, i64 36, !12, i64 40, !13, i64 64}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!13 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !11, i64 12, !9, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"gs_point_s", !6, i64 0, !6, i64 8}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gs_transparency_source_s", !11, i64 0}
!18 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!19 = !{!"long", !3, i64 0}
!20 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!21 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!22 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !19, i64 16, !3, i64 24}
!23 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!25, !6, i64 0}
!25 = !{!"gs_rect_s", !15, i64 0, !15, i64 16}
!26 = !{!25, !6, i64 8}
!27 = !{!25, !6, i64 16}
!28 = !{!25, !6, i64 24}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !9, i64 0}
!31 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 8}
!32 = !{!31, !9, i64 4}
!33 = !{!31, !9, i64 8}
!34 = !{!31, !9, i64 12}
!35 = !{!36, !9, i64 72}
!36 = !{!"gx_path_s", !37, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !31, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !9, i64 104, !9, i64 108, !20, i64 112, !2, i64 120}
!37 = !{!"gx_path_segments_s", !38, i64 0, !39, i64 24}
!38 = !{!"rc_header_s", !19, i64 0, !2, i64 8, !2, i64 16}
!39 = !{!"psc_", !2, i64 0, !2, i64 8}
!40 = !{!36, !9, i64 76}
!41 = !{!36, !9, i64 80}
!42 = !{!36, !9, i64 84}
!43 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!44 = !{!36, !3, i64 98}
!45 = !{!8, !2, i64 8}
!46 = !{!8, !2, i64 1872}
!47 = !{!48, !2, i64 16}
!48 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!49 = !{!50, !2, i64 1664}
!50 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !38, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !51, i64 96, !53, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !19, i64 928, !19, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !19, i64 968, !19, i64 976, !54, i64 984, !9, i64 1052, !9, i64 1056, !55, i64 1064, !2, i64 1104, !3, i64 1112, !57, i64 1120, !58, i64 1144}
!51 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !52, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !19, i64 704, !9, i64 712}
!52 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!53 = !{!"gx_device_cached_colors_s", !19, i64 0, !19, i64 8}
!54 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!55 = !{!"gdev_space_params_s", !19, i64 0, !19, i64 8, !56, i64 16, !9, i64 32, !3, i64 36}
!56 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !19, i64 8}
!57 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!58 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!59 = !{!8, !9, i64 300}
!60 = !{!8, !9, i64 304}
!61 = !{!50, !2, i64 1688}
!62 = !{!63, !2, i64 0}
!63 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !64, i64 352, !9, i64 360, !65, i64 368, !67, i64 632}
!64 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!65 = !{!"gs_client_color_s", !2, i64 0, !66, i64 8}
!66 = !{!"gs_paint_color_s", !3, i64 0}
!67 = !{!"_mask", !68, i64 0, !19, i64 8, !2, i64 16}
!68 = !{!"mp_", !9, i64 0, !9, i64 4}
!69 = !{!8, !11, i64 136}
!70 = !{!8, !11, i64 140}
!71 = !{!8, !11, i64 132}
!72 = !{!8, !11, i64 144}
!73 = !{!74, !9, i64 72}
!74 = !{!"gx_clip_list_s", !75, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72}
!75 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !3, i64 32}
!76 = !{!77, !2, i64 32}
!77 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!78 = !{!50, !2, i64 1304}
!79 = !{!8, !9, i64 272}
!80 = !{!8, !9, i64 280}
!81 = !{!20, !9, i64 0}
!82 = !{!20, !9, i64 4}
!83 = !{!50, !2, i64 1576}
!84 = !{!77, !2, i64 40}
!85 = !{!8, !9, i64 212}
