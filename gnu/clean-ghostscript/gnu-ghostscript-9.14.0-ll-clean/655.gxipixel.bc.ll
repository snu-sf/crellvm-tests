; ModuleID = './gxipixel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
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
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
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
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon.1, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_device_rop_texture_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, %struct.gx_device_color_s }
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gs_matrix_double_s = type { double, double, double, double, double, double }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }

@st_gx_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 24816, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @image_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @image_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"gx_default_begin_image\00", align 1
@image1_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @gx_image1_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @gx_image1_end_image, i32 (%struct.gx_image_enum_common_s*)* @gx_image1_flush, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"gx_image_enum_begin\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@lookup4x1to32_inverted = external constant [16 x i32], align 16
@lookup4x1to32_identity = external constant [16 x i32], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"./base/gxipixel.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Image colors initialization failed\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@gx_image_enum_begin.procs = internal global [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]] [[6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*] [i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_1, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_2, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_4, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_8, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null], [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*] [i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_1_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_2_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_4_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_8_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null]], align 16
@sample_unpack_12_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@sample_unpack_16_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@gx_image_class_table_count = external constant i32, align 4
@gx_image_class_table = external constant [0 x i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)*], align 8
@st_device_clip = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"image clipper\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"image RasterOp\00", align 1
@__func__.image_init_color_cache = private unnamed_addr constant [23 x i8] c"image_init_color_cache\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"ICC Link not created during image render color\00", align 1
@st_color_cache = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @color_cache_reloc_ptrs to i8*) }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"gx_image_enum\00", align 1
@st_device_color = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"gx_image_color_cache\00", align 1
@color_cache_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @color_cache_enum_ptrs, i32 0, i32 0) }, align 8
@color_cache_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@image_init_colors.default_decode = internal constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @gx_image_enum_alloc(%struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gs_memory_s* %mem, %struct.gx_image_enum_s** %ppenum) #0 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppenum.addr = alloca %struct.gx_image_enum_s**, align 8
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpc = alloca i32, align 4
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s** %ppenum, %struct.gx_image_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %2, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %4, i32 0, i32 2
  %5 = load i32, i32* %Width, align 4, !tbaa !5
  store i32 %5, i32* %width, align 4, !tbaa !10
  %6 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %7, i32 0, i32 3
  %8 = load i32, i32* %Height, align 4, !tbaa !11
  store i32 %8, i32* %height, align 4, !tbaa !10
  %9 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %10, i32 0, i32 4
  %11 = load i32, i32* %BitsPerComponent, align 4, !tbaa !12
  store i32 %11, i32* %bpc, align 4, !tbaa !10
  %12 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i32, i32* %width, align 4, !tbaa !10
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %height, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %14, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %15, i32 0, i32 7
  %16 = load i32, i32* %format, align 4, !tbaa !13
  switch i32 %16, label %sw.epilog.9 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %17 = load i32, i32* %bpc, align 4, !tbaa !10
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 8, label %sw.bb.2
    i32 12, label %sw.bb.2
    i32 16, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2
  br label %sw.epilog.9

sw.bb.3:                                          ; preds = %if.end
  %18 = load i32, i32* %bpc, align 4, !tbaa !10
  %cmp4 = icmp slt i32 %18, 1
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %sw.bb.3
  %19 = load i32, i32* %bpc, align 4, !tbaa !10
  %cmp6 = icmp sgt i32 %19, 8
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.5, %sw.bb.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false.5
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %if.end.8, %if.end, %sw.epilog
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_int_rect_s* %20, null
  br i1 %tobool, label %if.then.10, label %if.end.36

if.then.10:                                       ; preds = %sw.epilog.9
  %21 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %21, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !14
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.34, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.then.10
  %23 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %23, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p13, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !17
  %cmp14 = icmp slt i32 %24, 0
  br i1 %cmp14, label %if.then.34, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %25 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %25, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %26 = load i32, i32* %x16, align 4, !tbaa !18
  %27 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %27, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p17, i32 0, i32 0
  %28 = load i32, i32* %x18, align 4, !tbaa !14
  %cmp19 = icmp slt i32 %26, %28
  br i1 %cmp19, label %if.then.34, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.15
  %29 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %29, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q21, i32 0, i32 1
  %30 = load i32, i32* %y22, align 4, !tbaa !19
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %31, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p23, i32 0, i32 1
  %32 = load i32, i32* %y24, align 4, !tbaa !17
  %cmp25 = icmp slt i32 %30, %32
  br i1 %cmp25, label %if.then.34, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.20
  %33 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %33, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q27, i32 0, i32 0
  %34 = load i32, i32* %x28, align 4, !tbaa !18
  %35 = load i32, i32* %width, align 4, !tbaa !10
  %cmp29 = icmp sgt i32 %34, %35
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26
  %36 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %36, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q31, i32 0, i32 1
  %37 = load i32, i32* %y32, align 4, !tbaa !19
  %38 = load i32, i32* %height, align 4, !tbaa !10
  %cmp33 = icmp sgt i32 %37, %38
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.26, %lor.lhs.false.20, %lor.lhs.false.15, %lor.lhs.false.12, %if.then.10
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %sw.epilog.9
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %40 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %40(%struct.gs_memory_s* %41, %struct.gs_memory_struct_type_s* @st_gx_image_enum, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  %42 = bitcast i8* %call to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %42, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.gx_image_enum_s* %43, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.36
  %44 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool40 = icmp ne %struct.gs_int_rect_s* %44, null
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.39
  %45 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p42 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %45, i32 0, i32 0
  %x43 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p42, i32 0, i32 0
  %46 = load i32, i32* %x43, align 4, !tbaa !14
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 22
  %x44 = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 0
  store i32 %46, i32* %x44, align 4, !tbaa !23
  %48 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %48, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p45, i32 0, i32 1
  %49 = load i32, i32* %y46, align 4, !tbaa !17
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 22
  %y48 = getelementptr inbounds %struct.r_, %struct.r_* %rect47, i32 0, i32 1
  store i32 %49, i32* %y48, align 4, !tbaa !43
  %51 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %51, i32 0, i32 1
  %x50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q49, i32 0, i32 0
  %52 = load i32, i32* %x50, align 4, !tbaa !18
  %53 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %53, i32 0, i32 0
  %x52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p51, i32 0, i32 0
  %54 = load i32, i32* %x52, align 4, !tbaa !14
  %sub = sub nsw i32 %52, %54
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 22
  %w = getelementptr inbounds %struct.r_, %struct.r_* %rect53, i32 0, i32 2
  store i32 %sub, i32* %w, align 4, !tbaa !44
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q54 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %56, i32 0, i32 1
  %y55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q54, i32 0, i32 1
  %57 = load i32, i32* %y55, align 4, !tbaa !19
  %58 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %58, i32 0, i32 0
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 1
  %59 = load i32, i32* %y57, align 4, !tbaa !17
  %sub58 = sub nsw i32 %57, %59
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect59 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 22
  %h = getelementptr inbounds %struct.r_, %struct.r_* %rect59, i32 0, i32 3
  store i32 %sub58, i32* %h, align 4, !tbaa !45
  br label %if.end.68

if.else:                                          ; preds = %if.end.39
  %61 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect60 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %61, i32 0, i32 22
  %x61 = getelementptr inbounds %struct.r_, %struct.r_* %rect60, i32 0, i32 0
  store i32 0, i32* %x61, align 4, !tbaa !23
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect62 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 22
  %y63 = getelementptr inbounds %struct.r_, %struct.r_* %rect62, i32 0, i32 1
  store i32 0, i32* %y63, align 4, !tbaa !43
  %63 = load i32, i32* %width, align 4, !tbaa !10
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect64 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 22
  %w65 = getelementptr inbounds %struct.r_, %struct.r_* %rect64, i32 0, i32 2
  store i32 %63, i32* %w65, align 4, !tbaa !44
  %65 = load i32, i32* %height, align 4, !tbaa !10
  %66 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect66 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %66, i32 0, i32 22
  %h67 = getelementptr inbounds %struct.r_, %struct.r_* %rect66, i32 0, i32 3
  store i32 %65, i32* %h67, align 4, !tbaa !45
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.41
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect69 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 22
  %x70 = getelementptr inbounds %struct.r_, %struct.r_* %rect69, i32 0, i32 0
  %68 = load i32, i32* %x70, align 4, !tbaa !23
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rrect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 23
  %x71 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect, i32 0, i32 0
  store i32 %68, i32* %x71, align 4, !tbaa !46
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect72 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 22
  %y73 = getelementptr inbounds %struct.r_, %struct.r_* %rect72, i32 0, i32 1
  %71 = load i32, i32* %y73, align 4, !tbaa !43
  %72 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rrect74 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %72, i32 0, i32 23
  %y75 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect74, i32 0, i32 1
  store i32 %71, i32* %y75, align 4, !tbaa !47
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect76 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 22
  %w77 = getelementptr inbounds %struct.r_, %struct.r_* %rect76, i32 0, i32 2
  %74 = load i32, i32* %w77, align 4, !tbaa !44
  %75 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rrect78 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %75, i32 0, i32 23
  %w79 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect78, i32 0, i32 2
  store i32 %74, i32* %w79, align 4, !tbaa !48
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect80 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 22
  %h81 = getelementptr inbounds %struct.r_, %struct.r_* %rect80, i32 0, i32 3
  %77 = load i32, i32* %h81, align 4, !tbaa !45
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rrect82 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 23
  %h83 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect82, i32 0, i32 3
  store i32 %77, i32* %h83, align 4, !tbaa !49
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %80 = load %struct.gx_image_enum_s**, %struct.gx_image_enum_s*** %ppenum.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %79, %struct.gx_image_enum_s** %80, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.38, %if.then.34, %if.then.7, %sw.default, %if.then
  %81 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_image_enum_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %format = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bps = alloca i32, align 4
  %masked = alloca i32, align 4
  %decode = alloca float*, align 8
  %mat = alloca %struct.gs_matrix_double_s, align 8
  %index_bps = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %lop = alloca i32, align 4
  %code = alloca i32, align 4
  %log2_xbytes = alloca i32, align 4
  %spp = alloca i32, align 4
  %nplanes = alloca i32, align 4
  %spread = alloca i32, align 4
  %bsize = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %mtx = alloca i32, align 4
  %mty = alloca i32, align 4
  %row_extent = alloca %struct.gs_fixed_point_s, align 4
  %col_extent = alloca %struct.gs_fixed_point_s, align 4
  %x_extent = alloca %struct.gs_fixed_point_s, align 4
  %y_extent = alloca %struct.gs_fixed_point_s, align 4
  %device_color = alloca i32, align 4
  %obox = alloca %struct.gs_fixed_rect_s, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %ix0 = alloca i32, align 4
  %x1 = alloca double, align 8
  %ix1 = alloca i32, align 4
  %ix0118 = alloca i32, align 4
  %x1125 = alloca double, align 8
  %ix1131 = alloca i32, align 4
  %iy0 = alloca i32, align 4
  %y1 = alloca double, align 8
  %iy1 = alloca i32, align 4
  %iy0184 = alloca i32, align 4
  %y1191 = alloca double, align 8
  %iy1197 = alloca i32, align 4
  %ix0230 = alloca i32, align 4
  %x1236 = alloca double, align 8
  %ix1242 = alloca i32, align 4
  %ix0262 = alloca i32, align 4
  %x1269 = alloca double, align 8
  %ix1275 = alloca i32, align 4
  %iy0299 = alloca i32, align 4
  %y1305 = alloca double, align 8
  %iy1311 = alloca i32, align 4
  %iy0331 = alloca i32, align 4
  %y1338 = alloca double, align 8
  %iy1344 = alloca i32, align 4
  %rect = alloca %struct.gs_rect_s, align 8
  %rect_out = alloca %struct.gs_rect_s, align 8
  %mi = alloca %struct.gs_matrix_s, align 4
  %obox367 = alloca %struct.gs_fixed_rect_s, align 4
  %irect = alloca %struct.gs_int_rect_s, align 4
  %support = alloca float, align 4
  %isupport = alloca i32, align 4
  %f = alloca i32, align 4
  %f751 = alloca i32, align 4
  %rw = alloca i32, align 4
  %rh = alloca i32, align 4
  %pcst = alloca %struct.gs_color_space_type_s*, align 8
  %b_w_color = alloca i32, align 4
  %curr_pcs = alloca %struct.gs_color_space_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %epx = alloca i32, align 4
  %eqx = alloca i32, align 4
  %epy = alloca i32, align 4
  %eqy = alloca i32, align 4
  %hwx = alloca i32, align 4
  %hwy = alloca i32, align 4
  %diff = alloca i32, align 4
  %diff1365 = alloca i32, align 4
  %y1616 = alloca i32, align 4
  %n_ = alloca i32, align 4
  %n_2002 = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %num_planes2135 = alloca i32, align 4
  %interleaved = alloca i32, align 4
  %i = alloca i32, align 4
  %num_components2146 = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clip_s*, align 8
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %2, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format1 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %4, i32 0, i32 7
  %5 = load i32, i32* %format1, align 4, !tbaa !13
  store i32 %5, i32* %format, align 4, !tbaa !50
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %7, i32 0, i32 2
  %8 = load i32, i32* %Width, align 4, !tbaa !5
  store i32 %8, i32* %width, align 4, !tbaa !10
  %9 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %10, i32 0, i32 3
  %11 = load i32, i32* %Height, align 4, !tbaa !11
  store i32 %11, i32* %height, align 4, !tbaa !10
  %12 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %13, i32 0, i32 4
  %14 = load i32, i32* %BitsPerComponent, align 4, !tbaa !12
  store i32 %14, i32* %bps, align 4, !tbaa !10
  %15 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 19
  %17 = load i8, i8* %masked2, align 1, !tbaa !51
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %masked, align 4, !tbaa !10
  %18 = bitcast float** %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %19, i32 0, i32 5
  %arraydecay = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i32 0
  store float* %arraydecay, float** %decode, align 8, !tbaa !1
  %20 = bitcast %struct.gs_matrix_double_s* %mat to i8*
  call void @llvm.lifetime.start(i64 48, i8* %20) #1
  %21 = bitcast i32* %index_bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %23, i32 0, i32 9
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !52
  store %struct.gs_color_space_s* %24, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %25 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_imager_state_s* %26, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 10
  %28 = load i32, i32* %log_op, align 4, !tbaa !53
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 252, %cond.false ]
  store i32 %cond, i32* %lop, align 4, !tbaa !10
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %log2_xbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp = icmp sle i32 %31, 8
  %cond4 = select i1 %cmp, i32 0, i32 1
  store i32 %cond4, i32* %log2_xbytes, align 4, !tbaa !10
  %32 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %spread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast i32* %mtx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %mty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_fixed_point_s* %row_extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_fixed_point_s* %col_extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_fixed_point_s* %x_extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_fixed_point_s* %y_extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast i32* %device_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 1, i32* %device_color, align 4, !tbaa !10
  %44 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %44) #1
  %45 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 65
  store %struct.gx_image_clue_s* null, %struct.gx_image_clue_s** %clues, align 8, !tbaa !65
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 3
  store i32 0, i32* %has_transfer, align 4, !tbaa !66
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup5, i32 0, i32 1
  store i32 0, i32* %is_lab, align 4, !tbaa !67
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 80
  %must_halftone = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup6, i32 0, i32 2
  store i32 0, i32* %must_halftone, align 4, !tbaa !68
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 80
  %need_decode = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup7, i32 0, i32 0
  store i32 0, i32* %need_decode, align 4, !tbaa !69
  %51 = load i32, i32* %width, align 4, !tbaa !10
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Width8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 9
  store i32 %51, i32* %Width8, align 4, !tbaa !70
  %53 = load i32, i32* %height, align 4, !tbaa !10
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 10
  store i32 %53, i32* %Height9, align 4, !tbaa !71
  %55 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gs_matrix_s* %55, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 5
  %57 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %57, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %58 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %58, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 0
  %59 = load float, float* %xx, align 4, !tbaa !72
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %60, i32 0, i32 0
  %61 = load float, float* %xx12, align 4, !tbaa !73
  %cmp13 = fcmp oeq float %59, %61
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %62 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix15 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %62, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix15, i32 0, i32 1
  %63 = load float, float* %xy, align 4, !tbaa !74
  %64 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %64, i32 0, i32 1
  %65 = load float, float* %xy16, align 4, !tbaa !75
  %cmp17 = fcmp oeq float %63, %65
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %66 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix20 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %66, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix20, i32 0, i32 2
  %67 = load float, float* %yx, align 4, !tbaa !76
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 2
  %69 = load float, float* %yx21, align 4, !tbaa !77
  %cmp22 = fcmp oeq float %67, %69
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true.19
  %70 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix25 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %70, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix25, i32 0, i32 3
  %71 = load float, float* %yy, align 4, !tbaa !78
  %72 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %72, i32 0, i32 3
  %73 = load float, float* %yy26, align 4, !tbaa !79
  %cmp27 = fcmp oeq float %71, %73
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.24
  %yy30 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  store double 1.000000e+00, double* %yy30, align 8, !tbaa !80
  %xx31 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  store double 1.000000e+00, double* %xx31, align 8, !tbaa !82
  %yx32 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  store double 0.000000e+00, double* %yx32, align 8, !tbaa !83
  %xy33 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  store double 0.000000e+00, double* %xy33, align 8, !tbaa !84
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %74, i32 0, i32 4
  %75 = load float, float* %tx, align 4, !tbaa !85
  %76 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix34 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %76, i32 0, i32 1
  %tx35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix34, i32 0, i32 4
  %77 = load float, float* %tx35, align 4, !tbaa !86
  %sub = fsub float %75, %77
  %conv36 = fpext float %sub to double
  %tx37 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  store double %conv36, double* %tx37, align 8, !tbaa !87
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 5
  %79 = load float, float* %ty, align 4, !tbaa !88
  %80 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix38 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %80, i32 0, i32 1
  %ty39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix38, i32 0, i32 5
  %81 = load float, float* %ty39, align 4, !tbaa !89
  %sub40 = fsub float %79, %81
  %conv41 = fpext float %sub40 to double
  %ty42 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  store double %conv41, double* %ty42, align 8, !tbaa !90
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true.19, %land.lhs.true, %if.end
  %82 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix43 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %82, i32 0, i32 1
  %call = call i32 @gs_matrix_invert_to_double(%struct.gs_matrix_s* %ImageMatrix43, %struct.gs_matrix_double_s* %mat) #6
  store i32 %call, i32* %code, align 4, !tbaa !10
  %cmp44 = icmp slt i32 %call, 0
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %83 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call46 = call i32 @gs_matrix_multiply_double(%struct.gs_matrix_double_s* %mat, %struct.gs_matrix_s* %83, %struct.gs_matrix_double_s* %mat) #6
  store i32 %call46, i32* %code, align 4, !tbaa !10
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false, %if.else
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %85 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !91
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_image_enum_s* %87 to i8*
  call void %85(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  %89 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2265

if.end.50:                                        ; preds = %lor.lhs.false
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.29
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp52 = icmp ne %struct.gs_imager_state_s* %90, null
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.60

land.lhs.true.54:                                 ; preds = %if.end.51
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %is_gstate = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 0
  %92 = load i32, i32* %is_gstate, align 4, !tbaa !92
  %tobool55 = icmp ne i32 %92, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.60

land.lhs.true.56:                                 ; preds = %land.lhs.true.54
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %94 = bitcast %struct.gs_imager_state_s* %93 to %struct.gs_state_s*
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %94, i32 0, i32 76
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !93
  %cmp57 = icmp ne %struct.gs_state_s* %95, null
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.56
  br label %if.end.365

if.else.60:                                       ; preds = %land.lhs.true.56, %land.lhs.true.54, %if.end.51
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked61 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 19
  %97 = load i8, i8* %masked61, align 1, !tbaa !51
  %tobool62 = icmp ne i8 %97, 0
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.66

lor.lhs.false.63:                                 ; preds = %if.else.60
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 78
  %99 = load i32, i32* %image_parent_type, align 4, !tbaa !96
  %cmp64 = icmp ne i32 %99, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %lor.lhs.false.63, %if.else.60
  br label %if.end.364

if.else.67:                                       ; preds = %lor.lhs.false.63
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp68 = icmp ne %struct.gs_imager_state_s* %100, null
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.78

land.lhs.true.70:                                 ; preds = %if.else.67
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %102 = load i32, i32* %x, align 4, !tbaa !97
  %cmp71 = icmp eq i32 %102, 0
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.78

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust74 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust74, i32 0, i32 1
  %104 = load i32, i32* %y, align 4, !tbaa !98
  %cmp75 = icmp eq i32 %104, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %land.lhs.true.73
  br label %if.end.363

if.else.78:                                       ; preds = %land.lhs.true.73, %land.lhs.true.70, %if.else.67
  %xy79 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %105 = load double, double* %xy79, align 8, !tbaa !84
  %cmp80 = fcmp oeq double %105, 0.000000e+00
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.214

land.lhs.true.82:                                 ; preds = %if.else.78
  %yx83 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %106 = load double, double* %yx83, align 8, !tbaa !83
  %cmp84 = fcmp oeq double %106, 0.000000e+00
  br i1 %cmp84, label %if.then.86, label %if.else.214

if.then.86:                                       ; preds = %land.lhs.true.82
  %107 = load i32, i32* %width, align 4, !tbaa !10
  %cmp87 = icmp eq i32 %107, 1
  br i1 %cmp87, label %if.then.89, label %if.end.147

if.then.89:                                       ; preds = %if.then.86
  %xx90 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %108 = load double, double* %xx90, align 8, !tbaa !82
  %cmp91 = fcmp ogt double %108, 0.000000e+00
  br i1 %cmp91, label %if.then.93, label %if.else.113

if.then.93:                                       ; preds = %if.then.89
  %109 = bitcast i32* %ix0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %tx94 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %110 = load double, double* %tx94, align 8, !tbaa !87
  %mul = fmul double %110, 2.560000e+02
  %conv95 = fptosi double %mul to i32
  %shr = ashr i32 %conv95, 8
  %shl = shl i32 %shr, 8
  store i32 %shl, i32* %ix0, align 4, !tbaa !10
  %111 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  %tx96 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %112 = load double, double* %tx96, align 8, !tbaa !87
  %xx97 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %113 = load double, double* %xx97, align 8, !tbaa !82
  %114 = load i32, i32* %width, align 4, !tbaa !10
  %conv98 = sitofp i32 %114 to double
  %mul99 = fmul double %113, %conv98
  %add = fadd double %112, %mul99
  store double %add, double* %x1, align 8, !tbaa !99
  %115 = bitcast i32* %ix1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load double, double* %x1, align 8, !tbaa !99
  %mul100 = fmul double %116, 2.560000e+02
  %conv101 = fptosi double %mul100 to i32
  %add102 = add nsw i32 %conv101, 255
  %shr103 = ashr i32 %add102, 8
  %shl104 = shl i32 %shr103, 8
  store i32 %shl104, i32* %ix1, align 4, !tbaa !10
  %117 = load i32, i32* %ix0, align 4, !tbaa !10
  %conv105 = sitofp i32 %117 to double
  %mul106 = fmul double %conv105, 3.906250e-03
  %tx107 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  store double %mul106, double* %tx107, align 8, !tbaa !87
  %118 = load i32, i32* %ix1, align 4, !tbaa !10
  %119 = load i32, i32* %ix0, align 4, !tbaa !10
  %sub108 = sub nsw i32 %118, %119
  %conv109 = sitofp i32 %sub108 to double
  %mul110 = fmul double %conv109, 3.906250e-03
  %120 = load i32, i32* %width, align 4, !tbaa !10
  %conv111 = sitofp i32 %120 to double
  %div = fdiv double %mul110, %conv111
  %xx112 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  store double %div, double* %xx112, align 8, !tbaa !82
  %121 = bitcast i32* %ix1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %ix0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %if.end.146

if.else.113:                                      ; preds = %if.then.89
  %xx114 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %124 = load double, double* %xx114, align 8, !tbaa !82
  %cmp115 = fcmp olt double %124, 0.000000e+00
  br i1 %cmp115, label %if.then.117, label %if.end.145

if.then.117:                                      ; preds = %if.else.113
  %125 = bitcast i32* %ix0118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %tx119 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %126 = load double, double* %tx119, align 8, !tbaa !87
  %mul120 = fmul double %126, 2.560000e+02
  %conv121 = fptosi double %mul120 to i32
  %add122 = add nsw i32 %conv121, 255
  %shr123 = ashr i32 %add122, 8
  %shl124 = shl i32 %shr123, 8
  store i32 %shl124, i32* %ix0118, align 4, !tbaa !10
  %127 = bitcast double* %x1125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  %tx126 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %128 = load double, double* %tx126, align 8, !tbaa !87
  %xx127 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %129 = load double, double* %xx127, align 8, !tbaa !82
  %130 = load i32, i32* %width, align 4, !tbaa !10
  %conv128 = sitofp i32 %130 to double
  %mul129 = fmul double %129, %conv128
  %add130 = fadd double %128, %mul129
  store double %add130, double* %x1125, align 8, !tbaa !99
  %131 = bitcast i32* %ix1131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load double, double* %x1125, align 8, !tbaa !99
  %mul132 = fmul double %132, 2.560000e+02
  %conv133 = fptosi double %mul132 to i32
  %shr134 = ashr i32 %conv133, 8
  %shl135 = shl i32 %shr134, 8
  store i32 %shl135, i32* %ix1131, align 4, !tbaa !10
  %133 = load i32, i32* %ix0118, align 4, !tbaa !10
  %conv136 = sitofp i32 %133 to double
  %mul137 = fmul double %conv136, 3.906250e-03
  %tx138 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  store double %mul137, double* %tx138, align 8, !tbaa !87
  %134 = load i32, i32* %ix1131, align 4, !tbaa !10
  %135 = load i32, i32* %ix0118, align 4, !tbaa !10
  %sub139 = sub nsw i32 %134, %135
  %conv140 = sitofp i32 %sub139 to double
  %mul141 = fmul double %conv140, 3.906250e-03
  %136 = load i32, i32* %width, align 4, !tbaa !10
  %conv142 = sitofp i32 %136 to double
  %div143 = fdiv double %mul141, %conv142
  %xx144 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  store double %div143, double* %xx144, align 8, !tbaa !82
  %137 = bitcast i32* %ix1131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast double* %x1125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %ix0118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.117, %if.else.113
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.93
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.86
  %140 = load i32, i32* %height, align 4, !tbaa !10
  %cmp148 = icmp eq i32 %140, 1
  br i1 %cmp148, label %if.then.150, label %if.end.213

if.then.150:                                      ; preds = %if.end.147
  %yy151 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %141 = load double, double* %yy151, align 8, !tbaa !80
  %cmp152 = fcmp ogt double %141, 0.000000e+00
  br i1 %cmp152, label %if.then.154, label %if.else.179

if.then.154:                                      ; preds = %if.then.150
  %142 = bitcast i32* %iy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %ty155 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %143 = load double, double* %ty155, align 8, !tbaa !90
  %mul156 = fmul double %143, 2.560000e+02
  %conv157 = fptosi double %mul156 to i32
  %shr158 = ashr i32 %conv157, 8
  %shl159 = shl i32 %shr158, 8
  store i32 %shl159, i32* %iy0, align 4, !tbaa !10
  %144 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  %ty160 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %145 = load double, double* %ty160, align 8, !tbaa !90
  %yy161 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %146 = load double, double* %yy161, align 8, !tbaa !80
  %147 = load i32, i32* %height, align 4, !tbaa !10
  %conv162 = sitofp i32 %147 to double
  %mul163 = fmul double %146, %conv162
  %add164 = fadd double %145, %mul163
  store double %add164, double* %y1, align 8, !tbaa !99
  %148 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = load double, double* %y1, align 8, !tbaa !99
  %mul165 = fmul double %149, 2.560000e+02
  %conv166 = fptosi double %mul165 to i32
  %add167 = add nsw i32 %conv166, 255
  %shr168 = ashr i32 %add167, 8
  %shl169 = shl i32 %shr168, 8
  store i32 %shl169, i32* %iy1, align 4, !tbaa !10
  %150 = load i32, i32* %iy0, align 4, !tbaa !10
  %conv170 = sitofp i32 %150 to double
  %mul171 = fmul double %conv170, 3.906250e-03
  %ty172 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  store double %mul171, double* %ty172, align 8, !tbaa !90
  %151 = load i32, i32* %iy1, align 4, !tbaa !10
  %152 = load i32, i32* %iy0, align 4, !tbaa !10
  %sub173 = sub nsw i32 %151, %152
  %conv174 = sitofp i32 %sub173 to double
  %mul175 = fmul double %conv174, 3.906250e-03
  %153 = load i32, i32* %height, align 4, !tbaa !10
  %conv176 = sitofp i32 %153 to double
  %div177 = fdiv double %mul175, %conv176
  %yy178 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  store double %div177, double* %yy178, align 8, !tbaa !80
  %154 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32* %iy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  br label %if.end.212

if.else.179:                                      ; preds = %if.then.150
  %yy180 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %157 = load double, double* %yy180, align 8, !tbaa !80
  %cmp181 = fcmp olt double %157, 0.000000e+00
  br i1 %cmp181, label %if.then.183, label %if.end.211

if.then.183:                                      ; preds = %if.else.179
  %158 = bitcast i32* %iy0184 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %ty185 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %159 = load double, double* %ty185, align 8, !tbaa !90
  %mul186 = fmul double %159, 2.560000e+02
  %conv187 = fptosi double %mul186 to i32
  %add188 = add nsw i32 %conv187, 255
  %shr189 = ashr i32 %add188, 8
  %shl190 = shl i32 %shr189, 8
  store i32 %shl190, i32* %iy0184, align 4, !tbaa !10
  %160 = bitcast double* %y1191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %ty192 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %161 = load double, double* %ty192, align 8, !tbaa !90
  %yy193 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %162 = load double, double* %yy193, align 8, !tbaa !80
  %163 = load i32, i32* %height, align 4, !tbaa !10
  %conv194 = sitofp i32 %163 to double
  %mul195 = fmul double %162, %conv194
  %add196 = fadd double %161, %mul195
  store double %add196, double* %y1191, align 8, !tbaa !99
  %164 = bitcast i32* %iy1197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %165 = load double, double* %y1191, align 8, !tbaa !99
  %mul198 = fmul double %165, 2.560000e+02
  %conv199 = fptosi double %mul198 to i32
  %shr200 = ashr i32 %conv199, 8
  %shl201 = shl i32 %shr200, 8
  store i32 %shl201, i32* %iy1197, align 4, !tbaa !10
  %166 = load i32, i32* %iy0184, align 4, !tbaa !10
  %conv202 = sitofp i32 %166 to double
  %mul203 = fmul double %conv202, 3.906250e-03
  %ty204 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  store double %mul203, double* %ty204, align 8, !tbaa !90
  %167 = load i32, i32* %iy1197, align 4, !tbaa !10
  %168 = load i32, i32* %iy0184, align 4, !tbaa !10
  %sub205 = sub nsw i32 %167, %168
  %conv206 = sitofp i32 %sub205 to double
  %mul207 = fmul double %conv206, 3.906250e-03
  %169 = load i32, i32* %height, align 4, !tbaa !10
  %conv208 = sitofp i32 %169 to double
  %div209 = fdiv double %mul207, %conv208
  %yy210 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  store double %div209, double* %yy210, align 8, !tbaa !80
  %170 = bitcast i32* %iy1197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast double* %y1191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %iy0184 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.183, %if.else.179
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.154
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.147
  br label %if.end.362

if.else.214:                                      ; preds = %land.lhs.true.82, %if.else.78
  %xx215 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %173 = load double, double* %xx215, align 8, !tbaa !82
  %cmp216 = fcmp oeq double %173, 0.000000e+00
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.361

land.lhs.true.218:                                ; preds = %if.else.214
  %yy219 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %174 = load double, double* %yy219, align 8, !tbaa !80
  %cmp220 = fcmp oeq double %174, 0.000000e+00
  br i1 %cmp220, label %if.then.222, label %if.end.361

if.then.222:                                      ; preds = %land.lhs.true.218
  %175 = load i32, i32* %height, align 4, !tbaa !10
  %cmp223 = icmp eq i32 %175, 1
  br i1 %cmp223, label %if.then.225, label %if.end.291

if.then.225:                                      ; preds = %if.then.222
  %yx226 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %176 = load double, double* %yx226, align 8, !tbaa !83
  %cmp227 = fcmp ogt double %176, 0.000000e+00
  br i1 %cmp227, label %if.then.229, label %if.else.257

if.then.229:                                      ; preds = %if.then.225
  %177 = bitcast i32* %ix0230 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %tx231 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %178 = load double, double* %tx231, align 8, !tbaa !87
  %mul232 = fmul double %178, 2.560000e+02
  %conv233 = fptosi double %mul232 to i32
  %shr234 = ashr i32 %conv233, 8
  %shl235 = shl i32 %shr234, 8
  store i32 %shl235, i32* %ix0230, align 4, !tbaa !10
  %179 = bitcast double* %x1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %tx237 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %180 = load double, double* %tx237, align 8, !tbaa !87
  %yx238 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %181 = load double, double* %yx238, align 8, !tbaa !83
  %182 = load i32, i32* %height, align 4, !tbaa !10
  %conv239 = sitofp i32 %182 to double
  %mul240 = fmul double %181, %conv239
  %add241 = fadd double %180, %mul240
  store double %add241, double* %x1236, align 8, !tbaa !99
  %183 = bitcast i32* %ix1242 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = load double, double* %x1236, align 8, !tbaa !99
  %mul243 = fmul double %184, 2.560000e+02
  %conv244 = fptosi double %mul243 to i32
  %add245 = add nsw i32 %conv244, 255
  %shr246 = ashr i32 %add245, 8
  %shl247 = shl i32 %shr246, 8
  store i32 %shl247, i32* %ix1242, align 4, !tbaa !10
  %185 = load i32, i32* %ix0230, align 4, !tbaa !10
  %conv248 = sitofp i32 %185 to double
  %mul249 = fmul double %conv248, 3.906250e-03
  %tx250 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  store double %mul249, double* %tx250, align 8, !tbaa !87
  %186 = load i32, i32* %ix1242, align 4, !tbaa !10
  %187 = load i32, i32* %ix0230, align 4, !tbaa !10
  %sub251 = sub nsw i32 %186, %187
  %conv252 = sitofp i32 %sub251 to double
  %mul253 = fmul double %conv252, 3.906250e-03
  %188 = load i32, i32* %height, align 4, !tbaa !10
  %conv254 = sitofp i32 %188 to double
  %div255 = fdiv double %mul253, %conv254
  %yx256 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  store double %div255, double* %yx256, align 8, !tbaa !83
  %189 = bitcast i32* %ix1242 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast double* %x1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32* %ix0230 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  br label %if.end.290

if.else.257:                                      ; preds = %if.then.225
  %yx258 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %192 = load double, double* %yx258, align 8, !tbaa !83
  %cmp259 = fcmp olt double %192, 0.000000e+00
  br i1 %cmp259, label %if.then.261, label %if.end.289

if.then.261:                                      ; preds = %if.else.257
  %193 = bitcast i32* %ix0262 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %tx263 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %194 = load double, double* %tx263, align 8, !tbaa !87
  %mul264 = fmul double %194, 2.560000e+02
  %conv265 = fptosi double %mul264 to i32
  %add266 = add nsw i32 %conv265, 255
  %shr267 = ashr i32 %add266, 8
  %shl268 = shl i32 %shr267, 8
  store i32 %shl268, i32* %ix0262, align 4, !tbaa !10
  %195 = bitcast double* %x1269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #1
  %tx270 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %196 = load double, double* %tx270, align 8, !tbaa !87
  %yx271 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %197 = load double, double* %yx271, align 8, !tbaa !83
  %198 = load i32, i32* %height, align 4, !tbaa !10
  %conv272 = sitofp i32 %198 to double
  %mul273 = fmul double %197, %conv272
  %add274 = fadd double %196, %mul273
  store double %add274, double* %x1269, align 8, !tbaa !99
  %199 = bitcast i32* %ix1275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = load double, double* %x1269, align 8, !tbaa !99
  %mul276 = fmul double %200, 2.560000e+02
  %conv277 = fptosi double %mul276 to i32
  %shr278 = ashr i32 %conv277, 8
  %shl279 = shl i32 %shr278, 8
  store i32 %shl279, i32* %ix1275, align 4, !tbaa !10
  %201 = load i32, i32* %ix0262, align 4, !tbaa !10
  %conv280 = sitofp i32 %201 to double
  %mul281 = fmul double %conv280, 3.906250e-03
  %tx282 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  store double %mul281, double* %tx282, align 8, !tbaa !87
  %202 = load i32, i32* %ix1275, align 4, !tbaa !10
  %203 = load i32, i32* %ix0262, align 4, !tbaa !10
  %sub283 = sub nsw i32 %202, %203
  %conv284 = sitofp i32 %sub283 to double
  %mul285 = fmul double %conv284, 3.906250e-03
  %204 = load i32, i32* %height, align 4, !tbaa !10
  %conv286 = sitofp i32 %204 to double
  %div287 = fdiv double %mul285, %conv286
  %yx288 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  store double %div287, double* %yx288, align 8, !tbaa !83
  %205 = bitcast i32* %ix1275 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast double* %x1269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i32* %ix0262 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.261, %if.else.257
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.229
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.222
  %208 = load i32, i32* %width, align 4, !tbaa !10
  %cmp292 = icmp eq i32 %208, 1
  br i1 %cmp292, label %if.then.294, label %if.end.360

if.then.294:                                      ; preds = %if.end.291
  %xy295 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %209 = load double, double* %xy295, align 8, !tbaa !84
  %cmp296 = fcmp ogt double %209, 0.000000e+00
  br i1 %cmp296, label %if.then.298, label %if.else.326

if.then.298:                                      ; preds = %if.then.294
  %210 = bitcast i32* %iy0299 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  %ty300 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %211 = load double, double* %ty300, align 8, !tbaa !90
  %mul301 = fmul double %211, 2.560000e+02
  %conv302 = fptosi double %mul301 to i32
  %shr303 = ashr i32 %conv302, 8
  %shl304 = shl i32 %shr303, 8
  store i32 %shl304, i32* %iy0299, align 4, !tbaa !10
  %212 = bitcast double* %y1305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  %ty306 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %213 = load double, double* %ty306, align 8, !tbaa !90
  %xy307 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %214 = load double, double* %xy307, align 8, !tbaa !84
  %215 = load i32, i32* %width, align 4, !tbaa !10
  %conv308 = sitofp i32 %215 to double
  %mul309 = fmul double %214, %conv308
  %add310 = fadd double %213, %mul309
  store double %add310, double* %y1305, align 8, !tbaa !99
  %216 = bitcast i32* %iy1311 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = load double, double* %y1305, align 8, !tbaa !99
  %mul312 = fmul double %217, 2.560000e+02
  %conv313 = fptosi double %mul312 to i32
  %add314 = add nsw i32 %conv313, 255
  %shr315 = ashr i32 %add314, 8
  %shl316 = shl i32 %shr315, 8
  store i32 %shl316, i32* %iy1311, align 4, !tbaa !10
  %218 = load i32, i32* %iy0299, align 4, !tbaa !10
  %conv317 = sitofp i32 %218 to double
  %mul318 = fmul double %conv317, 3.906250e-03
  %ty319 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  store double %mul318, double* %ty319, align 8, !tbaa !90
  %219 = load i32, i32* %iy1311, align 4, !tbaa !10
  %220 = load i32, i32* %iy0299, align 4, !tbaa !10
  %sub320 = sub nsw i32 %219, %220
  %conv321 = sitofp i32 %sub320 to double
  %mul322 = fmul double %conv321, 3.906250e-03
  %221 = load i32, i32* %width, align 4, !tbaa !10
  %conv323 = sitofp i32 %221 to double
  %div324 = fdiv double %mul322, %conv323
  %xy325 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  store double %div324, double* %xy325, align 8, !tbaa !84
  %222 = bitcast i32* %iy1311 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast double* %y1305 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i32* %iy0299 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  br label %if.end.359

if.else.326:                                      ; preds = %if.then.294
  %xy327 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %225 = load double, double* %xy327, align 8, !tbaa !84
  %cmp328 = fcmp olt double %225, 0.000000e+00
  br i1 %cmp328, label %if.then.330, label %if.end.358

if.then.330:                                      ; preds = %if.else.326
  %226 = bitcast i32* %iy0331 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #1
  %ty332 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %227 = load double, double* %ty332, align 8, !tbaa !90
  %mul333 = fmul double %227, 2.560000e+02
  %conv334 = fptosi double %mul333 to i32
  %add335 = add nsw i32 %conv334, 255
  %shr336 = ashr i32 %add335, 8
  %shl337 = shl i32 %shr336, 8
  store i32 %shl337, i32* %iy0331, align 4, !tbaa !10
  %228 = bitcast double* %y1338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  %ty339 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %229 = load double, double* %ty339, align 8, !tbaa !90
  %xy340 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %230 = load double, double* %xy340, align 8, !tbaa !84
  %231 = load i32, i32* %width, align 4, !tbaa !10
  %conv341 = sitofp i32 %231 to double
  %mul342 = fmul double %230, %conv341
  %add343 = fadd double %229, %mul342
  store double %add343, double* %y1338, align 8, !tbaa !99
  %232 = bitcast i32* %iy1344 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %232) #1
  %233 = load double, double* %y1338, align 8, !tbaa !99
  %mul345 = fmul double %233, 2.560000e+02
  %conv346 = fptosi double %mul345 to i32
  %shr347 = ashr i32 %conv346, 8
  %shl348 = shl i32 %shr347, 8
  store i32 %shl348, i32* %iy1344, align 4, !tbaa !10
  %234 = load i32, i32* %iy0331, align 4, !tbaa !10
  %conv349 = sitofp i32 %234 to double
  %mul350 = fmul double %conv349, 3.906250e-03
  %ty351 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  store double %mul350, double* %ty351, align 8, !tbaa !90
  %235 = load i32, i32* %iy1344, align 4, !tbaa !10
  %236 = load i32, i32* %iy0331, align 4, !tbaa !10
  %sub352 = sub nsw i32 %235, %236
  %conv353 = sitofp i32 %sub352 to double
  %mul354 = fmul double %conv353, 3.906250e-03
  %237 = load i32, i32* %width, align 4, !tbaa !10
  %conv355 = sitofp i32 %237 to double
  %div356 = fdiv double %mul354, %conv355
  %xy357 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  store double %div356, double* %xy357, align 8, !tbaa !84
  %238 = bitcast i32* %iy1344 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast double* %y1338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i32* %iy0331 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.330, %if.else.326
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %if.then.298
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %if.end.291
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %land.lhs.true.218, %if.else.214
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.213
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.then.77
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.66
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.59
  br label %while.cond

while.cond:                                       ; preds = %if.end.365
  %241 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool366 = icmp ne %struct.gx_clip_path_s* %241, null
  br i1 %tobool366, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %242 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %242) #1
  %243 = bitcast %struct.gs_rect_s* %rect_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %243) #1
  %244 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %244) #1
  %245 = bitcast %struct.gs_fixed_rect_s* %obox367 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %245) #1
  %246 = bitcast %struct.gs_int_rect_s* %irect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %246) #1
  %247 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm368 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %247, i32 0, i32 5
  %248 = bitcast %struct.gs_matrix_fixed_s* %ctm368 to %struct.gs_matrix_s*
  %call369 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %248, %struct.gs_matrix_s* %mi) #6
  store i32 %call369, i32* %code, align 4, !tbaa !10
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %if.then.377, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %while.body
  %249 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix373 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %249, i32 0, i32 1
  %call374 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %ImageMatrix373, %struct.gs_matrix_s* %mi) #6
  store i32 %call374, i32* %code, align 4, !tbaa !10
  %cmp375 = icmp slt i32 %call374, 0
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %lor.lhs.false.372, %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.378:                                       ; preds = %lor.lhs.false.372
  %250 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call379 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %250, %struct.gs_fixed_rect_s* %obox367) #6
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox367, i32 0, i32 0
  %x380 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %251 = load i32, i32* %x380, align 4, !tbaa !100
  %conv381 = sitofp i32 %251 to double
  %mul382 = fmul double %conv381, 3.906250e-03
  %p383 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x384 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p383, i32 0, i32 0
  store double %mul382, double* %x384, align 8, !tbaa !101
  %p385 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox367, i32 0, i32 0
  %y386 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p385, i32 0, i32 1
  %252 = load i32, i32* %y386, align 4, !tbaa !103
  %conv387 = sitofp i32 %252 to double
  %mul388 = fmul double %conv387, 3.906250e-03
  %p389 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y390 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p389, i32 0, i32 1
  store double %mul388, double* %y390, align 8, !tbaa !104
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox367, i32 0, i32 1
  %x391 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %253 = load i32, i32* %x391, align 4, !tbaa !105
  %conv392 = sitofp i32 %253 to double
  %mul393 = fmul double %conv392, 3.906250e-03
  %q394 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x395 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q394, i32 0, i32 0
  store double %mul393, double* %x395, align 8, !tbaa !106
  %q396 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox367, i32 0, i32 1
  %y397 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q396, i32 0, i32 1
  %254 = load i32, i32* %y397, align 4, !tbaa !107
  %conv398 = sitofp i32 %254 to double
  %mul399 = fmul double %conv398, 3.906250e-03
  %q400 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y401 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q400, i32 0, i32 1
  store double %mul399, double* %y401, align 8, !tbaa !108
  %call402 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %rect, %struct.gs_matrix_s* %mi, %struct.gs_rect_s* %rect_out) #6
  store i32 %call402, i32* %code, align 4, !tbaa !10
  %255 = load i32, i32* %code, align 4, !tbaa !10
  %cmp403 = icmp slt i32 %255, 0
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %if.end.378
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.406:                                       ; preds = %if.end.378
  %p407 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect_out, i32 0, i32 0
  %x408 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p407, i32 0, i32 0
  %256 = load double, double* %x408, align 8, !tbaa !101
  %sub409 = fsub double %256, 1.000000e+00
  %conv410 = fptosi double %sub409 to i32
  %p411 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %x412 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p411, i32 0, i32 0
  store i32 %conv410, i32* %x412, align 4, !tbaa !14
  %p413 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect_out, i32 0, i32 0
  %y414 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p413, i32 0, i32 1
  %257 = load double, double* %y414, align 8, !tbaa !104
  %sub415 = fsub double %257, 1.000000e+00
  %conv416 = fptosi double %sub415 to i32
  %p417 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %y418 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p417, i32 0, i32 1
  store i32 %conv416, i32* %y418, align 4, !tbaa !17
  %q419 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect_out, i32 0, i32 1
  %x420 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q419, i32 0, i32 0
  %258 = load double, double* %x420, align 8, !tbaa !106
  %add421 = fadd double %258, 1.000000e+00
  %conv422 = fptosi double %add421 to i32
  %q423 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %x424 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q423, i32 0, i32 0
  store i32 %conv422, i32* %x424, align 4, !tbaa !18
  %q425 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect_out, i32 0, i32 1
  %y426 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q425, i32 0, i32 1
  %259 = load double, double* %y426, align 8, !tbaa !108
  %add427 = fadd double %259, 1.000000e+00
  %conv428 = fptosi double %add427 to i32
  %q429 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %y430 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q429, i32 0, i32 1
  store i32 %conv428, i32* %y430, align 4, !tbaa !19
  %260 = bitcast float* %support to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  %xx431 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 0
  %261 = load float, float* %xx431, align 4, !tbaa !73
  %cmp432 = fcmp olt float %261, 0.000000e+00
  br i1 %cmp432, label %cond.true.434, label %cond.false.437

cond.true.434:                                    ; preds = %if.end.406
  %xx435 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 0
  %262 = load float, float* %xx435, align 4, !tbaa !73
  %sub436 = fsub float -0.000000e+00, %262
  br label %cond.end.439

cond.false.437:                                   ; preds = %if.end.406
  %xx438 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 0
  %263 = load float, float* %xx438, align 4, !tbaa !73
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.437, %cond.true.434
  %cond440 = phi float [ %sub436, %cond.true.434 ], [ %263, %cond.false.437 ]
  store float %cond440, float* %support, align 4, !tbaa !109
  %264 = bitcast i32* %isupport to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #1
  %yy441 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %265 = load float, float* %yy441, align 4, !tbaa !79
  %cmp442 = fcmp olt float %265, 0.000000e+00
  br i1 %cmp442, label %cond.true.444, label %cond.false.447

cond.true.444:                                    ; preds = %cond.end.439
  %yy445 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %266 = load float, float* %yy445, align 4, !tbaa !79
  %sub446 = fsub float -0.000000e+00, %266
  br label %cond.end.449

cond.false.447:                                   ; preds = %cond.end.439
  %yy448 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %267 = load float, float* %yy448, align 4, !tbaa !79
  br label %cond.end.449

cond.end.449:                                     ; preds = %cond.false.447, %cond.true.444
  %cond450 = phi float [ %sub446, %cond.true.444 ], [ %267, %cond.false.447 ]
  %268 = load float, float* %support, align 4, !tbaa !109
  %cmp451 = fcmp ogt float %cond450, %268
  br i1 %cmp451, label %if.then.453, label %if.end.464

if.then.453:                                      ; preds = %cond.end.449
  %yy454 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %269 = load float, float* %yy454, align 4, !tbaa !79
  %cmp455 = fcmp olt float %269, 0.000000e+00
  br i1 %cmp455, label %cond.true.457, label %cond.false.460

cond.true.457:                                    ; preds = %if.then.453
  %yy458 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %270 = load float, float* %yy458, align 4, !tbaa !79
  %sub459 = fsub float -0.000000e+00, %270
  br label %cond.end.462

cond.false.460:                                   ; preds = %if.then.453
  %yy461 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 3
  %271 = load float, float* %yy461, align 4, !tbaa !79
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.460, %cond.true.457
  %cond463 = phi float [ %sub459, %cond.true.457 ], [ %271, %cond.false.460 ]
  store float %cond463, float* %support, align 4, !tbaa !109
  br label %if.end.464

if.end.464:                                       ; preds = %cond.end.462, %cond.end.449
  %xy465 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %272 = load float, float* %xy465, align 4, !tbaa !75
  %cmp466 = fcmp olt float %272, 0.000000e+00
  br i1 %cmp466, label %cond.true.468, label %cond.false.471

cond.true.468:                                    ; preds = %if.end.464
  %xy469 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %273 = load float, float* %xy469, align 4, !tbaa !75
  %sub470 = fsub float -0.000000e+00, %273
  br label %cond.end.473

cond.false.471:                                   ; preds = %if.end.464
  %xy472 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %274 = load float, float* %xy472, align 4, !tbaa !75
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.471, %cond.true.468
  %cond474 = phi float [ %sub470, %cond.true.468 ], [ %274, %cond.false.471 ]
  %275 = load float, float* %support, align 4, !tbaa !109
  %cmp475 = fcmp ogt float %cond474, %275
  br i1 %cmp475, label %if.then.477, label %if.end.488

if.then.477:                                      ; preds = %cond.end.473
  %xy478 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %276 = load float, float* %xy478, align 4, !tbaa !75
  %cmp479 = fcmp olt float %276, 0.000000e+00
  br i1 %cmp479, label %cond.true.481, label %cond.false.484

cond.true.481:                                    ; preds = %if.then.477
  %xy482 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %277 = load float, float* %xy482, align 4, !tbaa !75
  %sub483 = fsub float -0.000000e+00, %277
  br label %cond.end.486

cond.false.484:                                   ; preds = %if.then.477
  %xy485 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 1
  %278 = load float, float* %xy485, align 4, !tbaa !75
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.484, %cond.true.481
  %cond487 = phi float [ %sub483, %cond.true.481 ], [ %278, %cond.false.484 ]
  store float %cond487, float* %support, align 4, !tbaa !109
  br label %if.end.488

if.end.488:                                       ; preds = %cond.end.486, %cond.end.473
  %yx489 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %279 = load float, float* %yx489, align 4, !tbaa !77
  %cmp490 = fcmp olt float %279, 0.000000e+00
  br i1 %cmp490, label %cond.true.492, label %cond.false.495

cond.true.492:                                    ; preds = %if.end.488
  %yx493 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %280 = load float, float* %yx493, align 4, !tbaa !77
  %sub494 = fsub float -0.000000e+00, %280
  br label %cond.end.497

cond.false.495:                                   ; preds = %if.end.488
  %yx496 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %281 = load float, float* %yx496, align 4, !tbaa !77
  br label %cond.end.497

cond.end.497:                                     ; preds = %cond.false.495, %cond.true.492
  %cond498 = phi float [ %sub494, %cond.true.492 ], [ %281, %cond.false.495 ]
  %282 = load float, float* %support, align 4, !tbaa !109
  %cmp499 = fcmp ogt float %cond498, %282
  br i1 %cmp499, label %if.then.501, label %if.end.512

if.then.501:                                      ; preds = %cond.end.497
  %yx502 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %283 = load float, float* %yx502, align 4, !tbaa !77
  %cmp503 = fcmp olt float %283, 0.000000e+00
  br i1 %cmp503, label %cond.true.505, label %cond.false.508

cond.true.505:                                    ; preds = %if.then.501
  %yx506 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %284 = load float, float* %yx506, align 4, !tbaa !77
  %sub507 = fsub float -0.000000e+00, %284
  br label %cond.end.510

cond.false.508:                                   ; preds = %if.then.501
  %yx509 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi, i32 0, i32 2
  %285 = load float, float* %yx509, align 4, !tbaa !77
  br label %cond.end.510

cond.end.510:                                     ; preds = %cond.false.508, %cond.true.505
  %cond511 = phi float [ %sub507, %cond.true.505 ], [ %285, %cond.false.508 ]
  store float %cond511, float* %support, align 4, !tbaa !109
  br label %if.end.512

if.end.512:                                       ; preds = %cond.end.510, %cond.end.497
  %286 = load float, float* %support, align 4, !tbaa !109
  %add513 = fadd float %286, 1.000000e+00
  %mul514 = fmul float 8.000000e+00, %add513
  %conv515 = fptosi float %mul514 to i32
  %add516 = add nsw i32 %conv515, 1
  store i32 %add516, i32* %isupport, align 4, !tbaa !10
  %287 = load i32, i32* %isupport, align 4, !tbaa !10
  %p517 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %x518 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p517, i32 0, i32 0
  %288 = load i32, i32* %x518, align 4, !tbaa !14
  %sub519 = sub nsw i32 %288, %287
  store i32 %sub519, i32* %x518, align 4, !tbaa !14
  %289 = load i32, i32* %isupport, align 4, !tbaa !10
  %p520 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %y521 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p520, i32 0, i32 1
  %290 = load i32, i32* %y521, align 4, !tbaa !17
  %sub522 = sub nsw i32 %290, %289
  store i32 %sub522, i32* %y521, align 4, !tbaa !17
  %291 = load i32, i32* %isupport, align 4, !tbaa !10
  %q523 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %x524 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q523, i32 0, i32 0
  %292 = load i32, i32* %x524, align 4, !tbaa !18
  %add525 = add nsw i32 %292, %291
  store i32 %add525, i32* %x524, align 4, !tbaa !18
  %293 = load i32, i32* %isupport, align 4, !tbaa !10
  %q526 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %y527 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q526, i32 0, i32 1
  %294 = load i32, i32* %y527, align 4, !tbaa !19
  %add528 = add nsw i32 %294, %293
  store i32 %add528, i32* %y527, align 4, !tbaa !19
  %295 = bitcast i32* %isupport to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast float* %support to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %297, i32 0, i32 23
  %x529 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect, i32 0, i32 0
  %298 = load i32, i32* %x529, align 4, !tbaa !46
  %p530 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %x531 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p530, i32 0, i32 0
  %299 = load i32, i32* %x531, align 4, !tbaa !14
  %cmp532 = icmp slt i32 %298, %299
  br i1 %cmp532, label %if.then.534, label %if.end.554

if.then.534:                                      ; preds = %if.end.512
  %p535 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %x536 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p535, i32 0, i32 0
  %300 = load i32, i32* %x536, align 4, !tbaa !14
  %301 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect537 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %301, i32 0, i32 23
  %x538 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect537, i32 0, i32 0
  %302 = load i32, i32* %x538, align 4, !tbaa !46
  %sub539 = sub nsw i32 %300, %302
  %303 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect540 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %303, i32 0, i32 23
  %w = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect540, i32 0, i32 2
  %304 = load i32, i32* %w, align 4, !tbaa !48
  %sub541 = sub nsw i32 %304, %sub539
  store i32 %sub541, i32* %w, align 4, !tbaa !48
  %305 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect542 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %305, i32 0, i32 23
  %w543 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect542, i32 0, i32 2
  %306 = load i32, i32* %w543, align 4, !tbaa !48
  %cmp544 = icmp slt i32 %306, 0
  br i1 %cmp544, label %if.then.546, label %if.end.549

if.then.546:                                      ; preds = %if.then.534
  %307 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect547 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %307, i32 0, i32 23
  %w548 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect547, i32 0, i32 2
  store i32 0, i32* %w548, align 4, !tbaa !48
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.546, %if.then.534
  %p550 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %x551 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p550, i32 0, i32 0
  %308 = load i32, i32* %x551, align 4, !tbaa !14
  %309 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect552 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %309, i32 0, i32 23
  %x553 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect552, i32 0, i32 0
  store i32 %308, i32* %x553, align 4, !tbaa !46
  br label %if.end.554

if.end.554:                                       ; preds = %if.end.549, %if.end.512
  %310 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect555 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %310, i32 0, i32 23
  %x556 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect555, i32 0, i32 0
  %311 = load i32, i32* %x556, align 4, !tbaa !46
  %312 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect557 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %312, i32 0, i32 23
  %w558 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect557, i32 0, i32 2
  %313 = load i32, i32* %w558, align 4, !tbaa !48
  %add559 = add nsw i32 %311, %313
  %q560 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %x561 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q560, i32 0, i32 0
  %314 = load i32, i32* %x561, align 4, !tbaa !18
  %cmp562 = icmp sgt i32 %add559, %314
  br i1 %cmp562, label %if.then.564, label %if.end.580

if.then.564:                                      ; preds = %if.end.554
  %q565 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %x566 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q565, i32 0, i32 0
  %315 = load i32, i32* %x566, align 4, !tbaa !18
  %316 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect567 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %316, i32 0, i32 23
  %x568 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect567, i32 0, i32 0
  %317 = load i32, i32* %x568, align 4, !tbaa !46
  %sub569 = sub nsw i32 %315, %317
  %318 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect570 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %318, i32 0, i32 23
  %w571 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect570, i32 0, i32 2
  store i32 %sub569, i32* %w571, align 4, !tbaa !48
  %319 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect572 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %319, i32 0, i32 23
  %w573 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect572, i32 0, i32 2
  %320 = load i32, i32* %w573, align 4, !tbaa !48
  %cmp574 = icmp slt i32 %320, 0
  br i1 %cmp574, label %if.then.576, label %if.end.579

if.then.576:                                      ; preds = %if.then.564
  %321 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect577 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %321, i32 0, i32 23
  %w578 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect577, i32 0, i32 2
  store i32 0, i32* %w578, align 4, !tbaa !48
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.576, %if.then.564
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %if.end.554
  %322 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect581 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %322, i32 0, i32 23
  %y582 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect581, i32 0, i32 1
  %323 = load i32, i32* %y582, align 4, !tbaa !47
  %p583 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %y584 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p583, i32 0, i32 1
  %324 = load i32, i32* %y584, align 4, !tbaa !17
  %cmp585 = icmp slt i32 %323, %324
  br i1 %cmp585, label %if.then.587, label %if.end.607

if.then.587:                                      ; preds = %if.end.580
  %p588 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %y589 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p588, i32 0, i32 1
  %325 = load i32, i32* %y589, align 4, !tbaa !17
  %326 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect590 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %326, i32 0, i32 23
  %y591 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect590, i32 0, i32 1
  %327 = load i32, i32* %y591, align 4, !tbaa !47
  %sub592 = sub nsw i32 %325, %327
  %328 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect593 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %328, i32 0, i32 23
  %h = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect593, i32 0, i32 3
  %329 = load i32, i32* %h, align 4, !tbaa !49
  %sub594 = sub nsw i32 %329, %sub592
  store i32 %sub594, i32* %h, align 4, !tbaa !49
  %330 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect595 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %330, i32 0, i32 23
  %h596 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect595, i32 0, i32 3
  %331 = load i32, i32* %h596, align 4, !tbaa !49
  %cmp597 = icmp slt i32 %331, 0
  br i1 %cmp597, label %if.then.599, label %if.end.602

if.then.599:                                      ; preds = %if.then.587
  %332 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect600 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %332, i32 0, i32 23
  %h601 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect600, i32 0, i32 3
  store i32 0, i32* %h601, align 4, !tbaa !49
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.599, %if.then.587
  %p603 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 0
  %y604 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p603, i32 0, i32 1
  %333 = load i32, i32* %y604, align 4, !tbaa !17
  %334 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect605 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %334, i32 0, i32 23
  %y606 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect605, i32 0, i32 1
  store i32 %333, i32* %y606, align 4, !tbaa !47
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.602, %if.end.580
  %335 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect608 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %335, i32 0, i32 23
  %y609 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect608, i32 0, i32 1
  %336 = load i32, i32* %y609, align 4, !tbaa !47
  %337 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect610 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %337, i32 0, i32 23
  %h611 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect610, i32 0, i32 3
  %338 = load i32, i32* %h611, align 4, !tbaa !49
  %add612 = add nsw i32 %336, %338
  %q613 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %y614 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q613, i32 0, i32 1
  %339 = load i32, i32* %y614, align 4, !tbaa !19
  %cmp615 = icmp sgt i32 %add612, %339
  br i1 %cmp615, label %if.then.617, label %if.end.633

if.then.617:                                      ; preds = %if.end.607
  %q618 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %irect, i32 0, i32 1
  %y619 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q618, i32 0, i32 1
  %340 = load i32, i32* %y619, align 4, !tbaa !19
  %341 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect620 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %341, i32 0, i32 23
  %y621 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect620, i32 0, i32 1
  %342 = load i32, i32* %y621, align 4, !tbaa !47
  %sub622 = sub nsw i32 %340, %342
  %343 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect623 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %343, i32 0, i32 23
  %h624 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect623, i32 0, i32 3
  store i32 %sub622, i32* %h624, align 4, !tbaa !49
  %344 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect625 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %344, i32 0, i32 23
  %h626 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect625, i32 0, i32 3
  %345 = load i32, i32* %h626, align 4, !tbaa !49
  %cmp627 = icmp slt i32 %345, 0
  br i1 %cmp627, label %if.then.629, label %if.end.632

if.then.629:                                      ; preds = %if.then.617
  %346 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect630 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %346, i32 0, i32 23
  %h631 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect630, i32 0, i32 3
  store i32 0, i32* %h631, align 4, !tbaa !49
  br label %if.end.632

if.end.632:                                       ; preds = %if.then.629, %if.then.617
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.end.607
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.633, %if.then.405, %if.then.377
  %347 = bitcast %struct.gs_int_rect_s* %irect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %347) #1
  %348 = bitcast %struct.gs_fixed_rect_s* %obox367 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %348) #1
  %349 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %349) #1
  %350 = bitcast %struct.gs_rect_s* %rect_out to i8*
  call void @llvm.lifetime.end(i64 32, i8* %350) #1
  %351 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %351) #1
  br label %while.end

while.end:                                        ; preds = %cleanup, %while.cond
  %352 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect638 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %352, i32 0, i32 23
  %x639 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect638, i32 0, i32 0
  %353 = load i32, i32* %x639, align 4, !tbaa !46
  %354 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect640 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %354, i32 0, i32 23
  %w641 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect640, i32 0, i32 2
  %355 = load i32, i32* %w641, align 4, !tbaa !48
  %add642 = add nsw i32 %353, %355
  %356 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect643 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %356, i32 0, i32 22
  %x644 = getelementptr inbounds %struct.r_, %struct.r_* %rect643, i32 0, i32 0
  %357 = load i32, i32* %x644, align 4, !tbaa !23
  %cmp645 = icmp sle i32 %add642, %357
  br i1 %cmp645, label %if.then.677, label %lor.lhs.false.647

lor.lhs.false.647:                                ; preds = %while.end
  %358 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect648 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %358, i32 0, i32 22
  %x649 = getelementptr inbounds %struct.r_, %struct.r_* %rect648, i32 0, i32 0
  %359 = load i32, i32* %x649, align 4, !tbaa !23
  %360 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect650 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %360, i32 0, i32 22
  %w651 = getelementptr inbounds %struct.r_, %struct.r_* %rect650, i32 0, i32 2
  %361 = load i32, i32* %w651, align 4, !tbaa !44
  %add652 = add nsw i32 %359, %361
  %362 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect653 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %362, i32 0, i32 23
  %x654 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect653, i32 0, i32 0
  %363 = load i32, i32* %x654, align 4, !tbaa !46
  %cmp655 = icmp sle i32 %add652, %363
  br i1 %cmp655, label %if.then.677, label %lor.lhs.false.657

lor.lhs.false.657:                                ; preds = %lor.lhs.false.647
  %364 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect658 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %364, i32 0, i32 23
  %y659 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect658, i32 0, i32 1
  %365 = load i32, i32* %y659, align 4, !tbaa !47
  %366 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect660 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %366, i32 0, i32 23
  %h661 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect660, i32 0, i32 3
  %367 = load i32, i32* %h661, align 4, !tbaa !49
  %add662 = add nsw i32 %365, %367
  %368 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect663 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %368, i32 0, i32 22
  %y664 = getelementptr inbounds %struct.r_, %struct.r_* %rect663, i32 0, i32 1
  %369 = load i32, i32* %y664, align 4, !tbaa !43
  %cmp665 = icmp sle i32 %add662, %369
  br i1 %cmp665, label %if.then.677, label %lor.lhs.false.667

lor.lhs.false.667:                                ; preds = %lor.lhs.false.657
  %370 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect668 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %370, i32 0, i32 22
  %y669 = getelementptr inbounds %struct.r_, %struct.r_* %rect668, i32 0, i32 1
  %371 = load i32, i32* %y669, align 4, !tbaa !43
  %372 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect670 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %372, i32 0, i32 22
  %h671 = getelementptr inbounds %struct.r_, %struct.r_* %rect670, i32 0, i32 3
  %373 = load i32, i32* %h671, align 4, !tbaa !45
  %add672 = add nsw i32 %371, %373
  %374 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect673 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %374, i32 0, i32 23
  %y674 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect673, i32 0, i32 1
  %375 = load i32, i32* %y674, align 4, !tbaa !47
  %cmp675 = icmp sle i32 %add672, %375
  br i1 %cmp675, label %if.then.677, label %if.end.690

if.then.677:                                      ; preds = %lor.lhs.false.667, %lor.lhs.false.657, %lor.lhs.false.647, %while.end
  %376 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect678 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %376, i32 0, i32 22
  %x679 = getelementptr inbounds %struct.r_, %struct.r_* %rect678, i32 0, i32 0
  %377 = load i32, i32* %x679, align 4, !tbaa !23
  %378 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect680 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %378, i32 0, i32 23
  %x681 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect680, i32 0, i32 0
  store i32 %377, i32* %x681, align 4, !tbaa !46
  %379 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect682 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %379, i32 0, i32 22
  %y683 = getelementptr inbounds %struct.r_, %struct.r_* %rect682, i32 0, i32 1
  %380 = load i32, i32* %y683, align 4, !tbaa !43
  %381 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect684 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %381, i32 0, i32 23
  %y685 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect684, i32 0, i32 1
  store i32 %380, i32* %y685, align 4, !tbaa !47
  %382 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect686 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %382, i32 0, i32 23
  %w687 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect686, i32 0, i32 2
  store i32 0, i32* %w687, align 4, !tbaa !48
  %383 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rrect688 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %383, i32 0, i32 23
  %h689 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %rrect688, i32 0, i32 3
  store i32 0, i32* %h689, align 4, !tbaa !49
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.677, %lor.lhs.false.667
  %xx691 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %384 = load double, double* %xx691, align 8, !tbaa !82
  %conv692 = fptrunc double %384 to float
  %385 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %385, i32 0, i32 21
  %xx693 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  store float %conv692, float* %xx693, align 4, !tbaa !110
  %xy694 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %386 = load double, double* %xy694, align 8, !tbaa !84
  %conv695 = fptrunc double %386 to float
  %387 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix696 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %387, i32 0, i32 21
  %xy697 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix696, i32 0, i32 1
  store float %conv695, float* %xy697, align 4, !tbaa !111
  %yx698 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %388 = load double, double* %yx698, align 8, !tbaa !83
  %conv699 = fptrunc double %388 to float
  %389 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix700 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %389, i32 0, i32 21
  %yx701 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix700, i32 0, i32 2
  store float %conv699, float* %yx701, align 4, !tbaa !112
  %yy702 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %390 = load double, double* %yy702, align 8, !tbaa !80
  %conv703 = fptrunc double %390 to float
  %391 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix704 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %391, i32 0, i32 21
  %yy705 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix704, i32 0, i32 3
  store float %conv703, float* %yy705, align 4, !tbaa !113
  %tx706 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %392 = load double, double* %tx706, align 8, !tbaa !87
  %conv707 = fptrunc double %392 to float
  %393 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix708 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %393, i32 0, i32 21
  %tx709 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix708, i32 0, i32 4
  store float %conv707, float* %tx709, align 4, !tbaa !114
  %ty710 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %394 = load double, double* %ty710, align 8, !tbaa !90
  %conv711 = fptrunc double %394 to float
  %395 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix712 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %395, i32 0, i32 21
  %ty713 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix712, i32 0, i32 5
  store float %conv711, float* %ty713, align 4, !tbaa !115
  br label %do.body

do.body:                                          ; preds = %if.end.690
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %396 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp714 = icmp slt i32 %396, 8
  br i1 %cmp714, label %cond.true.716, label %cond.false.718

cond.true.716:                                    ; preds = %do.end
  %397 = load i32, i32* %bps, align 4, !tbaa !10
  %shr717 = ashr i32 %397, 1
  br label %cond.end.721

cond.false.718:                                   ; preds = %do.end
  %398 = load i32, i32* %bps, align 4, !tbaa !10
  %shr719 = ashr i32 %398, 2
  %add720 = add nsw i32 %shr719, 1
  br label %cond.end.721

cond.end.721:                                     ; preds = %cond.false.718, %cond.true.716
  %cond722 = phi i32 [ %shr717, %cond.true.716 ], [ %add720, %cond.false.718 ]
  store i32 %cond722, i32* %index_bps, align 4, !tbaa !10
  %tx723 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %399 = load double, double* %tx723, align 8, !tbaa !87
  %cmp724 = fcmp ogt double %399, 0.000000e+00
  br i1 %cmp724, label %if.then.726, label %if.else.730

if.then.726:                                      ; preds = %cond.end.721
  %tx727 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %400 = load double, double* %tx727, align 8, !tbaa !87
  %mul728 = fmul double %400, 2.560000e+02
  %conv729 = fptosi double %mul728 to i32
  store i32 %conv729, i32* %mtx, align 4, !tbaa !10
  br label %if.end.742

if.else.730:                                      ; preds = %cond.end.721
  %401 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  %tx731 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %402 = load double, double* %tx731, align 8, !tbaa !87
  %sub732 = fsub double -0.000000e+00, %402
  %conv733 = fptosi double %sub732 to i32
  %add734 = add nsw i32 %conv733, 1
  store i32 %add734, i32* %f, align 4, !tbaa !10
  %tx735 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 4
  %403 = load double, double* %tx735, align 8, !tbaa !87
  %404 = load i32, i32* %f, align 4, !tbaa !10
  %conv736 = sitofp i32 %404 to double
  %add737 = fadd double %403, %conv736
  %mul738 = fmul double %add737, 2.560000e+02
  %conv739 = fptosi double %mul738 to i32
  %405 = load i32, i32* %f, align 4, !tbaa !10
  %shl740 = shl i32 %405, 8
  %sub741 = sub nsw i32 %conv739, %shl740
  store i32 %sub741, i32* %mtx, align 4, !tbaa !10
  %406 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  br label %if.end.742

if.end.742:                                       ; preds = %if.else.730, %if.then.726
  %ty743 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %407 = load double, double* %ty743, align 8, !tbaa !90
  %cmp744 = fcmp ogt double %407, 0.000000e+00
  br i1 %cmp744, label %if.then.746, label %if.else.750

if.then.746:                                      ; preds = %if.end.742
  %ty747 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %408 = load double, double* %ty747, align 8, !tbaa !90
  %mul748 = fmul double %408, 2.560000e+02
  %conv749 = fptosi double %mul748 to i32
  store i32 %conv749, i32* %mty, align 4, !tbaa !10
  br label %if.end.763

if.else.750:                                      ; preds = %if.end.742
  %409 = bitcast i32* %f751 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %409) #1
  %ty752 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %410 = load double, double* %ty752, align 8, !tbaa !90
  %sub753 = fsub double -0.000000e+00, %410
  %conv754 = fptosi double %sub753 to i32
  %add755 = add nsw i32 %conv754, 1
  store i32 %add755, i32* %f751, align 4, !tbaa !10
  %ty756 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 5
  %411 = load double, double* %ty756, align 8, !tbaa !90
  %412 = load i32, i32* %f751, align 4, !tbaa !10
  %conv757 = sitofp i32 %412 to double
  %add758 = fadd double %411, %conv757
  %mul759 = fmul double %add758, 2.560000e+02
  %conv760 = fptosi double %mul759 to i32
  %413 = load i32, i32* %f751, align 4, !tbaa !10
  %shl761 = shl i32 %413, 8
  %sub762 = sub nsw i32 %conv760, %shl761
  store i32 %sub762, i32* %mty, align 4, !tbaa !10
  %414 = bitcast i32* %f751 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  br label %if.end.763

if.end.763:                                       ; preds = %if.else.750, %if.then.746
  %415 = load i32, i32* %width, align 4, !tbaa !10
  %conv764 = sitofp i32 %415 to double
  %xx765 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %416 = load double, double* %xx765, align 8, !tbaa !82
  %mul766 = fmul double %conv764, %416
  %call767 = call i32 @float2fixed_rounded_boxed(double %mul766) #6
  %x768 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  store i32 %call767, i32* %x768, align 4, !tbaa !116
  %xy769 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %417 = load double, double* %xy769, align 8, !tbaa !84
  %cmp770 = fcmp oeq double %417, 0.000000e+00
  br i1 %cmp770, label %cond.true.772, label %cond.false.773

cond.true.772:                                    ; preds = %if.end.763
  br label %cond.end.779

cond.false.773:                                   ; preds = %if.end.763
  %418 = load i32, i32* %width, align 4, !tbaa !10
  %conv774 = sitofp i32 %418 to double
  %xy775 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %419 = load double, double* %xy775, align 8, !tbaa !84
  %mul776 = fmul double %conv774, %419
  %call777 = call i32 @float2fixed_rounded_boxed(double %mul776) #6
  %conv778 = sext i32 %call777 to i64
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.773, %cond.true.772
  %cond780 = phi i64 [ 0, %cond.true.772 ], [ %conv778, %cond.false.773 ]
  %conv781 = trunc i64 %cond780 to i32
  %y782 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  store i32 %conv781, i32* %y782, align 4, !tbaa !117
  %yx783 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %420 = load double, double* %yx783, align 8, !tbaa !83
  %cmp784 = fcmp oeq double %420, 0.000000e+00
  br i1 %cmp784, label %cond.true.786, label %cond.false.787

cond.true.786:                                    ; preds = %cond.end.779
  br label %cond.end.793

cond.false.787:                                   ; preds = %cond.end.779
  %421 = load i32, i32* %height, align 4, !tbaa !10
  %conv788 = sitofp i32 %421 to double
  %yx789 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %422 = load double, double* %yx789, align 8, !tbaa !83
  %mul790 = fmul double %conv788, %422
  %call791 = call i32 @float2fixed_rounded_boxed(double %mul790) #6
  %conv792 = sext i32 %call791 to i64
  br label %cond.end.793

cond.end.793:                                     ; preds = %cond.false.787, %cond.true.786
  %cond794 = phi i64 [ 0, %cond.true.786 ], [ %conv792, %cond.false.787 ]
  %conv795 = trunc i64 %cond794 to i32
  %x796 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  store i32 %conv795, i32* %x796, align 4, !tbaa !116
  %423 = load i32, i32* %height, align 4, !tbaa !10
  %conv797 = sitofp i32 %423 to double
  %yy798 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %424 = load double, double* %yy798, align 8, !tbaa !80
  %mul799 = fmul double %conv797, %424
  %call800 = call i32 @float2fixed_rounded_boxed(double %mul799) #6
  %y801 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  store i32 %call800, i32* %y801, align 4, !tbaa !117
  %425 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %426 = bitcast %struct.gx_image_enum_s* %425 to %struct.gx_image_enum_common_s*
  %427 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %428 = bitcast %struct.gs_pixel_image_s* %427 to %struct.gs_data_image_s*
  %429 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %430 = load i32, i32* %masked, align 4, !tbaa !10
  %tobool802 = icmp ne i32 %430, 0
  br i1 %tobool802, label %cond.true.803, label %cond.false.804

cond.true.803:                                    ; preds = %cond.end.793
  br label %cond.end.815

cond.false.804:                                   ; preds = %cond.end.793
  %431 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %431, i32 0, i32 15
  %432 = load i32, i32* %alpha, align 4, !tbaa !118
  %tobool805 = icmp ne i32 %432, 0
  br i1 %tobool805, label %cond.true.806, label %cond.false.809

cond.true.806:                                    ; preds = %cond.false.804
  %433 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %433, i32 0, i32 0
  %434 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !119
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %434, i32 0, i32 4
  %435 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !122
  %436 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call807 = call i32 %435(%struct.gs_color_space_s* %436) #6
  %add808 = add nsw i32 %call807, 1
  br label %cond.end.813

cond.false.809:                                   ; preds = %cond.false.804
  %437 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type810 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %437, i32 0, i32 0
  %438 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type810, align 8, !tbaa !119
  %num_components811 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %438, i32 0, i32 4
  %439 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components811, align 8, !tbaa !122
  %440 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call812 = call i32 %439(%struct.gs_color_space_s* %440) #6
  br label %cond.end.813

cond.end.813:                                     ; preds = %cond.false.809, %cond.true.806
  %cond814 = phi i32 [ %add808, %cond.true.806 ], [ %call812, %cond.false.809 ]
  br label %cond.end.815

cond.end.815:                                     ; preds = %cond.end.813, %cond.true.803
  %cond816 = phi i32 [ 1, %cond.true.803 ], [ %cond814, %cond.end.813 ]
  %441 = load i32, i32* %format, align 4, !tbaa !50
  %call817 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %426, %struct.gs_data_image_s* %428, %struct.gx_image_enum_procs_s* @image1_enum_procs, %struct.gx_device_s* %429, i32 %cond816, i32 %441) #6
  %442 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect818 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %442, i32 0, i32 22
  %w819 = getelementptr inbounds %struct.r_, %struct.r_* %rect818, i32 0, i32 2
  %443 = load i32, i32* %w819, align 4, !tbaa !44
  %444 = load i32, i32* %width, align 4, !tbaa !10
  %cmp820 = icmp eq i32 %443, %444
  br i1 %cmp820, label %land.lhs.true.822, label %if.else.828

land.lhs.true.822:                                ; preds = %cond.end.815
  %445 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect823 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %445, i32 0, i32 22
  %h824 = getelementptr inbounds %struct.r_, %struct.r_* %rect823, i32 0, i32 3
  %446 = load i32, i32* %h824, align 4, !tbaa !45
  %447 = load i32, i32* %height, align 4, !tbaa !10
  %cmp825 = icmp eq i32 %446, %447
  br i1 %cmp825, label %if.then.827, label %if.else.828

if.then.827:                                      ; preds = %land.lhs.true.822
  %448 = bitcast %struct.gs_fixed_point_s* %x_extent to i8*
  %449 = bitcast %struct.gs_fixed_point_s* %row_extent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %448, i8* %449, i64 8, i32 4, i1 false), !tbaa.struct !124
  %450 = bitcast %struct.gs_fixed_point_s* %y_extent to i8*
  %451 = bitcast %struct.gs_fixed_point_s* %col_extent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %450, i8* %451, i64 8, i32 4, i1 false), !tbaa.struct !124
  br label %if.end.871

if.else.828:                                      ; preds = %land.lhs.true.822, %cond.end.815
  %452 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %452) #1
  %453 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect829 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %453, i32 0, i32 22
  %w830 = getelementptr inbounds %struct.r_, %struct.r_* %rect829, i32 0, i32 2
  %454 = load i32, i32* %w830, align 4, !tbaa !44
  store i32 %454, i32* %rw, align 4, !tbaa !10
  %455 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %455) #1
  %456 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect831 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %456, i32 0, i32 22
  %h832 = getelementptr inbounds %struct.r_, %struct.r_* %rect831, i32 0, i32 3
  %457 = load i32, i32* %h832, align 4, !tbaa !45
  store i32 %457, i32* %rh, align 4, !tbaa !10
  %458 = load i32, i32* %rw, align 4, !tbaa !10
  %conv833 = sitofp i32 %458 to double
  %xx834 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 0
  %459 = load double, double* %xx834, align 8, !tbaa !82
  %mul835 = fmul double %conv833, %459
  %call836 = call i32 @float2fixed_rounded_boxed(double %mul835) #6
  %x837 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  store i32 %call836, i32* %x837, align 4, !tbaa !116
  %xy838 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %460 = load double, double* %xy838, align 8, !tbaa !84
  %cmp839 = fcmp oeq double %460, 0.000000e+00
  br i1 %cmp839, label %cond.true.841, label %cond.false.842

cond.true.841:                                    ; preds = %if.else.828
  br label %cond.end.848

cond.false.842:                                   ; preds = %if.else.828
  %461 = load i32, i32* %rw, align 4, !tbaa !10
  %conv843 = sitofp i32 %461 to double
  %xy844 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 1
  %462 = load double, double* %xy844, align 8, !tbaa !84
  %mul845 = fmul double %conv843, %462
  %call846 = call i32 @float2fixed_rounded_boxed(double %mul845) #6
  %conv847 = sext i32 %call846 to i64
  br label %cond.end.848

cond.end.848:                                     ; preds = %cond.false.842, %cond.true.841
  %cond849 = phi i64 [ 0, %cond.true.841 ], [ %conv847, %cond.false.842 ]
  %conv850 = trunc i64 %cond849 to i32
  %y851 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 1
  store i32 %conv850, i32* %y851, align 4, !tbaa !117
  %yx852 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %463 = load double, double* %yx852, align 8, !tbaa !83
  %cmp853 = fcmp oeq double %463, 0.000000e+00
  br i1 %cmp853, label %cond.true.855, label %cond.false.856

cond.true.855:                                    ; preds = %cond.end.848
  br label %cond.end.862

cond.false.856:                                   ; preds = %cond.end.848
  %464 = load i32, i32* %rh, align 4, !tbaa !10
  %conv857 = sitofp i32 %464 to double
  %yx858 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 2
  %465 = load double, double* %yx858, align 8, !tbaa !83
  %mul859 = fmul double %conv857, %465
  %call860 = call i32 @float2fixed_rounded_boxed(double %mul859) #6
  %conv861 = sext i32 %call860 to i64
  br label %cond.end.862

cond.end.862:                                     ; preds = %cond.false.856, %cond.true.855
  %cond863 = phi i64 [ 0, %cond.true.855 ], [ %conv861, %cond.false.856 ]
  %conv864 = trunc i64 %cond863 to i32
  %x865 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 0
  store i32 %conv864, i32* %x865, align 4, !tbaa !116
  %466 = load i32, i32* %rh, align 4, !tbaa !10
  %conv866 = sitofp i32 %466 to double
  %yy867 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %mat, i32 0, i32 3
  %467 = load double, double* %yy867, align 8, !tbaa !80
  %mul868 = fmul double %conv866, %467
  %call869 = call i32 @float2fixed_rounded_boxed(double %mul868) #6
  %y870 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 1
  store i32 %call869, i32* %y870, align 4, !tbaa !117
  %468 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  br label %if.end.871

if.end.871:                                       ; preds = %cond.end.862, %if.then.827
  %470 = load i32, i32* %masked, align 4, !tbaa !10
  %tobool872 = icmp ne i32 %470, 0
  br i1 %tobool872, label %if.then.879, label %lor.lhs.false.873

lor.lhs.false.873:                                ; preds = %if.end.871
  %471 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type874 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %471, i32 0, i32 0
  %472 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type874, align 8, !tbaa !119
  %num_components875 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %472, i32 0, i32 4
  %473 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components875, align 8, !tbaa !122
  %474 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call876 = call i32 %473(%struct.gs_color_space_s* %474) #6
  %cmp877 = icmp eq i32 %call876, 1
  br i1 %cmp877, label %if.then.879, label %if.else.887

if.then.879:                                      ; preds = %lor.lhs.false.873, %if.end.871
  %475 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs880 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %475, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs880, i32 0, i32 7
  %476 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !125
  %477 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call881 = call i8* %476(%struct.gs_memory_s* %477, i32 169984, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  %478 = bitcast i8* %call881 to %struct.gx_image_clue_s*
  %479 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues882 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %479, i32 0, i32 65
  store %struct.gx_image_clue_s* %478, %struct.gx_image_clue_s** %clues882, align 8, !tbaa !65
  %480 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues883 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %480, i32 0, i32 65
  %481 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues883, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %481, i64 0
  %dev_color = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx, i32 0, i32 0
  %482 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %482, i32 0, i32 68
  store %struct.gx_device_color_s* %dev_color, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !126
  %483 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues884 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %483, i32 0, i32 65
  %484 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues884, align 8, !tbaa !65
  %arrayidx885 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %484, i64 255
  %dev_color886 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx885, i32 0, i32 0
  %485 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %485, i32 0, i32 69
  store %struct.gx_device_color_s* %dev_color886, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !127
  br label %if.end.890

if.else.887:                                      ; preds = %lor.lhs.false.873
  %486 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0_val = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %486, i32 0, i32 66
  %487 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0888 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %487, i32 0, i32 68
  store %struct.gx_device_color_s* %icolor0_val, %struct.gx_device_color_s** %icolor0888, align 8, !tbaa !126
  %488 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1_val = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %488, i32 0, i32 67
  %489 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1889 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %489, i32 0, i32 69
  store %struct.gx_device_color_s* %icolor1_val, %struct.gx_device_color_s** %icolor1889, align 8, !tbaa !127
  br label %if.end.890

if.end.890:                                       ; preds = %if.else.887, %if.then.879
  %490 = load i32, i32* %masked, align 4, !tbaa !10
  %tobool891 = icmp ne i32 %490, 0
  br i1 %tobool891, label %if.then.892, label %if.else.934

if.then.892:                                      ; preds = %if.end.890
  %491 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp893 = icmp ne i32 %491, 1
  br i1 %cmp893, label %if.then.906, label %lor.lhs.false.895

lor.lhs.false.895:                                ; preds = %if.then.892
  %492 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp896 = icmp ne %struct.gs_color_space_s* %492, null
  br i1 %cmp896, label %if.then.906, label %lor.lhs.false.898

lor.lhs.false.898:                                ; preds = %lor.lhs.false.895
  %493 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %alpha899 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %493, i32 0, i32 15
  %494 = load i32, i32* %alpha899, align 4, !tbaa !118
  %tobool900 = icmp ne i32 %494, 0
  br i1 %tobool900, label %if.then.906, label %lor.lhs.false.901

lor.lhs.false.901:                                ; preds = %lor.lhs.false.898
  %495 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx902 = getelementptr inbounds float, float* %495, i64 0
  %496 = load float, float* %arrayidx902, align 4, !tbaa !109
  %497 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx903 = getelementptr inbounds float, float* %497, i64 1
  %498 = load float, float* %arrayidx903, align 4, !tbaa !109
  %cmp904 = fcmp oeq float %496, %498
  br i1 %cmp904, label %if.then.906, label %if.end.909

if.then.906:                                      ; preds = %lor.lhs.false.901, %lor.lhs.false.898, %lor.lhs.false.895, %if.then.892
  %499 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs907 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %499, i32 0, i32 1
  %free_object908 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs907, i32 0, i32 2
  %500 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object908, align 8, !tbaa !91
  %501 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %502 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %503 = bitcast %struct.gx_image_enum_s* %502 to i8*
  call void %500(%struct.gs_memory_s* %501, i8* %503, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2265

if.end.909:                                       ; preds = %lor.lhs.false.901
  %504 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0910 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %504, i32 0, i32 68
  %505 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0910, align 8, !tbaa !126
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %505, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 -1, i64* %pure, align 8, !tbaa !128
  %506 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0911 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %506, i32 0, i32 68
  %507 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0911, align 8, !tbaa !126
  %type912 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %507, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type912, align 8, !tbaa !129
  %508 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0913 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %508, i32 0, i32 68
  %509 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0913, align 8, !tbaa !126
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %509, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !130
  %510 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1914 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %510, i32 0, i32 69
  %511 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1914, align 8, !tbaa !127
  %colors915 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %511, i32 0, i32 1
  %pure916 = bitcast %union._c* %colors915 to i64*
  store i64 -1, i64* %pure916, align 8, !tbaa !128
  %512 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1917 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %512, i32 0, i32 69
  %513 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1917, align 8, !tbaa !127
  %type918 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %513, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type918, align 8, !tbaa !129
  %514 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1919 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %514, i32 0, i32 69
  %515 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1919, align 8, !tbaa !127
  %ccolor_valid920 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %515, i32 0, i32 3
  store i32 0, i32* %ccolor_valid920, align 4, !tbaa !130
  %516 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1921 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %516, i32 0, i32 69
  %517 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1921, align 8, !tbaa !127
  %518 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %519 = bitcast %struct.gx_device_color_s* %517 to i8*
  %520 = bitcast %struct.gx_device_color_s* %518 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %519, i8* %520, i64 656, i32 8, i1 false), !tbaa.struct !131
  %521 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %521, i32 0, i32 64
  %arrayidx922 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx922, i32 0, i32 0
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %table to [16 x i32]*
  %arrayidx923 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  %522 = bitcast i32* %arrayidx923 to i8*
  %523 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx924 = getelementptr inbounds float, float* %523, i64 0
  %524 = load float, float* %arrayidx924, align 4, !tbaa !109
  %525 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx925 = getelementptr inbounds float, float* %525, i64 1
  %526 = load float, float* %arrayidx925, align 4, !tbaa !109
  %cmp926 = fcmp olt float %524, %526
  %cond928 = select i1 %cmp926, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @lookup4x1to32_inverted, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @lookup4x1to32_identity, i32 0, i32 0)
  %527 = bitcast i32* %cond928 to i8*
  %call929 = call i8* @memcpy(i8* %522, i8* %527, i64 64) #7
  %528 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map930 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %528, i32 0, i32 64
  %arrayidx931 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map930, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx931, i32 0, i32 3
  store i32 0, i32* %decoding, align 4, !tbaa !133
  store i32 1, i32* %spp, align 4, !tbaa !10
  %529 = load i32, i32* %lop, align 4, !tbaa !10
  %and = and i32 %529, 51
  %shl932 = shl i32 %and, 2
  %530 = load i32, i32* %lop, align 4, !tbaa !10
  %and933 = and i32 %530, -205
  %or = or i32 %shl932, %and933
  store i32 %or, i32* %lop, align 4, !tbaa !10
  br label %if.end.1183

if.else.934:                                      ; preds = %if.end.890
  %531 = bitcast %struct.gs_color_space_type_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %531) #1
  %532 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type935 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %532, i32 0, i32 0
  %533 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type935, align 8, !tbaa !119
  store %struct.gs_color_space_type_s* %533, %struct.gs_color_space_type_s** %pcst, align 8, !tbaa !1
  %534 = bitcast i32* %b_w_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %534) #1
  %535 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type936 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %535, i32 0, i32 0
  %536 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type936, align 8, !tbaa !119
  %num_components937 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %536, i32 0, i32 4
  %537 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components937, align 8, !tbaa !122
  %538 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call938 = call i32 %537(%struct.gs_color_space_s* %538) #6
  store i32 %call938, i32* %spp, align 4, !tbaa !10
  %539 = load i32, i32* %spp, align 4, !tbaa !10
  %cmp939 = icmp slt i32 %539, 0
  br i1 %cmp939, label %if.then.941, label %if.end.944

if.then.941:                                      ; preds = %if.else.934
  %540 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs942 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %540, i32 0, i32 1
  %free_object943 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs942, i32 0, i32 2
  %541 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object943, align 8, !tbaa !91
  %542 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %543 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %544 = bitcast %struct.gx_image_enum_s* %543 to i8*
  call void %541(%struct.gs_memory_s* %542, i8* %544, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1181

if.end.944:                                       ; preds = %if.else.934
  %545 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %alpha945 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %545, i32 0, i32 15
  %546 = load i32, i32* %alpha945, align 4, !tbaa !118
  %tobool946 = icmp ne i32 %546, 0
  br i1 %tobool946, label %if.then.947, label %if.end.948

if.then.947:                                      ; preds = %if.end.944
  %547 = load i32, i32* %spp, align 4, !tbaa !10
  %inc = add nsw i32 %547, 1
  store i32 %inc, i32* %spp, align 4, !tbaa !10
  br label %if.end.948

if.end.948:                                       ; preds = %if.then.947, %if.end.944
  %548 = load i32, i32* %format, align 4, !tbaa !50
  switch i32 %548, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.953
  ]

sw.bb:                                            ; preds = %if.end.948
  %549 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp949 = icmp sgt i32 %549, 1
  br i1 %cmp949, label %if.then.951, label %if.end.952

if.then.951:                                      ; preds = %sw.bb
  br label %sw.epilog

if.end.952:                                       ; preds = %sw.bb
  store i32 1, i32* %format, align 4, !tbaa !50
  br label %sw.bb.953

sw.bb.953:                                        ; preds = %if.end.948, %if.end.952
  %550 = load i32, i32* %spp, align 4, !tbaa !10
  %cmp954 = icmp eq i32 %550, 1
  br i1 %cmp954, label %if.then.956, label %if.end.957

if.then.956:                                      ; preds = %sw.bb.953
  store i32 0, i32* %format, align 4, !tbaa !50
  br label %if.end.957

if.end.957:                                       ; preds = %if.then.956, %sw.bb.953
  br label %sw.default

sw.default:                                       ; preds = %if.end.948, %if.end.957
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.951
  %551 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %551, i32 0, i32 6
  %552 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !135
  %cmp958 = icmp ne %struct.cmm_profile_s* %552, null
  br i1 %cmp958, label %if.then.960, label %if.else.961

if.then.960:                                      ; preds = %sw.epilog
  store i32 0, i32* %device_color, align 4, !tbaa !10
  br label %if.end.965

if.else.961:                                      ; preds = %sw.epilog
  %553 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %pcst, align 8, !tbaa !1
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %553, i32 0, i32 7
  %554 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !136
  %555 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %556 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call962 = call %struct.gs_color_space_s* %554(%struct.gs_color_space_s* %555, %struct.gs_imager_state_s* %556) #6
  %557 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp963 = icmp eq %struct.gs_color_space_s* %call962, %557
  %conv964 = zext i1 %cmp963 to i32
  store i32 %conv964, i32* %device_color, align 4, !tbaa !10
  br label %if.end.965

if.end.965:                                       ; preds = %if.else.961, %if.then.960
  %558 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %559 = load i32, i32* %bps, align 4, !tbaa !10
  %560 = load i32, i32* %spp, align 4, !tbaa !10
  %561 = load i32, i32* %format, align 4, !tbaa !50
  %562 = load float*, float** %decode, align 8, !tbaa !1
  %563 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %564 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %565 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call966 = call i32 @image_init_colors(%struct.gx_image_enum_s* %558, i32 %559, i32 %560, i32 %561, float* %562, %struct.gs_imager_state_s* %563, %struct.gx_device_s* %564, %struct.gs_color_space_s* %565, i32* %device_color) #6
  store i32 %call966, i32* %code, align 4, !tbaa !10
  %566 = load i32, i32* %code, align 4, !tbaa !10
  %cmp967 = icmp slt i32 %566, 0
  br i1 %cmp967, label %if.then.969, label %if.end.971

if.then.969:                                      ; preds = %if.end.965
  %567 = load i32, i32* %code, align 4, !tbaa !10
  %call970 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 572, i32 0, i32 %567, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 %call970, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1181

if.end.971:                                       ; preds = %if.end.965
  %568 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call972 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %568) #6
  %tobool973 = icmp ne i32 %call972, 0
  br i1 %tobool973, label %land.lhs.true.974, label %if.end.1083

land.lhs.true.974:                                ; preds = %if.end.971
  %569 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %569, i32 0, i32 4
  %570 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !137
  %cmp975 = icmp eq %struct.gs_color_space_s* %570, null
  br i1 %cmp975, label %if.then.977, label %if.end.1083

if.then.977:                                      ; preds = %land.lhs.true.974
  %571 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %572 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup978 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %572, i32 0, i32 80
  %is_lab979 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup978, i32 0, i32 1
  %573 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %573, i32 0, i32 1
  %574 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %call980 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %571, i32* %is_lab979, %struct.gs_memory_s* %574) #6
  %575 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup981 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %575, i32 0, i32 80
  %is_lab982 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup981, i32 0, i32 1
  %576 = load i32, i32* %is_lab982, align 4, !tbaa !67
  %tobool983 = icmp ne i32 %576, 0
  br i1 %tobool983, label %if.then.984, label %if.end.1082

if.then.984:                                      ; preds = %if.then.977
  %577 = bitcast %struct.gs_color_space_s** %curr_pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %577) #1
  %578 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %578, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  br label %do.body.985

do.body.985:                                      ; preds = %if.then.984
  %579 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent986 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %579, i32 0, i32 4
  %580 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent986, align 8, !tbaa !137
  %tobool987 = icmp ne %struct.gs_color_space_s* %580, null
  br i1 %tobool987, label %if.then.988, label %if.end.1020

if.then.988:                                      ; preds = %do.body.985
  br label %do.body.989

do.body.989:                                      ; preds = %if.then.988
  br label %do.body.990

do.body.990:                                      ; preds = %do.body.989
  br label %do.cond.991

do.cond.991:                                      ; preds = %do.body.990
  br label %do.end.992

do.end.992:                                       ; preds = %do.cond.991
  %581 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent993 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %581, i32 0, i32 4
  %582 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent993, align 8, !tbaa !137
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %582, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %583 = load i64, i64* %ref_count, align 8, !tbaa !139
  %add994 = add nsw i64 %583, -1
  store i64 %add994, i64* %ref_count, align 8, !tbaa !139
  br label %do.cond.995

do.cond.995:                                      ; preds = %do.end.992
  br label %do.end.996

do.end.996:                                       ; preds = %do.cond.995
  %584 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent997 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %584, i32 0, i32 4
  %585 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent997, align 8, !tbaa !137
  %rc998 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %585, i32 0, i32 1
  %ref_count999 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc998, i32 0, i32 0
  %586 = load i64, i64* %ref_count999, align 8, !tbaa !139
  %tobool1000 = icmp ne i64 %586, 0
  br i1 %tobool1000, label %if.else.1015, label %if.then.1001

if.then.1001:                                     ; preds = %do.end.996
  br label %do.body.1002

do.body.1002:                                     ; preds = %if.then.1001
  br label %do.body.1003

do.body.1003:                                     ; preds = %do.body.1002
  br label %do.cond.1004

do.cond.1004:                                     ; preds = %do.body.1003
  br label %do.end.1005

do.end.1005:                                      ; preds = %do.cond.1004
  %587 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent1006 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %587, i32 0, i32 4
  %588 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1006, align 8, !tbaa !137
  %rc1007 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %588, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1007, i32 0, i32 2
  %589 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !140
  %590 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent1008 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %590, i32 0, i32 4
  %591 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1008, align 8, !tbaa !137
  %rc1009 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %591, i32 0, i32 1
  %memory1010 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1009, i32 0, i32 1
  %592 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1010, align 8, !tbaa !141
  %593 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent1011 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %593, i32 0, i32 4
  %594 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1011, align 8, !tbaa !137
  %595 = bitcast %struct.gs_color_space_s* %594 to i8*
  call void %589(%struct.gs_memory_s* %592, i8* %595, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %do.cond.1012

do.cond.1012:                                     ; preds = %do.end.1005
  br label %do.end.1013

do.end.1013:                                      ; preds = %do.cond.1012
  %596 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %icc_equivalent1014 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %596, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent1014, align 8, !tbaa !137
  br label %if.end.1019

if.else.1015:                                     ; preds = %do.end.996
  br label %do.body.1016

do.body.1016:                                     ; preds = %if.else.1015
  br label %do.cond.1017

do.cond.1017:                                     ; preds = %do.body.1016
  br label %do.end.1018

do.end.1018:                                      ; preds = %do.cond.1017
  br label %if.end.1019

if.end.1019:                                      ; preds = %do.end.1018, %do.end.1013
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.end.1019, %do.body.985
  br label %do.cond.1021

do.cond.1021:                                     ; preds = %if.end.1020
  br label %do.end.1022

do.end.1022:                                      ; preds = %do.cond.1021
  br label %do.body.1023

do.body.1023:                                     ; preds = %do.end.1022
  %597 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1024 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %597, i32 0, i32 6
  %598 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1024, align 8, !tbaa !135
  %tobool1025 = icmp ne %struct.cmm_profile_s* %598, null
  br i1 %tobool1025, label %if.then.1026, label %if.end.1061

if.then.1026:                                     ; preds = %do.body.1023
  br label %do.body.1027

do.body.1027:                                     ; preds = %if.then.1026
  br label %do.body.1028

do.body.1028:                                     ; preds = %do.body.1027
  br label %do.cond.1029

do.cond.1029:                                     ; preds = %do.body.1028
  br label %do.end.1030

do.end.1030:                                      ; preds = %do.cond.1029
  %599 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1031 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %599, i32 0, i32 6
  %600 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1031, align 8, !tbaa !135
  %rc1032 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %600, i32 0, i32 18
  %ref_count1033 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1032, i32 0, i32 0
  %601 = load i64, i64* %ref_count1033, align 8, !tbaa !142
  %add1034 = add nsw i64 %601, -1
  store i64 %add1034, i64* %ref_count1033, align 8, !tbaa !142
  br label %do.cond.1035

do.cond.1035:                                     ; preds = %do.end.1030
  br label %do.end.1036

do.end.1036:                                      ; preds = %do.cond.1035
  %602 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1037 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %602, i32 0, i32 6
  %603 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1037, align 8, !tbaa !135
  %rc1038 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %603, i32 0, i32 18
  %ref_count1039 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1038, i32 0, i32 0
  %604 = load i64, i64* %ref_count1039, align 8, !tbaa !142
  %tobool1040 = icmp ne i64 %604, 0
  br i1 %tobool1040, label %if.else.1056, label %if.then.1041

if.then.1041:                                     ; preds = %do.end.1036
  br label %do.body.1042

do.body.1042:                                     ; preds = %if.then.1041
  br label %do.body.1043

do.body.1043:                                     ; preds = %do.body.1042
  br label %do.cond.1044

do.cond.1044:                                     ; preds = %do.body.1043
  br label %do.end.1045

do.end.1045:                                      ; preds = %do.cond.1044
  %605 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1046 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %605, i32 0, i32 6
  %606 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1046, align 8, !tbaa !135
  %rc1047 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %606, i32 0, i32 18
  %free1048 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1047, i32 0, i32 2
  %607 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free1048, align 8, !tbaa !146
  %608 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1049 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %608, i32 0, i32 6
  %609 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1049, align 8, !tbaa !135
  %rc1050 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %609, i32 0, i32 18
  %memory1051 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1050, i32 0, i32 1
  %610 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1051, align 8, !tbaa !147
  %611 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1052 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %611, i32 0, i32 6
  %612 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1052, align 8, !tbaa !135
  %613 = bitcast %struct.cmm_profile_s* %612 to i8*
  call void %607(%struct.gs_memory_s* %610, i8* %613, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %do.cond.1053

do.cond.1053:                                     ; preds = %do.end.1045
  br label %do.end.1054

do.end.1054:                                      ; preds = %do.cond.1053
  %614 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1055 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %614, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data1055, align 8, !tbaa !135
  br label %if.end.1060

if.else.1056:                                     ; preds = %do.end.1036
  br label %do.body.1057

do.body.1057:                                     ; preds = %if.else.1056
  br label %do.cond.1058

do.cond.1058:                                     ; preds = %do.body.1057
  br label %do.end.1059

do.end.1059:                                      ; preds = %do.cond.1058
  br label %if.end.1060

if.end.1060:                                      ; preds = %do.end.1059, %do.end.1054
  br label %if.end.1061

if.end.1061:                                      ; preds = %if.end.1060, %do.body.1023
  br label %do.cond.1062

do.cond.1062:                                     ; preds = %if.end.1061
  br label %do.end.1063

do.end.1063:                                      ; preds = %do.cond.1062
  %615 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %615, i32 0, i32 35
  %616 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !148
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %616, i32 0, i32 4
  %617 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !149
  %618 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1064 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %618, i32 0, i32 6
  store %struct.cmm_profile_s* %617, %struct.cmm_profile_s** %cmm_icc_profile_data1064, align 8, !tbaa !135
  br label %do.body.1065

do.body.1065:                                     ; preds = %do.end.1063
  %619 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1066 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %619, i32 0, i32 6
  %620 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1066, align 8, !tbaa !135
  %tobool1067 = icmp ne %struct.cmm_profile_s* %620, null
  br i1 %tobool1067, label %if.then.1068, label %if.end.1079

if.then.1068:                                     ; preds = %do.body.1065
  br label %do.body.1069

do.body.1069:                                     ; preds = %if.then.1068
  %621 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %curr_pcs, align 8, !tbaa !1
  %cmm_icc_profile_data1070 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %621, i32 0, i32 6
  %622 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1070, align 8, !tbaa !135
  %rc1071 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %622, i32 0, i32 18
  %ref_count1072 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1071, i32 0, i32 0
  %623 = load i64, i64* %ref_count1072, align 8, !tbaa !142
  %inc1073 = add nsw i64 %623, 1
  store i64 %inc1073, i64* %ref_count1072, align 8, !tbaa !142
  br label %do.body.1074

do.body.1074:                                     ; preds = %do.body.1069
  br label %do.cond.1075

do.cond.1075:                                     ; preds = %do.body.1074
  br label %do.end.1076

do.end.1076:                                      ; preds = %do.cond.1075
  br label %do.cond.1077

do.cond.1077:                                     ; preds = %do.end.1076
  br label %do.end.1078

do.end.1078:                                      ; preds = %do.cond.1077
  br label %if.end.1079

if.end.1079:                                      ; preds = %do.end.1078, %do.body.1065
  br label %do.cond.1080

do.cond.1080:                                     ; preds = %if.end.1079
  br label %do.end.1081

do.end.1081:                                      ; preds = %do.cond.1080
  %624 = bitcast %struct.gs_color_space_s** %curr_pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %624) #1
  br label %if.end.1082

if.end.1082:                                      ; preds = %do.end.1081, %if.then.977
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.end.1082, %land.lhs.true.974, %if.end.971
  %625 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %625, i32 0, i32 8
  %626 = load i32, i32* %CombineWithColor, align 4, !tbaa !151
  %tobool1084 = icmp ne i32 %626, 0
  br i1 %tobool1084, label %if.else.1091, label %if.then.1085

if.then.1085:                                     ; preds = %if.end.1083
  %627 = load i32, i32* %lop, align 4, !tbaa !10
  %and1086 = and i32 %627, 15
  %shl1087 = shl i32 %and1086, 4
  %628 = load i32, i32* %lop, align 4, !tbaa !10
  %and1088 = and i32 %628, -241
  %or1089 = or i32 %shl1087, %and1088
  %and1090 = and i32 %or1089, -513
  store i32 %and1090, i32* %lop, align 4, !tbaa !10
  br label %if.end.1106

if.else.1091:                                     ; preds = %if.end.1083
  %629 = load i32, i32* %lop, align 4, !tbaa !10
  %shl1092 = shl i32 %629, 4
  %630 = load i32, i32* %lop, align 4, !tbaa !10
  %xor = xor i32 %shl1092, %630
  %and1093 = and i32 %xor, 240
  %cmp1094 = icmp ne i32 %and1093, 0
  br i1 %cmp1094, label %land.lhs.true.1096, label %if.end.1105

land.lhs.true.1096:                               ; preds = %if.else.1091
  %631 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %632 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call1097 = call i32 @color_draws_b_w(%struct.gx_device_s* %631, %struct.gx_device_color_s* %632) #6
  %cmp1098 = icmp eq i32 %call1097, 0
  br i1 %cmp1098, label %if.then.1100, label %if.end.1105

if.then.1100:                                     ; preds = %land.lhs.true.1096
  %633 = load i32, i32* %lop, align 4, !tbaa !10
  %and1101 = and i32 %633, 15
  %shl1102 = shl i32 %and1101, 4
  %634 = load i32, i32* %lop, align 4, !tbaa !10
  %and1103 = and i32 %634, -241
  %or1104 = or i32 %shl1102, %and1103
  store i32 %or1104, i32* %lop, align 4, !tbaa !10
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.then.1100, %land.lhs.true.1096, %if.else.1091
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %if.then.1085
  %635 = load i32, i32* %lop, align 4, !tbaa !10
  %cmp1107 = icmp ne i32 %635, 204
  br i1 %cmp1107, label %land.lhs.true.1109, label %if.end.1180

land.lhs.true.1109:                               ; preds = %if.end.1106
  %636 = load i32, i32* %lop, align 4, !tbaa !10
  %shl1110 = shl i32 %636, 4
  %637 = load i32, i32* %lop, align 4, !tbaa !10
  %xor1111 = xor i32 %shl1110, %637
  %and1112 = and i32 %xor1111, 240
  %cmp1113 = icmp ne i32 %and1112, 0
  br i1 %cmp1113, label %if.end.1180, label %land.lhs.true.1115

land.lhs.true.1115:                               ; preds = %land.lhs.true.1109
  %638 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp1116 = icmp eq i32 %638, 1
  br i1 %cmp1116, label %land.lhs.true.1118, label %if.end.1180

land.lhs.true.1118:                               ; preds = %land.lhs.true.1115
  %639 = load i32, i32* %spp, align 4, !tbaa !10
  %cmp1119 = icmp eq i32 %639, 1
  br i1 %cmp1119, label %land.lhs.true.1121, label %if.end.1180

land.lhs.true.1121:                               ; preds = %land.lhs.true.1118
  %640 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %641 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01122 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %641, i32 0, i32 68
  %642 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01122, align 8, !tbaa !126
  %call1123 = call i32 @color_draws_b_w(%struct.gx_device_s* %640, %struct.gx_device_color_s* %642) #6
  store i32 %call1123, i32* %b_w_color, align 4, !tbaa !10
  %cmp1124 = icmp sge i32 %call1123, 0
  br i1 %cmp1124, label %land.lhs.true.1126, label %if.end.1180

land.lhs.true.1126:                               ; preds = %land.lhs.true.1121
  %643 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %644 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11127 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %644, i32 0, i32 69
  %645 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11127, align 8, !tbaa !127
  %call1128 = call i32 @color_draws_b_w(%struct.gx_device_s* %643, %struct.gx_device_color_s* %645) #6
  %646 = load i32, i32* %b_w_color, align 4, !tbaa !10
  %xor1129 = xor i32 %646, 1
  %cmp1130 = icmp eq i32 %call1128, %xor1129
  br i1 %cmp1130, label %if.then.1132, label %if.end.1180

if.then.1132:                                     ; preds = %land.lhs.true.1126
  %647 = load i32, i32* %b_w_color, align 4, !tbaa !10
  %tobool1133 = icmp ne i32 %647, 0
  br i1 %tobool1133, label %if.then.1134, label %if.end.1146

if.then.1134:                                     ; preds = %if.then.1132
  %648 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %648) #1
  %649 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01135 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %649, i32 0, i32 68
  %650 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01135, align 8, !tbaa !126
  %651 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  %652 = bitcast %struct.gx_device_color_s* %650 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %651, i8* %652, i64 656, i32 8, i1 false), !tbaa.struct !131
  %653 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01136 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %653, i32 0, i32 68
  %654 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01136, align 8, !tbaa !126
  %655 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11137 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %655, i32 0, i32 69
  %656 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11137, align 8, !tbaa !127
  %657 = bitcast %struct.gx_device_color_s* %654 to i8*
  %658 = bitcast %struct.gx_device_color_s* %656 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %657, i8* %658, i64 656, i32 8, i1 false), !tbaa.struct !131
  %659 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11138 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %659, i32 0, i32 69
  %660 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11138, align 8, !tbaa !127
  %661 = bitcast %struct.gx_device_color_s* %660 to i8*
  %662 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %661, i8* %662, i64 656, i32 8, i1 false), !tbaa.struct !131
  %663 = load i32, i32* %lop, align 4, !tbaa !10
  %and1139 = and i32 %663, 204
  %shr1140 = lshr i32 %and1139, 2
  %664 = load i32, i32* %lop, align 4, !tbaa !10
  %and1141 = and i32 %664, 51
  %shl1142 = shl i32 %and1141, 2
  %or1143 = or i32 %shr1140, %shl1142
  %665 = load i32, i32* %lop, align 4, !tbaa !10
  %and1144 = and i32 %665, -256
  %or1145 = or i32 %or1143, %and1144
  store i32 %or1145, i32* %lop, align 4, !tbaa !10
  %666 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %666) #1
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.then.1134, %if.then.1132
  %667 = load i32, i32* %lop, align 4, !tbaa !10
  switch i32 %667, label %sw.default.1178 [
    i32 136, label %sw.bb.1147
    i32 187, label %sw.bb.1150
    i32 34, label %sw.bb.1168
    i32 238, label %sw.bb.1171
  ]

sw.bb.1147:                                       ; preds = %if.end.1146
  %668 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11148 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %668, i32 0, i32 69
  %669 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11148, align 8, !tbaa !127
  %670 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %670, i32 0, i32 68
  %671 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01149, align 8, !tbaa !126
  %672 = bitcast %struct.gx_device_color_s* %669 to i8*
  %673 = bitcast %struct.gx_device_color_s* %671 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %672, i8* %673, i64 656, i32 8, i1 false), !tbaa.struct !131
  br label %sw.bb.1150

sw.bb.1150:                                       ; preds = %if.end.1146, %sw.bb.1147
  %674 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1151 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %674, i32 0, i32 64
  %arrayidx1152 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1151, i32 0, i64 0
  %table1153 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1152, i32 0, i32 0
  %lookup4x1to321154 = bitcast %union.sample_lookup_s* %table1153 to [16 x i32]*
  %arrayidx1155 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to321154, i32 0, i64 0
  %675 = bitcast i32* %arrayidx1155 to i8*
  %call1156 = call i8* @memcpy(i8* %675, i8* bitcast ([16 x i32]* @lookup4x1to32_inverted to i8*), i64 64) #7
  br label %rmask

rmask:                                            ; preds = %sw.bb.1171, %sw.bb.1150
  store i32 1, i32* %masked, align 4, !tbaa !10
  %676 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %masked1157 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %676, i32 0, i32 19
  store i8 1, i8* %masked1157, align 1, !tbaa !51
  %677 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01158 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %677, i32 0, i32 68
  %678 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01158, align 8, !tbaa !126
  %colors1159 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %678, i32 0, i32 1
  %pure1160 = bitcast %union._c* %colors1159 to i64*
  store i64 -1, i64* %pure1160, align 8, !tbaa !128
  %679 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01161 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %679, i32 0, i32 68
  %680 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01161, align 8, !tbaa !126
  %type1162 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %680, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type1162, align 8, !tbaa !129
  %681 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01163 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %681, i32 0, i32 68
  %682 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01163, align 8, !tbaa !126
  %ccolor_valid1164 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %682, i32 0, i32 3
  store i32 0, i32* %ccolor_valid1164, align 4, !tbaa !130
  %683 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1165 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %683, i32 0, i32 64
  %arrayidx1166 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1165, i32 0, i64 0
  %decoding1167 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1166, i32 0, i32 3
  store i32 0, i32* %decoding1167, align 4, !tbaa !133
  store i32 240, i32* %lop, align 4, !tbaa !10
  br label %sw.epilog.1179

sw.bb.1168:                                       ; preds = %if.end.1146
  %684 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor11169 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %684, i32 0, i32 69
  %685 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor11169, align 8, !tbaa !127
  %686 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor01170 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %686, i32 0, i32 68
  %687 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor01170, align 8, !tbaa !126
  %688 = bitcast %struct.gx_device_color_s* %685 to i8*
  %689 = bitcast %struct.gx_device_color_s* %687 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %688, i8* %689, i64 656, i32 8, i1 false), !tbaa.struct !131
  br label %sw.bb.1171

sw.bb.1171:                                       ; preds = %if.end.1146, %sw.bb.1168
  %690 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map1172 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %690, i32 0, i32 64
  %arrayidx1173 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map1172, i32 0, i64 0
  %table1174 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx1173, i32 0, i32 0
  %lookup4x1to321175 = bitcast %union.sample_lookup_s* %table1174 to [16 x i32]*
  %arrayidx1176 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to321175, i32 0, i64 0
  %691 = bitcast i32* %arrayidx1176 to i8*
  %call1177 = call i8* @memcpy(i8* %691, i8* bitcast ([16 x i32]* @lookup4x1to32_identity to i8*), i64 64) #7
  br label %rmask

sw.default.1178:                                  ; preds = %if.end.1146
  br label %sw.epilog.1179

sw.epilog.1179:                                   ; preds = %sw.default.1178, %rmask
  br label %if.end.1180

if.end.1180:                                      ; preds = %sw.epilog.1179, %land.lhs.true.1126, %land.lhs.true.1121, %land.lhs.true.1118, %land.lhs.true.1115, %land.lhs.true.1109, %if.end.1106
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1181

cleanup.1181:                                     ; preds = %if.end.1180, %if.then.969, %if.then.941
  %692 = bitcast i32* %b_w_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
  %693 = bitcast %struct.gs_color_space_type_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.2265 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.1181
  br label %if.end.1183

if.end.1183:                                      ; preds = %cleanup.cont, %if.end.909
  %694 = load i32, i32* %device_color, align 4, !tbaa !10
  %conv1184 = trunc i32 %694 to i8
  %695 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color1185 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %695, i32 0, i32 41
  store i8 %conv1184, i8* %device_color1185, align 1, !tbaa !152
  %696 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp1186 = icmp sgt i32 %696, 8
  br i1 %cmp1186, label %cond.true.1188, label %cond.false.1190

cond.true.1188:                                   ; preds = %if.end.1183
  %697 = load i32, i32* %width, align 4, !tbaa !10
  %mul1189 = mul nsw i32 %697, 2
  br label %cond.end.1191

cond.false.1190:                                  ; preds = %if.end.1183
  %698 = load i32, i32* %width, align 4, !tbaa !10
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1190, %cond.true.1188
  %cond1192 = phi i32 [ %mul1189, %cond.true.1188 ], [ %698, %cond.false.1190 ]
  %add1193 = add nsw i32 %cond1192, 15
  %699 = load i32, i32* %spp, align 4, !tbaa !10
  %mul1194 = mul nsw i32 %add1193, %699
  store i32 %mul1194, i32* %bsize, align 4, !tbaa !10
  %700 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %700, i32 0, i32 1
  %alloc_bytes1196 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1195, i32 0, i32 7
  %701 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes1196, align 8, !tbaa !125
  %702 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %703 = load i32, i32* %bsize, align 4, !tbaa !10
  %call1197 = call i8* %701(%struct.gs_memory_s* %702, i32 %703, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call1197, i8** %buffer, align 8, !tbaa !1
  %704 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp1198 = icmp eq i8* %704, null
  br i1 %cmp1198, label %if.then.1200, label %if.end.1203

if.then.1200:                                     ; preds = %cond.end.1191
  %705 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1201 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %705, i32 0, i32 1
  %free_object1202 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1201, i32 0, i32 2
  %706 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1202, align 8, !tbaa !91
  %707 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %708 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %709 = bitcast %struct.gx_image_enum_s* %708 to i8*
  call void %706(%struct.gs_memory_s* %707, i8* %709, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2265

if.end.1203:                                      ; preds = %cond.end.1191
  %710 = load i32, i32* %bps, align 4, !tbaa !10
  %conv1204 = trunc i32 %710 to i8
  %711 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps1205 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %711, i32 0, i32 11
  store i8 %conv1204, i8* %bps1205, align 1, !tbaa !153
  %712 = load i32, i32* %bps, align 4, !tbaa !10
  %conv1206 = trunc i32 %712 to i8
  %713 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack_bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %713, i32 0, i32 12
  store i8 %conv1206, i8* %unpack_bps, align 1, !tbaa !154
  %714 = load i32, i32* %log2_xbytes, align 4, !tbaa !10
  %conv1207 = trunc i32 %714 to i8
  %715 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_xbytes1208 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %715, i32 0, i32 13
  store i8 %conv1207, i8* %log2_xbytes1208, align 1, !tbaa !155
  %716 = load i32, i32* %spp, align 4, !tbaa !10
  %conv1209 = trunc i32 %716 to i8
  %717 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp1210 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %717, i32 0, i32 14
  store i8 %conv1209, i8* %spp1210, align 1, !tbaa !156
  %718 = load i32, i32* %format, align 4, !tbaa !50
  switch i32 %718, label %sw.default.1218 [
    i32 0, label %sw.bb.1211
    i32 1, label %sw.bb.1213
    i32 2, label %sw.bb.1215
  ]

sw.bb.1211:                                       ; preds = %if.end.1203
  store i32 1, i32* %nplanes, align 4, !tbaa !10
  %719 = load i32, i32* %log2_xbytes, align 4, !tbaa !10
  %shl1212 = shl i32 1, %719
  store i32 %shl1212, i32* %spread, align 4, !tbaa !10
  br label %sw.epilog.1219

sw.bb.1213:                                       ; preds = %if.end.1203
  %720 = load i32, i32* %spp, align 4, !tbaa !10
  store i32 %720, i32* %nplanes, align 4, !tbaa !10
  %721 = load i32, i32* %spp, align 4, !tbaa !10
  %722 = load i32, i32* %log2_xbytes, align 4, !tbaa !10
  %shl1214 = shl i32 %721, %722
  store i32 %shl1214, i32* %spread, align 4, !tbaa !10
  br label %sw.epilog.1219

sw.bb.1215:                                       ; preds = %if.end.1203
  %723 = load i32, i32* %spp, align 4, !tbaa !10
  %724 = load i32, i32* %bps, align 4, !tbaa !10
  %mul1216 = mul nsw i32 %723, %724
  store i32 %mul1216, i32* %nplanes, align 4, !tbaa !10
  %725 = load i32, i32* %spp, align 4, !tbaa !10
  %726 = load i32, i32* %log2_xbytes, align 4, !tbaa !10
  %shl1217 = shl i32 %725, %726
  store i32 %shl1217, i32* %spread, align 4, !tbaa !10
  br label %sw.epilog.1219

sw.default.1218:                                  ; preds = %if.end.1203
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2265

sw.epilog.1219:                                   ; preds = %sw.bb.1215, %sw.bb.1213, %sw.bb.1211
  %727 = load i32, i32* %nplanes, align 4, !tbaa !10
  %728 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %728, i32 0, i32 6
  store i32 %727, i32* %num_planes, align 4, !tbaa !157
  %729 = load i32, i32* %spread, align 4, !tbaa !10
  %conv1220 = trunc i32 %729 to i8
  %730 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spread1221 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %730, i32 0, i32 18
  store i8 %conv1220, i8* %spread1221, align 1, !tbaa !158
  %731 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %731, i32 0, i32 6
  %732 = load i32, i32* %Interpolate, align 4, !tbaa !159
  %conv1222 = trunc i32 %732 to i8
  %733 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %interpolate = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %733, i32 0, i32 20
  store i8 %conv1222, i8* %interpolate, align 1, !tbaa !160
  %734 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent1223 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %734, i32 0, i32 26
  %735 = bitcast %struct.gs_fixed_point_s* %x_extent1223 to i8*
  %736 = bitcast %struct.gs_fixed_point_s* %x_extent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %735, i8* %736, i64 8, i32 4, i1 false), !tbaa.struct !124
  %737 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y_extent1224 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %737, i32 0, i32 27
  %738 = bitcast %struct.gs_fixed_point_s* %y_extent1224 to i8*
  %739 = bitcast %struct.gs_fixed_point_s* %y_extent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %738, i8* %739, i64 8, i32 4, i1 false), !tbaa.struct !124
  %y1225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 1
  %740 = load i32, i32* %y1225, align 4, !tbaa !117
  %x1226 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 0
  %741 = load i32, i32* %x1226, align 4, !tbaa !116
  %or1227 = or i32 %740, %741
  %cmp1228 = icmp eq i32 %or1227, 0
  br i1 %cmp1228, label %cond.true.1230, label %cond.false.1231

cond.true.1230:                                   ; preds = %sw.epilog.1219
  br label %cond.end.1238

cond.false.1231:                                  ; preds = %sw.epilog.1219
  %x1232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  %742 = load i32, i32* %x1232, align 4, !tbaa !116
  %y1233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 1
  %743 = load i32, i32* %y1233, align 4, !tbaa !117
  %or1234 = or i32 %742, %743
  %cmp1235 = icmp eq i32 %or1234, 0
  %cond1237 = select i1 %cmp1235, i32 1, i32 2
  br label %cond.end.1238

cond.end.1238:                                    ; preds = %cond.false.1231, %cond.true.1230
  %cond1239 = phi i32 [ 0, %cond.true.1230 ], [ %cond1237, %cond.false.1231 ]
  %744 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %744, i32 0, i32 37
  store i32 %cond1239, i32* %posture, align 4, !tbaa !161
  %745 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %746 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1240 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %746, i32 0, i32 30
  store %struct.gs_imager_state_s* %745, %struct.gs_imager_state_s** %pis1240, align 8, !tbaa !162
  %747 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %748 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1241 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %748, i32 0, i32 31
  store %struct.gs_color_space_s* %747, %struct.gs_color_space_s** %pcs1241, align 8, !tbaa !163
  %749 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %750 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory1242 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %750, i32 0, i32 3
  store %struct.gs_memory_s* %749, %struct.gs_memory_s** %memory1242, align 8, !tbaa !164
  %751 = load i8*, i8** %buffer, align 8, !tbaa !1
  %752 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %buffer1243 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %752, i32 0, i32 32
  store i8* %751, i8** %buffer1243, align 8, !tbaa !165
  %753 = load i32, i32* %bsize, align 4, !tbaa !10
  %754 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %754, i32 0, i32 33
  store i32 %753, i32* %buffer_size, align 4, !tbaa !166
  %755 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %755, i32 0, i32 34
  store i8* null, i8** %line, align 8, !tbaa !167
  %756 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %756, i32 0, i32 70
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !168
  %757 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %757, i32 0, i32 71
  store %struct.gx_image_color_cache_s* null, %struct.gx_image_color_cache_s** %color_cache, align 8, !tbaa !169
  %758 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %758, i32 0, i32 72
  store i8* null, i8** %ht_buffer, align 8, !tbaa !170
  %759 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %759, i32 0, i32 76
  store i8* null, i8** %thresh_buffer, align 8, !tbaa !171
  %760 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %760, i32 0, i32 81
  store i32 0, i32* %use_cie_range, align 4, !tbaa !172
  %761 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %761, i32 0, i32 35
  store i32 0, i32* %line_size, align 4, !tbaa !173
  %762 = load i32, i32* %lop, align 4, !tbaa !10
  %763 = load i32, i32* %masked, align 4, !tbaa !10
  %tobool1244 = icmp ne i32 %763, 0
  %cond1245 = select i1 %tobool1244, i32 240, i32 204
  %cmp1246 = icmp ne i32 %762, %cond1245
  %conv1247 = zext i1 %cmp1246 to i32
  %conv1248 = trunc i32 %conv1247 to i8
  %764 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_rop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %764, i32 0, i32 38
  store i8 %conv1248, i8* %use_rop, align 1, !tbaa !174
  %765 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %slow_loop = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %765, i32 0, i32 40
  store i8 0, i8* %slow_loop, align 1, !tbaa !175
  %766 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp1249 = icmp eq %struct.gx_clip_path_s* %766, null
  br i1 %cmp1249, label %if.then.1251, label %if.else.1253

if.then.1251:                                     ; preds = %cond.end.1238
  %767 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1252 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %767, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1252, i32 0, i32 36
  %768 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !176
  %769 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %768(%struct.gx_device_s* %769, %struct.gs_fixed_rect_s* %obox) #6
  %770 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  %771 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %770, i8* %771, i64 16, i32 4, i1 false), !tbaa.struct !186
  %772 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %772, i32 0, i32 39
  store i8 0, i8* %clip_image, align 1, !tbaa !187
  br label %if.end.1261

if.else.1253:                                     ; preds = %cond.end.1238
  %773 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1254 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %773, %struct.gs_fixed_rect_s* %obox) #6
  %774 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1255 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %774, %struct.gs_fixed_rect_s* %cbox) #6
  %or1256 = or i32 %call1254, %call1255
  %tobool1257 = icmp ne i32 %or1256, 0
  %cond1258 = select i1 %tobool1257, i32 0, i32 16
  %conv1259 = trunc i32 %cond1258 to i8
  %775 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image1260 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %775, i32 0, i32 39
  store i8 %conv1259, i8* %clip_image1260, align 1, !tbaa !187
  br label %if.end.1261

if.end.1261:                                      ; preds = %if.else.1253, %if.then.1251
  %776 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_outer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %776, i32 0, i32 42
  %777 = bitcast %struct.gs_fixed_rect_s* %clip_outer to i8*
  %778 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %777, i8* %778, i64 16, i32 4, i1 false), !tbaa.struct !186
  %779 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_inner = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %779, i32 0, i32 43
  %780 = bitcast %struct.gs_fixed_rect_s* %clip_inner to i8*
  %781 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %780, i8* %781, i64 16, i32 4, i1 false), !tbaa.struct !186
  %782 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op1262 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %782, i32 0, i32 44
  store i32 240, i32* %log_op1262, align 4, !tbaa !188
  %783 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %783, i32 0, i32 48
  store %struct.gx_device_clip_s* null, %struct.gx_device_clip_s** %clip_dev, align 8, !tbaa !189
  %784 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rop_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %784, i32 0, i32 49
  store %struct.gx_device_rop_texture_s* null, %struct.gx_device_rop_texture_s** %rop_dev, align 8, !tbaa !190
  %785 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %785, i32 0, i32 50
  store %struct.stream_image_scale_state_s* null, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !191
  %786 = bitcast i32* %epx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %786) #1
  %x1263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %787 = load i32, i32* %x1263, align 4, !tbaa !116
  %cmp1264 = icmp slt i32 %787, 0
  br i1 %cmp1264, label %cond.true.1266, label %cond.false.1268

cond.true.1266:                                   ; preds = %if.end.1261
  %x1267 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %788 = load i32, i32* %x1267, align 4, !tbaa !116
  br label %cond.end.1269

cond.false.1268:                                  ; preds = %if.end.1261
  br label %cond.end.1269

cond.end.1269:                                    ; preds = %cond.false.1268, %cond.true.1266
  %cond1270 = phi i32 [ %788, %cond.true.1266 ], [ 0, %cond.false.1268 ]
  %x1271 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %789 = load i32, i32* %x1271, align 4, !tbaa !116
  %cmp1272 = icmp slt i32 %789, 0
  br i1 %cmp1272, label %cond.true.1274, label %cond.false.1276

cond.true.1274:                                   ; preds = %cond.end.1269
  %x1275 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %790 = load i32, i32* %x1275, align 4, !tbaa !116
  br label %cond.end.1277

cond.false.1276:                                  ; preds = %cond.end.1269
  br label %cond.end.1277

cond.end.1277:                                    ; preds = %cond.false.1276, %cond.true.1274
  %cond1278 = phi i32 [ %790, %cond.true.1274 ], [ 0, %cond.false.1276 ]
  %add1279 = add nsw i32 %cond1270, %cond1278
  store i32 %add1279, i32* %epx, align 4, !tbaa !10
  %791 = bitcast i32* %eqx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %791) #1
  %x1280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %792 = load i32, i32* %x1280, align 4, !tbaa !116
  %cmp1281 = icmp sgt i32 %792, 0
  br i1 %cmp1281, label %cond.true.1283, label %cond.false.1285

cond.true.1283:                                   ; preds = %cond.end.1277
  %x1284 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %793 = load i32, i32* %x1284, align 4, !tbaa !116
  br label %cond.end.1286

cond.false.1285:                                  ; preds = %cond.end.1277
  br label %cond.end.1286

cond.end.1286:                                    ; preds = %cond.false.1285, %cond.true.1283
  %cond1287 = phi i32 [ %793, %cond.true.1283 ], [ 0, %cond.false.1285 ]
  %x1288 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %794 = load i32, i32* %x1288, align 4, !tbaa !116
  %cmp1289 = icmp sgt i32 %794, 0
  br i1 %cmp1289, label %cond.true.1291, label %cond.false.1293

cond.true.1291:                                   ; preds = %cond.end.1286
  %x1292 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %795 = load i32, i32* %x1292, align 4, !tbaa !116
  br label %cond.end.1294

cond.false.1293:                                  ; preds = %cond.end.1286
  br label %cond.end.1294

cond.end.1294:                                    ; preds = %cond.false.1293, %cond.true.1291
  %cond1295 = phi i32 [ %795, %cond.true.1291 ], [ 0, %cond.false.1293 ]
  %add1296 = add nsw i32 %cond1287, %cond1295
  store i32 %add1296, i32* %eqx, align 4, !tbaa !10
  %796 = bitcast i32* %epy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %796) #1
  %y1297 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %797 = load i32, i32* %y1297, align 4, !tbaa !117
  %cmp1298 = icmp slt i32 %797, 0
  br i1 %cmp1298, label %cond.true.1300, label %cond.false.1302

cond.true.1300:                                   ; preds = %cond.end.1294
  %y1301 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %798 = load i32, i32* %y1301, align 4, !tbaa !117
  br label %cond.end.1303

cond.false.1302:                                  ; preds = %cond.end.1294
  br label %cond.end.1303

cond.end.1303:                                    ; preds = %cond.false.1302, %cond.true.1300
  %cond1304 = phi i32 [ %798, %cond.true.1300 ], [ 0, %cond.false.1302 ]
  %y1306 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %799 = load i32, i32* %y1306, align 4, !tbaa !117
  %cmp1307 = icmp slt i32 %799, 0
  br i1 %cmp1307, label %cond.true.1309, label %cond.false.1311

cond.true.1309:                                   ; preds = %cond.end.1303
  %y1310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %800 = load i32, i32* %y1310, align 4, !tbaa !117
  br label %cond.end.1312

cond.false.1311:                                  ; preds = %cond.end.1303
  br label %cond.end.1312

cond.end.1312:                                    ; preds = %cond.false.1311, %cond.true.1309
  %cond1313 = phi i32 [ %800, %cond.true.1309 ], [ 0, %cond.false.1311 ]
  %add1314 = add nsw i32 %cond1304, %cond1313
  store i32 %add1314, i32* %epy, align 4, !tbaa !10
  %801 = bitcast i32* %eqy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %801) #1
  %y1315 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %802 = load i32, i32* %y1315, align 4, !tbaa !117
  %cmp1316 = icmp sgt i32 %802, 0
  br i1 %cmp1316, label %cond.true.1318, label %cond.false.1320

cond.true.1318:                                   ; preds = %cond.end.1312
  %y1319 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %803 = load i32, i32* %y1319, align 4, !tbaa !117
  br label %cond.end.1321

cond.false.1320:                                  ; preds = %cond.end.1312
  br label %cond.end.1321

cond.end.1321:                                    ; preds = %cond.false.1320, %cond.true.1318
  %cond1322 = phi i32 [ %803, %cond.true.1318 ], [ 0, %cond.false.1320 ]
  %y1323 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %804 = load i32, i32* %y1323, align 4, !tbaa !117
  %cmp1324 = icmp sgt i32 %804, 0
  br i1 %cmp1324, label %cond.true.1326, label %cond.false.1328

cond.true.1326:                                   ; preds = %cond.end.1321
  %y1327 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %805 = load i32, i32* %y1327, align 4, !tbaa !117
  br label %cond.end.1329

cond.false.1328:                                  ; preds = %cond.end.1321
  br label %cond.end.1329

cond.end.1329:                                    ; preds = %cond.false.1328, %cond.true.1326
  %cond1330 = phi i32 [ %805, %cond.true.1326 ], [ 0, %cond.false.1328 ]
  %add1331 = add nsw i32 %cond1322, %cond1330
  store i32 %add1331, i32* %eqy, align 4, !tbaa !10
  %806 = bitcast i32* %hwx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %806) #1
  %807 = bitcast i32* %hwy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %807) #1
  %808 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1332 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %808, i32 0, i32 37
  %809 = load i32, i32* %posture1332, align 4, !tbaa !161
  switch i32 %809, label %sw.default.1335 [
    i32 0, label %sw.bb.1333
    i32 1, label %sw.bb.1334
  ]

sw.bb.1333:                                       ; preds = %cond.end.1329
  %810 = load i32, i32* %width, align 4, !tbaa !10
  store i32 %810, i32* %hwx, align 4, !tbaa !10
  %811 = load i32, i32* %height, align 4, !tbaa !10
  store i32 %811, i32* %hwy, align 4, !tbaa !10
  br label %sw.epilog.1336

sw.bb.1334:                                       ; preds = %cond.end.1329
  %812 = load i32, i32* %height, align 4, !tbaa !10
  store i32 %812, i32* %hwx, align 4, !tbaa !10
  %813 = load i32, i32* %width, align 4, !tbaa !10
  store i32 %813, i32* %hwy, align 4, !tbaa !10
  br label %sw.epilog.1336

sw.default.1335:                                  ; preds = %cond.end.1329
  store i32 0, i32* %hwy, align 4, !tbaa !10
  store i32 0, i32* %hwx, align 4, !tbaa !10
  br label %sw.epilog.1336

sw.epilog.1336:                                   ; preds = %sw.default.1335, %sw.bb.1334, %sw.bb.1333
  %814 = load i32, i32* %hwx, align 4, !tbaa !10
  %cmp1337 = icmp eq i32 %814, 1
  br i1 %cmp1337, label %land.lhs.true.1339, label %if.end.1356

land.lhs.true.1339:                               ; preds = %sw.epilog.1336
  %815 = load i32, i32* %eqx, align 4, !tbaa !10
  %816 = load i32, i32* %epx, align 4, !tbaa !10
  %sub1340 = sub nsw i32 %815, %816
  %conv1341 = sext i32 %sub1340 to i64
  %cmp1342 = icmp slt i64 %conv1341, 256
  br i1 %cmp1342, label %if.then.1344, label %if.end.1356

if.then.1344:                                     ; preds = %land.lhs.true.1339
  %817 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %817) #1
  %x1345 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %818 = load i32, i32* %x1345, align 4, !tbaa !116
  %x1346 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %819 = load i32, i32* %x1346, align 4, !tbaa !116
  %add1347 = add nsw i32 %818, %819
  %shr1348 = ashr i32 %add1347, 1
  store i32 %shr1348, i32* %diff, align 4, !tbaa !10
  %820 = load i32, i32* %mtx, align 4, !tbaa !10
  %821 = load i32, i32* %diff, align 4, !tbaa !10
  %add1349 = add nsw i32 %820, %821
  %conv1350 = sext i32 %add1349 to i64
  %or1351 = or i64 %conv1350, 128
  %and1352 = and i64 %or1351, -128
  %822 = load i32, i32* %diff, align 4, !tbaa !10
  %conv1353 = sext i32 %822 to i64
  %sub1354 = sub nsw i64 %and1352, %conv1353
  %conv1355 = trunc i64 %sub1354 to i32
  store i32 %conv1355, i32* %mtx, align 4, !tbaa !10
  %823 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %823) #1
  br label %if.end.1356

if.end.1356:                                      ; preds = %if.then.1344, %land.lhs.true.1339, %sw.epilog.1336
  %824 = load i32, i32* %hwy, align 4, !tbaa !10
  %cmp1357 = icmp eq i32 %824, 1
  br i1 %cmp1357, label %land.lhs.true.1359, label %if.end.1377

land.lhs.true.1359:                               ; preds = %if.end.1356
  %825 = load i32, i32* %eqy, align 4, !tbaa !10
  %826 = load i32, i32* %epy, align 4, !tbaa !10
  %sub1360 = sub nsw i32 %825, %826
  %conv1361 = sext i32 %sub1360 to i64
  %cmp1362 = icmp slt i64 %conv1361, 256
  br i1 %cmp1362, label %if.then.1364, label %if.end.1377

if.then.1364:                                     ; preds = %land.lhs.true.1359
  %827 = bitcast i32* %diff1365 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %827) #1
  %y1366 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %828 = load i32, i32* %y1366, align 4, !tbaa !117
  %y1367 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %829 = load i32, i32* %y1367, align 4, !tbaa !117
  %add1368 = add nsw i32 %828, %829
  %shr1369 = ashr i32 %add1368, 1
  store i32 %shr1369, i32* %diff1365, align 4, !tbaa !10
  %830 = load i32, i32* %mty, align 4, !tbaa !10
  %831 = load i32, i32* %diff1365, align 4, !tbaa !10
  %add1370 = add nsw i32 %830, %831
  %conv1371 = sext i32 %add1370 to i64
  %or1372 = or i64 %conv1371, 128
  %and1373 = and i64 %or1372, -128
  %832 = load i32, i32* %diff1365, align 4, !tbaa !10
  %conv1374 = sext i32 %832 to i64
  %sub1375 = sub nsw i64 %and1373, %conv1374
  %conv1376 = trunc i64 %sub1375 to i32
  store i32 %conv1376, i32* %mty, align 4, !tbaa !10
  %833 = bitcast i32* %diff1365 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %833) #1
  br label %if.end.1377

if.end.1377:                                      ; preds = %if.then.1364, %land.lhs.true.1359, %if.end.1356
  %834 = bitcast i32* %hwy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %834) #1
  %835 = bitcast i32* %hwx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %835) #1
  br label %do.body.1378

do.body.1378:                                     ; preds = %if.end.1377
  br label %do.cond.1379

do.cond.1379:                                     ; preds = %do.body.1378
  br label %do.end.1380

do.end.1380:                                      ; preds = %do.cond.1379
  br label %do.body.1381

do.body.1381:                                     ; preds = %do.end.1380
  br label %do.cond.1382

do.cond.1382:                                     ; preds = %do.body.1381
  br label %do.end.1383

do.end.1383:                                      ; preds = %do.cond.1382
  br label %do.body.1384

do.body.1384:                                     ; preds = %do.end.1383
  %836 = load i32, i32* %mtx, align 4, !tbaa !10
  %837 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %837, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 0
  %x1385 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1385, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  store i32 %836, i32* %Q, align 4, !tbaa !192
  %838 = load i32, i32* %height, align 4, !tbaa !10
  %sub1386 = sub nsw i32 %838, 1
  %839 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1387 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %839, i32 0, i32 55
  %row1388 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1387, i32 0, i32 0
  %x1389 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1388, i32 0, i32 0
  %state1390 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1389, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state1390, i32 0, i32 1
  store i32 %sub1386, i32* %R, align 4, !tbaa !193
  br label %do.body.1391

do.body.1391:                                     ; preds = %do.body.1384
  %840 = load i32, i32* %height, align 4, !tbaa !10
  %cmp1392 = icmp eq i32 %840, 0
  br i1 %cmp1392, label %if.then.1394, label %if.else.1402

if.then.1394:                                     ; preds = %do.body.1391
  %841 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1395 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %841, i32 0, i32 55
  %row1396 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1395, i32 0, i32 0
  %x1397 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1396, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1397, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !194
  %842 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1398 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %842, i32 0, i32 55
  %row1399 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1398, i32 0, i32 0
  %x1400 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1399, i32 0, i32 0
  %step1401 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1400, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step1401, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !195
  br label %if.end.1459

if.else.1402:                                     ; preds = %do.body.1391
  %x1403 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %843 = load i32, i32* %x1403, align 4, !tbaa !116
  %cmp1404 = icmp slt i32 %843, 0
  br i1 %cmp1404, label %if.then.1406, label %if.else.1443

if.then.1406:                                     ; preds = %if.else.1402
  %x1407 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %844 = load i32, i32* %x1407, align 4, !tbaa !116
  %sub1408 = sub nsw i32 0, %844
  %845 = load i32, i32* %height, align 4, !tbaa !10
  %div1409 = udiv i32 %sub1408, %845
  %sub1410 = sub nsw i32 0, %div1409
  %846 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1411 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %846, i32 0, i32 55
  %row1412 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1411, i32 0, i32 0
  %x1413 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1412, i32 0, i32 0
  %step1414 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1413, i32 0, i32 1
  %dQ1415 = getelementptr inbounds %struct._e, %struct._e* %step1414, i32 0, i32 0
  store i32 %sub1410, i32* %dQ1415, align 4, !tbaa !194
  %x1416 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %847 = load i32, i32* %x1416, align 4, !tbaa !116
  %sub1417 = sub nsw i32 0, %847
  %848 = load i32, i32* %height, align 4, !tbaa !10
  %rem = srem i32 %sub1417, %848
  %849 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1418 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %849, i32 0, i32 55
  %row1419 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1418, i32 0, i32 0
  %x1420 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1419, i32 0, i32 0
  %step1421 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1420, i32 0, i32 1
  %dR1422 = getelementptr inbounds %struct._e, %struct._e* %step1421, i32 0, i32 1
  store i32 %rem, i32* %dR1422, align 4, !tbaa !195
  %cmp1423 = icmp ne i32 %rem, 0
  br i1 %cmp1423, label %if.then.1425, label %if.end.1442

if.then.1425:                                     ; preds = %if.then.1406
  %850 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1426 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %850, i32 0, i32 55
  %row1427 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1426, i32 0, i32 0
  %x1428 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1427, i32 0, i32 0
  %step1429 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1428, i32 0, i32 1
  %dQ1430 = getelementptr inbounds %struct._e, %struct._e* %step1429, i32 0, i32 0
  %851 = load i32, i32* %dQ1430, align 4, !tbaa !194
  %dec = add nsw i32 %851, -1
  store i32 %dec, i32* %dQ1430, align 4, !tbaa !194
  %852 = load i32, i32* %height, align 4, !tbaa !10
  %853 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1431 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %853, i32 0, i32 55
  %row1432 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1431, i32 0, i32 0
  %x1433 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1432, i32 0, i32 0
  %step1434 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1433, i32 0, i32 1
  %dR1435 = getelementptr inbounds %struct._e, %struct._e* %step1434, i32 0, i32 1
  %854 = load i32, i32* %dR1435, align 4, !tbaa !195
  %sub1436 = sub i32 %852, %854
  %855 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1437 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %855, i32 0, i32 55
  %row1438 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1437, i32 0, i32 0
  %x1439 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1438, i32 0, i32 0
  %step1440 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1439, i32 0, i32 1
  %dR1441 = getelementptr inbounds %struct._e, %struct._e* %step1440, i32 0, i32 1
  store i32 %sub1436, i32* %dR1441, align 4, !tbaa !195
  br label %if.end.1442

if.end.1442:                                      ; preds = %if.then.1425, %if.then.1406
  br label %if.end.1458

if.else.1443:                                     ; preds = %if.else.1402
  %x1444 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %856 = load i32, i32* %x1444, align 4, !tbaa !116
  %857 = load i32, i32* %height, align 4, !tbaa !10
  %div1445 = sdiv i32 %856, %857
  %858 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1446 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %858, i32 0, i32 55
  %row1447 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1446, i32 0, i32 0
  %x1448 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1447, i32 0, i32 0
  %step1449 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1448, i32 0, i32 1
  %dQ1450 = getelementptr inbounds %struct._e, %struct._e* %step1449, i32 0, i32 0
  store i32 %div1445, i32* %dQ1450, align 4, !tbaa !194
  %x1451 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %859 = load i32, i32* %x1451, align 4, !tbaa !116
  %860 = load i32, i32* %height, align 4, !tbaa !10
  %rem1452 = srem i32 %859, %860
  %861 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1453 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %861, i32 0, i32 55
  %row1454 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1453, i32 0, i32 0
  %x1455 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1454, i32 0, i32 0
  %step1456 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1455, i32 0, i32 1
  %dR1457 = getelementptr inbounds %struct._e, %struct._e* %step1456, i32 0, i32 1
  store i32 %rem1452, i32* %dR1457, align 4, !tbaa !195
  br label %if.end.1458

if.end.1458:                                      ; preds = %if.else.1443, %if.end.1442
  br label %if.end.1459

if.end.1459:                                      ; preds = %if.end.1458, %if.then.1394
  %862 = load i32, i32* %height, align 4, !tbaa !10
  %863 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1460 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %863, i32 0, i32 55
  %row1461 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1460, i32 0, i32 0
  %x1462 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1461, i32 0, i32 0
  %step1463 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1462, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step1463, i32 0, i32 2
  store i32 %862, i32* %N, align 4, !tbaa !196
  br label %do.cond.1464

do.cond.1464:                                     ; preds = %if.end.1459
  br label %do.end.1465

do.end.1465:                                      ; preds = %do.cond.1464
  br label %do.cond.1466

do.cond.1466:                                     ; preds = %do.end.1465
  br label %do.end.1467

do.end.1467:                                      ; preds = %do.cond.1466
  br label %do.body.1468

do.body.1468:                                     ; preds = %do.end.1467
  %864 = load i32, i32* %mty, align 4, !tbaa !10
  %865 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1469 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %865, i32 0, i32 55
  %row1470 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1469, i32 0, i32 0
  %y1471 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1470, i32 0, i32 1
  %state1472 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1471, i32 0, i32 0
  %Q1473 = getelementptr inbounds %struct._a, %struct._a* %state1472, i32 0, i32 0
  store i32 %864, i32* %Q1473, align 4, !tbaa !197
  %866 = load i32, i32* %height, align 4, !tbaa !10
  %sub1474 = sub nsw i32 %866, 1
  %867 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1475 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %867, i32 0, i32 55
  %row1476 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1475, i32 0, i32 0
  %y1477 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1476, i32 0, i32 1
  %state1478 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1477, i32 0, i32 0
  %R1479 = getelementptr inbounds %struct._a, %struct._a* %state1478, i32 0, i32 1
  store i32 %sub1474, i32* %R1479, align 4, !tbaa !198
  br label %do.body.1480

do.body.1480:                                     ; preds = %do.body.1468
  %868 = load i32, i32* %height, align 4, !tbaa !10
  %cmp1481 = icmp eq i32 %868, 0
  br i1 %cmp1481, label %if.then.1483, label %if.else.1494

if.then.1483:                                     ; preds = %do.body.1480
  %869 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1484 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %869, i32 0, i32 55
  %row1485 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1484, i32 0, i32 0
  %y1486 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1485, i32 0, i32 1
  %step1487 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1486, i32 0, i32 1
  %dQ1488 = getelementptr inbounds %struct._e, %struct._e* %step1487, i32 0, i32 0
  store i32 0, i32* %dQ1488, align 4, !tbaa !199
  %870 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1489 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %870, i32 0, i32 55
  %row1490 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1489, i32 0, i32 0
  %y1491 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1490, i32 0, i32 1
  %step1492 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1491, i32 0, i32 1
  %dR1493 = getelementptr inbounds %struct._e, %struct._e* %step1492, i32 0, i32 1
  store i32 0, i32* %dR1493, align 4, !tbaa !200
  br label %if.end.1553

if.else.1494:                                     ; preds = %do.body.1480
  %y1495 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %871 = load i32, i32* %y1495, align 4, !tbaa !117
  %cmp1496 = icmp slt i32 %871, 0
  br i1 %cmp1496, label %if.then.1498, label %if.else.1537

if.then.1498:                                     ; preds = %if.else.1494
  %y1499 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %872 = load i32, i32* %y1499, align 4, !tbaa !117
  %sub1500 = sub nsw i32 0, %872
  %873 = load i32, i32* %height, align 4, !tbaa !10
  %div1501 = udiv i32 %sub1500, %873
  %sub1502 = sub nsw i32 0, %div1501
  %874 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1503 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %874, i32 0, i32 55
  %row1504 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1503, i32 0, i32 0
  %y1505 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1504, i32 0, i32 1
  %step1506 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1505, i32 0, i32 1
  %dQ1507 = getelementptr inbounds %struct._e, %struct._e* %step1506, i32 0, i32 0
  store i32 %sub1502, i32* %dQ1507, align 4, !tbaa !199
  %y1508 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %875 = load i32, i32* %y1508, align 4, !tbaa !117
  %sub1509 = sub nsw i32 0, %875
  %876 = load i32, i32* %height, align 4, !tbaa !10
  %rem1510 = srem i32 %sub1509, %876
  %877 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1511 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %877, i32 0, i32 55
  %row1512 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1511, i32 0, i32 0
  %y1513 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1512, i32 0, i32 1
  %step1514 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1513, i32 0, i32 1
  %dR1515 = getelementptr inbounds %struct._e, %struct._e* %step1514, i32 0, i32 1
  store i32 %rem1510, i32* %dR1515, align 4, !tbaa !200
  %cmp1516 = icmp ne i32 %rem1510, 0
  br i1 %cmp1516, label %if.then.1518, label %if.end.1536

if.then.1518:                                     ; preds = %if.then.1498
  %878 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1519 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %878, i32 0, i32 55
  %row1520 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1519, i32 0, i32 0
  %y1521 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1520, i32 0, i32 1
  %step1522 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1521, i32 0, i32 1
  %dQ1523 = getelementptr inbounds %struct._e, %struct._e* %step1522, i32 0, i32 0
  %879 = load i32, i32* %dQ1523, align 4, !tbaa !199
  %dec1524 = add nsw i32 %879, -1
  store i32 %dec1524, i32* %dQ1523, align 4, !tbaa !199
  %880 = load i32, i32* %height, align 4, !tbaa !10
  %881 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1525 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %881, i32 0, i32 55
  %row1526 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1525, i32 0, i32 0
  %y1527 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1526, i32 0, i32 1
  %step1528 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1527, i32 0, i32 1
  %dR1529 = getelementptr inbounds %struct._e, %struct._e* %step1528, i32 0, i32 1
  %882 = load i32, i32* %dR1529, align 4, !tbaa !200
  %sub1530 = sub i32 %880, %882
  %883 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1531 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %883, i32 0, i32 55
  %row1532 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1531, i32 0, i32 0
  %y1533 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1532, i32 0, i32 1
  %step1534 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1533, i32 0, i32 1
  %dR1535 = getelementptr inbounds %struct._e, %struct._e* %step1534, i32 0, i32 1
  store i32 %sub1530, i32* %dR1535, align 4, !tbaa !200
  br label %if.end.1536

if.end.1536:                                      ; preds = %if.then.1518, %if.then.1498
  br label %if.end.1552

if.else.1537:                                     ; preds = %if.else.1494
  %y1538 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %884 = load i32, i32* %y1538, align 4, !tbaa !117
  %885 = load i32, i32* %height, align 4, !tbaa !10
  %div1539 = sdiv i32 %884, %885
  %886 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1540 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %886, i32 0, i32 55
  %row1541 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1540, i32 0, i32 0
  %y1542 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1541, i32 0, i32 1
  %step1543 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1542, i32 0, i32 1
  %dQ1544 = getelementptr inbounds %struct._e, %struct._e* %step1543, i32 0, i32 0
  store i32 %div1539, i32* %dQ1544, align 4, !tbaa !199
  %y1545 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %887 = load i32, i32* %y1545, align 4, !tbaa !117
  %888 = load i32, i32* %height, align 4, !tbaa !10
  %rem1546 = srem i32 %887, %888
  %889 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1547 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %889, i32 0, i32 55
  %row1548 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1547, i32 0, i32 0
  %y1549 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1548, i32 0, i32 1
  %step1550 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1549, i32 0, i32 1
  %dR1551 = getelementptr inbounds %struct._e, %struct._e* %step1550, i32 0, i32 1
  store i32 %rem1546, i32* %dR1551, align 4, !tbaa !200
  br label %if.end.1552

if.end.1552:                                      ; preds = %if.else.1537, %if.end.1536
  br label %if.end.1553

if.end.1553:                                      ; preds = %if.end.1552, %if.then.1483
  %890 = load i32, i32* %height, align 4, !tbaa !10
  %891 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1554 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %891, i32 0, i32 55
  %row1555 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1554, i32 0, i32 0
  %y1556 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1555, i32 0, i32 1
  %step1557 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1556, i32 0, i32 1
  %N1558 = getelementptr inbounds %struct._e, %struct._e* %step1557, i32 0, i32 2
  store i32 %890, i32* %N1558, align 4, !tbaa !201
  br label %do.cond.1559

do.cond.1559:                                     ; preds = %if.end.1553
  br label %do.end.1560

do.end.1560:                                      ; preds = %do.cond.1559
  br label %do.cond.1561

do.cond.1561:                                     ; preds = %do.end.1560
  br label %do.end.1562

do.end.1562:                                      ; preds = %do.cond.1561
  %892 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1563 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %892, i32 0, i32 37
  %893 = load i32, i32* %posture1563, align 4, !tbaa !161
  %cmp1564 = icmp eq i32 %893, 0
  br i1 %cmp1564, label %if.then.1566, label %if.else.1569

if.then.1566:                                     ; preds = %do.end.1562
  %x1567 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %894 = load i32, i32* %x1567, align 4, !tbaa !116
  %895 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %895, i32 0, i32 25
  store i32 %894, i32* %dst_width, align 4, !tbaa !202
  %y1568 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 1
  %896 = load i32, i32* %y1568, align 4, !tbaa !117
  %897 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %897, i32 0, i32 24
  store i32 %896, i32* %dst_height, align 4, !tbaa !203
  br label %if.end.1574

if.else.1569:                                     ; preds = %do.end.1562
  %x1570 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %col_extent, i32 0, i32 0
  %898 = load i32, i32* %x1570, align 4, !tbaa !116
  %899 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_width1571 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %899, i32 0, i32 25
  store i32 %898, i32* %dst_width1571, align 4, !tbaa !202
  %y1572 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %900 = load i32, i32* %y1572, align 4, !tbaa !117
  %901 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height1573 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %901, i32 0, i32 24
  store i32 %900, i32* %dst_height1573, align 4, !tbaa !203
  br label %if.end.1574

if.end.1574:                                      ; preds = %if.else.1569, %if.then.1566
  %902 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1575 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %902, i32 0, i32 55
  %row1576 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1575, i32 0, i32 0
  %y1577 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1576, i32 0, i32 1
  %state1578 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1577, i32 0, i32 0
  %Q1579 = getelementptr inbounds %struct._a, %struct._a* %state1578, i32 0, i32 0
  %903 = load i32, i32* %Q1579, align 4, !tbaa !197
  %cmp1580 = icmp slt i32 %903, 0
  br i1 %cmp1580, label %land.lhs.true.1582, label %cond.false.1600

land.lhs.true.1582:                               ; preds = %if.end.1574
  %904 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1583 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %904, i32 0, i32 55
  %row1584 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1583, i32 0, i32 0
  %y1585 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1584, i32 0, i32 1
  %state1586 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1585, i32 0, i32 0
  %Q1587 = getelementptr inbounds %struct._a, %struct._a* %state1586, i32 0, i32 0
  %905 = load i32, i32* %Q1587, align 4, !tbaa !197
  %conv1588 = sext i32 %905 to i64
  %and1589 = and i64 %conv1588, 255
  %cmp1590 = icmp eq i64 %and1589, 128
  br i1 %cmp1590, label %cond.true.1592, label %cond.false.1600

cond.true.1592:                                   ; preds = %land.lhs.true.1582
  %906 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1593 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %906, i32 0, i32 55
  %row1594 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1593, i32 0, i32 0
  %y1595 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1594, i32 0, i32 1
  %state1596 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1595, i32 0, i32 0
  %Q1597 = getelementptr inbounds %struct._a, %struct._a* %state1596, i32 0, i32 0
  %907 = load i32, i32* %Q1597, align 4, !tbaa !197
  %shr1598 = ashr i32 %907, 8
  %add1599 = add nsw i32 %shr1598, 1
  br label %cond.end.1610

cond.false.1600:                                  ; preds = %land.lhs.true.1582, %if.end.1574
  %908 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1601 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %908, i32 0, i32 55
  %row1602 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1601, i32 0, i32 0
  %y1603 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1602, i32 0, i32 1
  %state1604 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1603, i32 0, i32 0
  %Q1605 = getelementptr inbounds %struct._a, %struct._a* %state1604, i32 0, i32 0
  %909 = load i32, i32* %Q1605, align 4, !tbaa !197
  %conv1606 = sext i32 %909 to i64
  %add1607 = add nsw i64 %conv1606, 127
  %shr1608 = ashr i64 %add1607, 8
  %conv1609 = trunc i64 %shr1608 to i32
  br label %cond.end.1610

cond.end.1610:                                    ; preds = %cond.false.1600, %cond.true.1592
  %cond1611 = phi i32 [ %add1599, %cond.true.1592 ], [ %conv1609, %cond.false.1600 ]
  %910 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yi0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %910, i32 0, i32 59
  store i32 %cond1611, i32* %yi0, align 4, !tbaa !204
  %911 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1612 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %911, i32 0, i32 22
  %y1613 = getelementptr inbounds %struct.r_, %struct.r_* %rect1612, i32 0, i32 1
  %912 = load i32, i32* %y1613, align 4, !tbaa !43
  %tobool1614 = icmp ne i32 %912, 0
  br i1 %tobool1614, label %if.then.1615, label %if.end.1726

if.then.1615:                                     ; preds = %cond.end.1610
  %913 = bitcast i32* %y1616 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %913) #1
  %914 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1617 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %914, i32 0, i32 22
  %y1618 = getelementptr inbounds %struct.r_, %struct.r_* %rect1617, i32 0, i32 1
  %915 = load i32, i32* %y1618, align 4, !tbaa !43
  store i32 %915, i32* %y1616, align 4, !tbaa !10
  br label %while.cond.1619

while.cond.1619:                                  ; preds = %do.end.1724, %if.then.1615
  %916 = load i32, i32* %y1616, align 4, !tbaa !10
  %dec1620 = add nsw i32 %916, -1
  store i32 %dec1620, i32* %y1616, align 4, !tbaa !10
  %tobool1621 = icmp ne i32 %916, 0
  br i1 %tobool1621, label %while.body.1622, label %while.end.1725

while.body.1622:                                  ; preds = %while.cond.1619
  br label %do.body.1623

do.body.1623:                                     ; preds = %while.body.1622
  %917 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1624 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %917, i32 0, i32 55
  %row1625 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1624, i32 0, i32 0
  %x1626 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1625, i32 0, i32 0
  %step1627 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1626, i32 0, i32 1
  %dR1628 = getelementptr inbounds %struct._e, %struct._e* %step1627, i32 0, i32 1
  %918 = load i32, i32* %dR1628, align 4, !tbaa !195
  %919 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1629 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %919, i32 0, i32 55
  %row1630 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1629, i32 0, i32 0
  %x1631 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1630, i32 0, i32 0
  %state1632 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1631, i32 0, i32 0
  %R1633 = getelementptr inbounds %struct._a, %struct._a* %state1632, i32 0, i32 1
  %920 = load i32, i32* %R1633, align 4, !tbaa !193
  %sub1634 = sub i32 %920, %918
  store i32 %sub1634, i32* %R1633, align 4, !tbaa !193
  %921 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1635 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %921, i32 0, i32 55
  %row1636 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1635, i32 0, i32 0
  %x1637 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1636, i32 0, i32 0
  %state1638 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1637, i32 0, i32 0
  %R1639 = getelementptr inbounds %struct._a, %struct._a* %state1638, i32 0, i32 1
  %922 = load i32, i32* %R1639, align 4, !tbaa !193
  %cmp1640 = icmp slt i32 %922, 0
  br i1 %cmp1640, label %if.then.1642, label %if.end.1660

if.then.1642:                                     ; preds = %do.body.1623
  %923 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1643 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %923, i32 0, i32 55
  %row1644 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1643, i32 0, i32 0
  %x1645 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1644, i32 0, i32 0
  %state1646 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1645, i32 0, i32 0
  %Q1647 = getelementptr inbounds %struct._a, %struct._a* %state1646, i32 0, i32 0
  %924 = load i32, i32* %Q1647, align 4, !tbaa !192
  %inc1648 = add nsw i32 %924, 1
  store i32 %inc1648, i32* %Q1647, align 4, !tbaa !192
  %925 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1649 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %925, i32 0, i32 55
  %row1650 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1649, i32 0, i32 0
  %x1651 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1650, i32 0, i32 0
  %step1652 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1651, i32 0, i32 1
  %N1653 = getelementptr inbounds %struct._e, %struct._e* %step1652, i32 0, i32 2
  %926 = load i32, i32* %N1653, align 4, !tbaa !196
  %927 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1654 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %927, i32 0, i32 55
  %row1655 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1654, i32 0, i32 0
  %x1656 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1655, i32 0, i32 0
  %state1657 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1656, i32 0, i32 0
  %R1658 = getelementptr inbounds %struct._a, %struct._a* %state1657, i32 0, i32 1
  %928 = load i32, i32* %R1658, align 4, !tbaa !193
  %add1659 = add i32 %928, %926
  store i32 %add1659, i32* %R1658, align 4, !tbaa !193
  br label %if.end.1660

if.end.1660:                                      ; preds = %if.then.1642, %do.body.1623
  %929 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1661 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %929, i32 0, i32 55
  %row1662 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1661, i32 0, i32 0
  %x1663 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1662, i32 0, i32 0
  %step1664 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1663, i32 0, i32 1
  %dQ1665 = getelementptr inbounds %struct._e, %struct._e* %step1664, i32 0, i32 0
  %930 = load i32, i32* %dQ1665, align 4, !tbaa !194
  %931 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1666 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %931, i32 0, i32 55
  %row1667 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1666, i32 0, i32 0
  %x1668 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1667, i32 0, i32 0
  %state1669 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1668, i32 0, i32 0
  %Q1670 = getelementptr inbounds %struct._a, %struct._a* %state1669, i32 0, i32 0
  %932 = load i32, i32* %Q1670, align 4, !tbaa !192
  %add1671 = add nsw i32 %932, %930
  store i32 %add1671, i32* %Q1670, align 4, !tbaa !192
  br label %do.cond.1672

do.cond.1672:                                     ; preds = %if.end.1660
  br label %do.end.1673

do.end.1673:                                      ; preds = %do.cond.1672
  br label %do.body.1674

do.body.1674:                                     ; preds = %do.end.1673
  %933 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1675 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %933, i32 0, i32 55
  %row1676 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1675, i32 0, i32 0
  %y1677 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1676, i32 0, i32 1
  %step1678 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1677, i32 0, i32 1
  %dR1679 = getelementptr inbounds %struct._e, %struct._e* %step1678, i32 0, i32 1
  %934 = load i32, i32* %dR1679, align 4, !tbaa !200
  %935 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1680 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %935, i32 0, i32 55
  %row1681 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1680, i32 0, i32 0
  %y1682 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1681, i32 0, i32 1
  %state1683 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1682, i32 0, i32 0
  %R1684 = getelementptr inbounds %struct._a, %struct._a* %state1683, i32 0, i32 1
  %936 = load i32, i32* %R1684, align 4, !tbaa !198
  %sub1685 = sub i32 %936, %934
  store i32 %sub1685, i32* %R1684, align 4, !tbaa !198
  %937 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1686 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %937, i32 0, i32 55
  %row1687 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1686, i32 0, i32 0
  %y1688 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1687, i32 0, i32 1
  %state1689 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1688, i32 0, i32 0
  %R1690 = getelementptr inbounds %struct._a, %struct._a* %state1689, i32 0, i32 1
  %938 = load i32, i32* %R1690, align 4, !tbaa !198
  %cmp1691 = icmp slt i32 %938, 0
  br i1 %cmp1691, label %if.then.1693, label %if.end.1711

if.then.1693:                                     ; preds = %do.body.1674
  %939 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1694 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %939, i32 0, i32 55
  %row1695 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1694, i32 0, i32 0
  %y1696 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1695, i32 0, i32 1
  %state1697 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1696, i32 0, i32 0
  %Q1698 = getelementptr inbounds %struct._a, %struct._a* %state1697, i32 0, i32 0
  %940 = load i32, i32* %Q1698, align 4, !tbaa !197
  %inc1699 = add nsw i32 %940, 1
  store i32 %inc1699, i32* %Q1698, align 4, !tbaa !197
  %941 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1700 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %941, i32 0, i32 55
  %row1701 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1700, i32 0, i32 0
  %y1702 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1701, i32 0, i32 1
  %step1703 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1702, i32 0, i32 1
  %N1704 = getelementptr inbounds %struct._e, %struct._e* %step1703, i32 0, i32 2
  %942 = load i32, i32* %N1704, align 4, !tbaa !201
  %943 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1705 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %943, i32 0, i32 55
  %row1706 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1705, i32 0, i32 0
  %y1707 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1706, i32 0, i32 1
  %state1708 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1707, i32 0, i32 0
  %R1709 = getelementptr inbounds %struct._a, %struct._a* %state1708, i32 0, i32 1
  %944 = load i32, i32* %R1709, align 4, !tbaa !198
  %add1710 = add i32 %944, %942
  store i32 %add1710, i32* %R1709, align 4, !tbaa !198
  br label %if.end.1711

if.end.1711:                                      ; preds = %if.then.1693, %do.body.1674
  %945 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1712 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %945, i32 0, i32 55
  %row1713 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1712, i32 0, i32 0
  %y1714 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1713, i32 0, i32 1
  %step1715 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1714, i32 0, i32 1
  %dQ1716 = getelementptr inbounds %struct._e, %struct._e* %step1715, i32 0, i32 0
  %946 = load i32, i32* %dQ1716, align 4, !tbaa !199
  %947 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1717 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %947, i32 0, i32 55
  %row1718 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1717, i32 0, i32 0
  %y1719 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1718, i32 0, i32 1
  %state1720 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1719, i32 0, i32 0
  %Q1721 = getelementptr inbounds %struct._a, %struct._a* %state1720, i32 0, i32 0
  %948 = load i32, i32* %Q1721, align 4, !tbaa !197
  %add1722 = add nsw i32 %948, %946
  store i32 %add1722, i32* %Q1721, align 4, !tbaa !197
  br label %do.cond.1723

do.cond.1723:                                     ; preds = %if.end.1711
  br label %do.end.1724

do.end.1724:                                      ; preds = %do.cond.1723
  br label %while.cond.1619

while.end.1725:                                   ; preds = %while.cond.1619
  %949 = bitcast i32* %y1616 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %949) #1
  br label %if.end.1726

if.end.1726:                                      ; preds = %while.end.1725, %cond.end.1610
  %950 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1727 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %950, i32 0, i32 55
  %row1728 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1727, i32 0, i32 0
  %x1729 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1728, i32 0, i32 0
  %state1730 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1729, i32 0, i32 0
  %Q1731 = getelementptr inbounds %struct._a, %struct._a* %state1730, i32 0, i32 0
  %951 = load i32, i32* %Q1731, align 4, !tbaa !192
  %952 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %952, i32 0, i32 54
  %x1732 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  store i32 %951, i32* %x1732, align 4, !tbaa !205
  %953 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %953, i32 0, i32 53
  %x1733 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  store i32 %951, i32* %x1733, align 4, !tbaa !206
  %954 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1734 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %954, i32 0, i32 55
  %row1735 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1734, i32 0, i32 0
  %y1736 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row1735, i32 0, i32 1
  %state1737 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1736, i32 0, i32 0
  %Q1738 = getelementptr inbounds %struct._a, %struct._a* %state1737, i32 0, i32 0
  %955 = load i32, i32* %Q1738, align 4, !tbaa !197
  %956 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %prev1739 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %956, i32 0, i32 54
  %y1740 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev1739, i32 0, i32 1
  store i32 %955, i32* %y1740, align 4, !tbaa !207
  %957 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur1741 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %957, i32 0, i32 53
  %y1742 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur1741, i32 0, i32 1
  store i32 %955, i32* %y1742, align 4, !tbaa !208
  br label %do.body.1743

do.body.1743:                                     ; preds = %if.end.1726
  %958 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur1744 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %958, i32 0, i32 53
  %x1745 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur1744, i32 0, i32 0
  %959 = load i32, i32* %x1745, align 4, !tbaa !206
  %960 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1746 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %960, i32 0, i32 55
  %strip = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1746, i32 0, i32 1
  %x1747 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip, i32 0, i32 0
  %state1748 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1747, i32 0, i32 0
  %Q1749 = getelementptr inbounds %struct._a, %struct._a* %state1748, i32 0, i32 0
  store i32 %959, i32* %Q1749, align 4, !tbaa !209
  %961 = load i32, i32* %width, align 4, !tbaa !10
  %sub1750 = sub nsw i32 %961, 1
  %962 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1751 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %962, i32 0, i32 55
  %strip1752 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1751, i32 0, i32 1
  %x1753 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1752, i32 0, i32 0
  %state1754 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1753, i32 0, i32 0
  %R1755 = getelementptr inbounds %struct._a, %struct._a* %state1754, i32 0, i32 1
  store i32 %sub1750, i32* %R1755, align 4, !tbaa !210
  br label %do.body.1756

do.body.1756:                                     ; preds = %do.body.1743
  %963 = load i32, i32* %width, align 4, !tbaa !10
  %cmp1757 = icmp eq i32 %963, 0
  br i1 %cmp1757, label %if.then.1759, label %if.else.1770

if.then.1759:                                     ; preds = %do.body.1756
  %964 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1760 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %964, i32 0, i32 55
  %strip1761 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1760, i32 0, i32 1
  %x1762 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1761, i32 0, i32 0
  %step1763 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1762, i32 0, i32 1
  %dQ1764 = getelementptr inbounds %struct._e, %struct._e* %step1763, i32 0, i32 0
  store i32 0, i32* %dQ1764, align 4, !tbaa !211
  %965 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1765 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %965, i32 0, i32 55
  %strip1766 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1765, i32 0, i32 1
  %x1767 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1766, i32 0, i32 0
  %step1768 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1767, i32 0, i32 1
  %dR1769 = getelementptr inbounds %struct._e, %struct._e* %step1768, i32 0, i32 1
  store i32 0, i32* %dR1769, align 4, !tbaa !212
  br label %if.end.1829

if.else.1770:                                     ; preds = %do.body.1756
  %x1771 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %966 = load i32, i32* %x1771, align 4, !tbaa !116
  %cmp1772 = icmp slt i32 %966, 0
  br i1 %cmp1772, label %if.then.1774, label %if.else.1813

if.then.1774:                                     ; preds = %if.else.1770
  %x1775 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %967 = load i32, i32* %x1775, align 4, !tbaa !116
  %sub1776 = sub nsw i32 0, %967
  %968 = load i32, i32* %width, align 4, !tbaa !10
  %div1777 = udiv i32 %sub1776, %968
  %sub1778 = sub nsw i32 0, %div1777
  %969 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1779 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %969, i32 0, i32 55
  %strip1780 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1779, i32 0, i32 1
  %x1781 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1780, i32 0, i32 0
  %step1782 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1781, i32 0, i32 1
  %dQ1783 = getelementptr inbounds %struct._e, %struct._e* %step1782, i32 0, i32 0
  store i32 %sub1778, i32* %dQ1783, align 4, !tbaa !211
  %x1784 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %970 = load i32, i32* %x1784, align 4, !tbaa !116
  %sub1785 = sub nsw i32 0, %970
  %971 = load i32, i32* %width, align 4, !tbaa !10
  %rem1786 = srem i32 %sub1785, %971
  %972 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1787 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %972, i32 0, i32 55
  %strip1788 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1787, i32 0, i32 1
  %x1789 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1788, i32 0, i32 0
  %step1790 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1789, i32 0, i32 1
  %dR1791 = getelementptr inbounds %struct._e, %struct._e* %step1790, i32 0, i32 1
  store i32 %rem1786, i32* %dR1791, align 4, !tbaa !212
  %cmp1792 = icmp ne i32 %rem1786, 0
  br i1 %cmp1792, label %if.then.1794, label %if.end.1812

if.then.1794:                                     ; preds = %if.then.1774
  %973 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1795 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %973, i32 0, i32 55
  %strip1796 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1795, i32 0, i32 1
  %x1797 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1796, i32 0, i32 0
  %step1798 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1797, i32 0, i32 1
  %dQ1799 = getelementptr inbounds %struct._e, %struct._e* %step1798, i32 0, i32 0
  %974 = load i32, i32* %dQ1799, align 4, !tbaa !211
  %dec1800 = add nsw i32 %974, -1
  store i32 %dec1800, i32* %dQ1799, align 4, !tbaa !211
  %975 = load i32, i32* %width, align 4, !tbaa !10
  %976 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1801 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %976, i32 0, i32 55
  %strip1802 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1801, i32 0, i32 1
  %x1803 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1802, i32 0, i32 0
  %step1804 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1803, i32 0, i32 1
  %dR1805 = getelementptr inbounds %struct._e, %struct._e* %step1804, i32 0, i32 1
  %977 = load i32, i32* %dR1805, align 4, !tbaa !212
  %sub1806 = sub i32 %975, %977
  %978 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1807 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %978, i32 0, i32 55
  %strip1808 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1807, i32 0, i32 1
  %x1809 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1808, i32 0, i32 0
  %step1810 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1809, i32 0, i32 1
  %dR1811 = getelementptr inbounds %struct._e, %struct._e* %step1810, i32 0, i32 1
  store i32 %sub1806, i32* %dR1811, align 4, !tbaa !212
  br label %if.end.1812

if.end.1812:                                      ; preds = %if.then.1794, %if.then.1774
  br label %if.end.1828

if.else.1813:                                     ; preds = %if.else.1770
  %x1814 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %979 = load i32, i32* %x1814, align 4, !tbaa !116
  %980 = load i32, i32* %width, align 4, !tbaa !10
  %div1815 = sdiv i32 %979, %980
  %981 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1816 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %981, i32 0, i32 55
  %strip1817 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1816, i32 0, i32 1
  %x1818 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1817, i32 0, i32 0
  %step1819 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1818, i32 0, i32 1
  %dQ1820 = getelementptr inbounds %struct._e, %struct._e* %step1819, i32 0, i32 0
  store i32 %div1815, i32* %dQ1820, align 4, !tbaa !211
  %x1821 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 0
  %982 = load i32, i32* %x1821, align 4, !tbaa !116
  %983 = load i32, i32* %width, align 4, !tbaa !10
  %rem1822 = srem i32 %982, %983
  %984 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1823 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %984, i32 0, i32 55
  %strip1824 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1823, i32 0, i32 1
  %x1825 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1824, i32 0, i32 0
  %step1826 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1825, i32 0, i32 1
  %dR1827 = getelementptr inbounds %struct._e, %struct._e* %step1826, i32 0, i32 1
  store i32 %rem1822, i32* %dR1827, align 4, !tbaa !212
  br label %if.end.1828

if.end.1828:                                      ; preds = %if.else.1813, %if.end.1812
  br label %if.end.1829

if.end.1829:                                      ; preds = %if.end.1828, %if.then.1759
  %985 = load i32, i32* %width, align 4, !tbaa !10
  %986 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1830 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %986, i32 0, i32 55
  %strip1831 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1830, i32 0, i32 1
  %x1832 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1831, i32 0, i32 0
  %step1833 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1832, i32 0, i32 1
  %N1834 = getelementptr inbounds %struct._e, %struct._e* %step1833, i32 0, i32 2
  store i32 %985, i32* %N1834, align 4, !tbaa !213
  br label %do.cond.1835

do.cond.1835:                                     ; preds = %if.end.1829
  br label %do.end.1836

do.end.1836:                                      ; preds = %do.cond.1835
  br label %do.cond.1837

do.cond.1837:                                     ; preds = %do.end.1836
  br label %do.end.1838

do.end.1838:                                      ; preds = %do.cond.1837
  br label %do.body.1839

do.body.1839:                                     ; preds = %do.end.1838
  %987 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur1840 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %987, i32 0, i32 53
  %y1841 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur1840, i32 0, i32 1
  %988 = load i32, i32* %y1841, align 4, !tbaa !208
  %989 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1842 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %989, i32 0, i32 55
  %strip1843 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1842, i32 0, i32 1
  %y1844 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1843, i32 0, i32 1
  %state1845 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1844, i32 0, i32 0
  %Q1846 = getelementptr inbounds %struct._a, %struct._a* %state1845, i32 0, i32 0
  store i32 %988, i32* %Q1846, align 4, !tbaa !214
  %990 = load i32, i32* %width, align 4, !tbaa !10
  %sub1847 = sub nsw i32 %990, 1
  %991 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1848 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %991, i32 0, i32 55
  %strip1849 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1848, i32 0, i32 1
  %y1850 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1849, i32 0, i32 1
  %state1851 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1850, i32 0, i32 0
  %R1852 = getelementptr inbounds %struct._a, %struct._a* %state1851, i32 0, i32 1
  store i32 %sub1847, i32* %R1852, align 4, !tbaa !215
  br label %do.body.1853

do.body.1853:                                     ; preds = %do.body.1839
  %992 = load i32, i32* %width, align 4, !tbaa !10
  %cmp1854 = icmp eq i32 %992, 0
  br i1 %cmp1854, label %if.then.1856, label %if.else.1867

if.then.1856:                                     ; preds = %do.body.1853
  %993 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1857 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %993, i32 0, i32 55
  %strip1858 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1857, i32 0, i32 1
  %y1859 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1858, i32 0, i32 1
  %step1860 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1859, i32 0, i32 1
  %dQ1861 = getelementptr inbounds %struct._e, %struct._e* %step1860, i32 0, i32 0
  store i32 0, i32* %dQ1861, align 4, !tbaa !216
  %994 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1862 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %994, i32 0, i32 55
  %strip1863 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1862, i32 0, i32 1
  %y1864 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1863, i32 0, i32 1
  %step1865 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1864, i32 0, i32 1
  %dR1866 = getelementptr inbounds %struct._e, %struct._e* %step1865, i32 0, i32 1
  store i32 0, i32* %dR1866, align 4, !tbaa !217
  br label %if.end.1926

if.else.1867:                                     ; preds = %do.body.1853
  %y1868 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %995 = load i32, i32* %y1868, align 4, !tbaa !117
  %cmp1869 = icmp slt i32 %995, 0
  br i1 %cmp1869, label %if.then.1871, label %if.else.1910

if.then.1871:                                     ; preds = %if.else.1867
  %y1872 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %996 = load i32, i32* %y1872, align 4, !tbaa !117
  %sub1873 = sub nsw i32 0, %996
  %997 = load i32, i32* %width, align 4, !tbaa !10
  %div1874 = udiv i32 %sub1873, %997
  %sub1875 = sub nsw i32 0, %div1874
  %998 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1876 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %998, i32 0, i32 55
  %strip1877 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1876, i32 0, i32 1
  %y1878 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1877, i32 0, i32 1
  %step1879 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1878, i32 0, i32 1
  %dQ1880 = getelementptr inbounds %struct._e, %struct._e* %step1879, i32 0, i32 0
  store i32 %sub1875, i32* %dQ1880, align 4, !tbaa !216
  %y1881 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %999 = load i32, i32* %y1881, align 4, !tbaa !117
  %sub1882 = sub nsw i32 0, %999
  %1000 = load i32, i32* %width, align 4, !tbaa !10
  %rem1883 = srem i32 %sub1882, %1000
  %1001 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1884 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1001, i32 0, i32 55
  %strip1885 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1884, i32 0, i32 1
  %y1886 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1885, i32 0, i32 1
  %step1887 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1886, i32 0, i32 1
  %dR1888 = getelementptr inbounds %struct._e, %struct._e* %step1887, i32 0, i32 1
  store i32 %rem1883, i32* %dR1888, align 4, !tbaa !217
  %cmp1889 = icmp ne i32 %rem1883, 0
  br i1 %cmp1889, label %if.then.1891, label %if.end.1909

if.then.1891:                                     ; preds = %if.then.1871
  %1002 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1892 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1002, i32 0, i32 55
  %strip1893 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1892, i32 0, i32 1
  %y1894 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1893, i32 0, i32 1
  %step1895 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1894, i32 0, i32 1
  %dQ1896 = getelementptr inbounds %struct._e, %struct._e* %step1895, i32 0, i32 0
  %1003 = load i32, i32* %dQ1896, align 4, !tbaa !216
  %dec1897 = add nsw i32 %1003, -1
  store i32 %dec1897, i32* %dQ1896, align 4, !tbaa !216
  %1004 = load i32, i32* %width, align 4, !tbaa !10
  %1005 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1898 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1005, i32 0, i32 55
  %strip1899 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1898, i32 0, i32 1
  %y1900 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1899, i32 0, i32 1
  %step1901 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1900, i32 0, i32 1
  %dR1902 = getelementptr inbounds %struct._e, %struct._e* %step1901, i32 0, i32 1
  %1006 = load i32, i32* %dR1902, align 4, !tbaa !217
  %sub1903 = sub i32 %1004, %1006
  %1007 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1904 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1007, i32 0, i32 55
  %strip1905 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1904, i32 0, i32 1
  %y1906 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1905, i32 0, i32 1
  %step1907 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1906, i32 0, i32 1
  %dR1908 = getelementptr inbounds %struct._e, %struct._e* %step1907, i32 0, i32 1
  store i32 %sub1903, i32* %dR1908, align 4, !tbaa !217
  br label %if.end.1909

if.end.1909:                                      ; preds = %if.then.1891, %if.then.1871
  br label %if.end.1925

if.else.1910:                                     ; preds = %if.else.1867
  %y1911 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %1008 = load i32, i32* %y1911, align 4, !tbaa !117
  %1009 = load i32, i32* %width, align 4, !tbaa !10
  %div1912 = sdiv i32 %1008, %1009
  %1010 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1913 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1010, i32 0, i32 55
  %strip1914 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1913, i32 0, i32 1
  %y1915 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1914, i32 0, i32 1
  %step1916 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1915, i32 0, i32 1
  %dQ1917 = getelementptr inbounds %struct._e, %struct._e* %step1916, i32 0, i32 0
  store i32 %div1912, i32* %dQ1917, align 4, !tbaa !216
  %y1918 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %row_extent, i32 0, i32 1
  %1011 = load i32, i32* %y1918, align 4, !tbaa !117
  %1012 = load i32, i32* %width, align 4, !tbaa !10
  %rem1919 = srem i32 %1011, %1012
  %1013 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1920 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1013, i32 0, i32 55
  %strip1921 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1920, i32 0, i32 1
  %y1922 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1921, i32 0, i32 1
  %step1923 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1922, i32 0, i32 1
  %dR1924 = getelementptr inbounds %struct._e, %struct._e* %step1923, i32 0, i32 1
  store i32 %rem1919, i32* %dR1924, align 4, !tbaa !217
  br label %if.end.1925

if.end.1925:                                      ; preds = %if.else.1910, %if.end.1909
  br label %if.end.1926

if.end.1926:                                      ; preds = %if.end.1925, %if.then.1856
  %1014 = load i32, i32* %width, align 4, !tbaa !10
  %1015 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1927 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1015, i32 0, i32 55
  %strip1928 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1927, i32 0, i32 1
  %y1929 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1928, i32 0, i32 1
  %step1930 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y1929, i32 0, i32 1
  %N1931 = getelementptr inbounds %struct._e, %struct._e* %step1930, i32 0, i32 2
  store i32 %1014, i32* %N1931, align 4, !tbaa !218
  br label %do.cond.1932

do.cond.1932:                                     ; preds = %if.end.1926
  br label %do.end.1933

do.end.1933:                                      ; preds = %do.cond.1932
  br label %do.cond.1934

do.cond.1934:                                     ; preds = %do.end.1933
  br label %do.end.1935

do.end.1935:                                      ; preds = %do.cond.1934
  %1016 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1936 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1016, i32 0, i32 22
  %x1937 = getelementptr inbounds %struct.r_, %struct.r_* %rect1936, i32 0, i32 0
  %1017 = load i32, i32* %x1937, align 4, !tbaa !23
  %tobool1938 = icmp ne i32 %1017, 0
  br i1 %tobool1938, label %if.then.1939, label %if.end.2063

if.then.1939:                                     ; preds = %do.end.1935
  br label %do.body.1940

do.body.1940:                                     ; preds = %if.then.1939
  %1018 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1018) #1
  %1019 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1941 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1019, i32 0, i32 22
  %x1942 = getelementptr inbounds %struct.r_, %struct.r_* %rect1941, i32 0, i32 0
  %1020 = load i32, i32* %x1942, align 4, !tbaa !23
  store i32 %1020, i32* %n_, align 4, !tbaa !10
  %1021 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1943 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1021, i32 0, i32 55
  %strip1944 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1943, i32 0, i32 1
  %x1945 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1944, i32 0, i32 0
  %step1946 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1945, i32 0, i32 1
  %dQ1947 = getelementptr inbounds %struct._e, %struct._e* %step1946, i32 0, i32 0
  %1022 = load i32, i32* %dQ1947, align 4, !tbaa !211
  %1023 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect1948 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1023, i32 0, i32 22
  %x1949 = getelementptr inbounds %struct.r_, %struct.r_* %rect1948, i32 0, i32 0
  %1024 = load i32, i32* %x1949, align 4, !tbaa !23
  %mul1950 = mul nsw i32 %1022, %1024
  %1025 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1951 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1025, i32 0, i32 55
  %strip1952 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1951, i32 0, i32 1
  %x1953 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1952, i32 0, i32 0
  %state1954 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1953, i32 0, i32 0
  %Q1955 = getelementptr inbounds %struct._a, %struct._a* %state1954, i32 0, i32 0
  %1026 = load i32, i32* %Q1955, align 4, !tbaa !209
  %add1956 = add nsw i32 %1026, %mul1950
  store i32 %add1956, i32* %Q1955, align 4, !tbaa !209
  br label %while.cond.1957

while.cond.1957:                                  ; preds = %if.end.1997, %do.body.1940
  %1027 = load i32, i32* %n_, align 4, !tbaa !10
  %dec1958 = add i32 %1027, -1
  store i32 %dec1958, i32* %n_, align 4, !tbaa !10
  %tobool1959 = icmp ne i32 %1027, 0
  br i1 %tobool1959, label %while.body.1960, label %while.end.1998

while.body.1960:                                  ; preds = %while.cond.1957
  %1028 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1961 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1028, i32 0, i32 55
  %strip1962 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1961, i32 0, i32 1
  %x1963 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1962, i32 0, i32 0
  %step1964 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1963, i32 0, i32 1
  %dR1965 = getelementptr inbounds %struct._e, %struct._e* %step1964, i32 0, i32 1
  %1029 = load i32, i32* %dR1965, align 4, !tbaa !212
  %1030 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1966 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1030, i32 0, i32 55
  %strip1967 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1966, i32 0, i32 1
  %x1968 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1967, i32 0, i32 0
  %state1969 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1968, i32 0, i32 0
  %R1970 = getelementptr inbounds %struct._a, %struct._a* %state1969, i32 0, i32 1
  %1031 = load i32, i32* %R1970, align 4, !tbaa !210
  %sub1971 = sub i32 %1031, %1029
  store i32 %sub1971, i32* %R1970, align 4, !tbaa !210
  %1032 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1972 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1032, i32 0, i32 55
  %strip1973 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1972, i32 0, i32 1
  %x1974 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1973, i32 0, i32 0
  %state1975 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1974, i32 0, i32 0
  %R1976 = getelementptr inbounds %struct._a, %struct._a* %state1975, i32 0, i32 1
  %1033 = load i32, i32* %R1976, align 4, !tbaa !210
  %cmp1977 = icmp slt i32 %1033, 0
  br i1 %cmp1977, label %if.then.1979, label %if.end.1997

if.then.1979:                                     ; preds = %while.body.1960
  %1034 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1980 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1034, i32 0, i32 55
  %strip1981 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1980, i32 0, i32 1
  %x1982 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1981, i32 0, i32 0
  %state1983 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1982, i32 0, i32 0
  %Q1984 = getelementptr inbounds %struct._a, %struct._a* %state1983, i32 0, i32 0
  %1035 = load i32, i32* %Q1984, align 4, !tbaa !209
  %inc1985 = add nsw i32 %1035, 1
  store i32 %inc1985, i32* %Q1984, align 4, !tbaa !209
  %1036 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1986 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1036, i32 0, i32 55
  %strip1987 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1986, i32 0, i32 1
  %x1988 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1987, i32 0, i32 0
  %step1989 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1988, i32 0, i32 1
  %N1990 = getelementptr inbounds %struct._e, %struct._e* %step1989, i32 0, i32 2
  %1037 = load i32, i32* %N1990, align 4, !tbaa !213
  %1038 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda1991 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1038, i32 0, i32 55
  %strip1992 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda1991, i32 0, i32 1
  %x1993 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip1992, i32 0, i32 0
  %state1994 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x1993, i32 0, i32 0
  %R1995 = getelementptr inbounds %struct._a, %struct._a* %state1994, i32 0, i32 1
  %1039 = load i32, i32* %R1995, align 4, !tbaa !210
  %add1996 = add i32 %1039, %1037
  store i32 %add1996, i32* %R1995, align 4, !tbaa !210
  br label %if.end.1997

if.end.1997:                                      ; preds = %if.then.1979, %while.body.1960
  br label %while.cond.1957

while.end.1998:                                   ; preds = %while.cond.1957
  %1040 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1040) #1
  br label %do.cond.1999

do.cond.1999:                                     ; preds = %while.end.1998
  br label %do.end.2000

do.end.2000:                                      ; preds = %do.cond.1999
  br label %do.body.2001

do.body.2001:                                     ; preds = %do.end.2000
  %1041 = bitcast i32* %n_2002 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1041) #1
  %1042 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect2003 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1042, i32 0, i32 22
  %x2004 = getelementptr inbounds %struct.r_, %struct.r_* %rect2003, i32 0, i32 0
  %1043 = load i32, i32* %x2004, align 4, !tbaa !23
  store i32 %1043, i32* %n_2002, align 4, !tbaa !10
  %1044 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2005 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1044, i32 0, i32 55
  %strip2006 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2005, i32 0, i32 1
  %y2007 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2006, i32 0, i32 1
  %step2008 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2007, i32 0, i32 1
  %dQ2009 = getelementptr inbounds %struct._e, %struct._e* %step2008, i32 0, i32 0
  %1045 = load i32, i32* %dQ2009, align 4, !tbaa !216
  %1046 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rect2010 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1046, i32 0, i32 22
  %x2011 = getelementptr inbounds %struct.r_, %struct.r_* %rect2010, i32 0, i32 0
  %1047 = load i32, i32* %x2011, align 4, !tbaa !23
  %mul2012 = mul nsw i32 %1045, %1047
  %1048 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2013 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1048, i32 0, i32 55
  %strip2014 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2013, i32 0, i32 1
  %y2015 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2014, i32 0, i32 1
  %state2016 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2015, i32 0, i32 0
  %Q2017 = getelementptr inbounds %struct._a, %struct._a* %state2016, i32 0, i32 0
  %1049 = load i32, i32* %Q2017, align 4, !tbaa !214
  %add2018 = add nsw i32 %1049, %mul2012
  store i32 %add2018, i32* %Q2017, align 4, !tbaa !214
  br label %while.cond.2019

while.cond.2019:                                  ; preds = %if.end.2059, %do.body.2001
  %1050 = load i32, i32* %n_2002, align 4, !tbaa !10
  %dec2020 = add i32 %1050, -1
  store i32 %dec2020, i32* %n_2002, align 4, !tbaa !10
  %tobool2021 = icmp ne i32 %1050, 0
  br i1 %tobool2021, label %while.body.2022, label %while.end.2060

while.body.2022:                                  ; preds = %while.cond.2019
  %1051 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2023 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1051, i32 0, i32 55
  %strip2024 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2023, i32 0, i32 1
  %y2025 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2024, i32 0, i32 1
  %step2026 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2025, i32 0, i32 1
  %dR2027 = getelementptr inbounds %struct._e, %struct._e* %step2026, i32 0, i32 1
  %1052 = load i32, i32* %dR2027, align 4, !tbaa !217
  %1053 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2028 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1053, i32 0, i32 55
  %strip2029 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2028, i32 0, i32 1
  %y2030 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2029, i32 0, i32 1
  %state2031 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2030, i32 0, i32 0
  %R2032 = getelementptr inbounds %struct._a, %struct._a* %state2031, i32 0, i32 1
  %1054 = load i32, i32* %R2032, align 4, !tbaa !215
  %sub2033 = sub i32 %1054, %1052
  store i32 %sub2033, i32* %R2032, align 4, !tbaa !215
  %1055 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2034 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1055, i32 0, i32 55
  %strip2035 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2034, i32 0, i32 1
  %y2036 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2035, i32 0, i32 1
  %state2037 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2036, i32 0, i32 0
  %R2038 = getelementptr inbounds %struct._a, %struct._a* %state2037, i32 0, i32 1
  %1056 = load i32, i32* %R2038, align 4, !tbaa !215
  %cmp2039 = icmp slt i32 %1056, 0
  br i1 %cmp2039, label %if.then.2041, label %if.end.2059

if.then.2041:                                     ; preds = %while.body.2022
  %1057 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2042 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1057, i32 0, i32 55
  %strip2043 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2042, i32 0, i32 1
  %y2044 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2043, i32 0, i32 1
  %state2045 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2044, i32 0, i32 0
  %Q2046 = getelementptr inbounds %struct._a, %struct._a* %state2045, i32 0, i32 0
  %1058 = load i32, i32* %Q2046, align 4, !tbaa !214
  %inc2047 = add nsw i32 %1058, 1
  store i32 %inc2047, i32* %Q2046, align 4, !tbaa !214
  %1059 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2048 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1059, i32 0, i32 55
  %strip2049 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2048, i32 0, i32 1
  %y2050 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2049, i32 0, i32 1
  %step2051 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2050, i32 0, i32 1
  %N2052 = getelementptr inbounds %struct._e, %struct._e* %step2051, i32 0, i32 2
  %1060 = load i32, i32* %N2052, align 4, !tbaa !218
  %1061 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2053 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1061, i32 0, i32 55
  %strip2054 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2053, i32 0, i32 1
  %y2055 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2054, i32 0, i32 1
  %state2056 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2055, i32 0, i32 0
  %R2057 = getelementptr inbounds %struct._a, %struct._a* %state2056, i32 0, i32 1
  %1062 = load i32, i32* %R2057, align 4, !tbaa !215
  %add2058 = add i32 %1062, %1060
  store i32 %add2058, i32* %R2057, align 4, !tbaa !215
  br label %if.end.2059

if.end.2059:                                      ; preds = %if.then.2041, %while.body.2022
  br label %while.cond.2019

while.end.2060:                                   ; preds = %while.cond.2019
  %1063 = bitcast i32* %n_2002 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1063) #1
  br label %do.cond.2061

do.cond.2061:                                     ; preds = %while.end.2060
  br label %do.end.2062

do.end.2062:                                      ; preds = %do.cond.2061
  br label %if.end.2063

if.end.2063:                                      ; preds = %do.end.2062, %do.end.1935
  %1064 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1064) #1
  %1065 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2064 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1065, i32 0, i32 55
  %strip2065 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2064, i32 0, i32 1
  %x2066 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2065, i32 0, i32 0
  %state2067 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x2066, i32 0, i32 0
  %Q2068 = getelementptr inbounds %struct._a, %struct._a* %state2067, i32 0, i32 0
  %1066 = load i32, i32* %Q2068, align 4, !tbaa !209
  store i32 %1066, i32* %ox, align 4, !tbaa !10
  %1067 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1067) #1
  %1068 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2069 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1068, i32 0, i32 55
  %strip2070 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2069, i32 0, i32 1
  %y2071 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip2070, i32 0, i32 1
  %state2072 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y2071, i32 0, i32 0
  %Q2073 = getelementptr inbounds %struct._a, %struct._a* %state2072, i32 0, i32 0
  %1069 = load i32, i32* %Q2073, align 4, !tbaa !214
  store i32 %1069, i32* %oy, align 4, !tbaa !10
  %1070 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image2074 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1070, i32 0, i32 39
  %1071 = load i8, i8* %clip_image2074, align 1, !tbaa !187
  %tobool2075 = icmp ne i8 %1071, 0
  br i1 %tobool2075, label %if.end.2130, label %if.then.2076

if.then.2076:                                     ; preds = %if.end.2063
  %1072 = load i32, i32* %ox, align 4, !tbaa !10
  %1073 = load i32, i32* %epx, align 4, !tbaa !10
  %add2077 = add nsw i32 %1072, %1073
  %conv2078 = sext i32 %add2077 to i64
  %add2079 = add nsw i64 %conv2078, 127
  %and2080 = and i64 %add2079, -256
  %p2081 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x2082 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2081, i32 0, i32 0
  %1074 = load i32, i32* %x2082, align 4, !tbaa !100
  %conv2083 = sext i32 %1074 to i64
  %add2084 = add nsw i64 %conv2083, 127
  %and2085 = and i64 %add2084, -256
  %cmp2086 = icmp slt i64 %and2080, %and2085
  %cond2088 = select i1 %cmp2086, i32 1, i32 0
  %1075 = load i32, i32* %ox, align 4, !tbaa !10
  %1076 = load i32, i32* %eqx, align 4, !tbaa !10
  %add2089 = add nsw i32 %1075, %1076
  %conv2090 = sext i32 %add2089 to i64
  %add2091 = add nsw i64 %conv2090, 127
  %and2092 = and i64 %add2091, -256
  %q2093 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x2094 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2093, i32 0, i32 0
  %1077 = load i32, i32* %x2094, align 4, !tbaa !105
  %conv2095 = sext i32 %1077 to i64
  %add2096 = add nsw i64 %conv2095, 127
  %and2097 = and i64 %add2096, -256
  %cmp2098 = icmp sge i64 %and2092, %and2097
  %cond2100 = select i1 %cmp2098, i32 2, i32 0
  %add2101 = add nsw i32 %cond2088, %cond2100
  %1078 = load i32, i32* %oy, align 4, !tbaa !10
  %1079 = load i32, i32* %epy, align 4, !tbaa !10
  %add2102 = add nsw i32 %1078, %1079
  %conv2103 = sext i32 %add2102 to i64
  %add2104 = add nsw i64 %conv2103, 127
  %and2105 = and i64 %add2104, -256
  %p2106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y2107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2106, i32 0, i32 1
  %1080 = load i32, i32* %y2107, align 4, !tbaa !103
  %conv2108 = sext i32 %1080 to i64
  %add2109 = add nsw i64 %conv2108, 127
  %and2110 = and i64 %add2109, -256
  %cmp2111 = icmp slt i64 %and2105, %and2110
  %cond2113 = select i1 %cmp2111, i32 4, i32 0
  %add2114 = add nsw i32 %add2101, %cond2113
  %1081 = load i32, i32* %oy, align 4, !tbaa !10
  %1082 = load i32, i32* %eqy, align 4, !tbaa !10
  %add2115 = add nsw i32 %1081, %1082
  %conv2116 = sext i32 %add2115 to i64
  %add2117 = add nsw i64 %conv2116, 127
  %and2118 = and i64 %add2117, -256
  %q2119 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y2120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2119, i32 0, i32 1
  %1083 = load i32, i32* %y2120, align 4, !tbaa !107
  %conv2121 = sext i32 %1083 to i64
  %add2122 = add nsw i64 %conv2121, 127
  %and2123 = and i64 %add2122, -256
  %cmp2124 = icmp sge i64 %and2118, %and2123
  %cond2126 = select i1 %cmp2124, i32 8, i32 0
  %add2127 = add nsw i32 %add2114, %cond2126
  %conv2128 = trunc i32 %add2127 to i8
  %1084 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image2129 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1084, i32 0, i32 39
  store i8 %conv2128, i8* %clip_image2129, align 1, !tbaa !187
  br label %if.end.2130

if.end.2130:                                      ; preds = %if.then.2076, %if.end.2063
  %1085 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1085) #1
  %1086 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1086) #1
  %1087 = bitcast i32* %eqy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1087) #1
  %1088 = bitcast i32* %epy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1088) #1
  %1089 = bitcast i32* %eqx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1089) #1
  %1090 = bitcast i32* %epx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1090) #1
  %1091 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y2131 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1091, i32 0, i32 51
  store i32 0, i32* %y2131, align 4, !tbaa !219
  %1092 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1092, i32 0, i32 52
  %x2132 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 0, i32* %x2132, align 4, !tbaa !220
  %1093 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used2133 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1093, i32 0, i32 52
  %y2134 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used2133, i32 0, i32 1
  store i32 0, i32* %y2134, align 4, !tbaa !221
  %1094 = bitcast i32* %num_planes2135 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1094) #1
  %1095 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes2136 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1095, i32 0, i32 6
  %1096 = load i32, i32* %num_planes2136, align 4, !tbaa !157
  store i32 %1096, i32* %num_planes2135, align 4, !tbaa !10
  %1097 = bitcast i32* %interleaved to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1097) #1
  %1098 = load i32, i32* %num_planes2135, align 4, !tbaa !10
  %cmp2137 = icmp eq i32 %1098, 1
  br i1 %cmp2137, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.2130
  %1099 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1099, i32 0, i32 7
  %arrayidx2139 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %1100 = load i32, i32* %arrayidx2139, align 4, !tbaa !10
  %1101 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps2140 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1101, i32 0, i32 11
  %1102 = load i8, i8* %bps2140, align 1, !tbaa !153
  %conv2141 = zext i8 %1102 to i32
  %cmp2142 = icmp ne i32 %1100, %conv2141
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.2130
  %1103 = phi i1 [ false, %if.end.2130 ], [ %cmp2142, %land.rhs ]
  %land.ext = zext i1 %1103 to i32
  store i32 %land.ext, i32* %interleaved, align 4, !tbaa !10
  %1104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1104) #1
  %1105 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpack_12_proc, align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1105, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 1, i64 4), align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1105, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 0, i64 4), align 8, !tbaa !1
  %1106 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpack_16_proc, align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1106, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 1, i64 5), align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1106, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 0, i64 5), align 8, !tbaa !1
  %1107 = load i32, i32* %interleaved, align 4, !tbaa !10
  %tobool2144 = icmp ne i32 %1107, 0
  br i1 %tobool2144, label %if.then.2145, label %if.end.2175

if.then.2145:                                     ; preds = %land.end
  %1108 = bitcast i32* %num_components2146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1108) #1
  %1109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_depths2147 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1109, i32 0, i32 7
  %arrayidx2148 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths2147, i32 0, i64 0
  %1110 = load i32, i32* %arrayidx2148, align 4, !tbaa !10
  %1111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps2149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1111, i32 0, i32 11
  %1112 = load i8, i8* %bps2149, align 1, !tbaa !153
  %conv2150 = zext i8 %1112 to i32
  %div2151 = sdiv i32 %1110, %conv2150
  store i32 %div2151, i32* %num_components2146, align 4, !tbaa !10
  store i32 1, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2145
  %1113 = load i32, i32* %i, align 4, !tbaa !10
  %1114 = load i32, i32* %num_components2146, align 4, !tbaa !10
  %cmp2152 = icmp slt i32 %1113, %1114
  br i1 %cmp2152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1115 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx2154 = getelementptr inbounds float, float* %1115, i64 0
  %1116 = load float, float* %arrayidx2154, align 4, !tbaa !109
  %1117 = load i32, i32* %i, align 4, !tbaa !10
  %mul2155 = mul nsw i32 %1117, 2
  %add2156 = add nsw i32 %mul2155, 0
  %idxprom = sext i32 %add2156 to i64
  %1118 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx2157 = getelementptr inbounds float, float* %1118, i64 %idxprom
  %1119 = load float, float* %arrayidx2157, align 4, !tbaa !109
  %cmp2158 = fcmp une float %1116, %1119
  br i1 %cmp2158, label %if.then.2168, label %lor.lhs.false.2160

lor.lhs.false.2160:                               ; preds = %for.body
  %1120 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx2161 = getelementptr inbounds float, float* %1120, i64 1
  %1121 = load float, float* %arrayidx2161, align 4, !tbaa !109
  %1122 = load i32, i32* %i, align 4, !tbaa !10
  %mul2162 = mul nsw i32 %1122, 2
  %add2163 = add nsw i32 %mul2162, 1
  %idxprom2164 = sext i32 %add2163 to i64
  %1123 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx2165 = getelementptr inbounds float, float* %1123, i64 %idxprom2164
  %1124 = load float, float* %arrayidx2165, align 4, !tbaa !109
  %cmp2166 = fcmp une float %1121, %1124
  br i1 %cmp2166, label %if.then.2168, label %if.end.2169

if.then.2168:                                     ; preds = %lor.lhs.false.2160, %for.body
  br label %for.end

if.end.2169:                                      ; preds = %lor.lhs.false.2160
  br label %for.inc

for.inc:                                          ; preds = %if.end.2169
  %1125 = load i32, i32* %i, align 4, !tbaa !10
  %inc2170 = add nsw i32 %1125, 1
  store i32 %inc2170, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %if.then.2168, %for.cond
  %1126 = load i32, i32* %i, align 4, !tbaa !10
  %1127 = load i32, i32* %num_components2146, align 4, !tbaa !10
  %cmp2171 = icmp eq i32 %1126, %1127
  br i1 %cmp2171, label %if.then.2173, label %if.end.2174

if.then.2173:                                     ; preds = %for.end
  store i32 0, i32* %interleaved, align 4, !tbaa !10
  br label %if.end.2174

if.end.2174:                                      ; preds = %if.then.2173, %for.end
  %1128 = bitcast i32* %num_components2146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1128) #1
  br label %if.end.2175

if.end.2175:                                      ; preds = %if.end.2174, %land.end
  %1129 = load i32, i32* %index_bps, align 4, !tbaa !10
  %cmp2176 = icmp sge i32 %1129, 4
  br i1 %cmp2176, label %if.then.2178, label %if.else.2188

if.then.2178:                                     ; preds = %if.end.2175
  %1130 = load i32, i32* %index_bps, align 4, !tbaa !10
  %idxprom2179 = sext i32 %1130 to i64
  %1131 = load i32, i32* %interleaved, align 4, !tbaa !10
  %idxprom2180 = sext i32 %1131 to i64
  %arrayidx2181 = getelementptr inbounds [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 %idxprom2180
  %arrayidx2182 = getelementptr inbounds [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*], [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]* %arrayidx2181, i32 0, i64 %idxprom2179
  %1132 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %arrayidx2182, align 8, !tbaa !1
  %1133 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1133, i32 0, i32 28
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1132, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !222
  %cmp2183 = icmp eq i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1132, null
  br i1 %cmp2183, label %if.then.2185, label %if.end.2187

if.then.2185:                                     ; preds = %if.then.2178
  %1134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1135 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %1136 = bitcast %struct.gx_image_enum_s* %1135 to %struct.gx_image_enum_common_s*
  %call2186 = call i32 @gx_default_end_image(%struct.gx_device_s* %1134, %struct.gx_image_enum_common_s* %1136, i32 0) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2220

if.end.2187:                                      ; preds = %if.then.2178
  br label %if.end.2194

if.else.2188:                                     ; preds = %if.end.2175
  %1137 = load i32, i32* %index_bps, align 4, !tbaa !10
  %idxprom2189 = sext i32 %1137 to i64
  %1138 = load i32, i32* %interleaved, align 4, !tbaa !10
  %idxprom2190 = sext i32 %1138 to i64
  %arrayidx2191 = getelementptr inbounds [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @gx_image_enum_begin.procs, i32 0, i64 %idxprom2190
  %arrayidx2192 = getelementptr inbounds [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*], [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]* %arrayidx2191, i32 0, i64 %idxprom2189
  %1139 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %arrayidx2192, align 8, !tbaa !1
  %1140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack2193 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1140, i32 0, i32 28
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %1139, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack2193, align 8, !tbaa !222
  br label %if.end.2194

if.end.2194:                                      ; preds = %if.else.2188, %if.end.2187
  br label %do.body.2195

do.body.2195:                                     ; preds = %if.end.2194
  br label %do.cond.2196

do.cond.2196:                                     ; preds = %do.body.2195
  br label %do.end.2197

do.end.2197:                                      ; preds = %do.cond.2196
  %1141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2198 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1141, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2198, i32 0, i32 2
  %1142 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda2199 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1142, i32 0, i32 55
  %strip2200 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda2199, i32 0, i32 1
  %1143 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  %1144 = bitcast %struct.gx_dda_fixed_point_s* %strip2200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1143, i8* %1144, i64 40, i32 4, i1 false), !tbaa.struct !223
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond.2201

for.cond.2201:                                    ; preds = %for.inc.2212, %do.end.2197
  %1145 = load i32, i32* %i, align 4, !tbaa !10
  %1146 = load i32, i32* @gx_image_class_table_count, align 4, !tbaa !10
  %cmp2202 = icmp ult i32 %1145, %1146
  br i1 %cmp2202, label %for.body.2204, label %for.end.2214

for.body.2204:                                    ; preds = %for.cond.2201
  %1147 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom2205 = sext i32 %1147 to i64
  %arrayidx2206 = getelementptr inbounds [0 x i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)*], [0 x i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)*]* @gx_image_class_table, i32 0, i64 %idxprom2205
  %1148 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)** %arrayidx2206, align 8, !tbaa !1
  %1149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call2207 = call i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %1148(%struct.gx_image_enum_s* %1149) #6
  %1150 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1150, i32 0, i32 29
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %call2207, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %render, align 8, !tbaa !224
  %cmp2208 = icmp ne i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %call2207, null
  br i1 %cmp2208, label %if.then.2210, label %if.end.2211

if.then.2210:                                     ; preds = %for.body.2204
  br label %for.end.2214

if.end.2211:                                      ; preds = %for.body.2204
  br label %for.inc.2212

for.inc.2212:                                     ; preds = %if.end.2211
  %1151 = load i32, i32* %i, align 4, !tbaa !10
  %inc2213 = add nsw i32 %1151, 1
  store i32 %inc2213, i32* %i, align 4, !tbaa !10
  br label %for.cond.2201

for.end.2214:                                     ; preds = %if.then.2210, %for.cond.2201
  %1152 = load i32, i32* %i, align 4, !tbaa !10
  %1153 = load i32, i32* @gx_image_class_table_count, align 4, !tbaa !10
  %cmp2215 = icmp eq i32 %1152, %1153
  br i1 %cmp2215, label %if.then.2217, label %if.end.2219

if.then.2217:                                     ; preds = %for.end.2214
  %1154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %1156 = bitcast %struct.gx_image_enum_s* %1155 to %struct.gx_image_enum_common_s*
  %call2218 = call i32 @gx_default_end_image(%struct.gx_device_s* %1154, %struct.gx_image_enum_common_s* %1156, i32 0) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2220

if.end.2219:                                      ; preds = %for.end.2214
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2220

cleanup.2220:                                     ; preds = %if.end.2219, %if.then.2217, %if.then.2185
  %1157 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1157) #1
  %1158 = bitcast i32* %interleaved to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1158) #1
  %1159 = bitcast i32* %num_planes2135 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1159) #1
  %cleanup.dest.2223 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2223, label %cleanup.2265 [
    i32 0, label %cleanup.cont.2224
  ]

cleanup.cont.2224:                                ; preds = %cleanup.2220
  %1160 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_image2225 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1160, i32 0, i32 39
  %1161 = load i8, i8* %clip_image2225, align 1, !tbaa !187
  %conv2226 = zext i8 %1161 to i32
  %tobool2227 = icmp ne i32 %conv2226, 0
  br i1 %tobool2227, label %land.lhs.true.2228, label %if.end.2242

land.lhs.true.2228:                               ; preds = %cleanup.cont.2224
  %1162 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool2229 = icmp ne %struct.gx_clip_path_s* %1162, null
  br i1 %tobool2229, label %if.then.2230, label %if.end.2242

if.then.2230:                                     ; preds = %land.lhs.true.2228
  %1163 = bitcast %struct.gx_device_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1163) #1
  %1164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2231 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1164, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2231, i32 0, i32 8
  %1165 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %1166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2232 = call i8* %1165(%struct.gs_memory_s* %1166, %struct.gs_memory_struct_type_s* @st_device_clip, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #6
  %1167 = bitcast i8* %call2232 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %1167, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %1168 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %cmp2233 = icmp eq %struct.gx_device_clip_s* %1168, null
  br i1 %cmp2233, label %if.then.2235, label %if.end.2237

if.then.2235:                                     ; preds = %if.then.2230
  %1169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %1171 = bitcast %struct.gx_image_enum_s* %1170 to %struct.gx_image_enum_common_s*
  %call2236 = call i32 @gx_default_end_image(%struct.gx_device_s* %1169, %struct.gx_image_enum_common_s* %1171, i32 0) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2239

if.end.2237:                                      ; preds = %if.then.2230
  %1172 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %1173 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %1174 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_make_clip_device_in_heap(%struct.gx_device_clip_s* %1172, %struct.gx_clip_path_s* %1173, %struct.gx_device_s* %1174, %struct.gs_memory_s* %1175) #6
  %1176 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %1177 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev2238 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1177, i32 0, i32 48
  store %struct.gx_device_clip_s* %1176, %struct.gx_device_clip_s** %clip_dev2238, align 8, !tbaa !189
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2239

cleanup.2239:                                     ; preds = %if.end.2237, %if.then.2235
  %1178 = bitcast %struct.gx_device_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1178) #1
  %cleanup.dest.2240 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2240, label %cleanup.2265 [
    i32 0, label %cleanup.cont.2241
  ]

cleanup.cont.2241:                                ; preds = %cleanup.2239
  br label %if.end.2242

if.end.2242:                                      ; preds = %cleanup.cont.2241, %land.lhs.true.2228, %cleanup.cont.2224
  %1179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_rop2243 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1179, i32 0, i32 38
  %1180 = load i8, i8* %use_rop2243, align 1, !tbaa !174
  %tobool2244 = icmp ne i8 %1180, 0
  br i1 %tobool2244, label %if.then.2245, label %if.end.2264

if.then.2245:                                     ; preds = %if.end.2242
  %1181 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1181) #1
  %1182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2246 = call i32 @gx_alloc_rop_texture_device(%struct.gx_device_rop_texture_s** %rtdev, %struct.gs_memory_s* %1182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 %call2246, i32* %code, align 4, !tbaa !10
  %1183 = load i32, i32* %code, align 4, !tbaa !10
  %cmp2247 = icmp slt i32 %1183, 0
  br i1 %cmp2247, label %if.then.2249, label %if.end.2251

if.then.2249:                                     ; preds = %if.then.2245
  %1184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1185 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %1186 = bitcast %struct.gx_image_enum_s* %1185 to %struct.gx_image_enum_common_s*
  %call2250 = call i32 @gx_default_end_image(%struct.gx_device_s* %1184, %struct.gx_image_enum_common_s* %1186, i32 0) #6
  %1187 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %1187, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2261

if.end.2251:                                      ; preds = %if.then.2245
  %1188 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %1189 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev2252 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1189, i32 0, i32 48
  %1190 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev2252, align 8, !tbaa !189
  %cmp2253 = icmp ne %struct.gx_device_clip_s* %1190, null
  br i1 %cmp2253, label %cond.true.2255, label %cond.false.2257

cond.true.2255:                                   ; preds = %if.end.2251
  %1191 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev2256 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1191, i32 0, i32 48
  %1192 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev2256, align 8, !tbaa !189
  %1193 = bitcast %struct.gx_device_clip_s* %1192 to %struct.gx_device_s*
  br label %cond.end.2258

cond.false.2257:                                  ; preds = %if.end.2251
  %1194 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  br label %cond.end.2258

cond.end.2258:                                    ; preds = %cond.false.2257, %cond.true.2255
  %cond2259 = phi %struct.gx_device_s* [ %1193, %cond.true.2255 ], [ %1194, %cond.false.2257 ]
  %1195 = load i32, i32* %lop, align 4, !tbaa !10
  %1196 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  call void @gx_make_rop_texture_device(%struct.gx_device_rop_texture_s* %1188, %struct.gx_device_s* %cond2259, i32 %1195, %struct.gx_device_color_s* %1196) #6
  %1197 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %1198 = bitcast %struct.gx_device_rop_texture_s* %1197 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %1198, i32 1) #6
  %1199 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %1200 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rop_dev2260 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1200, i32 0, i32 49
  store %struct.gx_device_rop_texture_s* %1199, %struct.gx_device_rop_texture_s** %rop_dev2260, align 8, !tbaa !190
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2261

cleanup.2261:                                     ; preds = %cond.end.2258, %if.then.2249
  %1201 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1201) #1
  %cleanup.dest.2262 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2262, label %cleanup.2265 [
    i32 0, label %cleanup.cont.2263
  ]

cleanup.cont.2263:                                ; preds = %cleanup.2261
  br label %if.end.2264

if.end.2264:                                      ; preds = %cleanup.cont.2263, %if.end.2242
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2265

cleanup.2265:                                     ; preds = %if.end.2264, %cleanup.2261, %cleanup.2239, %cleanup.2220, %sw.default.1218, %if.then.1200, %cleanup.1181, %if.then.906, %if.then.49
  %1202 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1202) #1
  %1203 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1203) #1
  %1204 = bitcast i32* %device_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1204) #1
  %1205 = bitcast %struct.gs_fixed_point_s* %y_extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1205) #1
  %1206 = bitcast %struct.gs_fixed_point_s* %x_extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1206) #1
  %1207 = bitcast %struct.gs_fixed_point_s* %col_extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1207) #1
  %1208 = bitcast %struct.gs_fixed_point_s* %row_extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1208) #1
  %1209 = bitcast i32* %mty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1209) #1
  %1210 = bitcast i32* %mtx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1210) #1
  %1211 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1211) #1
  %1212 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1212) #1
  %1213 = bitcast i32* %spread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1213) #1
  %1214 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1214) #1
  %1215 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1215) #1
  %1216 = bitcast i32* %log2_xbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1216) #1
  %1217 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1217) #1
  %1218 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1218) #1
  %1219 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1219) #1
  %1220 = bitcast i32* %index_bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1220) #1
  %1221 = bitcast %struct.gs_matrix_double_s* %mat to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1221) #1
  %1222 = bitcast float** %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1222) #1
  %1223 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1223) #1
  %1224 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1224) #1
  %1225 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1225) #1
  %1226 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1226) #1
  %1227 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1227) #1
  %1228 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1228) #1
  %1229 = load i32, i32* %retval
  ret i32 %1229
}

declare i32 @gs_matrix_invert_to_double(%struct.gs_matrix_s*, %struct.gs_matrix_double_s*) #2

declare i32 @gs_matrix_multiply_double(%struct.gs_matrix_double_s*, %struct.gs_matrix_s*, %struct.gs_matrix_double_s*) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @float2fixed_rounded_boxed(double %src) #3 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca double, align 8
  %v = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store double %src, double* %src.addr, align 8, !tbaa !99
  %0 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %src.addr, align 8, !tbaa !99
  %mul = fmul double %1, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #8
  %conv = fptrunc double %call to float
  store float %conv, float* %v, align 4, !tbaa !109
  %2 = load float, float* %v, align 4, !tbaa !109
  %cmp = fcmp ole float %2, 0xC1E0000000000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -2147483648, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = load float, float* %v, align 4, !tbaa !109
  %cmp2 = fcmp oge float %3, 0x41E0000000000000
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 2147483647, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.5:                                        ; preds = %if.else
  %4 = load float, float* %v, align 4, !tbaa !109
  %conv6 = fptosi float %4 to i32
  store i32 %conv6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.5, %if.then.4, %if.then
  %5 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @image_init_colors(%struct.gx_image_enum_s* %penum, i32 %bps, i32 %spp, i32 %format, float* %decode, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_color_space_s* %pcs, i32* %pdcb) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %decode.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdcb.addr = alloca i32*, align 8
  %ci = alloca i32, align 4
  %decode_type = alloca i32, align 4
  %code = alloca i32, align 4
  %pmap = alloca %struct.sample_map_s*, align 8
  %this_decode = alloca float*, align 8
  %map_decode = alloca float*, align 8
  %real_decode = alloca float*, align 8
  %map53 = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  %p107 = alloca i16*, align 8
  %step = alloca i32, align 4
  %i150 = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %bps, i32* %bps.addr, align 4, !tbaa !10
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !10
  store i32 %format, i32* %format.addr, align 4, !tbaa !50
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32* %pdcb, i32** %pdcb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %decode_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %spp.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %5 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %6 = load i32, i32* %spp.addr, align 4, !tbaa !10
  call void @image_init_clues(%struct.gx_image_enum_s* %4, i32 %5, i32 %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 3, i32* %decode_type, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %ci, align 4, !tbaa !10
  %8 = load i32, i32* %spp.addr, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom = sext i32 %9 to i64
  %10 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4, !tbaa !109
  %conv = fpext float %11 to double
  %cmp2 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %12 = load i32, i32* %ci, align 4, !tbaa !10
  %add = add nsw i32 %12, 1
  %idxprom4 = sext i32 %add to i64
  %13 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %13, i64 %idxprom4
  %14 = load float, float* %arrayidx5, align 4, !tbaa !109
  %conv6 = fpext float %14 to double
  %cmp7 = fcmp oeq double %conv6, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %15 = phi i1 [ false, %for.body ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  %16 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom9 = sext i32 %16 to i64
  %17 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds float, float* %17, i64 %idxprom9
  %18 = load float, float* %arrayidx10, align 4, !tbaa !109
  %conv11 = fpext float %18 to double
  %cmp12 = fcmp oeq double %conv11, 1.000000e+00
  br i1 %cmp12, label %land.rhs.14, label %land.end.21

land.rhs.14:                                      ; preds = %land.end
  %19 = load i32, i32* %ci, align 4, !tbaa !10
  %add15 = add nsw i32 %19, 1
  %idxprom16 = sext i32 %add15 to i64
  %20 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds float, float* %20, i64 %idxprom16
  %21 = load float, float* %arrayidx17, align 4, !tbaa !109
  %conv18 = fpext float %21 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.14, %land.end
  %22 = phi i1 [ false, %land.end ], [ %cmp19, %land.rhs.14 ]
  %land.ext22 = zext i1 %22 to i32
  %shl = shl i32 %land.ext22, 1
  %or = or i32 %land.ext, %shl
  %23 = load i32, i32* %decode_type, align 4, !tbaa !10
  %and = and i32 %23, %or
  store i32 %and, i32* %decode_type, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %land.end.21
  %24 = load i32, i32* %ci, align 4, !tbaa !10
  %add23 = add nsw i32 %24, 2
  store i32 %add23, i32* %ci, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.205, %for.end
  %25 = load i32, i32* %ci, align 4, !tbaa !10
  %26 = load i32, i32* %spp.addr, align 4, !tbaa !10
  %cmp25 = icmp slt i32 %25, %26
  br i1 %cmp25, label %for.body.27, label %for.end.207

for.body.27:                                      ; preds = %for.cond.24
  %27 = bitcast %struct.sample_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 64
  %arrayidx29 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom28
  store %struct.sample_map_s* %arrayidx29, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %30 = bitcast float** %this_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i32, i32* %ci, align 4, !tbaa !10
  %mul = mul nsw i32 %31, 2
  %idxprom30 = sext i32 %mul to i64
  %32 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %32, i64 %idxprom30
  store float* %arrayidx31, float** %this_decode, align 8, !tbaa !1
  %33 = bitcast float** %map_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast float** %real_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load float*, float** %this_decode, align 8, !tbaa !1
  store float* %35, float** %real_decode, align 8, !tbaa !1
  store float* %35, float** %map_decode, align 8, !tbaa !1
  %36 = load i32, i32* %decode_type, align 4, !tbaa !10
  %and32 = and i32 %36, 1
  %tobool = icmp ne i32 %and32, 0
  br i1 %tobool, label %if.end.40, label %if.then.33

if.then.33:                                       ; preds = %for.body.27
  %37 = load i32, i32* %decode_type, align 4, !tbaa !10
  %and34 = and i32 %37, 2
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.33
  %38 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %cmp36 = icmp sle i32 %38, 8
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true
  store float* getelementptr inbounds ([10 x float], [10 x float]* @image_init_colors.default_decode, i32 0, i32 0), float** %real_decode, align 8, !tbaa !1
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %if.then.33
  %39 = load i32*, i32** %pdcb.addr, align 8, !tbaa !1
  store i32 0, i32* %39, align 4, !tbaa !10
  store float* getelementptr inbounds ([10 x float], [10 x float]* @image_init_colors.default_decode, i32 0, i32 0), float** %map_decode, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body.27
  %40 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %cmp41 = icmp sgt i32 %40, 2
  br i1 %cmp41, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %41 = load i32, i32* %format.addr, align 4, !tbaa !50
  %cmp43 = icmp ne i32 %41, 0
  br i1 %cmp43, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.40
  %42 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %cmp46 = icmp sle i32 %42, 8
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.then.45
  %43 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %43, i32 0, i32 0
  %lookup8 = bitcast %union.sample_lookup_s* %table to [256 x i8]*
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  %44 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %shl50 = shl i32 1, %44
  %45 = load float*, float** %map_decode, align 8, !tbaa !1
  call void @image_init_map(i8* %arrayidx49, i32 %shl50, float* %45) #6
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.then.45
  br label %if.end.126

if.else.52:                                       ; preds = %lor.lhs.false
  %46 = bitcast [4 x i8]* %map53 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %arrayidx54 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 0
  %48 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %shl55 = shl i32 1, %48
  %49 = load float*, float** %map_decode, align 8, !tbaa !1
  call void @image_init_map(i8* %arrayidx54, i32 %shl55, float* %49) #6
  %50 = load i32, i32* %bps.addr, align 4, !tbaa !10
  switch i32 %50, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.106
  ]

sw.bb:                                            ; preds = %if.else.52
  %51 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table56 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %52, i32 0, i32 0
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %table56 to [16 x i32]*
  %arrayidx57 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  store i32* %arrayidx57, i32** %p, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 0
  %53 = load i8, i8* %arrayidx58, align 1, !tbaa !50
  %conv59 = zext i8 %53 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.68

land.lhs.true.62:                                 ; preds = %sw.bb
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 1
  %54 = load i8, i8* %arrayidx63, align 1, !tbaa !50
  %conv64 = zext i8 %54 to i32
  %cmp65 = icmp eq i32 %conv64, 255
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true.62
  %55 = load i32*, i32** %p, align 8, !tbaa !1
  %56 = bitcast i32* %55 to i8*
  %call = call i8* @memcpy(i8* %56, i8* bitcast ([16 x i32]* @lookup4x1to32_identity to i8*), i64 64) #7
  br label %if.end.105

if.else.68:                                       ; preds = %land.lhs.true.62, %sw.bb
  %arrayidx69 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 0
  %57 = load i8, i8* %arrayidx69, align 1, !tbaa !50
  %conv70 = zext i8 %57 to i32
  %cmp71 = icmp eq i32 %conv70, 255
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.80

land.lhs.true.73:                                 ; preds = %if.else.68
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 1
  %58 = load i8, i8* %arrayidx74, align 1, !tbaa !50
  %conv75 = zext i8 %58 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %land.lhs.true.73
  %59 = load i32*, i32** %p, align 8, !tbaa !1
  %60 = bitcast i32* %59 to i8*
  %call79 = call i8* @memcpy(i8* %60, i8* bitcast ([16 x i32]* @lookup4x1to32_inverted to i8*), i64 64) #7
  br label %if.end.104

if.else.80:                                       ; preds = %land.lhs.true.73, %if.else.68
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.102, %if.else.80
  %61 = load i32, i32* %i, align 4, !tbaa !10
  %cmp82 = icmp slt i32 %61, 16
  br i1 %cmp82, label %for.body.84, label %for.end.103

for.body.84:                                      ; preds = %for.cond.81
  %62 = load i32, i32* %i, align 4, !tbaa !10
  %shr = ashr i32 %62, 3
  %idxprom85 = sext i32 %shr to i64
  %arrayidx86 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom85
  %63 = load i8, i8* %arrayidx86, align 1, !tbaa !50
  %64 = load i32*, i32** %p, align 8, !tbaa !1
  %65 = bitcast i32* %64 to i8*
  %arrayidx87 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %63, i8* %arrayidx87, align 1, !tbaa !50
  %66 = load i32, i32* %i, align 4, !tbaa !10
  %shr88 = ashr i32 %66, 2
  %and89 = and i32 %shr88, 1
  %idxprom90 = sext i32 %and89 to i64
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom90
  %67 = load i8, i8* %arrayidx91, align 1, !tbaa !50
  %68 = load i32*, i32** %p, align 8, !tbaa !1
  %69 = bitcast i32* %68 to i8*
  %arrayidx92 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %67, i8* %arrayidx92, align 1, !tbaa !50
  %70 = load i32, i32* %i, align 4, !tbaa !10
  %shr93 = ashr i32 %70, 1
  %and94 = and i32 %shr93, 1
  %idxprom95 = sext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom95
  %71 = load i8, i8* %arrayidx96, align 1, !tbaa !50
  %72 = load i32*, i32** %p, align 8, !tbaa !1
  %73 = bitcast i32* %72 to i8*
  %arrayidx97 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %71, i8* %arrayidx97, align 1, !tbaa !50
  %74 = load i32, i32* %i, align 4, !tbaa !10
  %and98 = and i32 %74, 1
  %idxprom99 = sext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom99
  %75 = load i8, i8* %arrayidx100, align 1, !tbaa !50
  %76 = load i32*, i32** %p, align 8, !tbaa !1
  %77 = bitcast i32* %76 to i8*
  %arrayidx101 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 %75, i8* %arrayidx101, align 1, !tbaa !50
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.84
  %78 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  %79 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr, i32** %p, align 8, !tbaa !1
  br label %for.cond.81

for.end.103:                                      ; preds = %for.cond.81
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %if.then.78
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.67
  %80 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.else.52
  %81 = bitcast i16** %p107 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table108 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %82, i32 0, i32 0
  %lookup2x2to16 = bitcast %union.sample_lookup_s* %table108 to [16 x i16]*
  %arrayidx109 = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to16, i32 0, i64 0
  store i16* %arrayidx109, i16** %p107, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.122, %sw.bb.106
  %83 = load i32, i32* %i, align 4, !tbaa !10
  %cmp111 = icmp slt i32 %83, 16
  br i1 %cmp111, label %for.body.113, label %for.end.125

for.body.113:                                     ; preds = %for.cond.110
  %84 = load i32, i32* %i, align 4, !tbaa !10
  %shr114 = ashr i32 %84, 2
  %idxprom115 = sext i32 %shr114 to i64
  %arrayidx116 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom115
  %85 = load i8, i8* %arrayidx116, align 1, !tbaa !50
  %86 = load i16*, i16** %p107, align 8, !tbaa !1
  %87 = bitcast i16* %86 to i8*
  %arrayidx117 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %85, i8* %arrayidx117, align 1, !tbaa !50
  %88 = load i32, i32* %i, align 4, !tbaa !10
  %and118 = and i32 %88, 3
  %idxprom119 = sext i32 %and118 to i64
  %arrayidx120 = getelementptr inbounds [4 x i8], [4 x i8]* %map53, i32 0, i64 %idxprom119
  %89 = load i8, i8* %arrayidx120, align 1, !tbaa !50
  %90 = load i16*, i16** %p107, align 8, !tbaa !1
  %91 = bitcast i16* %90 to i8*
  %arrayidx121 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %89, i8* %arrayidx121, align 1, !tbaa !50
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.113
  %92 = load i32, i32* %i, align 4, !tbaa !10
  %inc123 = add nsw i32 %92, 1
  store i32 %inc123, i32* %i, align 4, !tbaa !10
  %93 = load i16*, i16** %p107, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i16, i16* %93, i32 1
  store i16* %incdec.ptr124, i16** %p107, align 8, !tbaa !1
  br label %for.cond.110

for.end.125:                                      ; preds = %for.cond.110
  %94 = bitcast i16** %p107 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.52, %for.end.125, %if.end.105
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast [4 x i8]* %map53 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  br label %if.end.126

if.end.126:                                       ; preds = %sw.epilog, %if.end.51
  %97 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds float, float* %97, i64 0
  %98 = load float, float* %arrayidx127, align 4, !tbaa !109
  %99 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %99, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 0
  store float %98, float* %arrayidx128, align 4, !tbaa !109
  %100 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds float, float* %100, i64 1
  %101 = load float, float* %arrayidx129, align 4, !tbaa !109
  %102 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds float, float* %102, i64 0
  %103 = load float, float* %arrayidx130, align 4, !tbaa !109
  %sub = fsub float %101, %103
  %conv131 = fpext float %sub to double
  %104 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %cmp132 = icmp sle i32 %104, 8
  %cond = select i1 %cmp132, double 2.550000e+02, double 3.276000e+04
  %div = fdiv double %conv131, %cond
  %conv134 = fptrunc double %div to float
  %105 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %105, i32 0, i32 2
  store float %conv134, float* %decode_factor, align 4, !tbaa !225
  %106 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds float, float* %106, i64 1
  %107 = load float, float* %arrayidx135, align 4, !tbaa !109
  %108 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup136 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %108, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup136, i32 0, i64 15
  store float %107, float* %arrayidx137, align 4, !tbaa !109
  %109 = load i32, i32* %decode_type, align 4, !tbaa !10
  %tobool138 = icmp ne i32 %109, 0
  br i1 %tobool138, label %if.then.139, label %if.else.143

if.then.139:                                      ; preds = %if.end.126
  %110 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %110, i32 0, i32 3
  store i32 0, i32* %decoding, align 4, !tbaa !133
  %111 = load float*, float** %map_decode, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds float, float* %111, i64 0
  %112 = load float, float* %arrayidx140, align 4, !tbaa !109
  %cmp141 = fcmp une float %112, 0.000000e+00
  %conv142 = zext i1 %cmp141 to i32
  %113 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %inverted = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %113, i32 0, i32 4
  store i32 %conv142, i32* %inverted, align 4, !tbaa !226
  br label %if.end.176

if.else.143:                                      ; preds = %if.end.126
  %114 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %cmp144 = icmp sle i32 %114, 4
  br i1 %cmp144, label %if.then.146, label %if.else.173

if.then.146:                                      ; preds = %if.else.143
  %115 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %shl147 = shl i32 1, %116
  %sub148 = sub nsw i32 %shl147, 1
  %div149 = sdiv i32 15, %sub148
  store i32 %div149, i32* %step, align 4, !tbaa !10
  %117 = bitcast i32* %i150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding151 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %118, i32 0, i32 3
  store i32 1, i32* %decoding151, align 4, !tbaa !133
  %119 = load i32, i32* %step, align 4, !tbaa !10
  %sub152 = sub nsw i32 15, %119
  store i32 %sub152, i32* %i150, align 4, !tbaa !10
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.170, %if.then.146
  %120 = load i32, i32* %i150, align 4, !tbaa !10
  %cmp154 = icmp sgt i32 %120, 0
  br i1 %cmp154, label %for.body.156, label %for.end.172

for.body.156:                                     ; preds = %for.cond.153
  %121 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup157 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %121, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup157, i32 0, i64 0
  %122 = load float, float* %arrayidx158, align 4, !tbaa !109
  %conv159 = fpext float %122 to double
  %123 = load i32, i32* %i150, align 4, !tbaa !10
  %conv160 = sitofp i32 %123 to double
  %mul161 = fmul double %conv160, 1.700000e+01
  %124 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_factor162 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %124, i32 0, i32 2
  %125 = load float, float* %decode_factor162, align 4, !tbaa !225
  %conv163 = fpext float %125 to double
  %mul164 = fmul double %mul161, %conv163
  %add165 = fadd double %conv159, %mul164
  %conv166 = fptrunc double %add165 to float
  %126 = load i32, i32* %i150, align 4, !tbaa !10
  %idxprom167 = sext i32 %126 to i64
  %127 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup168 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %127, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup168, i32 0, i64 %idxprom167
  store float %conv166, float* %arrayidx169, align 4, !tbaa !109
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.156
  %128 = load i32, i32* %step, align 4, !tbaa !10
  %129 = load i32, i32* %i150, align 4, !tbaa !10
  %sub171 = sub nsw i32 %129, %128
  store i32 %sub171, i32* %i150, align 4, !tbaa !10
  br label %for.cond.153

for.end.172:                                      ; preds = %for.cond.153
  %130 = bitcast i32* %i150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  br label %if.end.175

if.else.173:                                      ; preds = %if.else.143
  %132 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding174 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %132, i32 0, i32 3
  store i32 2, i32* %decoding174, align 4, !tbaa !133
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.173, %for.end.172
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.139
  %133 = load i32, i32* %spp.addr, align 4, !tbaa !10
  %cmp177 = icmp eq i32 %133, 1
  br i1 %cmp177, label %if.then.179, label %if.end.198

if.then.179:                                      ; preds = %if.end.176
  %134 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %134) #1
  %135 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds float, float* %135, i64 0
  %136 = load float, float* %arrayidx180, align 4, !tbaa !109
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %136, float* %arrayidx181, align 4, !tbaa !109
  %137 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %137, i32 0, i32 0
  %138 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !119
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %138, i32 0, i32 10
  %139 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !227
  %140 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor0 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 68
  %142 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor0, align 8, !tbaa !126
  %143 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call182 = call i32 %139(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %140, %struct.gx_device_color_s* %142, %struct.gs_imager_state_s* %143, %struct.gx_device_s* %144, i32 1) #6
  store i32 %call182, i32* %code, align 4, !tbaa !10
  %145 = load i32, i32* %code, align 4, !tbaa !10
  %cmp183 = icmp slt i32 %145, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.then.179
  %146 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.186:                                       ; preds = %if.then.179
  %147 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds float, float* %147, i64 1
  %148 = load float, float* %arrayidx187, align 4, !tbaa !109
  %paint188 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values189 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [64 x float], [64 x float]* %values189, i32 0, i64 0
  store float %148, float* %arrayidx190, align 4, !tbaa !109
  %149 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type191 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %149, i32 0, i32 0
  %150 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type191, align 8, !tbaa !119
  %remap_color192 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %150, i32 0, i32 10
  %151 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color192, align 8, !tbaa !227
  %152 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %153 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icolor1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %153, i32 0, i32 69
  %154 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %icolor1, align 8, !tbaa !127
  %155 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call193 = call i32 %151(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %152, %struct.gx_device_color_s* %154, %struct.gs_imager_state_s* %155, %struct.gx_device_s* %156, i32 1) #6
  store i32 %call193, i32* %code, align 4, !tbaa !10
  %157 = load i32, i32* %code, align 4, !tbaa !10
  %cmp194 = icmp slt i32 %157, 0
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.end.186
  %158 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %158, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.197:                                       ; preds = %if.end.186
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.197, %if.then.196, %if.then.185
  %159 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %159) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.199 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.198

if.end.198:                                       ; preds = %cleanup.cont, %if.end.176
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.199

cleanup.199:                                      ; preds = %if.end.198, %cleanup
  %160 = bitcast float** %real_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast float** %map_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast float** %this_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.sample_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.208 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.199
  br label %for.inc.205

for.inc.205:                                      ; preds = %cleanup.cont.204
  %164 = load i32, i32* %ci, align 4, !tbaa !10
  %inc206 = add nsw i32 %164, 1
  store i32 %inc206, i32* %ci, align 4, !tbaa !10
  br label %for.cond.24

for.end.207:                                      ; preds = %for.cond.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

cleanup.208:                                      ; preds = %for.end.207, %cleanup.199
  %165 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %decode_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = load i32, i32* %retval
  ret i32 %168
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @color_draws_b_w(%struct.gx_device_s* %dev, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %rgb = alloca [3 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !129
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %2 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %4 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !228
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %7 = load i64, i64* %pure, align 8, !tbaa !128
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %4(%struct.gx_device_s* %5, i64 %7, i16* %arraydecay) #6
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !132
  %conv = zext i16 %8 to i32
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %9 = load i16, i16* %arrayidx1, align 2, !tbaa !132
  %conv2 = zext i16 %9 to i32
  %or = or i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %10 = load i16, i16* %arrayidx3, align 2, !tbaa !132
  %conv4 = zext i16 %10 to i32
  %or5 = or i32 %or, %conv4
  %tobool = icmp ne i32 %or5, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx7 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %11 = load i16, i16* %arrayidx7, align 2, !tbaa !132
  %conv8 = zext i16 %11 to i32
  %arrayidx9 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %12 = load i16, i16* %arrayidx9, align 2, !tbaa !132
  %conv10 = zext i16 %12 to i32
  %and = and i32 %conv8, %conv10
  %arrayidx11 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %13 = load i16, i16* %arrayidx11, align 2, !tbaa !132
  %conv12 = zext i16 %13 to i32
  %and13 = and i32 %and, %conv12
  %cmp14 = icmp eq i32 %and13, 65535
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.6
  %14 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %cleanup
  %15 = load i32, i32* %retval
  ret i32 %15

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i8* @sample_unpack_1(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_2(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_4(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_8(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_1_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_2_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_4_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_8_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #2

declare void @gx_make_clip_device_in_heap(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare i32 @gx_alloc_rop_texture_device(%struct.gx_device_rop_texture_s**, %struct.gs_memory_s*, i8*) #2

declare void @gx_make_rop_texture_device(%struct.gx_device_rop_texture_s*, %struct.gx_device_s*, i32, %struct.gx_device_color_s*) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @image_init_color_cache(%struct.gx_image_enum_s* %penum, i32 %bps, i32 %spp) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %num_des_comp = alloca i32, align 4
  %num_src_comp = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %need_decode = alloca i32, align 4
  %has_transfer = alloca i32, align 4
  %value = alloca i8, align 1
  %decode_scale = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %psrc = alloca [4 x i8], align 1
  %temp_buffer = alloca i8*, align 8
  %byte_ptr = alloca i8*, align 8
  %is_indexed = alloca i32, align 4
  %free_temp_buffer = alloca i32, align 4
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %conc = alloca [64 x i16], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %bps, i32* %bps.addr, align 4, !tbaa !10
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !10
  %0 = bitcast i32* %num_des_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !229
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !230
  store i32 %3, i32* %num_des_comp, align 4, !tbaa !10
  %4 = bitcast i32* %num_src_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %bps.addr, align 4, !tbaa !10
  %shl = shl i32 1, %6
  store i32 %shl, i32* %num_entries, align 4, !tbaa !10
  %7 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 80
  %need_decode1 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  %9 = load i32, i32* %need_decode1, align 4, !tbaa !69
  store i32 %9, i32* %need_decode, align 4, !tbaa !10
  %10 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 80
  %has_transfer3 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup2, i32 0, i32 3
  %12 = load i32, i32* %has_transfer3, align 4, !tbaa !66
  store i32 %12, i32* %has_transfer, align 4, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  %13 = bitcast i32* %decode_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %decode_scale, align 4, !tbaa !10
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast [4 x i8]* %psrc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i8** %temp_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %byte_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %is_indexed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 31
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !163
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %21) #6
  %cmp = icmp eq i32 %call, 10
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_indexed, align 4, !tbaa !10
  %22 = bitcast i32* %free_temp_buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1, i32* %free_temp_buffer, align 4, !tbaa !10
  %23 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %23) #1
  %24 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %24) #1
  %25 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %25) #1
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 70
  %27 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !168
  %cmp4 = icmp eq %struct.gsicc_link_s* %27, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 1017, i32 1, i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0)) #6
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = load i32, i32* %is_indexed, align 4, !tbaa !10
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 31
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs8, align 8, !tbaa !163
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 3
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !231
  %call9 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %31) #6
  store i32 %call9, i32* %num_src_comp, align 4, !tbaa !10
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 70
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link10, align 8, !tbaa !168
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %33, i32 0, i32 10
  %34 = load i32, i32* %is_identity, align 4, !tbaa !232
  %tobool11 = icmp ne i32 %34, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.else
  %35 = load i32, i32* %need_decode, align 4, !tbaa !10
  %tobool12 = icmp ne i32 %35, 0
  br i1 %tobool12, label %if.end.16, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %36 = load i32, i32* %has_transfer, align 4, !tbaa !10
  %tobool14 = icmp ne i32 %36, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %land.lhs.true.13, %land.lhs.true, %if.else
  store i32 1, i32* %num_src_comp, align 4, !tbaa !10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.7
  %37 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !164
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %39 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %40 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !164
  %call19 = call i8* %39(%struct.gs_memory_s* %41, %struct.gs_memory_struct_type_s* @st_color_cache, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  %42 = bitcast i8* %call19 to %struct.gx_image_color_cache_s*
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 71
  store %struct.gx_image_color_cache_s* %42, %struct.gx_image_color_cache_s** %color_cache, align 8, !tbaa !169
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !164
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 7
  %46 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !125
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !164
  %49 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %50 = load i32, i32* %num_entries, align 4, !tbaa !10
  %mul = mul nsw i32 %49, %50
  %conv23 = sext i32 %mul to i64
  %mul24 = mul i64 %conv23, 1
  %conv25 = trunc i64 %mul24 to i32
  %call26 = call i8* %46(%struct.gs_memory_s* %48, i32 %conv25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  %51 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache27 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %51, i32 0, i32 71
  %52 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache27, align 8, !tbaa !169
  %device_contone = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %52, i32 0, i32 1
  store i8* %call26, i8** %device_contone, align 8, !tbaa !236
  %53 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !164
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %alloc_bytes30 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 7
  %55 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes30, align 8, !tbaa !125
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !164
  %58 = load i32, i32* %num_entries, align 4, !tbaa !10
  %conv32 = sext i32 %58 to i64
  %mul33 = mul i64 %conv32, 4
  %conv34 = trunc i64 %mul33 to i32
  %call35 = call i8* %55(%struct.gs_memory_s* %57, i32 %conv34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  %59 = bitcast i8* %call35 to i32*
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache36 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 71
  %61 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache36, align 8, !tbaa !169
  %is_transparent = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %61, i32 0, i32 0
  store i32* %59, i32** %is_transparent, align 8, !tbaa !238
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache37 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 71
  %63 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache37, align 8, !tbaa !169
  %is_transparent38 = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %63, i32 0, i32 0
  %64 = load i32*, i32** %is_transparent38, align 8, !tbaa !238
  %65 = bitcast i32* %64 to i8*
  %66 = load i32, i32* %num_entries, align 4, !tbaa !10
  %conv39 = sext i32 %66 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call i8* @memset(i8* %65, i32 0, i64 %mul40) #7
  %67 = load i32, i32* %need_decode, align 4, !tbaa !10
  %tobool42 = icmp ne i32 %67, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.17
  %68 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call44 = call i32 @decode_range_needed(%struct.gx_image_enum_s* %68) #6
  store i32 %call44, i32* %decode_scale, align 4, !tbaa !10
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.17
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 70
  %70 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link46, align 8, !tbaa !168
  %is_identity47 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %70, i32 0, i32 10
  %71 = load i32, i32* %is_identity47, align 4, !tbaa !232
  %tobool48 = icmp ne i32 %71, 0
  br i1 %tobool48, label %if.then.49, label %if.else.135

if.then.49:                                       ; preds = %if.end.45
  %72 = load i32, i32* %need_decode, align 4, !tbaa !10
  %tobool50 = icmp ne i32 %72, 0
  br i1 %tobool50, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.49
  %73 = load i32, i32* %has_transfer, align 4, !tbaa !10
  %tobool51 = icmp ne i32 %73, 0
  br i1 %tobool51, label %if.then.52, label %if.else.114

if.then.52:                                       ; preds = %lor.lhs.false, %if.then.49
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %if.then.52
  %74 = load i32, i32* %k, align 4, !tbaa !10
  %75 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp53 = icmp slt i32 %74, %75
  br i1 %cmp53, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  %76 = load i32, i32* %need_decode, align 4, !tbaa !10
  %tobool55 = icmp ne i32 %76, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %for.body
  %77 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %78 = load i32, i32* %k, align 4, !tbaa !10
  %conv57 = trunc i32 %78 to i8
  %79 = load i32, i32* %decode_scale, align 4, !tbaa !10
  call void @image_cache_decode(%struct.gx_image_enum_s* %77, i8 zeroext %conv57, i8* %value, i32 %79) #6
  br label %if.end.60

if.else.58:                                       ; preds = %for.body
  %80 = load i32, i32* %k, align 4, !tbaa !10
  %conv59 = trunc i32 %80 to i8
  store i8 %conv59, i8* %value, align 1, !tbaa !50
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  %81 = load i32, i32* %is_indexed, align 4, !tbaa !10
  %tobool61 = icmp ne i32 %81, 0
  br i1 %tobool61, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %if.end.60
  %82 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs63 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %82, i32 0, i32 31
  %83 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs63, align 8, !tbaa !163
  %84 = load i8, i8* %value, align 1, !tbaa !50
  %conv64 = uitofp i8 %84 to float
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call65 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %83, float %conv64, i8* %arraydecay) #6
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.60
  %85 = load i8, i8* %value, align 1, !tbaa !50
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i64 0
  store i8 %85, i8* %arrayidx, align 1, !tbaa !50
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.62
  %86 = load i32, i32* %has_transfer, align 4, !tbaa !10
  %tobool68 = icmp ne i32 %86, 0
  br i1 %tobool68, label %if.then.69, label %if.end.102

if.then.69:                                       ; preds = %if.end.67
  store i32 0, i32* %kk, align 4, !tbaa !10
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.then.69
  %87 = load i32, i32* %kk, align 4, !tbaa !10
  %88 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %cmp71 = icmp slt i32 %87, %88
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %89 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom = sext i32 %89 to i64
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i64 %idxprom
  %90 = load i8, i8* %arrayidx74, align 1, !tbaa !50
  %conv75 = zext i8 %90 to i32
  %shl76 = shl i32 %conv75, 8
  %91 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom77 = sext i32 %91 to i64
  %arrayidx78 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i64 %idxprom77
  %92 = load i8, i8* %arrayidx78, align 1, !tbaa !50
  %conv79 = zext i8 %92 to i32
  %shr = ashr i32 %conv79, 0
  %add = add nsw i32 %shl76, %shr
  %conv80 = trunc i32 %add to i16
  %93 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom81 = sext i32 %93 to i64
  %arrayidx82 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom81
  store i16 %conv80, i16* %arrayidx82, align 2, !tbaa !132
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %94 = load i32, i32* %kk, align 4, !tbaa !10
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %kk, align 4, !tbaa !10
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %arrayidx83 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %95 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 30
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !162
  %97 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev84 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %97, i32 0, i32 2
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev84, align 8, !tbaa !229
  call void @cmap_transfer(i16* %arrayidx83, %struct.gs_imager_state_s* %96, %struct.gx_device_s* %98) #6
  store i32 0, i32* %kk, align 4, !tbaa !10
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.99, %for.end
  %99 = load i32, i32* %kk, align 4, !tbaa !10
  %100 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %cmp86 = icmp slt i32 %99, %100
  br i1 %cmp86, label %for.body.88, label %for.end.101

for.body.88:                                      ; preds = %for.cond.85
  %101 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom89 = sext i32 %101 to i64
  %arrayidx90 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom89
  %102 = load i16, i16* %arrayidx90, align 2, !tbaa !132
  %conv91 = zext i16 %102 to i32
  %mul92 = mul i32 %conv91, 65281
  %add93 = add i32 %mul92, 8388608
  %shr94 = lshr i32 %add93, 24
  %conv95 = trunc i32 %shr94 to i16
  %conv96 = trunc i16 %conv95 to i8
  %103 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom97 = sext i32 %103 to i64
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i64 %idxprom97
  store i8 %conv96, i8* %arrayidx98, align 1, !tbaa !50
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.88
  %104 = load i32, i32* %kk, align 4, !tbaa !10
  %inc100 = add nsw i32 %104, 1
  store i32 %inc100, i32* %kk, align 4, !tbaa !10
  br label %for.cond.85

for.end.101:                                      ; preds = %for.cond.85
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %if.end.67
  %105 = load i32, i32* %k, align 4, !tbaa !10
  %106 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %mul103 = mul nsw i32 %105, %106
  %idxprom104 = sext i32 %mul103 to i64
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 71
  %108 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache105, align 8, !tbaa !169
  %device_contone106 = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %108, i32 0, i32 1
  %109 = load i8*, i8** %device_contone106, align 8, !tbaa !236
  %arrayidx107 = getelementptr inbounds i8, i8* %109, i64 %idxprom104
  %arraydecay108 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %110 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %conv109 = sext i32 %110 to i64
  %call110 = call i8* @memcpy(i8* %arrayidx107, i8* %arraydecay108, i64 %conv109) #7
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.102
  %111 = load i32, i32* %k, align 4, !tbaa !10
  %inc112 = add nsw i32 %111, 1
  store i32 %inc112, i32* %k, align 4, !tbaa !10
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  br label %if.end.134

if.else.114:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.131, %if.else.114
  %112 = load i32, i32* %k, align 4, !tbaa !10
  %113 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp116 = icmp slt i32 %112, %113
  br i1 %cmp116, label %for.body.118, label %for.end.133

for.body.118:                                     ; preds = %for.cond.115
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs119 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 31
  %115 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs119, align 8, !tbaa !163
  %116 = load i32, i32* %k, align 4, !tbaa !10
  %conv120 = sitofp i32 %116 to float
  %arraydecay121 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call122 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %115, float %conv120, i8* %arraydecay121) #6
  %117 = load i32, i32* %k, align 4, !tbaa !10
  %118 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %mul123 = mul nsw i32 %117, %118
  %idxprom124 = sext i32 %mul123 to i64
  %119 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache125 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 71
  %120 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache125, align 8, !tbaa !169
  %device_contone126 = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %120, i32 0, i32 1
  %121 = load i8*, i8** %device_contone126, align 8, !tbaa !236
  %arrayidx127 = getelementptr inbounds i8, i8* %121, i64 %idxprom124
  %arraydecay128 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %122 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %conv129 = sext i32 %122 to i64
  %call130 = call i8* @memcpy(i8* %arrayidx127, i8* %arraydecay128, i64 %conv129) #7
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.118
  %123 = load i32, i32* %k, align 4, !tbaa !10
  %inc132 = add nsw i32 %123, 1
  store i32 %inc132, i32* %k, align 4, !tbaa !10
  br label %for.cond.115

for.end.133:                                      ; preds = %for.cond.115
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %for.end.113
  br label %if.end.314

if.else.135:                                      ; preds = %if.end.45
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory136, align 8, !tbaa !164
  %procs137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %alloc_bytes138 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs137, i32 0, i32 7
  %126 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes138, align 8, !tbaa !125
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory139, align 8, !tbaa !164
  %129 = load i32, i32* %num_entries, align 4, !tbaa !10
  %130 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %mul140 = mul nsw i32 %129, %130
  %call141 = call i8* %126(%struct.gs_memory_s* %128, i32 %mul140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  store i8* %call141, i8** %temp_buffer, align 8, !tbaa !1
  %131 = load i32, i32* %need_decode, align 4, !tbaa !10
  %tobool142 = icmp ne i32 %131, 0
  br i1 %tobool142, label %if.then.143, label %if.else.176

if.then.143:                                      ; preds = %if.else.135
  %132 = load i32, i32* %is_indexed, align 4, !tbaa !10
  %tobool144 = icmp ne i32 %132, 0
  br i1 %tobool144, label %if.then.145, label %if.else.164

if.then.145:                                      ; preds = %if.then.143
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.161, %if.then.145
  %133 = load i32, i32* %k, align 4, !tbaa !10
  %134 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp147 = icmp slt i32 %133, %134
  br i1 %cmp147, label %for.body.149, label %for.end.163

for.body.149:                                     ; preds = %for.cond.146
  %135 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %136 = load i32, i32* %k, align 4, !tbaa !10
  %conv150 = trunc i32 %136 to i8
  %137 = load i32, i32* %decode_scale, align 4, !tbaa !10
  call void @image_cache_decode(%struct.gx_image_enum_s* %135, i8 zeroext %conv150, i8* %value, i32 %137) #6
  %138 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs151 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %138, i32 0, i32 31
  %139 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs151, align 8, !tbaa !163
  %140 = load i8, i8* %value, align 1, !tbaa !50
  %conv152 = uitofp i8 %140 to float
  %arraydecay153 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call154 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %139, float %conv152, i8* %arraydecay153) #6
  %141 = load i32, i32* %k, align 4, !tbaa !10
  %142 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %mul155 = mul nsw i32 %141, %142
  %idxprom156 = sext i32 %mul155 to i64
  %143 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %143, i64 %idxprom156
  %arraydecay158 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %144 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %conv159 = sext i32 %144 to i64
  %call160 = call i8* @memcpy(i8* %arrayidx157, i8* %arraydecay158, i64 %conv159) #7
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.149
  %145 = load i32, i32* %k, align 4, !tbaa !10
  %inc162 = add nsw i32 %145, 1
  store i32 %inc162, i32* %k, align 4, !tbaa !10
  br label %for.cond.146

for.end.163:                                      ; preds = %for.cond.146
  br label %if.end.175

if.else.164:                                      ; preds = %if.then.143
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.172, %if.else.164
  %146 = load i32, i32* %k, align 4, !tbaa !10
  %147 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp166 = icmp slt i32 %146, %147
  br i1 %cmp166, label %for.body.168, label %for.end.174

for.body.168:                                     ; preds = %for.cond.165
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %149 = load i32, i32* %k, align 4, !tbaa !10
  %conv169 = trunc i32 %149 to i8
  %150 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom170 = sext i32 %150 to i64
  %151 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %151, i64 %idxprom170
  %152 = load i32, i32* %decode_scale, align 4, !tbaa !10
  call void @image_cache_decode(%struct.gx_image_enum_s* %148, i8 zeroext %conv169, i8* %arrayidx171, i32 %152) #6
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.168
  %153 = load i32, i32* %k, align 4, !tbaa !10
  %inc173 = add nsw i32 %153, 1
  store i32 %inc173, i32* %k, align 4, !tbaa !10
  br label %for.cond.165

for.end.174:                                      ; preds = %for.cond.165
  br label %if.end.175

if.end.175:                                       ; preds = %for.end.174, %for.end.163
  br label %if.end.242

if.else.176:                                      ; preds = %if.else.135
  %154 = load i32, i32* %is_indexed, align 4, !tbaa !10
  %tobool177 = icmp ne i32 %154, 0
  br i1 %tobool177, label %if.then.178, label %if.else.230

if.then.178:                                      ; preds = %if.else.176
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs179 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %155, i32 0, i32 31
  %156 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs179, align 8, !tbaa !163
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %156, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %157 = load i32, i32* %use_proc, align 4, !tbaa !239
  %tobool180 = icmp ne i32 %157, 0
  br i1 %tobool180, label %if.then.187, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.then.178
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs182 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %158, i32 0, i32 31
  %159 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs182, align 8, !tbaa !163
  %params183 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %159, i32 0, i32 7
  %indexed184 = bitcast %union.anon* %params183 to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed184, i32 0, i32 0
  %160 = load i32, i32* %hival, align 4, !tbaa !241
  %161 = load i32, i32* %num_entries, align 4, !tbaa !10
  %sub = sub nsw i32 %161, 1
  %cmp185 = icmp slt i32 %160, %sub
  br i1 %cmp185, label %if.then.187, label %if.else.222

if.then.187:                                      ; preds = %lor.lhs.false.181, %if.then.178
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.206, %if.then.187
  %162 = load i32, i32* %k, align 4, !tbaa !10
  %163 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs189 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %163, i32 0, i32 31
  %164 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs189, align 8, !tbaa !163
  %params190 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %164, i32 0, i32 7
  %indexed191 = bitcast %union.anon* %params190 to %struct.gs_indexed_params_s*
  %hival192 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed191, i32 0, i32 0
  %165 = load i32, i32* %hival192, align 4, !tbaa !241
  %cmp193 = icmp sle i32 %162, %165
  br i1 %cmp193, label %for.body.195, label %for.end.208

for.body.195:                                     ; preds = %for.cond.188
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs196 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 31
  %167 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs196, align 8, !tbaa !163
  %168 = load i32, i32* %k, align 4, !tbaa !10
  %conv197 = sitofp i32 %168 to float
  %arraydecay198 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call199 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %167, float %conv197, i8* %arraydecay198) #6
  %169 = load i32, i32* %k, align 4, !tbaa !10
  %170 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %mul200 = mul nsw i32 %169, %170
  %idxprom201 = sext i32 %mul200 to i64
  %171 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %171, i64 %idxprom201
  %arraydecay203 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %172 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %conv204 = sext i32 %172 to i64
  %call205 = call i8* @memcpy(i8* %arrayidx202, i8* %arraydecay203, i64 %conv204) #7
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.195
  %173 = load i32, i32* %k, align 4, !tbaa !10
  %inc207 = add nsw i32 %173, 1
  store i32 %inc207, i32* %k, align 4, !tbaa !10
  br label %for.cond.188

for.end.208:                                      ; preds = %for.cond.188
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.219, %for.end.208
  %174 = load i32, i32* %k, align 4, !tbaa !10
  %175 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp210 = icmp slt i32 %174, %175
  br i1 %cmp210, label %for.body.212, label %for.end.221

for.body.212:                                     ; preds = %for.cond.209
  %176 = load i32, i32* %k, align 4, !tbaa !10
  %177 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %mul213 = mul nsw i32 %176, %177
  %idxprom214 = sext i32 %mul213 to i64
  %178 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %178, i64 %idxprom214
  %arraydecay216 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %179 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %conv217 = sext i32 %179 to i64
  %call218 = call i8* @memcpy(i8* %arrayidx215, i8* %arraydecay216, i64 %conv217) #7
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.212
  %180 = load i32, i32* %k, align 4, !tbaa !10
  %inc220 = add nsw i32 %180, 1
  store i32 %inc220, i32* %k, align 4, !tbaa !10
  br label %for.cond.209

for.end.221:                                      ; preds = %for.cond.209
  br label %if.end.229

if.else.222:                                      ; preds = %lor.lhs.false.181
  %181 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory223 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %181, i32 0, i32 3
  %182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory223, align 8, !tbaa !164
  %procs224 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %182, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs224, i32 0, i32 2
  %183 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !91
  %184 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory225 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %184, i32 0, i32 3
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory225, align 8, !tbaa !164
  %186 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  call void %183(%struct.gs_memory_s* %185, i8* %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  store i32 0, i32* %free_temp_buffer, align 4, !tbaa !10
  %187 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs226 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %187, i32 0, i32 31
  %188 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs226, align 8, !tbaa !163
  %params227 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %188, i32 0, i32 7
  %indexed228 = bitcast %union.anon* %params227 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed228, i32 0, i32 2
  %table = bitcast %union.anon.0* %lookup to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %189 = load i8*, i8** %data, align 8, !tbaa !242
  store i8* %189, i8** %temp_buffer, align 8, !tbaa !1
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.222, %for.end.221
  br label %if.end.241

if.else.230:                                      ; preds = %if.else.176
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.238, %if.else.230
  %190 = load i32, i32* %k, align 4, !tbaa !10
  %191 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp232 = icmp slt i32 %190, %191
  br i1 %cmp232, label %for.body.234, label %for.end.240

for.body.234:                                     ; preds = %for.cond.231
  %192 = load i32, i32* %k, align 4, !tbaa !10
  %conv235 = trunc i32 %192 to i8
  %193 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom236 = sext i32 %193 to i64
  %194 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i8, i8* %194, i64 %idxprom236
  store i8 %conv235, i8* %arrayidx237, align 1, !tbaa !50
  br label %for.inc.238

for.inc.238:                                      ; preds = %for.body.234
  %195 = load i32, i32* %k, align 4, !tbaa !10
  %inc239 = add nsw i32 %195, 1
  store i32 %inc239, i32* %k, align 4, !tbaa !10
  br label %for.cond.231

for.end.240:                                      ; preds = %for.cond.231
  br label %if.end.241

if.end.241:                                       ; preds = %for.end.240, %if.end.229
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.175
  %196 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %conv243 = trunc i32 %196 to i8
  %197 = load i32, i32* %num_entries, align 4, !tbaa !10
  %198 = load i32, i32* %num_src_comp, align 4, !tbaa !10
  %mul244 = mul nsw i32 %197, %198
  %199 = load i32, i32* %num_entries, align 4, !tbaa !10
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv243, i8 zeroext 1, i32 0, i32 0, i32 0, i32 0, i32 %mul244, i32 1, i32 %199) #6
  %200 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %conv245 = trunc i32 %200 to i8
  %201 = load i32, i32* %num_entries, align 4, !tbaa !10
  %202 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %mul246 = mul nsw i32 %201, %202
  %203 = load i32, i32* %num_entries, align 4, !tbaa !10
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv245, i8 zeroext 1, i32 0, i32 0, i32 0, i32 0, i32 %mul246, i32 1, i32 %203) #6
  %204 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link247 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %204, i32 0, i32 70
  %205 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link247, align 8, !tbaa !168
  %procs248 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %205, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs248, i32 0, i32 0
  %206 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !244
  %207 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev249 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %207, i32 0, i32 2
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev249, align 8, !tbaa !229
  %209 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link250 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %209, i32 0, i32 70
  %210 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link250, align 8, !tbaa !168
  %211 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  %212 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache251 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %212, i32 0, i32 71
  %213 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache251, align 8, !tbaa !169
  %device_contone252 = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %213, i32 0, i32 1
  %214 = load i8*, i8** %device_contone252, align 8, !tbaa !236
  call void %206(%struct.gx_device_s* %208, %struct.gsicc_link_s* %210, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %211, i8* %214) #6
  %215 = load i32, i32* %has_transfer, align 4, !tbaa !10
  %tobool253 = icmp ne i32 %215, 0
  br i1 %tobool253, label %if.then.254, label %if.end.306

if.then.254:                                      ; preds = %if.end.242
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.303, %if.then.254
  %216 = load i32, i32* %k, align 4, !tbaa !10
  %217 = load i32, i32* %num_entries, align 4, !tbaa !10
  %cmp256 = icmp slt i32 %216, %217
  br i1 %cmp256, label %for.body.258, label %for.end.305

for.body.258:                                     ; preds = %for.cond.255
  %218 = load i32, i32* %k, align 4, !tbaa !10
  %219 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %mul259 = mul nsw i32 %218, %219
  %idxprom260 = sext i32 %mul259 to i64
  %220 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %color_cache261 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %220, i32 0, i32 71
  %221 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache261, align 8, !tbaa !169
  %device_contone262 = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %221, i32 0, i32 1
  %222 = load i8*, i8** %device_contone262, align 8, !tbaa !236
  %arrayidx263 = getelementptr inbounds i8, i8* %222, i64 %idxprom260
  store i8* %arrayidx263, i8** %byte_ptr, align 8, !tbaa !1
  store i32 0, i32* %kk, align 4, !tbaa !10
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.280, %for.body.258
  %223 = load i32, i32* %kk, align 4, !tbaa !10
  %224 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %cmp265 = icmp slt i32 %223, %224
  br i1 %cmp265, label %for.body.267, label %for.end.282

for.body.267:                                     ; preds = %for.cond.264
  %225 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom268 = sext i32 %225 to i64
  %226 = load i8*, i8** %byte_ptr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %226, i64 %idxprom268
  %227 = load i8, i8* %arrayidx269, align 1, !tbaa !50
  %conv270 = zext i8 %227 to i32
  %shl271 = shl i32 %conv270, 8
  %228 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom272 = sext i32 %228 to i64
  %229 = load i8*, i8** %byte_ptr, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %229, i64 %idxprom272
  %230 = load i8, i8* %arrayidx273, align 1, !tbaa !50
  %conv274 = zext i8 %230 to i32
  %shr275 = ashr i32 %conv274, 0
  %add276 = add nsw i32 %shl271, %shr275
  %conv277 = trunc i32 %add276 to i16
  %231 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom278 = sext i32 %231 to i64
  %arrayidx279 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom278
  store i16 %conv277, i16* %arrayidx279, align 2, !tbaa !132
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.body.267
  %232 = load i32, i32* %kk, align 4, !tbaa !10
  %inc281 = add nsw i32 %232, 1
  store i32 %inc281, i32* %kk, align 4, !tbaa !10
  br label %for.cond.264

for.end.282:                                      ; preds = %for.cond.264
  %arrayidx283 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %233 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis284 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %233, i32 0, i32 30
  %234 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis284, align 8, !tbaa !162
  %235 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev285 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %235, i32 0, i32 2
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %dev285, align 8, !tbaa !229
  call void @cmap_transfer(i16* %arrayidx283, %struct.gs_imager_state_s* %234, %struct.gx_device_s* %236) #6
  store i32 0, i32* %kk, align 4, !tbaa !10
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.300, %for.end.282
  %237 = load i32, i32* %kk, align 4, !tbaa !10
  %238 = load i32, i32* %num_des_comp, align 4, !tbaa !10
  %cmp287 = icmp slt i32 %237, %238
  br i1 %cmp287, label %for.body.289, label %for.end.302

for.body.289:                                     ; preds = %for.cond.286
  %239 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom290 = sext i32 %239 to i64
  %arrayidx291 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom290
  %240 = load i16, i16* %arrayidx291, align 2, !tbaa !132
  %conv292 = zext i16 %240 to i32
  %mul293 = mul i32 %conv292, 65281
  %add294 = add i32 %mul293, 8388608
  %shr295 = lshr i32 %add294, 24
  %conv296 = trunc i32 %shr295 to i16
  %conv297 = trunc i16 %conv296 to i8
  %241 = load i32, i32* %kk, align 4, !tbaa !10
  %idxprom298 = sext i32 %241 to i64
  %242 = load i8*, i8** %byte_ptr, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i8, i8* %242, i64 %idxprom298
  store i8 %conv297, i8* %arrayidx299, align 1, !tbaa !50
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.289
  %243 = load i32, i32* %kk, align 4, !tbaa !10
  %inc301 = add nsw i32 %243, 1
  store i32 %inc301, i32* %kk, align 4, !tbaa !10
  br label %for.cond.286

for.end.302:                                      ; preds = %for.cond.286
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.end.302
  %244 = load i32, i32* %k, align 4, !tbaa !10
  %inc304 = add nsw i32 %244, 1
  store i32 %inc304, i32* %k, align 4, !tbaa !10
  br label %for.cond.255

for.end.305:                                      ; preds = %for.cond.255
  br label %if.end.306

if.end.306:                                       ; preds = %for.end.305, %if.end.242
  %245 = load i32, i32* %free_temp_buffer, align 4, !tbaa !10
  %tobool307 = icmp ne i32 %245, 0
  br i1 %tobool307, label %if.then.308, label %if.end.313

if.then.308:                                      ; preds = %if.end.306
  %246 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory309 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %246, i32 0, i32 3
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory309, align 8, !tbaa !164
  %procs310 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %247, i32 0, i32 1
  %free_object311 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs310, i32 0, i32 2
  %248 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object311, align 8, !tbaa !91
  %249 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory312 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory312, align 8, !tbaa !164
  %251 = load i8*, i8** %temp_buffer, align 8, !tbaa !1
  call void %248(%struct.gs_memory_s* %250, i8* %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_init_color_cache, i32 0, i32 0)) #6
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.308, %if.end.306
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.end.134
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.314, %if.then.15, %if.then
  %252 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %252) #1
  %253 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %253) #1
  %254 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %254) #1
  %255 = bitcast i32* %free_temp_buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %is_indexed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i8** %byte_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i8** %temp_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast [4 x i8]* %psrc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %decode_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  %263 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %num_src_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %num_des_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = load i32, i32* %retval
  ret i32 %268
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @decode_range_needed(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %scale = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %scale, align 4, !tbaa !10
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %decoding, align 4, !tbaa !133
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 31
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !163
  %call = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %4) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %5, i32 0, i32 31
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1, align 8, !tbaa !163
  %call2 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %6) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %scale, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then.4, %lor.lhs.false, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load i32, i32* %scale, align 4, !tbaa !10
  %8 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @image_cache_decode(%struct.gx_image_enum_s* %penum, i8 zeroext %input, i8* %output, i32 %scale) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %input.addr = alloca i8, align 1
  %output.addr = alloca i8*, align 8
  %scale.addr = alloca i32, align 4
  %temp = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8 %input, i8* %input.addr, align 1, !tbaa !50
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %scale, i32* %scale.addr, align 4, !tbaa !10
  %0 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %decoding, align 4, !tbaa !133
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %input.addr, align 1, !tbaa !50
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8 %3, i8* %4, align 1, !tbaa !50
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load i8, i8* %input.addr, align 1, !tbaa !50
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 64
  %arrayidx3 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map2, i32 0, i64 0
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom
  %7 = load float, float* %arrayidx4, align 4, !tbaa !109
  %mul = fmul float %7, 2.550000e+02
  store float %mul, float* %temp, align 4, !tbaa !109
  %8 = load float, float* %temp, align 4, !tbaa !109
  %cmp = fcmp ogt float %8, 2.550000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  store float 2.550000e+02, float* %temp, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  %9 = load float, float* %temp, align 4, !tbaa !109
  %cmp6 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store float 0.000000e+00, float* %temp, align 4, !tbaa !109
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %10 = load float, float* %temp, align 4, !tbaa !109
  %conv10 = fptoui float %10 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %11, align 1, !tbaa !50
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map12 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 64
  %arrayidx13 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map12, i32 0, i64 0
  %decode_lookup14 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup14, i32 0, i64 0
  %13 = load float, float* %arrayidx15, align 4, !tbaa !109
  %14 = load i8, i8* %input.addr, align 1, !tbaa !50
  %conv16 = uitofp i8 %14 to float
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map17 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 64
  %arrayidx18 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map17, i32 0, i64 0
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx18, i32 0, i32 2
  %16 = load float, float* %decode_factor, align 4, !tbaa !225
  %mul19 = fmul float %conv16, %16
  %add = fadd float %13, %mul19
  store float %add, float* %temp, align 4, !tbaa !109
  %17 = load i32, i32* %scale.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %sw.bb.11
  %18 = load float, float* %temp, align 4, !tbaa !109
  %conv21 = fpext float %18 to double
  %mul22 = fmul double %conv21, 2.550000e+02
  %conv23 = fptrunc double %mul22 to float
  store float %conv23, float* %temp, align 4, !tbaa !109
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %sw.bb.11
  %19 = load float, float* %temp, align 4, !tbaa !109
  %cmp25 = fcmp ogt float %19, 2.550000e+02
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store float 2.550000e+02, float* %temp, align 4, !tbaa !109
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %20 = load float, float* %temp, align 4, !tbaa !109
  %cmp29 = fcmp olt float %20, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store float 0.000000e+00, float* %temp, align 4, !tbaa !109
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %21 = load float, float* %temp, align 4, !tbaa !109
  %conv33 = fptoui float %21 to i8
  %22 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv33, i8* %22, align 1, !tbaa !50
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8 0, i8* %23, align 1, !tbaa !50
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.32, %if.end.9, %sw.bb
  %24 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

declare i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s*, float, i8*) #2

declare void @cmap_transfer(i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #2

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @image_init_clues(%struct.gx_image_enum_s* %penum, i32 %bps, i32 %spp) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %pcht = alloca %struct.gx_image_clue_s*, align 8
  %n = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %bps, i32* %bps.addr, align 4, !tbaa !10
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !10
  %0 = load i32, i32* %spp.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %bps.addr, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 8, %cond.false ]
  switch i32 %cond, label %sw.epilog [
    i32 8, label %sw.bb
    i32 4, label %sw.bb.22
    i32 2, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %cond.end
  %2 = bitcast %struct.gx_image_clue_s** %pcht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 65
  %4 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %4, i64 0
  store %struct.gx_image_clue_s* %arrayidx, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 64, i32* %n, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %6 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %6, i64 3
  %dev_color = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx1, i32 0, i32 0
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !245
  %7 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %7, i64 2
  %dev_color3 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx2, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color3, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type4, align 8, !tbaa !245
  %8 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %8, i64 1
  %dev_color6 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx5, i32 0, i32 0
  %type7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color6, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type7, align 8, !tbaa !245
  %9 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %9, i64 0
  %dev_color9 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx8, i32 0, i32 0
  %type10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color9, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !245
  %10 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %10, i64 3
  %key = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx11, i32 0, i32 1
  store i32 0, i32* %key, align 4, !tbaa !247
  %11 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %11, i64 2
  %key13 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx12, i32 0, i32 1
  store i32 0, i32* %key13, align 4, !tbaa !247
  %12 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %12, i64 1
  %key15 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx14, i32 0, i32 1
  store i32 0, i32* %key15, align 4, !tbaa !247
  %13 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %13, i64 0
  %key17 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx16, i32 0, i32 1
  store i32 0, i32* %key17, align 4, !tbaa !247
  %14 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %14, i64 4
  store %struct.gx_image_clue_s* %add.ptr, %struct.gx_image_clue_s** %pcht, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %n, align 4, !tbaa !10
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %n, align 4, !tbaa !10
  %cmp18 = icmp sgt i32 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 65
  %17 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues19, align 8, !tbaa !65
  %arrayidx20 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %17, i64 0
  %key21 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx20, i32 0, i32 1
  store i32 1, i32* %key21, align 4, !tbaa !247
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gx_image_clue_s** %pcht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %sw.epilog

sw.bb.22:                                         ; preds = %cond.end
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 65
  %21 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues23, align 8, !tbaa !65
  %arrayidx24 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %21, i64 238
  %dev_color25 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx24, i32 0, i32 0
  %type26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color25, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type26, align 8, !tbaa !245
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues27 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 65
  %23 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues27, align 8, !tbaa !65
  %arrayidx28 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %23, i64 221
  %dev_color29 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx28, i32 0, i32 0
  %type30 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color29, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type30, align 8, !tbaa !245
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues31 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 65
  %25 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues31, align 8, !tbaa !65
  %arrayidx32 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %25, i64 204
  %dev_color33 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx32, i32 0, i32 0
  %type34 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color33, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type34, align 8, !tbaa !245
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues35 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 65
  %27 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues35, align 8, !tbaa !65
  %arrayidx36 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %27, i64 187
  %dev_color37 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx36, i32 0, i32 0
  %type38 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color37, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type38, align 8, !tbaa !245
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues39 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 65
  %29 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues39, align 8, !tbaa !65
  %arrayidx40 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %29, i64 153
  %dev_color41 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx40, i32 0, i32 0
  %type42 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color41, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type42, align 8, !tbaa !245
  %30 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues43 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %30, i32 0, i32 65
  %31 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues43, align 8, !tbaa !65
  %arrayidx44 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %31, i64 136
  %dev_color45 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx44, i32 0, i32 0
  %type46 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color45, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type46, align 8, !tbaa !245
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 65
  %33 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues47, align 8, !tbaa !65
  %arrayidx48 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %33, i64 119
  %dev_color49 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx48, i32 0, i32 0
  %type50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color49, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type50, align 8, !tbaa !245
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues51 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %34, i32 0, i32 65
  %35 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues51, align 8, !tbaa !65
  %arrayidx52 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %35, i64 102
  %dev_color53 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx52, i32 0, i32 0
  %type54 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color53, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type54, align 8, !tbaa !245
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues55 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 65
  %37 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues55, align 8, !tbaa !65
  %arrayidx56 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %37, i64 68
  %dev_color57 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx56, i32 0, i32 0
  %type58 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color57, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type58, align 8, !tbaa !245
  %38 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues59 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %38, i32 0, i32 65
  %39 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues59, align 8, !tbaa !65
  %arrayidx60 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %39, i64 51
  %dev_color61 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx60, i32 0, i32 0
  %type62 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color61, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type62, align 8, !tbaa !245
  %40 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues63 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %40, i32 0, i32 65
  %41 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues63, align 8, !tbaa !65
  %arrayidx64 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %41, i64 34
  %dev_color65 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx64, i32 0, i32 0
  %type66 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color65, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type66, align 8, !tbaa !245
  %42 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues67 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %42, i32 0, i32 65
  %43 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues67, align 8, !tbaa !65
  %arrayidx68 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %43, i64 17
  %dev_color69 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx68, i32 0, i32 0
  %type70 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color69, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type70, align 8, !tbaa !245
  br label %sw.bb.71

sw.bb.71:                                         ; preds = %cond.end, %sw.bb.22
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues72 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 65
  %45 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues72, align 8, !tbaa !65
  %arrayidx73 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %45, i64 170
  %dev_color74 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx73, i32 0, i32 0
  %type75 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color74, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type75, align 8, !tbaa !245
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clues76 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 65
  %47 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues76, align 8, !tbaa !65
  %arrayidx77 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %47, i64 85
  %dev_color78 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx77, i32 0, i32 0
  %type79 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color78, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type79, align 8, !tbaa !245
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.71, %cond.end, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_init_map(i8* %map, i32 %map_size, float* %decode) #0 {
entry:
  %map.addr = alloca i8*, align 8
  %map_size.addr = alloca i32, align 4
  %decode.addr = alloca float*, align 8
  %min_v = alloca float, align 4
  %diff_v = alloca float, align 4
  %limit = alloca i8*, align 8
  %value = alloca i32, align 4
  %diff = alloca i32, align 4
  %i = alloca i32, align 4
  %value15 = alloca i32, align 4
  store i8* %map, i8** %map.addr, align 8, !tbaa !1
  store i32 %map_size, i32* %map_size.addr, align 4, !tbaa !10
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  %0 = bitcast float* %min_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !109
  store float %2, float* %min_v, align 4, !tbaa !109
  %3 = bitcast float* %diff_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx1, align 4, !tbaa !109
  %6 = load float, float* %min_v, align 4, !tbaa !109
  %sub = fsub float %5, %6
  store float %sub, float* %diff_v, align 4, !tbaa !109
  %7 = load float, float* %diff_v, align 4, !tbaa !109
  %cmp = fcmp oeq float %7, 1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load float, float* %diff_v, align 4, !tbaa !109
  %cmp2 = fcmp oeq float %8, -1.000000e+00
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %map.addr, align 8, !tbaa !1
  %11 = load i32, i32* %map_size.addr, align 4, !tbaa !10
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !1
  %12 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load float, float* %min_v, align 4, !tbaa !109
  %mul = fmul float %13, 6.553500e+04
  %conv = fptoui float %mul to i32
  store i32 %conv, i32* %value, align 4, !tbaa !10
  %14 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load float, float* %diff_v, align 4, !tbaa !109
  %16 = load i32, i32* %map_size.addr, align 4, !tbaa !10
  %sub3 = sub nsw i32 %16, 1
  %conv4 = sext i32 %sub3 to i64
  %div = sdiv i64 65535, %conv4
  %conv5 = sitofp i64 %div to float
  %mul6 = fmul float %15, %conv5
  %conv7 = fptosi float %mul6 to i32
  store i32 %conv7, i32* %diff, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load i8*, i8** %map.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %limit, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %17, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %value, align 4, !tbaa !10
  %shr = lshr i32 %19, 8
  %conv10 = trunc i32 %shr to i8
  %20 = load i8*, i8** %map.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %20, align 1, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %map.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %map.addr, align 8, !tbaa !1
  %22 = load i32, i32* %diff, align 4, !tbaa !10
  %23 = load i32, i32* %value, align 4, !tbaa !10
  %add = add i32 %23, %22
  store i32 %add, i32* %value, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.34, %if.else
  %28 = load i32, i32* %i, align 4, !tbaa !10
  %29 = load i32, i32* %map_size.addr, align 4, !tbaa !10
  %cmp12 = icmp slt i32 %28, %29
  br i1 %cmp12, label %for.body.14, label %for.end.35

for.body.14:                                      ; preds = %for.cond.11
  %30 = bitcast i32* %value15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load float, float* %min_v, align 4, !tbaa !109
  %32 = load float, float* %diff_v, align 4, !tbaa !109
  %33 = load i32, i32* %i, align 4, !tbaa !10
  %conv16 = sitofp i32 %33 to float
  %mul17 = fmul float %32, %conv16
  %34 = load i32, i32* %map_size.addr, align 4, !tbaa !10
  %sub18 = sub nsw i32 %34, 1
  %conv19 = sitofp i32 %sub18 to float
  %div20 = fdiv float %mul17, %conv19
  %add21 = fadd float %31, %div20
  %mul22 = fmul float %add21, 2.550000e+02
  %conv23 = fptosi float %mul22 to i32
  store i32 %conv23, i32* %value15, align 4, !tbaa !10
  %35 = load i32, i32* %value15, align 4, !tbaa !10
  %cmp24 = icmp slt i32 %35, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  br label %cond.end.30

cond.false:                                       ; preds = %for.body.14
  %36 = load i32, i32* %value15, align 4, !tbaa !10
  %cmp26 = icmp sgt i32 %36, 255
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false
  br label %cond.end

cond.false.29:                                    ; preds = %cond.false
  %37 = load i32, i32* %value15, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.28
  %cond = phi i32 [ 255, %cond.true.28 ], [ %37, %cond.false.29 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv32 = trunc i32 %cond31 to i8
  %38 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = sext i32 %38 to i64
  %39 = load i8*, i8** %map.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 %idxprom
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !50
  %40 = bitcast i32* %value15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %for.inc.34

for.inc.34:                                       ; preds = %cond.end.30
  %41 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  br label %for.cond.11

for.end.35:                                       ; preds = %for.cond.11
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end

if.end:                                           ; preds = %for.end.35, %for.end
  %43 = bitcast float* %diff_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast float* %min_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_image_scale_mask_colors(%struct.gx_image_enum_s* %penum, i32 %component_index) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %component_index.addr = alloca i32, align 4
  %scale = alloca i32, align 4
  %values = alloca i32*, align 8
  %v0 = alloca i32, align 4
  %v1 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %component_index, i32* %component_index.addr, align 4, !tbaa !10
  %0 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 11
  %2 = load i8, i8* %bps, align 1, !tbaa !153
  %conv = zext i8 %2 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %div = sdiv i32 255, %sub
  store i32 %div, i32* %scale, align 4, !tbaa !10
  %3 = bitcast i32** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %component_index.addr, align 4, !tbaa !10
  %mul = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul to i64
  %5 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %5, i32 0, i32 16
  %values1 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values1, i32 0, i64 %idxprom
  store i32* %arrayidx, i32** %values, align 8, !tbaa !1
  %6 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %scale, align 4, !tbaa !10
  %8 = load i32*, i32** %values, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx2, align 4, !tbaa !10
  %mul3 = mul i32 %9, %7
  store i32 %mul3, i32* %arrayidx2, align 4, !tbaa !10
  store i32 %mul3, i32* %v0, align 4, !tbaa !10
  %10 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %scale, align 4, !tbaa !10
  %12 = load i32*, i32** %values, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx4, align 4, !tbaa !10
  %mul5 = mul i32 %13, %11
  store i32 %mul5, i32* %arrayidx4, align 4, !tbaa !10
  store i32 %mul5, i32* %v1, align 4, !tbaa !10
  %14 = load i32, i32* %component_index.addr, align 4, !tbaa !10
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 64
  %arrayidx7 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom6
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx7, i32 0, i32 3
  %16 = load i32, i32* %decoding, align 4, !tbaa !133
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load i32, i32* %component_index.addr, align 4, !tbaa !10
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 64
  %arrayidx11 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map10, i32 0, i64 %idxprom9
  %inverted = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx11, i32 0, i32 4
  %19 = load i32, i32* %inverted, align 4, !tbaa !226
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, i32* %v1, align 4, !tbaa !10
  %sub12 = sub i32 255, %20
  %21 = load i32*, i32** %values, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %sub12, i32* %arrayidx13, align 4, !tbaa !10
  %22 = load i32, i32* %v0, align 4, !tbaa !10
  %sub14 = sub i32 255, %22
  %23 = load i32*, i32** %values, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %sub14, i32* %arrayidx15, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %24 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_has_transfer(%struct.gs_imager_state_s* %pis, i32 %num_comps) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !10
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !10
  %2 = load i32, i32* %num_comps.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %effective_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 47
  %arrayidx = getelementptr inbounds [64 x %struct.gx_transfer_map_s*], [64 x %struct.gx_transfer_map_s*]* %effective_transfer, i32 0, i64 %idxprom
  %5 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %5, i32 0, i32 1
  %6 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !248
  %cmp1 = icmp ne float (double, %struct.gx_transfer_map_s*)* %6, @gs_identity_transfer
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %k, align 4, !tbaa !10
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @image_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gx_image_enum_s*, align 8
  %bps = alloca i32, align 4
  %ret = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !10
  store i32 %index, i32* %index.addr, align 4, !tbaa !10
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %2, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !10
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
    i32 2, label %sw.bb.52
    i32 3, label %sw.bb.54
    i32 4, label %sw.bb.56
    i32 5, label %sw.bb.58
    i32 6, label %sw.bb.60
    i32 7, label %sw.bb.62
    i32 8, label %sw.bb.64
    i32 9, label %sw.bb.66
    i32 10, label %sw.bb.68
    i32 11, label %sw.bb.70
    i32 12, label %sw.bb.72
  ]

sw.default:                                       ; preds = %entry
  %4 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !10
  %sub = sub nsw i32 %6, 13
  store i32 %sub, i32* %index.addr, align 4, !tbaa !10
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %unpack_bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 12
  %8 = load i8, i8* %unpack_bps, align 1, !tbaa !154
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %bps, align 4, !tbaa !10
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 14
  %10 = load i8, i8* %spp, align 1, !tbaa !156
  %conv1 = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  store i32 8, i32* %bps, align 4, !tbaa !10
  br label %if.end.8

if.else:                                          ; preds = %sw.default
  %11 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp3 = icmp sgt i32 %11, 8
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 28
  %13 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !222
  %cmp5 = icmp eq i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %13, @sample_unpack_copy
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %bps, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.lhs.false
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %index.addr, align 4, !tbaa !10
  %15 = load i32, i32* %bps, align 4, !tbaa !10
  %shl = shl i32 1, %15
  %mul = mul nsw i32 %shl, 3
  %cmp9 = icmp sge i32 %14, %mul
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %spp13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 14
  %17 = load i8, i8* %spp13, align 1, !tbaa !156
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.else.42

if.then.17:                                       ; preds = %if.end.12
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 65
  %19 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues, align 8, !tbaa !65
  %cmp18 = icmp ne %struct.gx_image_clue_s* %19, null
  br i1 %cmp18, label %if.then.20, label %if.else.40

if.then.20:                                       ; preds = %if.then.17
  %20 = load i32, i32* %index.addr, align 4, !tbaa !10
  %div = sdiv i32 %20, 3
  %21 = load i32, i32* %bps, align 4, !tbaa !10
  %shl21 = shl i32 1, %21
  %sub22 = sub nsw i32 %shl21, 1
  %div23 = sdiv i32 255, %sub22
  %mul24 = mul nsw i32 %div, %div23
  %idxprom = sext i32 %mul24 to i64
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %clues25 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 65
  %23 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues25, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %23, i64 %idxprom
  %dev_color = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx, i32 0, i32 0
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 0
  %24 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !245
  %cmp26 = icmp ne %struct.gx_device_color_type_s* %24, null
  br i1 %cmp26, label %if.then.28, label %if.else.38

if.then.28:                                       ; preds = %if.then.20
  %25 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_color, i32 0, i32 4), align 8, !tbaa !251
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load i32, i32* %index.addr, align 4, !tbaa !10
  %div29 = sdiv i32 %27, 3
  %28 = load i32, i32* %bps, align 4, !tbaa !10
  %shl30 = shl i32 1, %28
  %sub31 = sub nsw i32 %shl30, 1
  %div32 = sdiv i32 255, %sub31
  %mul33 = mul nsw i32 %div29, %div32
  %idxprom34 = sext i32 %mul33 to i64
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %clues35 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 65
  %30 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues35, align 8, !tbaa !65
  %arrayidx36 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %30, i64 %idxprom34
  %dev_color37 = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx36, i32 0, i32 0
  %31 = bitcast %struct.gx_device_color_s* %dev_color37 to i8*
  %32 = load i32, i32* %index.addr, align 4, !tbaa !10
  %rem = srem i32 %32, 3
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %34 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %25(%struct.gs_memory_s* %26, i8* %31, i32 656, i32 %rem, %struct.enum_ptr_s* %33, %struct.gs_memory_struct_type_s* @st_device_color, %struct.gc_state_s* %34) #6
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.20
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.28
  br label %if.end.41

if.else.40:                                       ; preds = %if.then.17
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.12
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  %35 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %cmp44 = icmp eq %struct.gs_ptr_procs_s* %35, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  %36 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %36, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.43
  %37 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %37, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.46, %if.then.11
  %38 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %cleanup.75

sw.bb:                                            ; preds = %entry
  %40 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to %struct.gx_image_enum_s*
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 30
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !162
  %43 = bitcast %struct.gs_imager_state_s* %42 to i8*
  %44 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr49 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %44, i32 0, i32 0
  store i8* %43, i8** %ptr49, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.50:                                         ; preds = %entry
  %45 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to %struct.gx_image_enum_s*
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 31
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !163
  %48 = bitcast %struct.gs_color_space_s* %47 to i8*
  %49 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr51 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %49, i32 0, i32 0
  store i8* %48, i8** %ptr51, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.52:                                         ; preds = %entry
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gx_image_enum_s*
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %51, i32 0, i32 2
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !229
  %53 = bitcast %struct.gx_device_s* %52 to i8*
  %54 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr53 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %54, i32 0, i32 0
  store i8* %53, i8** %ptr53, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.54:                                         ; preds = %entry
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gx_image_enum_s*
  %buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 32
  %57 = load i8*, i8** %buffer, align 8, !tbaa !165
  %58 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr55 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %58, i32 0, i32 0
  store i8* %57, i8** %ptr55, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.56:                                         ; preds = %entry
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct.gx_image_enum_s*
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 34
  %61 = load i8*, i8** %line, align 8, !tbaa !167
  %62 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr57 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %62, i32 0, i32 0
  store i8* %61, i8** %ptr57, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.58:                                         ; preds = %entry
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct.gx_image_enum_s*
  %clip_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 48
  %65 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev, align 8, !tbaa !189
  %66 = bitcast %struct.gx_device_clip_s* %65 to i8*
  %67 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr59 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %67, i32 0, i32 0
  store i8* %66, i8** %ptr59, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.60:                                         ; preds = %entry
  %68 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %69 = bitcast i8* %68 to %struct.gx_image_enum_s*
  %rop_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 49
  %70 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev, align 8, !tbaa !190
  %71 = bitcast %struct.gx_device_rop_texture_s* %70 to i8*
  %72 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr61 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %72, i32 0, i32 0
  store i8* %71, i8** %ptr61, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.62:                                         ; preds = %entry
  %73 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %74 = bitcast i8* %73 to %struct.gx_image_enum_s*
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 50
  %75 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !191
  %76 = bitcast %struct.stream_image_scale_state_s* %75 to i8*
  %77 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr63 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %77, i32 0, i32 0
  store i8* %76, i8** %ptr63, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.64:                                         ; preds = %entry
  %78 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %79 = bitcast i8* %78 to %struct.gx_image_enum_s*
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 70
  %80 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !168
  %81 = bitcast %struct.gsicc_link_s* %80 to i8*
  %82 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr65 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %82, i32 0, i32 0
  store i8* %81, i8** %ptr65, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.66:                                         ; preds = %entry
  %83 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %84 = bitcast i8* %83 to %struct.gx_image_enum_s*
  %color_cache = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 71
  %85 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache, align 8, !tbaa !169
  %86 = bitcast %struct.gx_image_color_cache_s* %85 to i8*
  %87 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr67 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %87, i32 0, i32 0
  store i8* %86, i8** %ptr67, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.68:                                         ; preds = %entry
  %88 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %89 = bitcast i8* %88 to %struct.gx_image_enum_s*
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 72
  %90 = load i8*, i8** %ht_buffer, align 8, !tbaa !170
  %91 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr69 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %91, i32 0, i32 0
  store i8* %90, i8** %ptr69, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.70:                                         ; preds = %entry
  %92 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %93 = bitcast i8* %92 to %struct.gx_image_enum_s*
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 76
  %94 = load i8*, i8** %thresh_buffer, align 8, !tbaa !171
  %95 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr71 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %95, i32 0, i32 0
  store i8* %94, i8** %ptr71, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.bb.72:                                         ; preds = %entry
  %96 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %97 = bitcast i8* %96 to %struct.gx_image_enum_s*
  %clues73 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %97, i32 0, i32 65
  %98 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues73, align 8, !tbaa !65
  %99 = bitcast %struct.gx_image_clue_s* %98 to i8*
  %100 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr74 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %100, i32 0, i32 0
  store i8* %99, i8** %ptr74, align 8, !tbaa !253
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %sw.bb.72, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb, %cleanup
  %101 = bitcast %struct.gx_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %102
}

; Function Attrs: nounwind uwtable
define internal void @image_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gx_image_enum_s*, align 8
  %i = alloca i32, align 4
  %bps = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !10
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %2, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gc_state_s* %4 to %struct.gc_procs_common_s**
  %6 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %5, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %6, i32 0, i32 0
  %7 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !255
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gx_image_enum_s*
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 30
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !162
  %11 = bitcast %struct.gs_imager_state_s* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %7(i8* %11, %struct.gc_state_s* %12) #6
  %13 = bitcast i8* %call to %struct.gs_imager_state_s*
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gx_image_enum_s*
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 30
  store %struct.gs_imager_state_s* %13, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !162
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gc_state_s* %16 to %struct.gc_procs_common_s**
  %18 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %17, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %18, i32 0, i32 0
  %19 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !255
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gx_image_enum_s*
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %21, i32 0, i32 31
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !163
  %23 = bitcast %struct.gs_color_space_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %19(i8* %23, %struct.gc_state_s* %24) #6
  %25 = bitcast i8* %call3 to %struct.gs_color_space_s*
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gx_image_enum_s*
  %pcs4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %27, i32 0, i32 31
  store %struct.gs_color_space_s* %25, %struct.gs_color_space_s** %pcs4, align 8, !tbaa !163
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 0
  %31 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !255
  %32 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to %struct.gx_image_enum_s*
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %33, i32 0, i32 2
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !229
  %35 = bitcast %struct.gx_device_s* %34 to i8*
  %36 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %31(i8* %35, %struct.gc_state_s* %36) #6
  %37 = bitcast i8* %call6 to %struct.gx_device_s*
  %38 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %39 = bitcast i8* %38 to %struct.gx_image_enum_s*
  %dev7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 2
  store %struct.gx_device_s* %37, %struct.gx_device_s** %dev7, align 8, !tbaa !229
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gc_state_s* %40 to %struct.gc_procs_common_s**
  %42 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %41, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %42, i32 0, i32 0
  %43 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !255
  %44 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %45 = bitcast i8* %44 to %struct.gx_image_enum_s*
  %buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 32
  %46 = load i8*, i8** %buffer, align 8, !tbaa !165
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %43(i8* %46, %struct.gc_state_s* %47) #6
  %48 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to %struct.gx_image_enum_s*
  %buffer10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 32
  store i8* %call9, i8** %buffer10, align 8, !tbaa !165
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gc_state_s* %50 to %struct.gc_procs_common_s**
  %52 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %51, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %52, i32 0, i32 0
  %53 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !255
  %54 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to %struct.gx_image_enum_s*
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 34
  %56 = load i8*, i8** %line, align 8, !tbaa !167
  %57 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %53(i8* %56, %struct.gc_state_s* %57) #6
  %58 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %59 = bitcast i8* %58 to %struct.gx_image_enum_s*
  %line13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %59, i32 0, i32 34
  store i8* %call12, i8** %line13, align 8, !tbaa !167
  %60 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gc_state_s* %60 to %struct.gc_procs_common_s**
  %62 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %61, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %62, i32 0, i32 0
  %63 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !255
  %64 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %65 = bitcast i8* %64 to %struct.gx_image_enum_s*
  %clip_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %65, i32 0, i32 48
  %66 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev, align 8, !tbaa !189
  %67 = bitcast %struct.gx_device_clip_s* %66 to i8*
  %68 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call15 = call i8* %63(i8* %67, %struct.gc_state_s* %68) #6
  %69 = bitcast i8* %call15 to %struct.gx_device_clip_s*
  %70 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %71 = bitcast i8* %70 to %struct.gx_image_enum_s*
  %clip_dev16 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 48
  store %struct.gx_device_clip_s* %69, %struct.gx_device_clip_s** %clip_dev16, align 8, !tbaa !189
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %73 = bitcast %struct.gc_state_s* %72 to %struct.gc_procs_common_s**
  %74 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %73, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %74, i32 0, i32 0
  %75 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !255
  %76 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %77 = bitcast i8* %76 to %struct.gx_image_enum_s*
  %rop_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %77, i32 0, i32 49
  %78 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev, align 8, !tbaa !190
  %79 = bitcast %struct.gx_device_rop_texture_s* %78 to i8*
  %80 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call18 = call i8* %75(i8* %79, %struct.gc_state_s* %80) #6
  %81 = bitcast i8* %call18 to %struct.gx_device_rop_texture_s*
  %82 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %83 = bitcast i8* %82 to %struct.gx_image_enum_s*
  %rop_dev19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 49
  store %struct.gx_device_rop_texture_s* %81, %struct.gx_device_rop_texture_s** %rop_dev19, align 8, !tbaa !190
  %84 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gc_state_s* %84 to %struct.gc_procs_common_s**
  %86 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %85, align 8, !tbaa !1
  %reloc_struct_ptr20 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %86, i32 0, i32 0
  %87 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr20, align 8, !tbaa !255
  %88 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %89 = bitcast i8* %88 to %struct.gx_image_enum_s*
  %scaler = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 50
  %90 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !191
  %91 = bitcast %struct.stream_image_scale_state_s* %90 to i8*
  %92 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call21 = call i8* %87(i8* %91, %struct.gc_state_s* %92) #6
  %93 = bitcast i8* %call21 to %struct.stream_image_scale_state_s*
  %94 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %95 = bitcast i8* %94 to %struct.gx_image_enum_s*
  %scaler22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 50
  store %struct.stream_image_scale_state_s* %93, %struct.stream_image_scale_state_s** %scaler22, align 8, !tbaa !191
  %96 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %97 = bitcast %struct.gc_state_s* %96 to %struct.gc_procs_common_s**
  %98 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %97, align 8, !tbaa !1
  %reloc_struct_ptr23 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %98, i32 0, i32 0
  %99 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr23, align 8, !tbaa !255
  %100 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %101 = bitcast i8* %100 to %struct.gx_image_enum_s*
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %101, i32 0, i32 70
  %102 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !168
  %103 = bitcast %struct.gsicc_link_s* %102 to i8*
  %104 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %99(i8* %103, %struct.gc_state_s* %104) #6
  %105 = bitcast i8* %call24 to %struct.gsicc_link_s*
  %106 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %107 = bitcast i8* %106 to %struct.gx_image_enum_s*
  %icc_link25 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 70
  store %struct.gsicc_link_s* %105, %struct.gsicc_link_s** %icc_link25, align 8, !tbaa !168
  %108 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %109 = bitcast %struct.gc_state_s* %108 to %struct.gc_procs_common_s**
  %110 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %109, align 8, !tbaa !1
  %reloc_struct_ptr26 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %110, i32 0, i32 0
  %111 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr26, align 8, !tbaa !255
  %112 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %113 = bitcast i8* %112 to %struct.gx_image_enum_s*
  %color_cache = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 71
  %114 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache, align 8, !tbaa !169
  %115 = bitcast %struct.gx_image_color_cache_s* %114 to i8*
  %116 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call27 = call i8* %111(i8* %115, %struct.gc_state_s* %116) #6
  %117 = bitcast i8* %call27 to %struct.gx_image_color_cache_s*
  %118 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %119 = bitcast i8* %118 to %struct.gx_image_enum_s*
  %color_cache28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 71
  store %struct.gx_image_color_cache_s* %117, %struct.gx_image_color_cache_s** %color_cache28, align 8, !tbaa !169
  %120 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %121 = bitcast %struct.gc_state_s* %120 to %struct.gc_procs_common_s**
  %122 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %121, align 8, !tbaa !1
  %reloc_struct_ptr29 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %122, i32 0, i32 0
  %123 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr29, align 8, !tbaa !255
  %124 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %125 = bitcast i8* %124 to %struct.gx_image_enum_s*
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %125, i32 0, i32 72
  %126 = load i8*, i8** %ht_buffer, align 8, !tbaa !170
  %127 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call30 = call i8* %123(i8* %126, %struct.gc_state_s* %127) #6
  %128 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %129 = bitcast i8* %128 to %struct.gx_image_enum_s*
  %ht_buffer31 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 72
  store i8* %call30, i8** %ht_buffer31, align 8, !tbaa !170
  %130 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %131 = bitcast %struct.gc_state_s* %130 to %struct.gc_procs_common_s**
  %132 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %131, align 8, !tbaa !1
  %reloc_struct_ptr32 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %132, i32 0, i32 0
  %133 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr32, align 8, !tbaa !255
  %134 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %135 = bitcast i8* %134 to %struct.gx_image_enum_s*
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %135, i32 0, i32 76
  %136 = load i8*, i8** %thresh_buffer, align 8, !tbaa !171
  %137 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %133(i8* %136, %struct.gc_state_s* %137) #6
  %138 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %139 = bitcast i8* %138 to %struct.gx_image_enum_s*
  %thresh_buffer34 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %139, i32 0, i32 76
  store i8* %call33, i8** %thresh_buffer34, align 8, !tbaa !171
  %140 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %141 = bitcast %struct.gc_state_s* %140 to %struct.gc_procs_common_s**
  %142 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %141, align 8, !tbaa !1
  %reloc_struct_ptr35 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %142, i32 0, i32 0
  %143 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr35, align 8, !tbaa !255
  %144 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %145 = bitcast i8* %144 to %struct.gx_image_enum_s*
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %145, i32 0, i32 65
  %146 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues, align 8, !tbaa !65
  %147 = bitcast %struct.gx_image_clue_s* %146 to i8*
  %148 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call36 = call i8* %143(i8* %147, %struct.gc_state_s* %148) #6
  %149 = bitcast i8* %call36 to %struct.gx_image_clue_s*
  %150 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %151 = bitcast i8* %150 to %struct.gx_image_enum_s*
  %clues37 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 65
  store %struct.gx_image_clue_s* %149, %struct.gx_image_clue_s** %clues37, align 8, !tbaa !65
  %152 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %unpack_bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %153, i32 0, i32 12
  %154 = load i8, i8* %unpack_bps, align 1, !tbaa !154
  %conv = zext i8 %154 to i32
  store i32 %conv, i32* %bps, align 4, !tbaa !10
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %155, i32 0, i32 14
  %156 = load i8, i8* %spp, align 1, !tbaa !156
  %conv38 = zext i8 %156 to i32
  %cmp = icmp ne i32 %conv38, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8, i32* %bps, align 4, !tbaa !10
  br label %if.end.45

if.else:                                          ; preds = %entry
  %157 = load i32, i32* %bps, align 4, !tbaa !10
  %cmp40 = icmp sgt i32 %157, 8
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %158, i32 0, i32 28
  %159 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !222
  %cmp42 = icmp eq i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %159, @sample_unpack_copy
  br i1 %cmp42, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %bps, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then.44, %lor.lhs.false
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then
  %160 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %spp46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %160, i32 0, i32 14
  %161 = load i8, i8* %spp46, align 1, !tbaa !156
  %conv47 = zext i8 %161 to i32
  %cmp48 = icmp eq i32 %conv47, 1
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.45
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.50
  %162 = load i32, i32* %i, align 4, !tbaa !10
  %cmp51 = icmp sle i32 %162, 255
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %163 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_color, i32 0, i32 5), align 8, !tbaa !257
  %164 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = sext i32 %164 to i64
  %165 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %eptr, align 8, !tbaa !1
  %clues53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %165, i32 0, i32 65
  %166 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues53, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %166, i64 %idxprom
  %dev_color = getelementptr inbounds %struct.gx_image_clue_s, %struct.gx_image_clue_s* %arrayidx, i32 0, i32 0
  %167 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  %168 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %163(i8* %167, i32 656, %struct.gs_memory_struct_type_s* @st_device_color, %struct.gc_state_s* %168) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %169 = load i32, i32* %bps, align 4, !tbaa !10
  %shl = shl i32 1, %169
  %sub = sub nsw i32 %shl, 1
  %div = sdiv i32 255, %sub
  %170 = load i32, i32* %i, align 4, !tbaa !10
  %add = add nsw i32 %170, %div
  store i32 %add, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.end.45
  %171 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast %struct.gx_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  ret void
}

declare i8* @sample_unpack_copy(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i32 @gx_image1_plane_data(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #2

declare i32 @gx_image1_end_image(%struct.gx_image_enum_common_s*, i32) #2

declare i32 @gx_image1_flush(%struct.gx_image_enum_common_s*) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @gs_color_space_is_ICC(%struct.gs_color_space_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !9, i64 32}
!6 = !{!"gs_pixel_image_s", !2, i64 0, !7, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576}
!7 = !{!"gs_matrix_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!8 = !{!"float", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !9, i64 36}
!12 = !{!6, !9, i64 40}
!13 = !{!6, !3, i64 568}
!14 = !{!15, !9, i64 0}
!15 = !{!"gs_int_rect_s", !16, i64 0, !16, i64 8}
!16 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!17 = !{!15, !9, i64 4}
!18 = !{!15, !9, i64 8}
!19 = !{!15, !9, i64 12}
!20 = !{!21, !2, i64 72}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!24, !9, i64 1144}
!24 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !25, i64 32, !9, i64 40, !9, i64 44, !3, i64 48, !3, i64 308, !9, i64 568, !9, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !26, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !7, i64 1120, !27, i64 1144, !28, i64 1160, !9, i64 1176, !9, i64 1180, !29, i64 1184, !29, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !9, i64 1240, !2, i64 1248, !9, i64 1256, !9, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !30, i64 1272, !30, i64 1288, !9, i64 1304, !9, i64 1308, !9, i64 1312, !9, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !9, i64 1344, !16, i64 1348, !29, i64 1356, !29, i64 1364, !31, i64 1372, !9, i64 1492, !9, i64 1496, !16, i64 1500, !9, i64 1508, !9, i64 1512, !9, i64 1516, !9, i64 1520, !9, i64 1524, !3, i64 1528, !2, i64 23112, !36, i64 23120, !36, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !9, i64 24472, !9, i64 24476, !9, i64 24480, !2, i64 24488, !9, i64 24496, !3, i64 24500, !41, i64 24504, !42, i64 24792, !9, i64 24808}
!25 = !{!"long", !3, i64 0}
!26 = !{!"mc_", !3, i64 0, !9, i64 520, !9, i64 524, !9, i64 528}
!27 = !{!"r_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!29 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!30 = !{!"gs_fixed_rect_s", !29, i64 0, !29, i64 8}
!31 = !{!"dd_", !32, i64 0, !32, i64 40, !32, i64 80}
!32 = !{!"gx_dda_fixed_point_s", !33, i64 0, !33, i64 20}
!33 = !{!"gx_dda_fixed_s", !34, i64 0, !35, i64 8}
!34 = !{!"_a", !9, i64 0, !9, i64 4}
!35 = !{!"_e", !9, i64 0, !9, i64 4, !9, i64 8}
!36 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !16, i64 352, !9, i64 360, !37, i64 368, !39, i64 632}
!37 = !{!"gs_client_color_s", !2, i64 0, !38, i64 8}
!38 = !{!"gs_paint_color_s", !3, i64 0}
!39 = !{!"_mask", !40, i64 0, !25, i64 8, !2, i64 16}
!40 = !{!"mp_", !9, i64 0, !9, i64 4}
!41 = !{!"ht_landscape_info_s", !9, i64 0, !3, i64 4, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284}
!42 = !{!"gx_image_icc_setup_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!43 = !{!24, !9, i64 1148}
!44 = !{!24, !9, i64 1152}
!45 = !{!24, !9, i64 1156}
!46 = !{!24, !9, i64 1160}
!47 = !{!24, !9, i64 1164}
!48 = !{!24, !9, i64 1168}
!49 = !{!24, !9, i64 1172}
!50 = !{!3, !3, i64 0}
!51 = !{!24, !3, i64 1118}
!52 = !{!6, !2, i64 576}
!53 = !{!54, !9, i64 212}
!54 = !{!"gs_imager_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !55, i64 24, !9, i64 128, !57, i64 132, !9, i64 168, !58, i64 176, !58, i64 192, !9, i64 208, !9, i64 212, !60, i64 216, !3, i64 220, !61, i64 224, !61, i64 228, !62, i64 232, !25, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !8, i64 296, !29, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !8, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !63, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !64, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !64, i64 1336}
!55 = !{!"gx_line_params_s", !8, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 36, !7, i64 40, !56, i64 64}
!56 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !8, i64 12, !9, i64 16, !8, i64 20, !9, i64 24, !9, i64 28, !8, i64 32}
!57 = !{!"gs_matrix_fixed_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!58 = !{!"gs_point_s", !59, i64 0, !59, i64 8}
!59 = !{!"double", !3, i64 0}
!60 = !{!"short", !3, i64 0}
!61 = !{!"gs_transparency_source_s", !8, i64 0}
!62 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!63 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!64 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !25, i64 16, !3, i64 24}
!65 = !{!24, !2, i64 23112}
!66 = !{!24, !9, i64 24804}
!67 = !{!24, !9, i64 24796}
!68 = !{!24, !9, i64 24800}
!69 = !{!24, !9, i64 24792}
!70 = !{!24, !9, i64 568}
!71 = !{!24, !9, i64 572}
!72 = !{!6, !8, i64 8}
!73 = !{!7, !8, i64 0}
!74 = !{!6, !8, i64 12}
!75 = !{!7, !8, i64 4}
!76 = !{!6, !8, i64 16}
!77 = !{!7, !8, i64 8}
!78 = !{!6, !8, i64 20}
!79 = !{!7, !8, i64 12}
!80 = !{!81, !59, i64 24}
!81 = !{!"gs_matrix_double_s", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40}
!82 = !{!81, !59, i64 0}
!83 = !{!81, !59, i64 16}
!84 = !{!81, !59, i64 8}
!85 = !{!7, !8, i64 16}
!86 = !{!6, !8, i64 24}
!87 = !{!81, !59, i64 32}
!88 = !{!7, !8, i64 20}
!89 = !{!6, !8, i64 28}
!90 = !{!81, !59, i64 40}
!91 = !{!21, !2, i64 24}
!92 = !{!54, !9, i64 0}
!93 = !{!94, !2, i64 1856}
!94 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !55, i64 24, !9, i64 128, !57, i64 132, !9, i64 168, !58, i64 176, !58, i64 192, !9, i64 208, !9, i64 212, !60, i64 216, !3, i64 220, !61, i64 224, !61, i64 228, !62, i64 232, !25, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !8, i64 296, !29, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !8, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !63, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !64, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !64, i64 1336, !2, i64 1616, !7, i64 1624, !9, i64 1648, !7, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !25, i64 1712, !25, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !57, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !95, i64 1888}
!95 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!96 = !{!24, !3, i64 24500}
!97 = !{!54, !9, i64 300}
!98 = !{!54, !9, i64 304}
!99 = !{!59, !59, i64 0}
!100 = !{!30, !9, i64 0}
!101 = !{!102, !59, i64 0}
!102 = !{!"gs_rect_s", !58, i64 0, !58, i64 16}
!103 = !{!30, !9, i64 4}
!104 = !{!102, !59, i64 8}
!105 = !{!30, !9, i64 8}
!106 = !{!102, !59, i64 16}
!107 = !{!30, !9, i64 12}
!108 = !{!102, !59, i64 24}
!109 = !{!8, !8, i64 0}
!110 = !{!24, !8, i64 1120}
!111 = !{!24, !8, i64 1124}
!112 = !{!24, !8, i64 1128}
!113 = !{!24, !8, i64 1132}
!114 = !{!24, !8, i64 1136}
!115 = !{!24, !8, i64 1140}
!116 = !{!29, !9, i64 0}
!117 = !{!29, !9, i64 4}
!118 = !{!24, !3, i64 580}
!119 = !{!120, !2, i64 0}
!120 = !{!"gs_color_space_s", !2, i64 0, !121, i64 8, !25, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!121 = !{!"rc_header_s", !25, i64 0, !2, i64 8, !2, i64 16}
!122 = !{!123, !2, i64 24}
!123 = !{!"gs_color_space_type_s", !3, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!124 = !{i64 0, i64 4, !10, i64 4, i64 4, !10}
!125 = !{!21, !2, i64 64}
!126 = !{!24, !2, i64 24432}
!127 = !{!24, !2, i64 24440}
!128 = !{!25, !25, i64 0}
!129 = !{!36, !2, i64 0}
!130 = !{!36, !9, i64 360}
!131 = !{i64 0, i64 8, !1, i64 8, i64 8, !128, i64 8, i64 8, !1, i64 16, i64 16, !50, i64 32, i64 4, !10, i64 36, i64 4, !10, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !132, i64 18, i64 64, !50, i64 84, i64 256, !50, i64 340, i64 2, !132, i64 344, i64 8, !128, i64 8, i64 8, !1, i64 8, i64 128, !50, i64 352, i64 4, !10, i64 356, i64 4, !10, i64 360, i64 4, !10, i64 368, i64 8, !1, i64 376, i64 256, !50, i64 632, i64 4, !10, i64 636, i64 4, !10, i64 640, i64 8, !128, i64 648, i64 8, !1}
!132 = !{!60, !60, i64 0}
!133 = !{!134, !3, i64 324}
!134 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !8, i64 320, !3, i64 324, !9, i64 328}
!135 = !{!120, !2, i64 64}
!136 = !{!123, !2, i64 48}
!137 = !{!120, !2, i64 48}
!138 = !{!54, !2, i64 8}
!139 = !{!120, !25, i64 8}
!140 = !{!120, !2, i64 24}
!141 = !{!120, !2, i64 16}
!142 = !{!143, !25, i64 288}
!143 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !9, i64 4, !9, i64 8, !3, i64 12, !3, i64 16, !144, i64 20, !25, i64 144, !9, i64 152, !3, i64 156, !9, i64 216, !9, i64 220, !9, i64 224, !145, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !121, i64 288, !9, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!144 = !{!"gs_range_icc_s", !3, i64 0}
!145 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20}
!146 = !{!143, !2, i64 304}
!147 = !{!143, !2, i64 296}
!148 = !{!54, !2, i64 336}
!149 = !{!150, !2, i64 32}
!150 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !2, i64 72, !2, i64 80, !121, i64 88}
!151 = !{!6, !9, i64 572}
!152 = !{!24, !3, i64 1271}
!153 = !{!24, !3, i64 576}
!154 = !{!24, !3, i64 577}
!155 = !{!24, !3, i64 578}
!156 = !{!24, !3, i64 579}
!157 = !{!24, !9, i64 44}
!158 = !{!24, !3, i64 1117}
!159 = !{!6, !9, i64 564}
!160 = !{!24, !3, i64 1119}
!161 = !{!24, !3, i64 1264}
!162 = !{!24, !2, i64 1216}
!163 = !{!24, !2, i64 1224}
!164 = !{!24, !2, i64 24}
!165 = !{!24, !2, i64 1232}
!166 = !{!24, !9, i64 1240}
!167 = !{!24, !2, i64 1248}
!168 = !{!24, !2, i64 24448}
!169 = !{!24, !2, i64 24456}
!170 = !{!24, !2, i64 24464}
!171 = !{!24, !2, i64 24488}
!172 = !{!24, !9, i64 24808}
!173 = !{!24, !9, i64 1256}
!174 = !{!24, !3, i64 1268}
!175 = !{!24, !3, i64 1270}
!176 = !{!177, !2, i64 1432}
!177 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !121, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !178, i64 96, !180, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !25, i64 928, !25, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !25, i64 968, !25, i64 976, !181, i64 984, !9, i64 1052, !9, i64 1056, !182, i64 1064, !2, i64 1104, !3, i64 1112, !184, i64 1120, !185, i64 1144}
!178 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !60, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !179, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !25, i64 704, !9, i64 712}
!179 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!180 = !{!"gx_device_cached_colors_s", !25, i64 0, !25, i64 8}
!181 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!182 = !{!"gdev_space_params_s", !25, i64 0, !25, i64 8, !183, i64 16, !9, i64 32, !3, i64 36}
!183 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !25, i64 8}
!184 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!185 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!186 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!187 = !{!24, !3, i64 1269}
!188 = !{!24, !9, i64 1304}
!189 = !{!24, !2, i64 1320}
!190 = !{!24, !2, i64 1328}
!191 = !{!24, !2, i64 1336}
!192 = !{!24, !9, i64 1372}
!193 = !{!24, !9, i64 1376}
!194 = !{!24, !9, i64 1380}
!195 = !{!24, !9, i64 1384}
!196 = !{!24, !9, i64 1388}
!197 = !{!24, !9, i64 1392}
!198 = !{!24, !9, i64 1396}
!199 = !{!24, !9, i64 1400}
!200 = !{!24, !9, i64 1404}
!201 = !{!24, !9, i64 1408}
!202 = !{!24, !9, i64 1180}
!203 = !{!24, !9, i64 1176}
!204 = !{!24, !9, i64 1508}
!205 = !{!24, !9, i64 1364}
!206 = !{!24, !9, i64 1356}
!207 = !{!24, !9, i64 1368}
!208 = !{!24, !9, i64 1360}
!209 = !{!24, !9, i64 1412}
!210 = !{!24, !9, i64 1416}
!211 = !{!24, !9, i64 1420}
!212 = !{!24, !9, i64 1424}
!213 = !{!24, !9, i64 1428}
!214 = !{!24, !9, i64 1432}
!215 = !{!24, !9, i64 1436}
!216 = !{!24, !9, i64 1440}
!217 = !{!24, !9, i64 1444}
!218 = !{!24, !9, i64 1448}
!219 = !{!24, !9, i64 1344}
!220 = !{!24, !9, i64 1348}
!221 = !{!24, !9, i64 1352}
!222 = !{!24, !2, i64 1200}
!223 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 4, !10}
!224 = !{!24, !2, i64 1208}
!225 = !{!134, !8, i64 320}
!226 = !{!134, !9, i64 328}
!227 = !{!123, !2, i64 72}
!228 = !{!177, !2, i64 1192}
!229 = !{!24, !2, i64 16}
!230 = !{!177, !9, i64 100}
!231 = !{!120, !2, i64 40}
!232 = !{!233, !9, i64 116}
!233 = !{!"gsicc_link_s", !2, i64 0, !234, i64 8, !235, i64 40, !2, i64 72, !9, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !234, i64 128, !3, i64 160, !9, i64 164, !9, i64 168}
!234 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!235 = !{!"gsicc_hashlink_s", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!236 = !{!237, !2, i64 8}
!237 = !{!"gx_image_color_cache_s", !2, i64 0, !2, i64 8}
!238 = !{!237, !2, i64 0}
!239 = !{!240, !9, i64 24}
!240 = !{!"gs_indexed_params_s", !9, i64 0, !9, i64 4, !3, i64 8, !9, i64 24}
!241 = !{!240, !9, i64 0}
!242 = !{!243, !2, i64 0}
!243 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!244 = !{!233, !2, i64 8}
!245 = !{!246, !2, i64 0}
!246 = !{!"gx_image_clue_s", !36, i64 0, !9, i64 656}
!247 = !{!246, !9, i64 656}
!248 = !{!249, !2, i64 24}
!249 = !{!"gx_transfer_map_s", !121, i64 0, !2, i64 24, !250, i64 32, !25, i64 48, !3, i64 56}
!250 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!251 = !{!252, !2, i64 32}
!252 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!253 = !{!254, !2, i64 0}
!254 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!255 = !{!256, !2, i64 0}
!256 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!257 = !{!252, !2, i64 40}
