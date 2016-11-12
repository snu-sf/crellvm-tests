; ModuleID = './gxchar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
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
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type opaque

@.str = private unnamed_addr constant [13 x i8] c"gs_show_enum\00", align 1
@st_gs_show_enum = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 624, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @show_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @show_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@st_gs_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gx_default_text_begin\00", align 1
@default_text_procs = internal constant %struct.gs_text_enum_procs_s { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)* @gx_show_text_resync, i32 (%struct.gs_text_enum_s*)* @gx_show_text_process, i32 (%struct.gs_text_enum_s*)* @gx_show_text_is_width_only, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)* @gx_show_text_current_width, i32 (%struct.gs_text_enum_s*, double*, i32)* @gx_show_text_set_cache, i32 (%struct.gs_text_enum_s*)* @gx_show_text_retry, void (%struct.gs_text_enum_s*, i8*)* @gx_show_text_release }, align 8
@st_device_null = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"stringwidth(dev_null)\00", align 1
@st_gs_text_enum = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@set_cache_device.max_cdim = internal constant [3 x i32] [i32 16776448, i32 8388224, i32 4194112], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"set_cache_device\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"show_cache_setup(dev_cache)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"show_cache_setup(dev_cache2)\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"show_proceed(box path)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"show_finish\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @show_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.default:                                       ; preds = %entry
  %1 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_text_enum, i32 0, i32 4), align 8, !tbaa !7
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 5
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %1(%struct.gs_memory_s* %2, i8* %3, i32 %4, i32 %sub, %struct.enum_ptr_s* %6, %struct.gs_memory_struct_type_s* @st_gs_text_enum, %struct.gc_state_s* %7) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gs_show_enum_s*
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 30
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %11 = bitcast %struct.gs_state_s* %10 to i8*
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_show_enum_s*
  %show_gstate = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 33
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !24
  %16 = bitcast %struct.gs_state_s* %15 to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr2, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %18 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.gs_show_enum_s*
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 40
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %21 = bitcast %struct.gx_device_memory_s* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr4, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_show_enum_s*
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %24, i32 0, i32 41
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  %26 = bitcast %struct.gx_device_memory_s* %25 to i8*
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr6, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %28 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %29 = bitcast i8* %28 to %struct.gs_show_enum_s*
  %dev_null = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %29, i32 0, i32 42
  %30 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !27
  %31 = bitcast %struct.gx_device_null_s* %30 to i8*
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr8, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %33 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %33
}

; Function Attrs: nounwind uwtable
define internal void @show_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_show_enum_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %eptr, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_text_enum, i32 0, i32 5), align 8, !tbaa !28
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gs_text_enum, %struct.gc_state_s* %6) #5
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %eptr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 30
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %13 = bitcast %struct.gs_state_s* %12 to i8*
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %13, %struct.gc_state_s* %14) #5
  %15 = bitcast i8* %call to %struct.gs_state_s*
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %eptr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 30
  store %struct.gs_state_s* %15, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gc_state_s* %17 to %struct.gc_procs_common_s**
  %19 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %18, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %19, i32 0, i32 0
  %20 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !29
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %eptr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 33
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !24
  %23 = bitcast %struct.gs_state_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %20(i8* %23, %struct.gc_state_s* %24) #5
  %25 = bitcast i8* %call3 to %struct.gs_state_s*
  %26 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %eptr, align 8, !tbaa !1
  %show_gstate4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %26, i32 0, i32 33
  store %struct.gs_state_s* %25, %struct.gs_state_s** %show_gstate4, align 8, !tbaa !24
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !29
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_show_enum_s*
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 40
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %34 = bitcast %struct.gx_device_memory_s* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #5
  %36 = bitcast i8* %call6 to %struct.gx_device_memory_s*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.gs_show_enum_s*
  %dev_cache7 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 40
  store %struct.gx_device_memory_s* %36, %struct.gx_device_memory_s** %dev_cache7, align 8, !tbaa !25
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !29
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.gs_show_enum_s*
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 41
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  %46 = bitcast %struct.gx_device_memory_s* %45 to i8*
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %46, %struct.gc_state_s* %47) #5
  %48 = bitcast i8* %call9 to %struct.gx_device_memory_s*
  %49 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %50 = bitcast i8* %49 to %struct.gs_show_enum_s*
  %dev_cache210 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %50, i32 0, i32 41
  store %struct.gx_device_memory_s* %48, %struct.gx_device_memory_s** %dev_cache210, align 8, !tbaa !26
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !29
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gs_show_enum_s*
  %dev_null = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %56, i32 0, i32 42
  %57 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !27
  %58 = bitcast %struct.gx_device_null_s* %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %54(i8* %58, %struct.gc_state_s* %59) #5
  %60 = bitcast i8* %call12 to %struct.gx_device_null_s*
  %61 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %62 = bitcast i8* %61 to %struct.gs_show_enum_s*
  %dev_null13 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %62, i32 0, i32 42
  store %struct.gx_device_null_s* %60, %struct.gx_device_null_s** %dev_null13, align 8, !tbaa !27
  %63 = bitcast %struct.gs_show_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_show_enum_s* @gs_show_enum_alloc(%struct.gs_memory_s* %mem, %struct.gs_state_s* %pgs, i8* %cname) #0 {
entry:
  %retval = alloca %struct.gs_show_enum_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cname.addr = alloca i8*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_show_enum to %struct.gs_memory_struct_type_s*), i8* %4) #5
  %5 = bitcast i8* %call to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %5, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_show_enum_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store %struct.gs_show_enum_s* null, %struct.gs_show_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 10
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !34
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 10
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 10
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !36
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6
  br label %do.cond.7

do.cond.7:                                        ; preds = %if.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 10
  %free10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_text_enum, void (%struct.gs_memory_s*, i8*, i8*)** %free10, align 8, !tbaa !36
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %auto_release = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 29
  store i32 1, i32* %auto_release, align 4, !tbaa !37
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 0, i32* %operation, align 4, !tbaa !38
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %13, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %dev, align 8, !tbaa !39
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %15 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %15, i32 0, i32 30
  store %struct.gs_state_s* %14, %struct.gs_state_s** %pgs11, align 8, !tbaa !9
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 33
  store %struct.gs_state_s* null, %struct.gs_state_s** %show_gstate, align 8, !tbaa !24
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 40
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 41
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fapi_log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 26
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %fapi_log2_scale, i32 0, i32 1
  store i32 -1, i32* %y, align 4, !tbaa !40
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fapi_log2_scale12 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %20, i32 0, i32 26
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %fapi_log2_scale12, i32 0, i32 0
  store i32 -1, i32* %x, align 4, !tbaa !41
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fapi_glyph_shift = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 27
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift, i32 0, i32 1
  store double 0.000000e+00, double* %y13, align 8, !tbaa !42
  %22 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fapi_glyph_shift14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %22, i32 0, i32 27
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift14, i32 0, i32 0
  store double 0.000000e+00, double* %x15, align 8, !tbaa !43
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_null = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %23, i32 0, i32 42
  store %struct.gx_device_null_s* null, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !27
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %24, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  store i32 -1, i32* %depth, align 4, !tbaa !44
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  store %struct.gs_show_enum_s* %25, %struct.gs_show_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.8, %if.then
  %26 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %retval
  ret %struct.gs_show_enum_s* %27
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare void @rc_free_text_enum(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_text_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %operation = alloca i32, align 4
  %propagate_charpath = alloca i32, align 4
  %code = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  %dev_null = alloca %struct.gx_device_null_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %1, i32 0, i32 0
  %2 = load i32, i32* %operation1, align 4, !tbaa !45
  store i32 %2, i32* %operation, align 4, !tbaa !5
  %3 = bitcast i32* %propagate_charpath to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %operation, align 4, !tbaa !5
  %and = and i32 %4, 1024
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %propagate_charpath, align 4, !tbaa !5
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_imager_state_s* %7 to %struct.gs_state_s*
  store %struct.gs_state_s* %8, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %9 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %11 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !46
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_imager_state_s* %13 to i8*
  %call = call %struct.gs_memory_struct_type_s* %11(%struct.gs_memory_s* %12, i8* %14) #5
  %cmp2 = icmp ne %struct.gs_memory_struct_type_s* %call, @st_gs_state
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call4 = call %struct.gs_show_enum_s* @gs_show_enum_alloc(%struct.gs_memory_s* %15, %struct.gs_state_s* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  store %struct.gs_show_enum_s* %call4, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_show_enum_s* %17, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.6:                                         ; preds = %if.end
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %19 = bitcast %struct.gs_show_enum_s* %18 to %struct.gs_text_enum_s*
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_text_enum_init(%struct.gs_text_enum_s* %19, %struct.gs_text_enum_procs_s* @default_text_procs, %struct.gx_device_s* %20, %struct.gs_imager_state_s* %21, %struct.gs_text_params_s* %22, %struct.gs_font_s* %23, %struct.gx_path_s* %24, %struct.gx_device_color_s* %25, %struct.gx_clip_path_s* %26, %struct.gs_memory_s* %27) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %28, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %33 = bitcast %struct.gs_show_enum_s* %32 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.12:                                        ; preds = %if.end.6
  %35 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %auto_release = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %35, i32 0, i32 29
  store i32 0, i32* %auto_release, align 4, !tbaa !37
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 77
  %37 = load i32, i32* %level, align 4, !tbaa !48
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %level13 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 31
  store i32 %37, i32* %level13, align 4, !tbaa !61
  %39 = load i32, i32* %operation, align 4, !tbaa !5
  %and14 = and i32 %39, 63488
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.12
  %40 = load i32, i32* %operation, align 4, !tbaa !5
  %and17 = and i32 %40, 4096
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  br label %cond.end.38

cond.false:                                       ; preds = %if.then.16
  %41 = load i32, i32* %operation, align 4, !tbaa !5
  %and19 = and i32 %41, 8192
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end.36

cond.false.22:                                    ; preds = %cond.false
  %42 = load i32, i32* %operation, align 4, !tbaa !5
  %and23 = and i32 %42, 16384
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  br label %cond.end.34

cond.false.26:                                    ; preds = %cond.false.22
  %43 = load i32, i32* %operation, align 4, !tbaa !5
  %and27 = and i32 %43, 32768
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false.26
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false.26
  %44 = load i32, i32* %operation, align 4, !tbaa !5
  %and31 = and i32 %44, 2048
  %tobool32 = icmp ne i32 %and31, 0
  %cond = select i1 %tobool32, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi i32 [ 5, %cond.true.29 ], [ %cond, %cond.false.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true.25
  %cond35 = phi i32 [ 4, %cond.true.25 ], [ %cond33, %cond.end ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.21
  %cond37 = phi i32 [ 3, %cond.true.21 ], [ %cond35, %cond.end.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true
  %cond39 = phi i32 [ 2, %cond.true ], [ %cond37, %cond.end.36 ]
  %45 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %45, i32 0, i32 32
  store i32 %cond39, i32* %charpath_flag, align 4, !tbaa !62
  br label %if.end.46

if.else:                                          ; preds = %if.end.12
  %46 = load i32, i32* %propagate_charpath, align 4, !tbaa !5
  %tobool40 = icmp ne i32 %46, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.else
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 75
  %48 = load i32, i32* %in_charpath, align 4, !tbaa !63
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.else
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %48, %cond.true.41 ], [ 0, %cond.false.42 ]
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %charpath_flag45 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 32
  store i32 %cond44, i32* %charpath_flag45, align 4, !tbaa !62
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.43, %cond.end.38
  %50 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %50, i32 0, i32 47
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %51 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %51, i32 0, i32 49
  store i32 (%struct.gs_show_enum_s*)* @continue_show, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8, !tbaa !65
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %charpath_flag47 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %52, i32 0, i32 32
  %53 = load i32, i32* %charpath_flag47, align 4, !tbaa !62
  switch i32 %53, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.48
    i32 5, label %sw.bb.48
    i32 1, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.46, %if.end.46
  %54 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %54, i32 0, i32 34
  store i32 -1, i32* %can_cache, align 4, !tbaa !66
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.46, %if.end.46
  %55 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %can_cache49 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %55, i32 0, i32 34
  store i32 0, i32* %can_cache49, align 4, !tbaa !66
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.46
  br label %sw.default

sw.default:                                       ; preds = %if.end.46, %sw.bb.50
  %56 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %can_cache51 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %56, i32 0, i32 34
  store i32 1, i32* %can_cache51, align 4, !tbaa !66
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48, %sw.bb
  %57 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %call52 = call i32 @show_state_setup(%struct.gs_show_enum_s* %57) #5
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %58, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.epilog
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.56:                                        ; preds = %sw.epilog
  %60 = load i32, i32* %propagate_charpath, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %60, 0
  br i1 %tobool57, label %land.lhs.true, label %cond.false.62

land.lhs.true:                                    ; preds = %if.end.56
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_charpath58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 75
  %62 = load i32, i32* %in_charpath58, align 4, !tbaa !63
  %cmp59 = icmp ne i32 %62, 0
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %land.lhs.true
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %63, i32 0, i32 76
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !67
  br label %cond.end.63

cond.false.62:                                    ; preds = %land.lhs.true, %if.end.56
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi %struct.gs_state_s* [ %64, %cond.true.61 ], [ %65, %cond.false.62 ]
  %66 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %show_gstate65 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %66, i32 0, i32 33
  store %struct.gs_state_s* %cond64, %struct.gs_state_s** %show_gstate65, align 8, !tbaa !24
  %67 = load i32, i32* %operation, align 4, !tbaa !5
  %and66 = and i32 %67, 393728
  %cmp67 = icmp eq i32 %and66, 131584
  br i1 %cmp67, label %if.then.69, label %if.end.93

if.then.69:                                       ; preds = %cond.end.63
  %68 = bitcast %struct.gx_device_null_s** %dev_null to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 8
  %70 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call71 = call i8* %70(%struct.gs_memory_s* %71, %struct.gs_memory_struct_type_s* @st_device_null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #5
  %72 = bitcast i8* %call71 to %struct.gx_device_null_s*
  store %struct.gx_device_null_s* %72, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %73 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %cmp72 = icmp eq %struct.gx_device_null_s* %73, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.69
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.then.69
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call76 = call i32 @gs_gsave(%struct.gs_state_s* %74) #5
  store i32 %call76, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.end.75
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %level81 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 77
  %77 = load i32, i32* %level81, align 4, !tbaa !48
  %78 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %level82 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %78, i32 0, i32 31
  store i32 %77, i32* %level82, align 4, !tbaa !61
  %79 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %80, i32 0, i32 78
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !68
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_make_null_device(%struct.gx_device_null_s* %79, %struct.gx_device_s* %81, %struct.gs_memory_s* %82) #5
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm_default_set = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 60
  store i32 0, i32* %ctm_default_set, align 4, !tbaa !69
  %84 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %85 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_null83 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %85, i32 0, i32 42
  store %struct.gx_device_null_s* %84, %struct.gx_device_null_s** %dev_null83, align 8, !tbaa !27
  %86 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_null_s* %86 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %87, i32 1) #5
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %89 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_null_s* %89 to %struct.gx_device_s*
  %call84 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %88, %struct.gx_device_s* %90) #5
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call85 = call i32 @gs_newpath(%struct.gs_state_s* %91) #5
  %92 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call86 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %92, i32 0, i32 0) #5
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path87 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 61
  %94 = load %struct.gx_path_s*, %struct.gx_path_s** %path87, align 8, !tbaa !70
  %call88 = call i32 @gx_path_add_point(%struct.gx_path_s* %94, i32 0, i32 0) #5
  store i32 %call88, i32* %code, align 4, !tbaa !5
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %95, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.80
  %96 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %if.end.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.92, %if.then.91, %if.then.79, %if.then.74
  %97 = bitcast %struct.gx_device_null_s** %dev_null to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.93

if.end.93:                                        ; preds = %cleanup.cont, %cond.end.63
  %98 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %99 = bitcast %struct.gs_show_enum_s* %98 to %struct.gs_text_enum_s*
  %100 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %99, %struct.gs_text_enum_s** %100, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.end.93, %cleanup, %if.then.55, %if.then.10, %if.then.5, %if.then
  %101 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %propagate_charpath to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare i32 @gs_text_enum_init(%struct.gs_text_enum_s*, %struct.gs_text_enum_procs_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @continue_show(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @show_proceed(%struct.gs_show_enum_s* %0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @show_state_setup(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %fidx = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mat21 = alloca %struct.gs_matrix_s, align 4
  %pfsi = alloca %struct.gx_font_stack_item_s*, align 8
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %fdx = alloca double, align 8
  %fdy = alloca double, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %6 = load i32, i32* %depth, align 4, !tbaa !44
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 70
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  store %struct.gs_font_s* %8, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType, align 4, !tbaa !72
  %cmp2 = icmp eq i32 %10, 9
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %11 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #1
  %12 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %15 = bitcast %struct.gs_font_s* %14 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %16 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !77
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_s* %17 to %struct.gs_font_base_s*
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data to i64*
  %20 = load i64, i64* %d_glyph, align 8, !tbaa !85
  %call = call i32 %16(%struct.gs_font_base_s* %18, i64 %20, %struct.gs_glyph_data_s* null, i32* %fidx) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %21, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.then.3
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_s* %22 to %struct.gs_font_cid0_s*
  %cidata6 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %23, i32 0, i32 29
  %glyph_data7 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata6, i32 0, i32 5
  %24 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data7, align 8, !tbaa !77
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_s* %25 to %struct.gs_font_base_s*
  %call8 = call i32 %24(%struct.gs_font_base_s* %26, i64 2147483648, %struct.gs_glyph_data_s* null, i32* %fidx) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %27, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.5
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.3
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %29 = load i32, i32* %fidx, align 4, !tbaa !5
  %call12 = call %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s* %28, i32 %29) #5
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call12, i32 0, i32 9
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 9
  %call14 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix13, %struct.gs_matrix_s* %mat) #5
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call15 = call i32 @gs_setcharmatrix(%struct.gs_state_s* %31, %struct.gs_matrix_s* %mat) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.143 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.else:                                          ; preds = %if.then
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call18 = call i32 @gs_currentcharmatrix(%struct.gs_state_s* %35, %struct.gs_matrix_s* null, i32 1) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.39

if.else.20:                                       ; preds = %entry
  %36 = bitcast %struct.gs_matrix_s* %mat21 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %36) #1
  %37 = bitcast %struct.gx_font_stack_item_s** %pfsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack22 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 19
  %depth23 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack22, i32 0, i32 0
  %39 = load i32, i32* %depth23, align 4, !tbaa !44
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack24 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %40, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack24, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  store %struct.gx_font_stack_item_s* %arrayidx, %struct.gx_font_stack_item_s** %pfsi, align 8, !tbaa !1
  %41 = load %struct.gx_font_stack_item_s*, %struct.gx_font_stack_item_s** %pfsi, align 8, !tbaa !1
  %font25 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %41, i32 0, i32 0
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %font25, align 8, !tbaa !86
  store %struct.gs_font_s* %42, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix26 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 9
  %44 = load %struct.gx_font_stack_item_s*, %struct.gx_font_stack_item_s** %pfsi, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %44, i64 -1
  %font28 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx27, i32 0, i32 0
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %font28, align 8, !tbaa !86
  %FontMatrix29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 9
  %call30 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix26, %struct.gs_matrix_s* %FontMatrix29, %struct.gs_matrix_s* %mat21) #5
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType31 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %46, i32 0, i32 11
  %47 = load i32, i32* %FontType31, align 4, !tbaa !72
  %cmp32 = icmp eq i32 %47, 9
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.else.20
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %49 = load %struct.gx_font_stack_item_s*, %struct.gx_font_stack_item_s** %pfsi, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %49, i32 0, i32 1
  %50 = load i32, i32* %index, align 4, !tbaa !88
  %call34 = call %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s* %48, i32 %50) #5
  %FontMatrix35 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call34, i32 0, i32 9
  %call36 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix35, %struct.gs_matrix_s* %mat21, %struct.gs_matrix_s* %mat21) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.else.20
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call38 = call i32 @gs_setcharmatrix(%struct.gs_state_s* %51, %struct.gs_matrix_s* %mat21) #5
  %52 = bitcast %struct.gx_font_stack_item_s** %pfsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_matrix_s* %mat21 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %53) #1
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.37, %if.end.19
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %55 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %55, i32 0, i32 12
  store %struct.gs_font_s* %54, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %56 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %56, i32 0, i32 34
  %57 = load i32, i32* %can_cache, align 4, !tbaa !66
  %cmp40 = icmp sge i32 %57, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.142

land.lhs.true:                                    ; preds = %if.end.39
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call41 = call i32 @gx_effective_clip_path(%struct.gs_state_s* %58, %struct.gx_clip_path_s** %pcpath) #5
  %cmp42 = icmp sge i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.142

if.then.43:                                       ; preds = %land.lhs.true
  %59 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %59) #1
  %60 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call44 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %60, %struct.gs_fixed_rect_s* %cbox) #5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %61 = load i32, i32* %x, align 4, !tbaa !90
  %shr = ashr i32 %61, 8
  %62 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %62, i32 0, i32 35
  %p45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p45, i32 0, i32 0
  store i32 %shr, i32* %x46, align 4, !tbaa !92
  %p47 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p47, i32 0, i32 1
  %63 = load i32, i32* %y, align 4, !tbaa !93
  %shr48 = ashr i32 %63, 8
  %64 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox49 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %64, i32 0, i32 35
  %p50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox49, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p50, i32 0, i32 1
  store i32 %shr48, i32* %y51, align 4, !tbaa !94
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %65 = load i32, i32* %x52, align 4, !tbaa !95
  %add = add nsw i32 %65, 255
  %shr53 = ashr i32 %add, 8
  %66 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox54 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %66, i32 0, i32 35
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox54, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 0
  store i32 %shr53, i32* %x56, align 4, !tbaa !96
  %q57 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q57, i32 0, i32 1
  %67 = load i32, i32* %y58, align 4, !tbaa !97
  %add59 = add nsw i32 %67, 255
  %shr60 = ashr i32 %add59, 8
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox61 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %68, i32 0, i32 35
  %q62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox61, i32 0, i32 1
  %y63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q62, i32 0, i32 1
  store i32 %shr60, i32* %y63, align 4, !tbaa !98
  %69 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call64 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %69, %struct.gs_fixed_rect_s* %cbox) #5
  %p65 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p65, i32 0, i32 0
  %70 = load i32, i32* %x66, align 4, !tbaa !90
  %shr67 = ashr i32 %70, 8
  %71 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %71, i32 0, i32 36
  %p68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox, i32 0, i32 0
  %x69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p68, i32 0, i32 0
  store i32 %shr67, i32* %x69, align 4, !tbaa !99
  %p70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p70, i32 0, i32 1
  %72 = load i32, i32* %y71, align 4, !tbaa !93
  %shr72 = ashr i32 %72, 8
  %73 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox73 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %73, i32 0, i32 36
  %p74 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox73, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p74, i32 0, i32 1
  store i32 %shr72, i32* %y75, align 4, !tbaa !100
  %q76 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q76, i32 0, i32 0
  %74 = load i32, i32* %x77, align 4, !tbaa !95
  %add78 = add nsw i32 %74, 255
  %shr79 = ashr i32 %add78, 8
  %75 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox80 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %75, i32 0, i32 36
  %q81 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox80, i32 0, i32 1
  %x82 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q81, i32 0, i32 0
  store i32 %shr79, i32* %x82, align 4, !tbaa !101
  %q83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q83, i32 0, i32 1
  %76 = load i32, i32* %y84, align 4, !tbaa !97
  %add85 = add nsw i32 %76, 255
  %shr86 = ashr i32 %add85, 8
  %77 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox87 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %77, i32 0, i32 36
  %q88 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox87, i32 0, i32 1
  %y89 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q88, i32 0, i32 1
  store i32 %shr86, i32* %y89, align 4, !tbaa !102
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %78, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 8
  %79 = load i32, i32* %txy_fixed_valid, align 4, !tbaa !103
  %tobool = icmp ne i32 %79, 0
  br i1 %tobool, label %land.lhs.true.90, label %if.else.106

land.lhs.true.90:                                 ; preds = %if.then.43
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %80, i32 0, i32 72
  %txy_fixed_valid91 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm, i32 0, i32 8
  %81 = load i32, i32* %txy_fixed_valid91, align 4, !tbaa !104
  %tobool92 = icmp ne i32 %81, 0
  br i1 %tobool92, label %if.then.93, label %if.else.106

if.then.93:                                       ; preds = %land.lhs.true.90
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm94 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %82, i32 0, i32 72
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm94, i32 0, i32 6
  %83 = load i32, i32* %tx_fixed, align 4, !tbaa !105
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm95 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 5
  %tx_fixed96 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm95, i32 0, i32 6
  %85 = load i32, i32* %tx_fixed96, align 4, !tbaa !106
  %sub = sub nsw i32 %83, %85
  %shr97 = ashr i32 %sub, 8
  %conv = sext i32 %shr97 to i64
  %conv98 = trunc i64 %conv to i32
  %86 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ftx = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %86, i32 0, i32 37
  store i32 %conv98, i32* %ftx, align 4, !tbaa !107
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm99 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 72
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm99, i32 0, i32 7
  %88 = load i32, i32* %ty_fixed, align 4, !tbaa !108
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm100 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %89, i32 0, i32 5
  %ty_fixed101 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm100, i32 0, i32 7
  %90 = load i32, i32* %ty_fixed101, align 4, !tbaa !109
  %sub102 = sub nsw i32 %88, %90
  %shr103 = ashr i32 %sub102, 8
  %conv104 = sext i32 %shr103 to i64
  %conv105 = trunc i64 %conv104 to i32
  %91 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fty = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %91, i32 0, i32 38
  store i32 %conv105, i32* %fty, align 4, !tbaa !110
  br label %if.end.138

if.else.106:                                      ; preds = %land.lhs.true.90, %if.then.43
  %92 = bitcast double* %fdx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 72
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm107, i32 0, i32 4
  %94 = load float, float* %tx, align 4, !tbaa !111
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm108 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %95, i32 0, i32 5
  %tx109 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm108, i32 0, i32 4
  %96 = load float, float* %tx109, align 4, !tbaa !112
  %sub110 = fsub float %94, %96
  %conv111 = fpext float %sub110 to double
  store double %conv111, double* %fdx, align 8, !tbaa !113
  %97 = bitcast double* %fdy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm112 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %98, i32 0, i32 72
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm112, i32 0, i32 5
  %99 = load float, float* %ty, align 4, !tbaa !114
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm113 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %100, i32 0, i32 5
  %ty114 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm113, i32 0, i32 5
  %101 = load float, float* %ty114, align 4, !tbaa !115
  %sub115 = fsub float %99, %101
  %conv116 = fpext float %sub115 to double
  store double %conv116, double* %fdy, align 8, !tbaa !113
  %102 = load double, double* %fdx, align 8, !tbaa !113
  %cmp117 = fcmp oge double %102, 0xC1D0000000000000
  br i1 %cmp117, label %land.lhs.true.119, label %if.then.128

land.lhs.true.119:                                ; preds = %if.else.106
  %103 = load double, double* %fdx, align 8, !tbaa !113
  %cmp120 = fcmp olt double %103, 0x41D0000000000000
  br i1 %cmp120, label %land.lhs.true.122, label %if.then.128

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %104 = load double, double* %fdy, align 8, !tbaa !113
  %cmp123 = fcmp oge double %104, 0xC1D0000000000000
  br i1 %cmp123, label %land.lhs.true.125, label %if.then.128

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %105 = load double, double* %fdy, align 8, !tbaa !113
  %cmp126 = fcmp olt double %105, 0x41D0000000000000
  br i1 %cmp126, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.125, %land.lhs.true.122, %land.lhs.true.119, %if.else.106
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.129:                                       ; preds = %land.lhs.true.125
  %106 = load double, double* %fdx, align 8, !tbaa !113
  %conv130 = fptosi double %106 to i32
  %107 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ftx131 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %107, i32 0, i32 37
  store i32 %conv130, i32* %ftx131, align 4, !tbaa !107
  %108 = load double, double* %fdy, align 8, !tbaa !113
  %conv132 = fptosi double %108 to i32
  %109 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fty133 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %109, i32 0, i32 38
  store i32 %conv132, i32* %fty133, align 4, !tbaa !110
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.129, %if.then.128
  %110 = bitcast double* %fdy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast double* %fdx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %cleanup.139 [
    i32 0, label %cleanup.cont.137
  ]

cleanup.cont.137:                                 ; preds = %cleanup.134
  br label %if.end.138

if.end.138:                                       ; preds = %cleanup.cont.137, %if.then.93
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.138, %cleanup.134
  %112 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %112) #1
  %cleanup.dest.140 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.140, label %cleanup.143 [
    i32 0, label %cleanup.cont.141
  ]

cleanup.cont.141:                                 ; preds = %cleanup.139
  br label %if.end.142

if.end.142:                                       ; preds = %cleanup.cont.141, %land.lhs.true, %if.end.39
  %113 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  call void @show_set_encode_char(%struct.gs_show_enum_s* %113) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

cleanup.143:                                      ; preds = %if.end.142, %cleanup.139, %cleanup
  %114 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %retval
  ret i32 %117
}

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare void @gs_make_null_device(%struct.gx_device_null_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

declare i32 @gs_setdevice_no_init(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

declare i32 @gx_translate_to_fixed(%struct.gs_state_s*, i32, i32) #2

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gs_text_count_chars(%struct.gs_state_s* %pgs, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %next_proc = alloca i32 (%struct.gs_text_enum_s*, i64*, i64*)*, align 8
  %cleanup.dest.slot = alloca i32
  %tenum = alloca %struct.gs_text_enum_s, align 8
  %tchr = alloca i64, align 8
  %tglyph = alloca i64, align 8
  %size1 = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 70
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %3 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !116
  store i32 (%struct.gs_text_enum_s*, i64*, i64*)* %3, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_proc, align 8, !tbaa !1
  %4 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_proc, align 8, !tbaa !1
  %cmp = icmp eq i32 (%struct.gs_text_enum_s*, i64*, i64*)* %4, @gs_default_next_char_glyph
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %5, i32 0, i32 2
  %6 = load i32, i32* %size, align 4, !tbaa !117
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.gs_text_enum_s* %tenum to i8*
  call void @llvm.lifetime.start(i64 448, i8* %7) #1
  %8 = bitcast i64* %tchr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tglyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %size1, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %size1, align 4, !tbaa !5
  %12 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 71
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !118
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_enum_init(%struct.gs_text_enum_s* %tenum, %struct.gs_text_enum_procs_s* @default_text_procs, %struct.gx_device_s* null, %struct.gs_imager_state_s* null, %struct.gs_text_params_s* %12, %struct.gs_font_s* %14, %struct.gx_path_s* null, %struct.gx_device_color_s* null, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %15) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %18 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_proc, align 8, !tbaa !1
  %call4 = call i32 %18(%struct.gs_text_enum_s* %tenum, i64* %tchr, i64* %tglyph) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %call4, 2
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  br label %while.end

if.end.8:                                         ; preds = %while.body
  %20 = load i32, i32* %size1, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %size1, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %while.cond
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %while.end
  %23 = load i32, i32* %size1, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.3
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i64* %tglyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i64* %tchr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gs_text_enum_s* %tenum to i8*
  call void @llvm.lifetime.end(i64 448, i8* %28) #1
  br label %cleanup.16

cleanup.16:                                       ; preds = %cleanup, %if.then
  %29 = bitcast i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_hld_stringwidth_begin(%struct.gs_imager_state_s* %pis, %struct.gx_path_s** %path) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %path.addr = alloca %struct.gx_path_s**, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s** %path, %struct.gx_path_s*** %path.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_imager_state_s* %1 to %struct.gs_state_s*
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !119
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %6 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !46
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !119
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_imager_state_s* %9 to i8*
  %call = call %struct.gs_memory_struct_type_s* %6(%struct.gs_memory_s* %8, i8* %10) #5
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call, @st_gs_state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call2 = call i32 @gs_gsave(%struct.gs_state_s* %11) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call6 = call i32 @gs_newpath(%struct.gs_state_s* %14) #5
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 61
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %path7, align 8, !tbaa !70
  %17 = load %struct.gx_path_s**, %struct.gx_path_s*** %path.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %16, %struct.gx_path_s** %17, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call8 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %18, i32 0, i32 0) #5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 61
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %path9, align 8, !tbaa !70
  %call10 = call i32 @gx_path_add_point(%struct.gx_path_s* %20, i32 0, i32 0) #5
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_text_restore_state(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %2, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %3 = load i32, i32* %operation, align 4, !tbaa !121
  %and = and i32 %3, 512
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_text_enum_s* %4 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %5, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 30
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %7, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call i32 @gs_grestore(%struct.gs_state_s* %8) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gs_grestore(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @set_char_width(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %wx, double %wy) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %wx, double* %wx.addr, align 8, !tbaa !113
  store double %wy, double* %wy.addr, align 8, !tbaa !113
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 48
  %2 = load i32, i32* %width_status, align 4, !tbaa !123
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 48
  %4 = load i32, i32* %width_status1, align 4, !tbaa !123
  %cmp2 = icmp ne i32 %4, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 5
  %6 = load double, double* %wx.addr, align 8, !tbaa !113
  %7 = load double, double* %wy.addr, align 8, !tbaa !113
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 43
  %call = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %6, double %7, %struct.gs_fixed_point_s* %wxy) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.end
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 47
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %cmp5 = icmp eq %struct.cached_char_s* %11, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %12 = load double, double* %wx.addr, align 8, !tbaa !113
  %13 = load double, double* %wy.addr, align 8, !tbaa !113
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 5
  %15 = bitcast %struct.gs_matrix_fixed_s* %ctm7 to %struct.gs_matrix_s*
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 44
  %call8 = call i32 @gs_distance_transform(double %12, double %13, %struct.gs_matrix_s* %15, %struct.gs_point_s* %wxy_float) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy9 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 43
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy9, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !124
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 43
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy10, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !125
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 45
  store i32 1, i32* %use_wxy_float, align 4, !tbaa !126
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true.4, %if.end
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float11 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %20, i32 0, i32 45
  store i32 0, i32* %use_wxy_float11, align 4, !tbaa !126
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float12 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 44
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float12, i32 0, i32 1
  store double 0.000000e+00, double* %y13, align 8, !tbaa !127
  %22 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %22, i32 0, i32 44
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float14, i32 0, i32 0
  store double 0.000000e+00, double* %x15, align 8, !tbaa !128
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.6
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %23, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.16
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc20 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 47
  %26 = load %struct.cached_char_s*, %struct.cached_char_s** %cc20, align 8, !tbaa !64
  %cmp21 = icmp ne %struct.cached_char_s* %26, null
  br i1 %cmp21, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %if.end.19
  %27 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc23 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %27, i32 0, i32 47
  %28 = load %struct.cached_char_s*, %struct.cached_char_s** %cc23, align 8, !tbaa !64
  %wxy24 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %28, i32 0, i32 15
  %29 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy25 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %29, i32 0, i32 43
  %30 = bitcast %struct.gs_fixed_point_s* %wxy24 to i8*
  %31 = bitcast %struct.gs_fixed_point_s* %wxy25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 4, i1 false), !tbaa.struct !129
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status26 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 48
  store i32 3, i32* %width_status26, align 4, !tbaa !123
  br label %if.end.29

if.else.27:                                       ; preds = %if.end.19
  %33 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status28 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %33, i32 0, i32 48
  store i32 2, i32* %width_status28, align 4, !tbaa !123
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.22
  %34 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %34, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %35 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %35, 66048
  %cmp30 = icmp eq i32 %and, 66048
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call32 = call i32 @gs_nulldevice(%struct.gs_state_s* %36) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %37 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text34 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %37, i32 0, i32 0
  %operation35 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text34, i32 0, i32 0
  %38 = load i32, i32* %operation35, align 4, !tbaa !38
  %and36 = and i32 %38, 512
  %cmp37 = icmp ne i32 %and36, 0
  %lnot = xor i1 %cmp37, true
  %lnot38 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot38 to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.18, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_nulldevice(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define void @gx_compute_text_oversampling(%struct.gs_show_enum_s* %penum, %struct.gs_font_s* %pfont, i32 %alpha_bits, %struct.gs_log2_scale_point_s* %p_log2_scale) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %alpha_bits.addr = alloca i32, align 4
  %p_log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %excess = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 %alpha_bits, i32* %alpha_bits.addr, align 4, !tbaa !5
  store %struct.gs_log2_scale_point_s* %p_log2_scale, %struct.gs_log2_scale_point_s** %p_log2_scale.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !130
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !131
  br label %if.end.30

if.else:                                          ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 17
  %3 = load i32, i32* %PaintType, align 4, !tbaa !132
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %y3 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y3, align 4, !tbaa !130
  %x4 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !131
  br label %if.end.29

if.else.5:                                        ; preds = %if.else
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %is_pure_color = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 14
  %5 = load i32, i32* %is_pure_color, align 4, !tbaa !133
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else.9, label %if.then.6

if.then.6:                                        ; preds = %if.else.5
  %y7 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y7, align 4, !tbaa !130
  %x8 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 0, i32* %x8, align 4, !tbaa !131
  br label %if.end.28

if.else.9:                                        ; preds = %if.else.5
  %6 = bitcast i32* %excess to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  call void @show_set_scale(%struct.gs_show_enum_s* %7, %struct.gs_log2_scale_point_s* %log2_scale) #5
  %x10 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %8 = load i32, i32* %x10, align 4, !tbaa !131
  %y11 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %9 = load i32, i32* %y11, align 4, !tbaa !130
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %alpha_bits.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %10
  store i32 %sub, i32* %excess, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.else.9
  %11 = load i32, i32* %excess, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %y13 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %12 = load i32, i32* %y13, align 4, !tbaa !130
  %cmp14 = icmp sgt i32 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %while.body
  %y16 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %13 = load i32, i32* %y16, align 4, !tbaa !130
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %y16, align 4, !tbaa !130
  %14 = load i32, i32* %excess, align 4, !tbaa !5
  %dec17 = add nsw i32 %14, -1
  store i32 %dec17, i32* %excess, align 4, !tbaa !5
  %15 = load i32, i32* %excess, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.15
  br label %while.end

if.end:                                           ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %while.body
  %x21 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %16 = load i32, i32* %x21, align 4, !tbaa !131
  %cmp22 = icmp sgt i32 %16, 0
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.20
  %x24 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %17 = load i32, i32* %x24, align 4, !tbaa !131
  %dec25 = add nsw i32 %17, -1
  store i32 %dec25, i32* %x24, align 4, !tbaa !131
  %18 = load i32, i32* %excess, align 4, !tbaa !5
  %dec26 = add nsw i32 %18, -1
  store i32 %dec26, i32* %excess, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.20
  br label %while.cond

while.end:                                        ; preds = %if.then.19, %while.cond
  %19 = bitcast i32* %excess to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  br label %if.end.28

if.end.28:                                        ; preds = %while.end, %if.then.6
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.2
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  %20 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %p_log2_scale.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_log2_scale_point_s* %20 to i8*
  %22 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 4, i1 false), !tbaa.struct !129
  %23 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_set_scale(%struct.gs_show_enum_s* %penum, %struct.gs_log2_scale_point_s* %log2_scale) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %extent = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 32
  %4 = load i32, i32* %charpath_flag, align 4, !tbaa !62
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 32
  %6 = load i32, i32* %charpath_flag2, align 4, !tbaa !62
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %8 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %8, 2560
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.end.75, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 12
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %12 = bitcast %struct.gs_font_s* %11 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %12, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %13 = bitcast %struct.gs_fixed_point_s* %extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 72
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %16, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %17 = load double, double* %x, align 8, !tbaa !134
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %18, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox5, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %19 = load double, double* %x6, align 8, !tbaa !136
  %sub = fsub double %17, %19
  %20 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox7 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %20, i32 0, i32 23
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox7, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 1
  %21 = load double, double* %y, align 8, !tbaa !137
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox9 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %22, i32 0, i32 23
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox9, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p10, i32 0, i32 1
  %23 = load double, double* %y11, align 8, !tbaa !138
  %sub12 = fsub double %21, %23
  %call = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %char_tm, double %sub, double %sub12, %struct.gs_fixed_point_s* %extent) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.end.72

if.then.14:                                       ; preds = %if.then
  %25 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %26 = load i32, i32* %x15, align 4, !tbaa !139
  %cmp16 = icmp slt i32 %26, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %27 = load i32, i32* %x17, align 4, !tbaa !139
  %sub18 = sub nsw i32 0, %27
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %28 = load i32, i32* %x19, align 4, !tbaa !139
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub18, %cond.true ], [ %28, %cond.false ]
  %cmp20 = icmp slt i32 %cond, 15360
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.34

cond.false.22:                                    ; preds = %cond.end
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %29 = load i32, i32* %x23, align 4, !tbaa !139
  %cmp24 = icmp slt i32 %29, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false.22
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %30 = load i32, i32* %x26, align 4, !tbaa !139
  %sub27 = sub nsw i32 0, %30
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.false.22
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 0
  %31 = load i32, i32* %x29, align 4, !tbaa !139
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.25
  %cond31 = phi i32 [ %sub27, %cond.true.25 ], [ %31, %cond.false.28 ]
  %cmp32 = icmp slt i32 %cond31, 51200
  %cond33 = select i1 %cmp32, i32 1, i32 0
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.30, %cond.true.21
  %cond35 = phi i32 [ 2, %cond.true.21 ], [ %cond33, %cond.end.30 ]
  store i32 %cond35, i32* %sx, align 4, !tbaa !5
  %32 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %33 = load i32, i32* %y36, align 4, !tbaa !140
  %cmp37 = icmp slt i32 %33, 0
  br i1 %cmp37, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.end.34
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %34 = load i32, i32* %y39, align 4, !tbaa !140
  %sub40 = sub nsw i32 0, %34
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.end.34
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %35 = load i32, i32* %y42, align 4, !tbaa !140
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.38
  %cond44 = phi i32 [ %sub40, %cond.true.38 ], [ %35, %cond.false.41 ]
  %cmp45 = icmp slt i32 %cond44, 15360
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end.43
  br label %cond.end.59

cond.false.47:                                    ; preds = %cond.end.43
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %36 = load i32, i32* %y48, align 4, !tbaa !140
  %cmp49 = icmp slt i32 %36, 0
  br i1 %cmp49, label %cond.true.50, label %cond.false.53

cond.true.50:                                     ; preds = %cond.false.47
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %37 = load i32, i32* %y51, align 4, !tbaa !140
  %sub52 = sub nsw i32 0, %37
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.false.47
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %extent, i32 0, i32 1
  %38 = load i32, i32* %y54, align 4, !tbaa !140
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.50
  %cond56 = phi i32 [ %sub52, %cond.true.50 ], [ %38, %cond.false.53 ]
  %cmp57 = icmp slt i32 %cond56, 51200
  %cond58 = select i1 %cmp57, i32 1, i32 0
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.55, %cond.true.46
  %cond60 = phi i32 [ 2, %cond.true.46 ], [ %cond58, %cond.end.55 ]
  store i32 %cond60, i32* %sy, align 4, !tbaa !5
  %39 = load i32, i32* %sx, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %39, 0
  br i1 %cmp61, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %cond.end.59
  %40 = load i32, i32* %sy, align 4, !tbaa !5
  %cmp63 = icmp ne i32 %40, 0
  br i1 %cmp63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %sx, align 4, !tbaa !5
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.62, %cond.end.59
  %41 = load i32, i32* %sy, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %41, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.end

land.lhs.true.66:                                 ; preds = %if.else
  %42 = load i32, i32* %sx, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %42, 0
  br i1 %cmp67, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* %sy, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.68, %land.lhs.true.66, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end, %if.then.64
  %43 = load i32, i32* %sx, align 4, !tbaa !5
  %44 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x70 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %44, i32 0, i32 0
  store i32 %43, i32* %x70, align 4, !tbaa !131
  %45 = load i32, i32* %sy, align 4, !tbaa !5
  %46 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y71 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %46, i32 0, i32 1
  store i32 %45, i32* %y71, align 4, !tbaa !130
  store i32 1, i32* %cleanup.dest.slot
  %47 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  br label %cleanup

if.end.72:                                        ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.end.69
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gs_fixed_point_s* %extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.75

if.end.75:                                        ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false
  %52 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y76 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %52, i32 0, i32 1
  store i32 0, i32* %y76, align 4, !tbaa !130
  %53 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x77 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %53, i32 0, i32 0
  store i32 0, i32* %x77, align 4, !tbaa !131
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.75, %cleanup
  %54 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest.79 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.79, label %unreachable [
    i32 0, label %cleanup.cont.80
    i32 1, label %cleanup.cont.80
  ]

cleanup.cont.80:                                  ; preds = %cleanup.78, %cleanup.78
  ret void

unreachable:                                      ; preds = %cleanup.78
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_incachedevice(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 74
  %1 = load i32, i32* %in_cachedevice, align 4, !tbaa !141
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gx_current_char(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %chr = alloca i64, align 8
  %fdepth = alloca i32, align 4
  %fidx = alloca i32, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 28
  %current_char = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 0
  %5 = load i64, i64* %current_char, align 8, !tbaa !142
  %and = and i64 %5, 255
  store i64 %and, i64* %chr, align 8, !tbaa !85
  %6 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %8 = load i32, i32* %depth, align 4, !tbaa !44
  store i32 %8, i32* %fdepth, align 4, !tbaa !5
  %9 = load i32, i32* %fdepth, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %fdepth, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fstack1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %index = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 1
  %13 = load i32, i32* %index, align 4, !tbaa !88
  store i32 %13, i32* %fidx, align 4, !tbaa !5
  %14 = load i32, i32* %fdepth, align 4, !tbaa !5
  %sub2 = sub nsw i32 %14, 1
  %idxprom3 = sext i32 %sub2 to i64
  %15 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %fstack4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %15, i32 0, i32 19
  %items5 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack4, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items5, i32 0, i64 %idxprom3
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx6, i32 0, i32 0
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !86
  %17 = bitcast %struct.gs_font_s* %16 to %struct.gs_font_type0_s*
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %17, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %18 = load i32, i32* %FMapType, align 4, !tbaa !143
  switch i32 %18, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 9, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %19 = load i32, i32* %fidx, align 4, !tbaa !5
  %shl = shl i32 %19, 7
  %conv = zext i32 %shl to i64
  %20 = load i64, i64* %chr, align 8, !tbaa !85
  %add = add i64 %20, %conv
  store i64 %add, i64* %chr, align 8, !tbaa !85
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %returned8 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 28
  %current_char9 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned8, i32 0, i32 0
  %22 = load i64, i64* %current_char9, align 8, !tbaa !142
  store i64 %22, i64* %chr, align 8, !tbaa !85
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cmap_code = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %23, i32 0, i32 20
  %24 = load i32, i32* %cmap_code, align 4, !tbaa !146
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.7
  br label %sw.default

sw.default:                                       ; preds = %if.then, %if.end
  %25 = load i32, i32* %fidx, align 4, !tbaa !5
  %shl11 = shl i32 %25, 8
  %conv12 = zext i32 %shl11 to i64
  %26 = load i64, i64* %chr, align 8, !tbaa !85
  %add13 = add i64 %26, %conv12
  store i64 %add13, i64* %chr, align 8, !tbaa !85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.10, %sw.bb
  %27 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end.14

if.end.14:                                        ; preds = %sw.epilog, %entry
  %28 = load i64, i64* %chr, align 8, !tbaa !85
  %conv15 = trunc i64 %28 to i32
  %29 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret i32 %conv15
}

; Function Attrs: nounwind uwtable
define i32 @gs_show_in_charpath(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 32
  %1 = load i32, i32* %charpath_flag, align 4, !tbaa !62
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_show_current_font(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %1 = load i32, i32* %depth, align 4, !tbaa !44
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 30
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 70
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 19
  %depth2 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack1, i32 0, i32 0
  %6 = load i32, i32* %depth2, align 4, !tbaa !44
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font4 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font4, align 8, !tbaa !86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_font_s* [ %4, %cond.true ], [ %8, %cond.false ]
  ret %struct.gs_font_s* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_resync(%struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s* %pfrom) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfrom.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %old_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pfrom, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %old_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 17
  %5 = load i32, i32* %index, align 4, !tbaa !147
  store i32 %5, i32* %old_index, align 4, !tbaa !5
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %6, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %7 = load i32, i32* %operation, align 4, !tbaa !121
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 0
  %operation2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 0
  %9 = load i32, i32* %operation2, align 4, !tbaa !121
  %xor = xor i32 %7, %9
  %and = and i32 %xor, -64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %10, i32 0, i32 0
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %text4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 0
  %12 = bitcast %struct.gs_text_params_s* %text3 to i8*
  %13 = bitcast %struct.gs_text_params_s* %text4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 88, i32 8, i1 false), !tbaa.struct !148
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 17
  %15 = load i32, i32* %index5, align 4, !tbaa !147
  %16 = load i32, i32* %old_index, align 4, !tbaa !5
  %cmp = icmp eq i32 %15, %16
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  call void @show_set_encode_char(%struct.gs_show_enum_s* %17) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %call = call i32 @show_state_setup(%struct.gs_show_enum_s* %18) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.6, %if.then
  %19 = bitcast i32* %old_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_process(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 49
  %4 = load i32 (%struct.gs_show_enum_s*)*, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8, !tbaa !65
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %call = call i32 %4(%struct.gs_show_enum_s* %5) #5
  %6 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_is_width_only(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %4 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %4, 2560
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 47
  %6 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %cmp1 = icmp ne %struct.cached_char_s* %6, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 30
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 77
  %9 = load i32, i32* %level, align 4, !tbaa !48
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %level2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 31
  %11 = load i32, i32* %level2, align 4, !tbaa !61
  %add = add nsw i32 %11, 1
  %cmp3 = icmp eq i32 %9, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %12 = phi i1 [ false, %lor.lhs.false ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  %13 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_current_width(%struct.gs_text_enum_s* %pte, %struct.gs_point_s* %pwidth) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pwidth.addr = alloca %struct.gs_point_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pwidth, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 30
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 43
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !125
  %conv = sitofp i32 %6 to double
  %mul = fmul double %conv, 3.906250e-03
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %wxy1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 43
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy1, i32 0, i32 1
  %8 = load i32, i32* %y, align 4, !tbaa !124
  %conv2 = sitofp i32 %8 to double
  %mul3 = fmul double %conv2, 3.906250e-03
  %9 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %call = call i32 @gs_idtransform(%struct.gs_state_s* %4, double %mul, double %mul3, %struct.gs_point_s* %9) #5
  %10 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_set_cache(%struct.gs_text_enum_s* %pte, double* %pw, i32 %control) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pw.addr = alloca double*, align 8
  %control.addr = alloca i32, align 4
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %code28 = alloca i32, align 4
  %retry = alloca i32, align 4
  %vx = alloca float, align 4
  %vy = alloca float, align 4
  %pvxy = alloca %struct.gs_fixed_point_s, align 4
  %dvxy = alloca %struct.gs_fixed_point_s, align 4
  %rewind_pvxy = alloca %struct.gs_fixed_point_s, align 4
  %rewind_code = alloca i32, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %pw, double** %pw.addr, align 8, !tbaa !1
  store i32 %control, i32* %control.addr, align 4, !tbaa !149
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 30
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %7) #5
  store %struct.gs_font_s* %call, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %9 = load float, float* %xx, align 4, !tbaa !150
  %cmp = fcmp oeq float %9, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix2, i32 0, i32 1
  %11 = load float, float* %xy, align 4, !tbaa !151
  %cmp3 = fcmp oeq float %11, 0.000000e+00
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix5, i32 0, i32 2
  %13 = load float, float* %yx, align 4, !tbaa !152
  %cmp6 = fcmp oeq float %13, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix8 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix8, i32 0, i32 3
  %15 = load float, float* %yy, align 4, !tbaa !153
  %cmp9 = fcmp oeq float %15, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %16 = load i32, i32* %control.addr, align 4, !tbaa !149
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %19 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %19, i64 0
  %20 = load double, double* %arrayidx, align 8, !tbaa !113
  %21 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %21, i64 1
  %22 = load double, double* %arrayidx10, align 8, !tbaa !113
  %call11 = call i32 @set_char_width(%struct.gs_show_enum_s* %17, %struct.gs_state_s* %18, double %20, double %22) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

sw.bb.12:                                         ; preds = %if.end
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %26 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 0
  %27 = load double, double* %arrayidx13, align 8, !tbaa !113
  %28 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %28, i64 1
  %29 = load double, double* %arrayidx14, align 8, !tbaa !113
  %call15 = call i32 @set_char_width(%struct.gs_show_enum_s* %24, %struct.gs_state_s* %25, double %27, double %29) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %30, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.12
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %sw.bb.12
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %33 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %33, 66048
  %cmp19 = icmp eq i32 %and, 66048
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.18
  %35 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %37 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds double, double* %37, i64 2
  %38 = load double, double* %arrayidx22, align 8, !tbaa !113
  %39 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds double, double* %39, i64 3
  %40 = load double, double* %arrayidx23, align 8, !tbaa !113
  %41 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds double, double* %41, i64 4
  %42 = load double, double* %arrayidx24, align 8, !tbaa !113
  %43 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds double, double* %43, i64 5
  %44 = load double, double* %arrayidx25, align 8, !tbaa !113
  %call26 = call i32 @set_cache_device(%struct.gs_show_enum_s* %35, %struct.gs_state_s* %36, double %38, double %40, double %42, double %44) #5
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.17
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %cleanup.122

sw.bb.27:                                         ; preds = %if.end
  %46 = bitcast i32* %code28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %48, i32 0, i32 48
  %49 = load i32, i32* %width_status, align 4, !tbaa !123
  %cmp29 = icmp eq i32 %49, 4
  %conv = zext i1 %cmp29 to i32
  store i32 %conv, i32* %retry, align 4, !tbaa !5
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %50, i32 0, i32 16
  %51 = load i32, i32* %WMode, align 4, !tbaa !154
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %sw.bb.27
  %52 = bitcast float* %vx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds double, double* %53, i64 8
  %54 = load double, double* %arrayidx31, align 8, !tbaa !113
  %conv32 = fptrunc double %54 to float
  store float %conv32, float* %vx, align 4, !tbaa !155
  %55 = bitcast float* %vy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds double, double* %56, i64 9
  %57 = load double, double* %arrayidx33, align 8, !tbaa !113
  %conv34 = fptrunc double %57 to float
  store float %conv34, float* %vy, align 4, !tbaa !155
  %58 = bitcast %struct.gs_fixed_point_s* %pvxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_fixed_point_s* %dvxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast %struct.gs_fixed_point_s* %rewind_pvxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = bitcast i32* %rewind_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 5
  %63 = load float, float* %vx, align 4, !tbaa !155
  %sub = fsub float -0.000000e+00, %63
  %conv35 = fpext float %sub to double
  %64 = load float, float* %vy, align 4, !tbaa !155
  %sub36 = fsub float -0.000000e+00, %64
  %conv37 = fpext float %sub36 to double
  %call38 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %conv35, double %conv37, %struct.gs_fixed_point_s* %pvxy) #5
  store i32 %call38, i32* %code28, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.30
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 5
  %66 = load float, float* %vx, align 4, !tbaa !155
  %conv42 = fpext float %66 to double
  %67 = load float, float* %vy, align 4, !tbaa !155
  %conv43 = fpext float %67 to double
  %call44 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm41, double %conv42, double %conv43, %struct.gs_fixed_point_s* %dvxy) #5
  store i32 %call44, i32* %code28, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.48:                                        ; preds = %lor.lhs.false
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %70 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %70, i64 6
  %71 = load double, double* %arrayidx49, align 8, !tbaa !113
  %72 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds double, double* %72, i64 7
  %73 = load double, double* %arrayidx50, align 8, !tbaa !113
  %call51 = call i32 @set_char_width(%struct.gs_show_enum_s* %68, %struct.gs_state_s* %69, double %71, double %73) #5
  store i32 %call51, i32* %code28, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.48
  %74 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.55:                                        ; preds = %if.end.48
  %75 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %text56 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %75, i32 0, i32 0
  %operation57 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text56, i32 0, i32 0
  %76 = load i32, i32* %operation57, align 4, !tbaa !38
  %and58 = and i32 %76, 66048
  %cmp59 = icmp eq i32 %and58, 66048
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.55
  %77 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.62:                                        ; preds = %if.end.55
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pvxy, i32 0, i32 0
  %79 = load i32, i32* %x, align 4, !tbaa !139
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pvxy, i32 0, i32 1
  %80 = load i32, i32* %y, align 4, !tbaa !140
  %call63 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %78, i32 %79, i32 %80) #5
  %81 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %83 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds double, double* %83, i64 2
  %84 = load double, double* %arrayidx64, align 8, !tbaa !113
  %85 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds double, double* %85, i64 3
  %86 = load double, double* %arrayidx65, align 8, !tbaa !113
  %87 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds double, double* %87, i64 4
  %88 = load double, double* %arrayidx66, align 8, !tbaa !113
  %89 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds double, double* %89, i64 5
  %90 = load double, double* %arrayidx67, align 8, !tbaa !113
  %call68 = call i32 @set_cache_device(%struct.gs_show_enum_s* %81, %struct.gs_state_s* %82, double %84, double %86, double %88, double %90) #5
  store i32 %call68, i32* %code28, align 4, !tbaa !5
  %91 = load i32, i32* %code28, align 4, !tbaa !5
  %cmp69 = icmp ne i32 %91, 1
  br i1 %cmp69, label %if.then.71, label %if.end.86

if.then.71:                                       ; preds = %if.end.62
  %92 = load i32, i32* %retry, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %92, 0
  br i1 %tobool72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %if.then.71
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm74 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 5
  %94 = load float, float* %vx, align 4, !tbaa !155
  %conv75 = fpext float %94 to double
  %95 = load float, float* %vy, align 4, !tbaa !155
  %conv76 = fpext float %95 to double
  %call77 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm74, double %conv75, double %conv76, %struct.gs_fixed_point_s* %rewind_pvxy) #5
  store i32 %call77, i32* %rewind_code, align 4, !tbaa !5
  %96 = load i32, i32* %rewind_code, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %96, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.73
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.81:                                        ; preds = %if.then.73
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %rewind_pvxy, i32 0, i32 0
  %98 = load i32, i32* %x82, align 4, !tbaa !139
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %rewind_pvxy, i32 0, i32 1
  %99 = load i32, i32* %y83, align 4, !tbaa !140
  %call84 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %97, i32 %98, i32 %99) #5
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.81, %if.then.71
  %100 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.86:                                        ; preds = %if.end.62
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dvxy, i32 0, i32 0
  %101 = load i32, i32* %x87, align 4, !tbaa !139
  %102 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %102, i32 0, i32 47
  %103 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %103, i32 0, i32 16
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %104 = load i32, i32* %x88, align 4, !tbaa !156
  %add = add nsw i32 %104, %101
  store i32 %add, i32* %x88, align 4, !tbaa !156
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dvxy, i32 0, i32 1
  %105 = load i32, i32* %y89, align 4, !tbaa !140
  %106 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc90 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %106, i32 0, i32 47
  %107 = load %struct.cached_char_s*, %struct.cached_char_s** %cc90, align 8, !tbaa !64
  %offset91 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %107, i32 0, i32 16
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset91, i32 0, i32 1
  %108 = load i32, i32* %y92, align 4, !tbaa !159
  %add93 = add nsw i32 %108, %105
  store i32 %add93, i32* %y92, align 4, !tbaa !159
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.end.86, %if.end.85, %if.then.80, %if.then.61, %if.then.54, %if.then.47
  %109 = bitcast i32* %rewind_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast %struct.gs_fixed_point_s* %rewind_pvxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.gs_fixed_point_s* %dvxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast %struct.gs_fixed_point_s* %pvxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast float* %vy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast float* %vx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.94
  br label %if.end.119

if.else:                                          ; preds = %sw.bb.27
  %115 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %116 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %117 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds double, double* %117, i64 0
  %118 = load double, double* %arrayidx100, align 8, !tbaa !113
  %119 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds double, double* %119, i64 1
  %120 = load double, double* %arrayidx101, align 8, !tbaa !113
  %call102 = call i32 @set_char_width(%struct.gs_show_enum_s* %115, %struct.gs_state_s* %116, double %118, double %120) #5
  store i32 %call102, i32* %code28, align 4, !tbaa !5
  %121 = load i32, i32* %code28, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %121, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.else
  %122 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.106:                                       ; preds = %if.else
  %123 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %text107 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %123, i32 0, i32 0
  %operation108 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text107, i32 0, i32 0
  %124 = load i32, i32* %operation108, align 4, !tbaa !38
  %and109 = and i32 %124, 66048
  %cmp110 = icmp eq i32 %and109, 66048
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.106
  %125 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.113:                                       ; preds = %if.end.106
  %126 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %127 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %128 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds double, double* %128, i64 2
  %129 = load double, double* %arrayidx114, align 8, !tbaa !113
  %130 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds double, double* %130, i64 3
  %131 = load double, double* %arrayidx115, align 8, !tbaa !113
  %132 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds double, double* %132, i64 4
  %133 = load double, double* %arrayidx116, align 8, !tbaa !113
  %134 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds double, double* %134, i64 5
  %135 = load double, double* %arrayidx117, align 8, !tbaa !113
  %call118 = call i32 @set_cache_device(%struct.gs_show_enum_s* %126, %struct.gs_state_s* %127, double %129, double %131, double %133, double %135) #5
  store i32 %call118, i32* %code28, align 4, !tbaa !5
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.113, %cleanup.cont
  %136 = load i32, i32* %code28, align 4, !tbaa !5
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.119, %if.then.112, %if.then.105, %cleanup.94
  %137 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %code28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  br label %cleanup.122

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

cleanup.122:                                      ; preds = %sw.default, %cleanup.120, %cleanup, %sw.bb, %if.then
  %139 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = load i32, i32* %retval
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_show_text_retry(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 47
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %tobool = icmp ne %struct.cached_char_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 12
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  store %struct.gs_font_s* %7, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 3
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 47
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc1, align 8, !tbaa !64
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %9, %struct.cached_char_s* %11) #5
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 47
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc2, align 8, !tbaa !64
  %13 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 30
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !9
  %call = call i32 @gs_grestore(%struct.gs_state_s* %15) #5
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 48
  store i32 4, i32* %width_status, align 4, !tbaa !123
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 15
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !161
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %log2_scale3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 15
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale3, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !162
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 16
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !163
  %20 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gx_show_text_release(%struct.gs_text_enum_s* %pte, i8* %cname) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %cname.addr = alloca i8*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 47
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc, align 8, !tbaa !64
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 41
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  %tobool = icmp ne %struct.gx_device_memory_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache21 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 41
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache21, align 8, !tbaa !26
  %8 = bitcast %struct.gx_device_memory_s* %7 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %8, i32 0) #5
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache22 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 41
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %dev_cache22, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 40
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %tobool3 = icmp ne %struct.gx_device_memory_s* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 40
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache5, align 8, !tbaa !25
  %14 = bitcast %struct.gx_device_memory_s* %13 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %14, i32 0) #5
  %15 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_cache6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %15, i32 0, i32 40
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %dev_cache6, align 8, !tbaa !25
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_null = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 42
  %17 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null, align 8, !tbaa !27
  %tobool8 = icmp ne %struct.gx_device_null_s* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_null10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 42
  %19 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null10, align 8, !tbaa !27
  %20 = bitcast %struct.gx_device_null_s* %19 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %20, i32 0) #5
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8, !tbaa !1
  %dev_null11 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 42
  store %struct.gx_device_null_s* null, %struct.gx_device_null_s** %dev_null11, align 8, !tbaa !27
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_default_text_release(%struct.gs_text_enum_s* %22, i8* %23) #5
  %24 = bitcast %struct.gs_show_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_set_encode_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %1 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %1, 40
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_s* @gs_show_current_font(%struct.gs_show_enum_s* %2) #5
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %3 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !164
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (%struct.gs_font_s*, i64, i32)* [ @gs_no_encode_char, %cond.true ], [ %3, %cond.false ]
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %encode_char1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 39
  store i64 (%struct.gs_font_s*, i64, i32)* %cond, i64 (%struct.gs_font_s*, i64, i32)** %encode_char1, align 8, !tbaa !165
  ret void
}

declare i64 @gs_no_encode_char(%struct.gs_font_s*, i64, i32) #2

declare i32 @gs_idtransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_cache_device(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %llx, double %lly, double %urx, double %ury) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %llx.addr = alloca double, align 8
  %lly.addr = alloca double, align 8
  %urx.addr = alloca double, align 8
  %ury.addr = alloca double, align 8
  %glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %pfont = alloca %struct.gs_font_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %alpha_bits = alloca i32, align 4
  %depth = alloca i32, align 4
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %subpix_origin = alloca %struct.gs_fixed_point_s, align 4
  %iwidth = alloca i16, align 2
  %iheight = alloca i16, align 2
  %cc = alloca %struct.cached_char_s*, align 8
  %clip_box = alloca %struct.gs_fixed_rect_s, align 4
  %code18 = alloca i32, align 4
  %cll = alloca %struct.gs_fixed_point_s, align 4
  %clr = alloca %struct.gs_fixed_point_s, align 4
  %cul = alloca %struct.gs_fixed_point_s, align 4
  %cur = alloca %struct.gs_fixed_point_s, align 4
  %cdim = alloca %struct.gs_fixed_point_s, align 4
  %ctemp = alloca i32, align 4
  %box_path = alloca %struct.gx_path_s, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %llx, double* %llx.addr, align 8, !tbaa !113
  store double %lly, double* %lly.addr, align 8, !tbaa !113
  store double %urx, double* %urx.addr, align 8, !tbaa !113
  store double %ury, double* %ury.addr, align 8, !tbaa !113
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 74
  %2 = load i32, i32* %in_cachedevice, align 4, !tbaa !141
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %4 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %4, 66048
  %cmp = icmp eq i32 %and, 66048
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %if.then.1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_nulldevice(%struct.gs_state_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  br label %cleanup.349

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 74
  store i32 1, i32* %in_cachedevice6, align 4, !tbaa !141
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %12 = load i64, i64* %current_glyph, align 8, !tbaa !166
  store i64 %12, i64* %glyph, align 8, !tbaa !85
  %13 = load i64, i64* %glyph, align 8, !tbaa !85
  %cmp7 = icmp eq i64 %13, 2147483647
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349

if.end.9:                                         ; preds = %if.end.5
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 34
  %15 = load i32, i32* %can_cache, align 4, !tbaa !66
  %cmp10 = icmp sle i32 %15, 0
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 73
  %17 = load i32, i32* %char_tm_valid, align 4, !tbaa !167
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349

if.end.16:                                        ; preds = %lor.lhs.false
  %18 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 70
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  store %struct.gs_font_s* %20, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %21 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir17 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 3
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir17, align 8, !tbaa !160
  store %struct.gs_font_dir_s* %23, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %24 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i16* %iwidth to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  %29 = bitcast i16* %iheight to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  %30 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #1
  %32 = bitcast i32* %code18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_fixed_point_s* %cll to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_fixed_point_s* %clr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast %struct.gs_fixed_point_s* %cul to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast %struct.gs_fixed_point_s* %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_fixed_point_s* %cdim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load double, double* %llx.addr, align 8, !tbaa !113
  %call19 = call double @fabs(double %38) #6
  %cmp20 = fcmp ogt double %call19, 3.200000e+04
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.16
  %39 = load double, double* %lly.addr, align 8, !tbaa !113
  %call22 = call double @fabs(double %39) #6
  %cmp23 = fcmp ogt double %call22, 3.200000e+04
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %40 = load double, double* %urx.addr, align 8, !tbaa !113
  %call25 = call double @fabs(double %40) #6
  %cmp26 = fcmp ogt double %call25, 3.200000e+04
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %41 = load double, double* %ury.addr, align 8, !tbaa !113
  %call28 = call double @fabs(double %41) #6
  %cmp29 = fcmp oge double %call28, 3.200000e+04
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.31:                                        ; preds = %lor.lhs.false.27
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 5
  %43 = load double, double* %llx.addr, align 8, !tbaa !113
  %44 = load double, double* %lly.addr, align 8, !tbaa !113
  %call32 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %43, double %44, %struct.gs_fixed_point_s* %cll) #5
  store i32 %call32, i32* %code18, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.46, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 5
  %46 = load double, double* %llx.addr, align 8, !tbaa !113
  %47 = load double, double* %ury.addr, align 8, !tbaa !113
  %call36 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm35, double %46, double %47, %struct.gs_fixed_point_s* %clr) #5
  store i32 %call36, i32* %code18, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.46, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 5
  %49 = load double, double* %urx.addr, align 8, !tbaa !113
  %50 = load double, double* %lly.addr, align 8, !tbaa !113
  %call40 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm39, double %49, double %50, %struct.gs_fixed_point_s* %cul) #5
  store i32 %call40, i32* %code18, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 5
  %52 = load double, double* %urx.addr, align 8, !tbaa !113
  %53 = load double, double* %ury.addr, align 8, !tbaa !113
  %call44 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm43, double %52, double %53, %struct.gs_fixed_point_s* %cur) #5
  store i32 %call44, i32* %code18, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %if.end.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.47:                                        ; preds = %lor.lhs.false.42
  %54 = bitcast i32* %ctemp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %55 = load i32, i32* %x, align 4, !tbaa !139
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %56 = load i32, i32* %x48, align 4, !tbaa !139
  %cmp49 = icmp sgt i32 %55, %56
  br i1 %cmp49, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %if.end.47
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %57 = load i32, i32* %x51, align 4, !tbaa !139
  store i32 %57, i32* %ctemp, align 4, !tbaa !5
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %58 = load i32, i32* %x52, align 4, !tbaa !139
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  store i32 %58, i32* %x53, align 4, !tbaa !139
  %59 = load i32, i32* %ctemp, align 4, !tbaa !5
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  store i32 %59, i32* %x54, align 4, !tbaa !139
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %if.end.47
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %60 = load i32, i32* %y, align 4, !tbaa !140
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 1
  %61 = load i32, i32* %y56, align 4, !tbaa !140
  %cmp57 = icmp sgt i32 %60, %61
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.55
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %62 = load i32, i32* %y59, align 4, !tbaa !140
  store i32 %62, i32* %ctemp, align 4, !tbaa !5
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 1
  %63 = load i32, i32* %y60, align 4, !tbaa !140
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  store i32 %63, i32* %y61, align 4, !tbaa !140
  %64 = load i32, i32* %ctemp, align 4, !tbaa !5
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 1
  store i32 %64, i32* %y62, align 4, !tbaa !140
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.end.55
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 0
  %65 = load i32, i32* %x64, align 4, !tbaa !139
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 0
  %66 = load i32, i32* %x65, align 4, !tbaa !139
  %cmp66 = icmp sgt i32 %65, %66
  br i1 %cmp66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.63
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 0
  %67 = load i32, i32* %x68, align 4, !tbaa !139
  store i32 %67, i32* %ctemp, align 4, !tbaa !5
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 0
  %68 = load i32, i32* %x69, align 4, !tbaa !139
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 0
  store i32 %68, i32* %x70, align 4, !tbaa !139
  %69 = load i32, i32* %ctemp, align 4, !tbaa !5
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 0
  store i32 %69, i32* %x71, align 4, !tbaa !139
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.63
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 1
  %70 = load i32, i32* %y73, align 4, !tbaa !140
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 1
  %71 = load i32, i32* %y74, align 4, !tbaa !140
  %cmp75 = icmp sgt i32 %70, %71
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.72
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 1
  %72 = load i32, i32* %y77, align 4, !tbaa !140
  store i32 %72, i32* %ctemp, align 4, !tbaa !5
  %y78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 1
  %73 = load i32, i32* %y78, align 4, !tbaa !140
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 1
  store i32 %73, i32* %y79, align 4, !tbaa !140
  %74 = load i32, i32* %ctemp, align 4, !tbaa !5
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 1
  store i32 %74, i32* %y80, align 4, !tbaa !140
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.72
  %75 = bitcast i32* %ctemp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 0
  %76 = load i32, i32* %x82, align 4, !tbaa !139
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %77 = load i32, i32* %x83, align 4, !tbaa !139
  %cmp84 = icmp slt i32 %76, %77
  br i1 %cmp84, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %if.end.81
  %x86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 0
  %78 = load i32, i32* %x86, align 4, !tbaa !139
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  store i32 %78, i32* %x87, align 4, !tbaa !139
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 0
  %79 = load i32, i32* %x88, align 4, !tbaa !139
  %x89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  store i32 %79, i32* %x89, align 4, !tbaa !139
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %if.end.81
  %y91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 1
  %80 = load i32, i32* %y91, align 4, !tbaa !140
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %81 = load i32, i32* %y92, align 4, !tbaa !140
  %cmp93 = icmp slt i32 %80, %81
  br i1 %cmp93, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %if.end.90
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %clr, i32 0, i32 1
  %82 = load i32, i32* %y95, align 4, !tbaa !140
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  store i32 %82, i32* %y96, align 4, !tbaa !140
  %y97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cul, i32 0, i32 1
  %83 = load i32, i32* %y97, align 4, !tbaa !140
  %y98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 1
  store i32 %83, i32* %y98, align 4, !tbaa !140
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.94, %if.end.90
  %84 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call100 = call i32 @compute_glyph_raster_params(%struct.gs_show_enum_s* %84, i32 1, i32* %alpha_bits, i32* %depth, %struct.gs_fixed_point_s* %subpix_origin, %struct.gs_log2_scale_point_s* %log2_scale) #5
  store i32 %call100, i32* %code18, align 4, !tbaa !5
  %85 = load i32, i32* %code18, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %85, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  %86 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.103:                                       ; preds = %if.end.99
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %87 = load i32, i32* %x104, align 4, !tbaa !139
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %88 = load i32, i32* %x105, align 4, !tbaa !139
  %sub = sub nsw i32 %87, %88
  %x106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  store i32 %sub, i32* %x106, align 4, !tbaa !139
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 1
  %89 = load i32, i32* %y107, align 4, !tbaa !140
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %90 = load i32, i32* %y108, align 4, !tbaa !140
  %sub109 = sub nsw i32 %89, %90
  %y110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  store i32 %sub109, i32* %y110, align 4, !tbaa !140
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  %91 = load i32, i32* %x111, align 4, !tbaa !139
  %x112 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %92 = load i32, i32* %x112, align 4, !tbaa !131
  %idxprom = sext i32 %92 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @set_cache_device.max_cdim, i32 0, i64 %idxprom
  %93 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp113 = icmp sgt i32 %91, %93
  br i1 %cmp113, label %if.then.120, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.end.103
  %y115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  %94 = load i32, i32* %y115, align 4, !tbaa !140
  %y116 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %95 = load i32, i32* %y116, align 4, !tbaa !130
  %idxprom117 = sext i32 %95 to i64
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* @set_cache_device.max_cdim, i32 0, i64 %idxprom117
  %96 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %cmp119 = icmp sgt i32 %94, %96
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %lor.lhs.false.114, %if.end.103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.121:                                       ; preds = %lor.lhs.false.114
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  %97 = load i32, i32* %x122, align 4, !tbaa !139
  %shr = ashr i32 %97, 8
  %conv = trunc i32 %shr to i16
  %conv123 = zext i16 %conv to i32
  %add = add nsw i32 %conv123, 3
  %x124 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %98 = load i32, i32* %x124, align 4, !tbaa !131
  %shl = shl i32 %add, %98
  %conv125 = trunc i32 %shl to i16
  store i16 %conv125, i16* %iwidth, align 2, !tbaa !168
  %y126 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  %99 = load i32, i32* %y126, align 4, !tbaa !140
  %shr127 = ashr i32 %99, 8
  %conv128 = trunc i32 %shr127 to i16
  %conv129 = zext i16 %conv128 to i32
  %add130 = add nsw i32 %conv129, 3
  %y131 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %100 = load i32, i32* %y131, align 4, !tbaa !130
  %shl132 = shl i32 %add130, %100
  %conv133 = trunc i32 %shl132 to i16
  store i16 %conv133, i16* %iheight, align 2, !tbaa !168
  br label %do.body.134

do.body.134:                                      ; preds = %if.end.121
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  %101 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %101, i32 0, i32 40
  %102 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %cmp137 = icmp eq %struct.gx_device_memory_s* %102, null
  br i1 %cmp137, label %if.then.139, label %if.end.145

if.then.139:                                      ; preds = %do.end.136
  %103 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call140 = call i32 @show_cache_setup(%struct.gs_show_enum_s* %103) #5
  store i32 %call140, i32* %code18, align 4, !tbaa !5
  %104 = load i32, i32* %code18, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %104, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.then.139
  %105 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.144:                                       ; preds = %if.then.139
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %do.end.136
  %106 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %107 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache146 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %107, i32 0, i32 40
  %108 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache146, align 8, !tbaa !25
  %109 = load i16, i16* %iwidth, align 2, !tbaa !168
  %conv147 = zext i16 %109 to i32
  %110 = load i16, i16* %iheight, align 2, !tbaa !168
  %conv148 = zext i16 %110 to i32
  %div = udiv i32 80000, %conv148
  %cmp149 = icmp ugt i32 %conv147, %div
  br i1 %cmp149, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.145
  %x151 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %111 = load i32, i32* %x151, align 4, !tbaa !131
  %y152 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %112 = load i32, i32* %y152, align 4, !tbaa !130
  %add153 = add nsw i32 %111, %112
  %113 = load i32, i32* %alpha_bits, align 4, !tbaa !5
  %cmp154 = icmp sgt i32 %add153, %113
  br i1 %cmp154, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %114 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %114, i32 0, i32 41
  %115 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.145
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ %115, %cond.true ], [ null, %cond.false ]
  %116 = load i16, i16* %iwidth, align 2, !tbaa !168
  %117 = load i16, i16* %iheight, align 2, !tbaa !168
  %118 = load i32, i32* %depth, align 4, !tbaa !5
  %call156 = call i32 @gx_alloc_char_bits(%struct.gs_font_dir_s* %106, %struct.gx_device_memory_s* %108, %struct.gx_device_memory_s* %cond, i16 zeroext %116, i16 zeroext %117, %struct.gs_log2_scale_point_s* %log2_scale, i32 %118, %struct.cached_char_s** %cc) #5
  store i32 %call156, i32* %code18, align 4, !tbaa !5
  %119 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp157 = icmp eq %struct.cached_char_s* %119, null
  br i1 %cmp157, label %if.then.159, label %if.end.232

if.then.159:                                      ; preds = %cond.end
  %120 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %120) #1
  %121 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %121, i32 0, i32 12
  %122 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %122, i32 0, i32 11
  %123 = load i32, i32* %FontType, align 4, !tbaa !72
  %cmp160 = icmp ne i32 %123, 3
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.178

land.lhs.true.162:                                ; preds = %if.then.159
  %124 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font163 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %124, i32 0, i32 12
  %125 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font163, align 8, !tbaa !89
  %FontType164 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %125, i32 0, i32 11
  %126 = load i32, i32* %FontType164, align 4, !tbaa !72
  %cmp165 = icmp ne i32 %126, 53
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.178

land.lhs.true.167:                                ; preds = %land.lhs.true.162
  %127 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font168 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %127, i32 0, i32 12
  %128 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font168, align 8, !tbaa !89
  %FontType169 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %128, i32 0, i32 11
  %129 = load i32, i32* %FontType169, align 4, !tbaa !72
  %cmp170 = icmp ne i32 %129, 52
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.178

land.lhs.true.172:                                ; preds = %land.lhs.true.167
  %130 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font173 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %130, i32 0, i32 12
  %131 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font173, align 8, !tbaa !89
  %FontType174 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %131, i32 0, i32 11
  %132 = load i32, i32* %FontType174, align 4, !tbaa !72
  %cmp175 = icmp ne i32 %132, 10
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.172
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

if.end.178:                                       ; preds = %land.lhs.true.172, %land.lhs.true.167, %land.lhs.true.162, %if.then.159
  %133 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice179 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %133, i32 0, i32 74
  store i32 0, i32* %in_cachedevice179, align 4, !tbaa !141
  %134 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %134, i32 0, i32 46
  %x180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %135 = load i32, i32* %x180, align 4, !tbaa !169
  %conv181 = sext i32 %135 to i64
  %x182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %136 = load i32, i32* %x182, align 4, !tbaa !139
  %sub183 = sub nsw i32 0, %136
  %add184 = add nsw i32 %sub183, 255
  %conv185 = sext i32 %add184 to i64
  %and186 = and i64 %conv185, -256
  %sub187 = sub nsw i64 %conv181, %and186
  %conv188 = trunc i64 %sub187 to i32
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %conv188, i32* %x189, align 4, !tbaa !90
  %137 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin190 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %137, i32 0, i32 46
  %y191 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin190, i32 0, i32 1
  %138 = load i32, i32* %y191, align 4, !tbaa !170
  %conv192 = sext i32 %138 to i64
  %y193 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %139 = load i32, i32* %y193, align 4, !tbaa !140
  %sub194 = sub nsw i32 0, %139
  %add195 = add nsw i32 %sub194, 255
  %conv196 = sext i32 %add195 to i64
  %and197 = and i64 %conv196, -256
  %sub198 = sub nsw i64 %conv192, %and197
  %conv199 = trunc i64 %sub198 to i32
  %p200 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y201 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p200, i32 0, i32 1
  store i32 %conv199, i32* %y201, align 4, !tbaa !93
  %p202 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p202, i32 0, i32 0
  %140 = load i32, i32* %x203, align 4, !tbaa !90
  %141 = load i16, i16* %iwidth, align 2, !tbaa !168
  %conv204 = zext i16 %141 to i32
  %shl205 = shl i32 %conv204, 8
  %add206 = add nsw i32 %140, %shl205
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x207 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %add206, i32* %x207, align 4, !tbaa !95
  %p208 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y209 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p208, i32 0, i32 1
  %142 = load i32, i32* %y209, align 4, !tbaa !93
  %143 = load i16, i16* %iheight, align 2, !tbaa !168
  %conv210 = zext i16 %143 to i32
  %shl211 = shl i32 %conv210, 8
  %add212 = add nsw i32 %142, %shl211
  %q213 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q213, i32 0, i32 1
  store i32 %add212, i32* %y214, align 4, !tbaa !97
  %144 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %144, i32 0, i32 1
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !171
  %call215 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %box_path, %struct.gx_path_s* null, %struct.gs_memory_s* %145) #5
  %p216 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p216, i32 0, i32 0
  %146 = load i32, i32* %x217, align 4, !tbaa !90
  %p218 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p218, i32 0, i32 1
  %147 = load i32, i32* %y219, align 4, !tbaa !93
  %q220 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x221 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q220, i32 0, i32 0
  %148 = load i32, i32* %x221, align 4, !tbaa !95
  %q222 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y223 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q222, i32 0, i32 1
  %149 = load i32, i32* %y223, align 4, !tbaa !97
  %call224 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %box_path, i32 %146, i32 %147, i32 %148, i32 %149) #5
  store i32 %call224, i32* %code18, align 4, !tbaa !5
  %150 = load i32, i32* %code18, align 4, !tbaa !5
  %cmp225 = icmp slt i32 %150, 0
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.178
  %151 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

if.end.228:                                       ; preds = %if.end.178
  %152 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %153 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %153, i32 0, i32 62
  %154 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !172
  %call229 = call i32 @gx_cpath_clip(%struct.gs_state_s* %152, %struct.gx_clip_path_s* %154, %struct.gx_path_s* %box_path, i32 -1) #5
  store i32 %call229, i32* %code18, align 4, !tbaa !5
  call void @gx_path_free(%struct.gx_path_s* %box_path, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  %155 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice230 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %155, i32 0, i32 74
  store i32 2, i32* %in_cachedevice230, align 4, !tbaa !141
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

cleanup.231:                                      ; preds = %if.end.228, %if.then.227, %if.then.177
  %156 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %156) #1
  br label %cleanup.333

if.end.232:                                       ; preds = %cond.end
  %x233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 0
  %157 = load i32, i32* %x233, align 4, !tbaa !139
  %sub234 = sub nsw i32 0, %157
  %add235 = add nsw i32 %sub234, 255
  %conv236 = sext i32 %add235 to i64
  %and237 = and i64 %conv236, -256
  %add238 = add nsw i64 %and237, 256
  %conv239 = trunc i64 %add238 to i32
  %158 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %158, i32 0, i32 16
  %x240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  store i32 %conv239, i32* %x240, align 4, !tbaa !156
  %y241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cll, i32 0, i32 1
  %159 = load i32, i32* %y241, align 4, !tbaa !140
  %sub242 = sub nsw i32 0, %159
  %add243 = add nsw i32 %sub242, 255
  %conv244 = sext i32 %add243 to i64
  %and245 = and i64 %conv244, -256
  %add246 = add nsw i64 %and245, 256
  %conv247 = trunc i64 %add246 to i32
  %160 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset248 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %160, i32 0, i32 16
  %y249 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset248, i32 0, i32 1
  store i32 %conv247, i32* %y249, align 4, !tbaa !159
  br label %do.body.250

do.body.250:                                      ; preds = %if.end.232
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.body.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  %161 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice253 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %161, i32 0, i32 74
  store i32 0, i32* %in_cachedevice253, align 4, !tbaa !141
  %162 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call254 = call i32 @gs_gsave(%struct.gs_state_s* %162) #5
  store i32 %call254, i32* %code18, align 4, !tbaa !5
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %do.end.252
  %163 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %164 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %163, %struct.cached_char_s* %164) #5
  %165 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.258:                                       ; preds = %do.end.252
  %166 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %167 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc259 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %167, i32 0, i32 47
  store %struct.cached_char_s* %166, %struct.cached_char_s** %cc259, align 8, !tbaa !64
  %168 = load i64, i64* %glyph, align 8, !tbaa !85
  %169 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %code260 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %169, i32 0, i32 8
  store i64 %168, i64* %code260, align 8, !tbaa !173
  %170 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call261 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %170) #5
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call261, i32 0, i32 16
  %171 = load i32, i32* %WMode, align 4, !tbaa !154
  %conv262 = trunc i32 %171 to i8
  %172 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wmode = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %172, i32 0, i32 9
  store i8 %conv262, i8* %wmode, align 1, !tbaa !174
  %173 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %173, i32 0, i32 15
  %174 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy263 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %174, i32 0, i32 43
  %175 = bitcast %struct.gs_fixed_point_s* %wxy to i8*
  %176 = bitcast %struct.gs_fixed_point_s* %wxy263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 8, i32 4, i1 false), !tbaa.struct !129
  %177 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %subpix_origin264 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %177, i32 0, i32 13
  %178 = bitcast %struct.gs_fixed_point_s* %subpix_origin264 to i8*
  %179 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 8, i32 4, i1 false), !tbaa.struct !129
  %180 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %180, i32 0, i32 16
  %181 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !163
  %cmp265 = icmp ne %struct.cached_fm_pair_s* %181, null
  br i1 %cmp265, label %if.then.267, label %if.else

if.then.267:                                      ; preds = %if.end.258
  %182 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pair268 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %182, i32 0, i32 16
  %183 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair268, align 8, !tbaa !163
  %184 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair269 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %184, i32 0, i32 6
  store %struct.cached_fm_pair_s* %183, %struct.cached_fm_pair_s** %pair269, align 8, !tbaa !175
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %183, i32 0, i32 12
  %185 = load i32, i32* %index, align 4, !tbaa !176
  %186 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair_index = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %186, i32 0, i32 12
  store i32 %185, i32* %pair_index, align 4, !tbaa !178
  br label %if.end.271

if.else:                                          ; preds = %if.end.258
  %187 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair270 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %187, i32 0, i32 6
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair270, align 8, !tbaa !175
  br label %if.end.271

if.end.271:                                       ; preds = %if.else, %if.then.267
  %188 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %189 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache272 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %189, i32 0, i32 40
  %190 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache272, align 8, !tbaa !25
  %191 = bitcast %struct.gx_device_memory_s* %190 to %struct.gx_device_s*
  call void @gx_set_device_only(%struct.gs_state_s* %188, %struct.gx_device_s* %191) #5
  %192 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default_set = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %192, i32 0, i32 60
  store i32 0, i32* %ctm_default_set, align 4, !tbaa !69
  %193 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %194 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset273 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %194, i32 0, i32 16
  %x274 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset273, i32 0, i32 0
  %195 = load i32, i32* %x274, align 4, !tbaa !156
  %x275 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin, i32 0, i32 0
  %196 = load i32, i32* %x275, align 4, !tbaa !139
  %add276 = add nsw i32 %195, %196
  %x277 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %197 = load i32, i32* %x277, align 4, !tbaa !131
  %shl278 = shl i32 %add276, %197
  %198 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset279 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %198, i32 0, i32 16
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset279, i32 0, i32 1
  %199 = load i32, i32* %y280, align 4, !tbaa !159
  %y281 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin, i32 0, i32 1
  %200 = load i32, i32* %y281, align 4, !tbaa !140
  %add282 = add nsw i32 %199, %200
  %y283 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %201 = load i32, i32* %y283, align 4, !tbaa !130
  %shl284 = shl i32 %add282, %201
  %call285 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %193, i32 %shl278, i32 %shl284) #5
  %x286 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %202 = load i32, i32* %x286, align 4, !tbaa !131
  %y287 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %203 = load i32, i32* %y287, align 4, !tbaa !130
  %or = or i32 %202, %203
  %cmp288 = icmp ne i32 %or, 0
  br i1 %cmp288, label %if.then.290, label %if.end.296

if.then.290:                                      ; preds = %if.end.271
  %204 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %x291 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %205 = load i32, i32* %x291, align 4, !tbaa !131
  %shl292 = shl i32 1, %205
  %y293 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %206 = load i32, i32* %y293, align 4, !tbaa !130
  %shl294 = shl i32 1, %206
  %call295 = call i32 @gx_scale_char_matrix(%struct.gs_state_s* %204, i32 %shl292, i32 %shl294) #5
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.290, %if.end.271
  %207 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache297 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %207, i32 0, i32 40
  %208 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache297, align 8, !tbaa !25
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %208, i32 0, i32 51
  %209 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm298 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %209, i32 0, i32 5
  %210 = bitcast %struct.gs_matrix_fixed_s* %ctm298 to %struct.gs_matrix_s*
  %211 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  %212 = bitcast %struct.gs_matrix_s* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 24, i32 4, i1 false), !tbaa.struct !179
  %x299 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %213 = load i32, i32* %x299, align 4, !tbaa !131
  %214 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale300 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %214, i32 0, i32 15
  %x301 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale300, i32 0, i32 0
  store i32 %213, i32* %x301, align 4, !tbaa !162
  %y302 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %215 = load i32, i32* %y302, align 4, !tbaa !130
  %216 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale303 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %216, i32 0, i32 15
  %y304 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale303, i32 0, i32 1
  store i32 %215, i32* %y304, align 4, !tbaa !161
  %p305 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y306 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p305, i32 0, i32 1
  store i32 0, i32* %y306, align 4, !tbaa !93
  %p307 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x308 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p307, i32 0, i32 0
  store i32 0, i32* %x308, align 4, !tbaa !90
  %217 = load i16, i16* %iwidth, align 2, !tbaa !168
  %conv309 = zext i16 %217 to i32
  %shl310 = shl i32 %conv309, 8
  %q311 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x312 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q311, i32 0, i32 0
  store i32 %shl310, i32* %x312, align 4, !tbaa !95
  %218 = load i16, i16* %iheight, align 2, !tbaa !168
  %conv313 = zext i16 %218 to i32
  %shl314 = shl i32 %conv313, 8
  %q315 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y316 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q315, i32 0, i32 1
  store i32 %shl314, i32* %y316, align 4, !tbaa !97
  %219 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call317 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %219, %struct.gs_fixed_rect_s* %clip_box) #5
  store i32 %call317, i32* %code18, align 4, !tbaa !5
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.296
  %220 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %220, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.321:                                       ; preds = %if.end.296
  %221 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call322 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %221) #5
  store i32 %call322, i32* %code18, align 4, !tbaa !5
  %222 = load i32, i32* %code18, align 4, !tbaa !5
  %cmp323 = icmp slt i32 %222, 0
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.321
  %223 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %223, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.326:                                       ; preds = %if.end.321
  %224 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %224) #5
  %225 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call327 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %225) #5
  store i32 %call327, i32* %code18, align 4, !tbaa !5
  %226 = load i32, i32* %code18, align 4, !tbaa !5
  %cmp328 = icmp slt i32 %226, 0
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.326
  %227 = load i32, i32* %code18, align 4, !tbaa !5
  store i32 %227, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.331:                                       ; preds = %if.end.326
  %228 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %228) #5
  %229 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice332 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %229, i32 0, i32 74
  store i32 3, i32* %in_cachedevice332, align 4, !tbaa !141
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.333

cleanup.333:                                      ; preds = %if.end.331, %if.then.330, %if.then.325, %if.then.320, %if.then.257, %cleanup.231, %if.then.143, %if.then.120, %if.then.102, %if.then.46, %if.then.30
  %230 = bitcast %struct.gs_fixed_point_s* %cdim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast %struct.gs_fixed_point_s* %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast %struct.gs_fixed_point_s* %cul to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = bitcast %struct.gs_fixed_point_s* %clr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast %struct.gs_fixed_point_s* %cll to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32* %code18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %236) #1
  %237 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast i16* %iheight to i8*
  call void @llvm.lifetime.end(i64 2, i8* %238) #1
  %239 = bitcast i16* %iwidth to i8*
  call void @llvm.lifetime.end(i64 2, i8* %239) #1
  %240 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  %241 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.349 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.333
  %246 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %246, i32 0, i32 48
  store i32 1, i32* %width_status, align 4, !tbaa !123
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349

cleanup.349:                                      ; preds = %cleanup.cont, %cleanup.333, %do.end.15, %if.then.8, %cleanup, %if.then
  %247 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = load i32, i32* %retval
  ret i32 %248
}

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @compute_glyph_raster_params(%struct.gs_show_enum_s* %penum, i32 %in_setcachedevice, i32* %alpha_bits, i32* %depth, %struct.gs_fixed_point_s* %subpix_origin, %struct.gs_log2_scale_point_s* %log2_scale) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %in_setcachedevice.addr = alloca i32, align 4
  %alpha_bits.addr = alloca i32*, align 8
  %depth.addr = alloca i32*, align 8
  %subpix_origin.addr = alloca %struct.gs_fixed_point_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %scx = alloca i32, align 4
  %rdx = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %in_setcachedevice, i32* %in_setcachedevice.addr, align 4, !tbaa !5
  store i32* %alpha_bits, i32** %alpha_bits.addr, align 8, !tbaa !1
  store i32* %depth, i32** %depth.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %subpix_origin, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !68
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %8 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !180
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %8(%struct.gx_device_s* %9, i32 0) #5
  %10 = load i32*, i32** %alpha_bits.addr, align 8, !tbaa !1
  store i32 %call, i32* %10, align 4, !tbaa !5
  %11 = load i32, i32* %in_setcachedevice.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.22

if.else:                                          ; preds = %entry
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 6
  %13 = load i32, i32* %current_point_valid, align 4, !tbaa !190
  %tobool2 = icmp ne i32 %13, 0
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !191
  %mul = fmul double %15, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call3 = call double @floor(double %add) #6
  %conv = fptosi double %call3 to i32
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 46
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  store i32 %conv, i32* %x4, align 4, !tbaa !139
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point5, i32 0, i32 1
  %18 = load double, double* %y, align 8, !tbaa !192
  %mul6 = fmul double %18, 2.560000e+02
  %add7 = fadd double %mul6, 5.000000e-01
  %call8 = call double @floor(double %add7) #6
  %conv9 = fptosi double %call8 to i32
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 46
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin10, i32 0, i32 1
  store i32 %conv9, i32* %y11, align 4, !tbaa !140
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %cond.end
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %22 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %22, 512
  %cmp14 = icmp ne i32 %and, 0
  br i1 %cmp14, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.13
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin17 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %24, i32 0, i32 46
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin17, i32 0, i32 1
  store i32 0, i32* %y18, align 4, !tbaa !170
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin19 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 46
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin19, i32 0, i32 0
  store i32 0, i32* %x20, align 4, !tbaa !169
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %cond.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %26 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fapi_log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %26, i32 0, i32 26
  %x23 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %fapi_log2_scale, i32 0, i32 0
  %27 = load i32, i32* %x23, align 4, !tbaa !41
  %cmp24 = icmp ne i32 %27, -1
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.22
  %28 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %29 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fapi_log2_scale27 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %29, i32 0, i32 26
  %30 = bitcast %struct.gs_log2_scale_point_s* %28 to i8*
  %31 = bitcast %struct.gs_log2_scale_point_s* %fapi_log2_scale27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 4, i1 false), !tbaa.struct !129
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.22
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %33 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %33, i32 0, i32 12
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %35 = load i32*, i32** %alpha_bits.addr, align 8, !tbaa !1
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  call void @gx_compute_text_oversampling(%struct.gs_show_enum_s* %32, %struct.gs_font_s* %34, i32 %36, %struct.gs_log2_scale_point_s* %37) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.26
  %38 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x30 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %38, i32 0, i32 0
  %39 = load i32, i32* %x30, align 4, !tbaa !131
  %40 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %40, i32 0, i32 1
  %41 = load i32, i32* %y31, align 4, !tbaa !130
  %add32 = add nsw i32 %39, %41
  %cmp33 = icmp eq i32 %add32, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.end.29
  br label %cond.end.49

cond.false.36:                                    ; preds = %if.end.29
  %42 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x37 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %42, i32 0, i32 0
  %43 = load i32, i32* %x37, align 4, !tbaa !131
  %44 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y38 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %44, i32 0, i32 1
  %45 = load i32, i32* %y38, align 4, !tbaa !130
  %add39 = add nsw i32 %43, %45
  %46 = load i32*, i32** %alpha_bits.addr, align 8, !tbaa !1
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %add39, %47
  br i1 %cmp40, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %cond.false.36
  %48 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x43 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %48, i32 0, i32 0
  %49 = load i32, i32* %x43, align 4, !tbaa !131
  %50 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y44 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %50, i32 0, i32 1
  %51 = load i32, i32* %y44, align 4, !tbaa !130
  %add45 = add nsw i32 %49, %51
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.false.36
  %52 = load i32*, i32** %alpha_bits.addr, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !5
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.42
  %cond48 = phi i32 [ %add45, %cond.true.42 ], [ %53, %cond.false.46 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.35
  %cond50 = phi i32 [ 1, %cond.true.35 ], [ %cond48, %cond.end.47 ]
  %54 = load i32*, i32** %depth.addr, align 8, !tbaa !1
  store i32 %cond50, i32* %54, align 4, !tbaa !5
  %55 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font51 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %55, i32 0, i32 12
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font51, align 8, !tbaa !89
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %56, i32 0, i32 3
  %57 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %call52 = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %57) #5
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.else.72

if.then.55:                                       ; preds = %cond.end.49
  %58 = bitcast i32* %scx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x56 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %59, i32 0, i32 0
  %60 = load i32, i32* %x56, align 4, !tbaa !131
  %sub = sub nsw i32 8, %60
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %conv57 = trunc i64 %shl to i32
  store i32 %conv57, i32* %scx, align 4, !tbaa !5
  %61 = bitcast i32* %rdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x58 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %62, i32 0, i32 0
  %63 = load i32, i32* %x58, align 4, !tbaa !131
  %sub59 = sub nsw i32 7, %63
  %sh_prom60 = zext i32 %sub59 to i64
  %shl61 = shl i64 1, %sh_prom60
  %conv62 = trunc i64 %shl61 to i32
  store i32 %conv62, i32* %rdx, align 4, !tbaa !5
  %64 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %64, i32 0, i32 1
  store i32 0, i32* %y63, align 4, !tbaa !140
  %65 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin64 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %65, i32 0, i32 46
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin64, i32 0, i32 0
  %66 = load i32, i32* %x65, align 4, !tbaa !169
  %67 = load i32, i32* %rdx, align 4, !tbaa !5
  %add66 = add nsw i32 %66, %67
  %68 = load i32, i32* %scx, align 4, !tbaa !5
  %and67 = and i32 %add66, %68
  %conv68 = sext i32 %and67 to i64
  %and69 = and i64 %conv68, 255
  %conv70 = trunc i64 %and69 to i32
  %69 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %69, i32 0, i32 0
  store i32 %conv70, i32* %x71, align 4, !tbaa !139
  %70 = bitcast i32* %rdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %scx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  br label %if.end.75

if.else.72:                                       ; preds = %cond.end.49
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 1
  store i32 0, i32* %y73, align 4, !tbaa !140
  %73 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %73, i32 0, i32 0
  store i32 0, i32* %x74, align 4, !tbaa !139
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.16
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @show_cache_setup(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %dev = alloca %struct.gx_device_memory_s*, align 8
  %dev2 = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 8
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !193
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_memory_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %8(%struct.gs_memory_s* %9, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %10, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_memory_s** %dev2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct3, align 8, !tbaa !31
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call4 = call i8* %13(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #5
  %15 = bitcast i8* %call4 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %15, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %16, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_device_memory_s* %17, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_memory_s* %21 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #5
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !47
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_memory_s* %26 to i8*
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 78
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !68
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %28, %struct.gs_memory_s* %29, %struct.gx_device_s* %31) #5
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %33 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %33, i32 0, i32 40
  store %struct.gx_device_memory_s* %32, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 78
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %device9, align 8, !tbaa !68
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %34, %struct.gs_memory_s* %35, %struct.gx_device_s* %37) #5
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %39 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %39, i32 0, i32 41
  store %struct.gx_device_memory_s* %38, %struct.gx_device_memory_s** %dev_cache2, align 8, !tbaa !26
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 78
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !68
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %42 = load float, float* %arrayidx, align 4, !tbaa !155
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %HWResolution11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i64 0
  store float %42, float* %arrayidx12, align 4, !tbaa !155
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 78
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %device13, align 8, !tbaa !68
  %HWResolution14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 22
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution14, i32 0, i64 1
  %46 = load float, float* %arrayidx15, align 4, !tbaa !155
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 1
  store float %46, float* %arrayidx17, align 4, !tbaa !155
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev, align 8, !tbaa !1
  %49 = bitcast %struct.gx_device_memory_s* %48 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %49, i32 1) #5
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_memory_s* %50 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %51, i32 1) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %52 = bitcast %struct.gx_device_memory_s** %dev2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gx_device_memory_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gx_alloc_char_bits(%struct.gs_font_dir_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, i16 zeroext, i16 zeroext, %struct.gs_log2_scale_point_s*, i32, %struct.cached_char_s**) #2

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_path_add_rectangle(%struct.gx_path_s*, i32, i32, i32, i32) #2

declare i32 @gx_cpath_clip(%struct.gs_state_s*, %struct.gx_clip_path_s*, %struct.gx_path_s*, i32) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare void @gx_free_cached_char(%struct.gs_font_dir_s*, %struct.cached_char_s*) #2

declare void @gx_set_device_only(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gx_scale_char_matrix(%struct.gs_state_s*, i32, i32) #2

declare i32 @gx_clip_to_rectangle(%struct.gs_state_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_set_device_color_1(%struct.gs_state_s*) #2

declare void @gs_swapcolors_quick(%struct.gs_state_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #2

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare void @gx_default_text_release(%struct.gs_text_enum_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @show_proceed(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %rfont = alloca %struct.gs_font_s*, align 8
  %wmode = alloca i32, align 4
  %next_char_glyph = alloca i32 (%struct.gs_text_enum_s*, i64*, i64*)*, align 8
  %chr = alloca i64, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %start = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %cleanup.dest.slot = alloca i32
  %alpha_bits = alloca i32, align 4
  %depth61 = alloca i32, align 4
  %subpix_origin = alloca %struct.gs_fixed_point_s, align 4
  %box_path = alloca %struct.gx_path_s, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %alpha_bits215 = alloca i32, align 4
  %depth216 = alloca i32, align 4
  %log2_scale217 = alloca %struct.gs_log2_scale_point_s, align 4
  %subpix_origin218 = alloca %struct.gs_fixed_point_s, align 4
  %cpt = alloca %struct.gs_fixed_point_s, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %tx328 = alloca double, align 8
  %ty332 = alloca double, align 8
  %fpx = alloca double, align 8
  %fpy = alloca double, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %7 = load i32, i32* %depth, align 4, !tbaa !44
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 70
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 0
  %font3 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font3, align 8, !tbaa !86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_font_s* [ %9, %cond.true ], [ %11, %cond.false ]
  store %struct.gs_font_s* %cond, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %12 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 16
  %14 = load i32, i32* %WMode, align 4, !tbaa !154
  store i32 %14, i32* %wmode, align 4, !tbaa !5
  %15 = bitcast i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 20
  %next_char_glyph4 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %17 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph4, align 8, !tbaa !116
  store i32 (%struct.gs_text_enum_s*, i64*, i64*)* %17, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !1
  %18 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %24, i32 0, i32 32
  %25 = load i32, i32* %charpath_flag, align 4, !tbaa !62
  %cmp5 = icmp eq i32 %25, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %cond.end
  %26 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %26, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %27 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %27, 2560
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.end.13, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 2
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !194
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %29, i32 0, i32 0
  %30 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !196
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %30, i32 0, i32 4
  %31 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !202
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 69
  %arrayidx9 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color8, i32 0, i64 0
  %dev_color10 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 2
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color10, align 8, !tbaa !194
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %35 = bitcast %struct.gs_state_s* %34 to %struct.gs_imager_state_s*
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 78
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !68
  %call = call i32 %31(%struct.gx_device_color_s* %33, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %37, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %38, 0
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end:                                           ; preds = %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  br label %more

more:                                             ; preds = %if.end.412, %if.end.13
  %40 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %40, i32 0, i32 19
  %depth15 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack14, i32 0, i32 0
  %41 = load i32, i32* %depth15, align 4, !tbaa !44
  %cmp16 = icmp slt i32 %41, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %more
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 70
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font18, align 8, !tbaa !71
  br label %cond.end.26

cond.false.19:                                    ; preds = %more
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack20 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 19
  %depth21 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack20, i32 0, i32 0
  %45 = load i32, i32* %depth21, align 4, !tbaa !44
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack22 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %46, i32 0, i32 19
  %items23 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items23, i32 0, i64 %idxprom
  %font25 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx24, i32 0, i32 0
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %font25, align 8, !tbaa !86
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.19, %cond.true.17
  %cond27 = phi %struct.gs_font_s* [ %43, %cond.true.17 ], [ %47, %cond.false.19 ]
  store %struct.gs_font_s* %cond27, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 12
  store %struct.gs_font_s* %48, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %50 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %50, i32 0, i32 34
  %51 = load i32, i32* %can_cache, align 4, !tbaa !66
  %cmp28 = icmp sge i32 %51, 0
  br i1 %cmp28, label %if.then.29, label %if.else.197

if.then.29:                                       ; preds = %cond.end.26
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then.29
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %52, i32 0, i32 17
  %53 = load i32, i32* %index, align 4, !tbaa !204
  store i32 %53, i32* %start, align 4, !tbaa !5
  %54 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %54, i32 0, i32 18
  %55 = load i32, i32* %xy_index, align 4, !tbaa !205
  %inc = add i32 %55, 1
  store i32 %inc, i32* %xy_index, align 4, !tbaa !205
  %56 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !1
  %57 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_show_enum_s* %57 to %struct.gs_text_enum_s*
  %call30 = call i32 %56(%struct.gs_text_enum_s* %58, i64* %chr, i64* %glyph) #5
  store i32 %call30, i32* %code, align 4, !tbaa !5
  switch i32 %call30, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.32
    i32 0, label %sw.bb.43
  ]

sw.default:                                       ; preds = %for.cond
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

sw.bb:                                            ; preds = %for.cond
  %60 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call31 = call i32 @show_finish(%struct.gs_show_enum_s* %60) #5
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

sw.bb.32:                                         ; preds = %for.cond
  %61 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack33 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %61, i32 0, i32 19
  %depth34 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack33, i32 0, i32 0
  %62 = load i32, i32* %depth34, align 4, !tbaa !44
  %idxprom35 = sext i32 %62 to i64
  %63 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack36 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %63, i32 0, i32 19
  %items37 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items37, i32 0, i64 %idxprom35
  %font39 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx38, i32 0, i32 0
  %64 = load %struct.gs_font_s*, %struct.gs_font_s** %font39, align 8, !tbaa !86
  store %struct.gs_font_s* %64, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %66 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font40 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %66, i32 0, i32 12
  store %struct.gs_font_s* %65, %struct.gs_font_s** %current_font40, align 8, !tbaa !89
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !167
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call41 = call i32 @show_state_setup(%struct.gs_show_enum_s* %68) #5
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %69 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pair42 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %69, i32 0, i32 16
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair42, align 8, !tbaa !163
  br label %sw.bb.43

sw.bb.43:                                         ; preds = %for.cond, %sw.bb.32
  %70 = load i64, i64* %chr, align 8, !tbaa !85
  %71 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %71, i32 0, i32 28
  %current_char = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 0
  store i64 %70, i64* %current_char, align 8, !tbaa !142
  %72 = load i64, i64* %glyph, align 8, !tbaa !85
  %cmp44 = icmp eq i64 %72, 2147483647
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %sw.bb.43
  %73 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %encode_char = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %73, i32 0, i32 39
  %74 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !165
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %76 = load i64, i64* %chr, align 8, !tbaa !85
  %call46 = call i64 %74(%struct.gs_font_s* %75, i64 %76, i32 0) #5
  store i64 %call46, i64* %glyph, align 8, !tbaa !85
  %77 = load i64, i64* %glyph, align 8, !tbaa !85
  %78 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned47 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %78, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned47, i32 0, i32 1
  store i64 %77, i64* %current_glyph, align 8, !tbaa !166
  br label %if.end.50

if.else:                                          ; preds = %sw.bb.43
  %79 = load i64, i64* %glyph, align 8, !tbaa !85
  %80 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned48 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %80, i32 0, i32 28
  %current_glyph49 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned48, i32 0, i32 1
  store i64 %79, i64* %current_glyph49, align 8, !tbaa !166
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.45
  %81 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %index51 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %81, i32 0, i32 17
  %82 = load i32, i32* %index51, align 4, !tbaa !204
  %83 = load i32, i32* %start, align 4, !tbaa !5
  %sub = sub i32 %82, %83
  %84 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %bytes_decoded = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %84, i32 0, i32 22
  store i32 %sub, i32* %bytes_decoded, align 4, !tbaa !206
  %85 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs52 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %85, i32 0, i32 30
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs52, align 8, !tbaa !9
  %color53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %86, i32 0, i32 69
  %arrayidx54 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color53, i32 0, i64 0
  %dev_color55 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx54, i32 0, i32 2
  %87 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color55, align 8, !tbaa !194
  %type56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %87, i32 0, i32 0
  %88 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type56, align 8, !tbaa !196
  %cmp57 = icmp eq %struct.gx_device_color_type_s* %88, @gx_dc_type_data_pure
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.50
  %89 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs58 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %89, i32 0, i32 30
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs58, align 8, !tbaa !9
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 10
  %91 = load i32, i32* %log_op, align 4, !tbaa !207
  %and59 = and i32 %91, 563
  %cmp60 = icmp eq i32 %and59, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.50
  %92 = phi i1 [ false, %if.end.50 ], [ %cmp60, %land.rhs ]
  %land.ext = zext i1 %92 to i32
  %93 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %is_pure_color = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %93, i32 0, i32 14
  store i32 %land.ext, i32* %is_pure_color, align 4, !tbaa !133
  %94 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = bitcast i32* %depth61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call62 = call i32 @compute_glyph_raster_params(%struct.gs_show_enum_s* %97, i32 0, i32* %alpha_bits, i32* %depth61, %struct.gs_fixed_point_s* %subpix_origin, %struct.gs_log2_scale_point_s* %log2_scale) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %98, 0
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.end
  %99 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %land.end
  %100 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %cmp66 = icmp eq %struct.cached_fm_pair_s* %100, null
  br i1 %cmp66, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %if.end.65
  %101 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %102 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %102, i32 0, i32 72
  %103 = bitcast %struct.gs_matrix_fixed_s* %char_tm to %struct.gs_matrix_s*
  %104 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag68 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %104, i32 0, i32 32
  %105 = load i32, i32* %charpath_flag68, align 4, !tbaa !62
  %cmp69 = icmp ne i32 %105, 0
  %conv = zext i1 %cmp69 to i32
  %call70 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %101, %struct.gs_matrix_s* %103, %struct.gs_log2_scale_point_s* %log2_scale, i32 %conv, %struct.cached_fm_pair_s** %pair) #5
  store i32 %call70, i32* %code, align 4, !tbaa !5
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %106, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.67
  %107 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.then.67
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.65
  %108 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %109 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pair76 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %109, i32 0, i32 16
  store %struct.cached_fm_pair_s* %108, %struct.cached_fm_pair_s** %pair76, align 8, !tbaa !163
  %110 = load i64, i64* %glyph, align 8, !tbaa !85
  %cmp77 = icmp eq i64 %110, 2147483647
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.end.75
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %112 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %113 = load i64, i64* %glyph, align 8, !tbaa !85
  %114 = load i32, i32* %wmode, align 4, !tbaa !5
  %115 = load i32, i32* %depth61, align 4, !tbaa !5
  %call81 = call %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s* %111, %struct.cached_fm_pair_s* %112, i64 %113, i32 %114, i32 %115, %struct.gs_fixed_point_s* %subpix_origin) #5
  store %struct.cached_char_s* %call81, %struct.cached_char_s** %cc, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.79, %if.end.80, %if.then.73, %if.then.64
  %116 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %depth61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.424 [
    i32 0, label %cleanup.cont
    i32 6, label %no_cache
  ]

cleanup.cont:                                     ; preds = %cleanup
  %119 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.cached_char_s* %119, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %cleanup.cont
  br label %no_cache

if.end.87:                                        ; preds = %cleanup.cont
  %120 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag88 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %120, i32 0, i32 32
  %121 = load i32, i32* %charpath_flag88, align 4, !tbaa !62
  %cmp89 = icmp eq i32 %121, 1
  br i1 %cmp89, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.87
  br label %do.body

do.body:                                          ; preds = %if.then.91
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.173

if.else.92:                                       ; preds = %if.end.87
  %122 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag93 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %122, i32 0, i32 32
  %123 = load i32, i32* %charpath_flag93, align 4, !tbaa !62
  %cmp94 = icmp ne i32 %123, 0
  br i1 %cmp94, label %if.then.96, label %if.else.154

if.then.96:                                       ; preds = %if.else.92
  %124 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %124) #1
  %125 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  %126 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %128 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  %129 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %130, i32 0, i32 61
  %131 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !70
  %call97 = call i32 @gx_path_current_point(%struct.gx_path_s* %131, %struct.gs_fixed_point_s* %pt) #5
  store i32 %call97, i32* %code, align 4, !tbaa !5
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %132, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.96
  %133 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.101:                                       ; preds = %if.then.96
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %134 = load i32, i32* %x, align 4, !tbaa !139
  %135 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %135, i32 0, i32 16
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %136 = load i32, i32* %x102, align 4, !tbaa !156
  %sub103 = sub nsw i32 %134, %136
  %add = add nsw i32 %sub103, 128
  %conv104 = sext i32 %add to i64
  %and105 = and i64 %conv104, -256
  %137 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ftx = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %137, i32 0, i32 37
  %138 = load i32, i32* %ftx, align 4, !tbaa !107
  %shl = shl i32 %138, 8
  %conv106 = sext i32 %shl to i64
  %add107 = add nsw i64 %and105, %conv106
  %conv108 = trunc i64 %add107 to i32
  store i32 %conv108, i32* %llx, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %139 = load i32, i32* %y, align 4, !tbaa !140
  %140 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %offset109 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %140, i32 0, i32 16
  %y110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset109, i32 0, i32 1
  %141 = load i32, i32* %y110, align 4, !tbaa !159
  %sub111 = sub nsw i32 %139, %141
  %add112 = add nsw i32 %sub111, 128
  %conv113 = sext i32 %add112 to i64
  %and114 = and i64 %conv113, -256
  %142 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fty = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %142, i32 0, i32 38
  %143 = load i32, i32* %fty, align 4, !tbaa !110
  %shl115 = shl i32 %143, 8
  %conv116 = sext i32 %shl115 to i64
  %add117 = add nsw i64 %and114, %conv116
  %conv118 = trunc i64 %add117 to i32
  store i32 %conv118, i32* %lly, align 4, !tbaa !5
  %144 = load i32, i32* %llx, align 4, !tbaa !5
  %145 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %145, i32 0, i32 1
  %146 = load i16, i16* %width, align 2, !tbaa !208
  %conv119 = zext i16 %146 to i32
  %shl120 = shl i32 %conv119, 8
  %add121 = add nsw i32 %144, %shl120
  store i32 %add121, i32* %urx, align 4, !tbaa !5
  %147 = load i32, i32* %lly, align 4, !tbaa !5
  %148 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %148, i32 0, i32 2
  %149 = load i16, i16* %height, align 2, !tbaa !209
  %conv122 = zext i16 %149 to i32
  %shl123 = shl i32 %conv122, 8
  %add124 = add nsw i32 %147, %shl123
  store i32 %add124, i32* %ury, align 4, !tbaa !5
  %150 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %150, i32 0, i32 1
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !171
  %call125 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %box_path, %struct.gx_path_s* null, %struct.gs_memory_s* %151) #5
  %152 = load i32, i32* %llx, align 4, !tbaa !5
  %153 = load i32, i32* %lly, align 4, !tbaa !5
  %154 = load i32, i32* %urx, align 4, !tbaa !5
  %155 = load i32, i32* %ury, align 4, !tbaa !5
  %call126 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %box_path, i32 %152, i32 %153, i32 %154, i32 %155) #5
  store i32 %call126, i32* %code, align 4, !tbaa !5
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %cmp127 = icmp sge i32 %156, 0
  br i1 %cmp127, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %if.end.101
  %157 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %157, i32 0, i32 76
  %158 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !67
  %path130 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %158, i32 0, i32 61
  %159 = load %struct.gx_path_s*, %struct.gx_path_s** %path130, align 8, !tbaa !70
  %160 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag131 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %160, i32 0, i32 32
  %161 = load i32, i32* %charpath_flag131, align 4, !tbaa !62
  %call132 = call i32 @gx_path_add_char_path(%struct.gx_path_s* %159, %struct.gx_path_s* %box_path, i32 %161) #5
  store i32 %call132, i32* %code, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.129, %if.end.101
  %162 = load i32, i32* %code, align 4, !tbaa !5
  %cmp134 = icmp sge i32 %162, 0
  br i1 %cmp134, label %if.then.136, label %if.end.141

if.then.136:                                      ; preds = %if.end.133
  %163 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path137 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %163, i32 0, i32 61
  %164 = load %struct.gx_path_s*, %struct.gx_path_s** %path137, align 8, !tbaa !70
  %x138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %165 = load i32, i32* %x138, align 4, !tbaa !139
  %y139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %166 = load i32, i32* %y139, align 4, !tbaa !140
  %call140 = call i32 @gx_path_add_point(%struct.gx_path_s* %164, i32 %165, i32 %166) #5
  store i32 %call140, i32* %code, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.136, %if.end.133
  call void @gx_path_free(%struct.gx_path_s* %box_path, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #5
  %167 = load i32, i32* %code, align 4, !tbaa !5
  %cmp142 = icmp slt i32 %167, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.141
  %168 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %168, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.145:                                       ; preds = %if.end.141
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.145, %if.then.144, %if.then.100
  %169 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast %struct.gx_path_s* %box_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %174) #1
  %cleanup.dest.152 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.152, label %cleanup.424 [
    i32 0, label %cleanup.cont.153
  ]

cleanup.cont.153:                                 ; preds = %cleanup.146
  br label %if.end.172

if.else.154:                                      ; preds = %if.else.92
  %175 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text155 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %175, i32 0, i32 0
  %operation156 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text155, i32 0, i32 0
  %176 = load i32, i32* %operation156, align 4, !tbaa !38
  %and157 = and i32 %176, 512
  %cmp158 = icmp ne i32 %and157, 0
  br i1 %cmp158, label %if.end.171, label %if.then.160

if.then.160:                                      ; preds = %if.else.154
  %177 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %178 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %call161 = call i32 @gx_image_cached_char(%struct.gs_show_enum_s* %177, %struct.cached_char_s* %178) #5
  store i32 %call161, i32* %code, align 4, !tbaa !5
  %179 = load i32, i32* %code, align 4, !tbaa !5
  %cmp162 = icmp slt i32 %179, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.then.160
  %180 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %180, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.else.165:                                      ; preds = %if.then.160
  %181 = load i32, i32* %code, align 4, !tbaa !5
  %cmp166 = icmp sgt i32 %181, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.else.165
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc, align 8, !tbaa !1
  br label %no_cache

if.end.169:                                       ; preds = %if.else.165
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.else.154
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %cleanup.cont.153
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %do.end
  %182 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %182, i32 0, i32 45
  store i32 0, i32* %use_wxy_float, align 4, !tbaa !126
  %183 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %183, i32 0, i32 44
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float, i32 0, i32 1
  store double 0.000000e+00, double* %y174, align 8, !tbaa !127
  %184 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float175 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %184, i32 0, i32 44
  %x176 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float175, i32 0, i32 0
  store double 0.000000e+00, double* %x176, align 8, !tbaa !128
  %185 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text177 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %185, i32 0, i32 0
  %operation178 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text177, i32 0, i32 0
  %186 = load i32, i32* %operation178, align 4, !tbaa !38
  %and179 = and i32 %186, 65984
  %cmp180 = icmp ne i32 %and179, 0
  br i1 %cmp180, label %if.then.182, label %if.else.191

if.then.182:                                      ; preds = %if.end.173
  %187 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %187, i32 0, i32 15
  %x183 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 0
  %188 = load i32, i32* %x183, align 4, !tbaa !210
  %189 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy184 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %189, i32 0, i32 43
  %x185 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy184, i32 0, i32 0
  store i32 %188, i32* %x185, align 4, !tbaa !125
  %190 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wxy186 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %190, i32 0, i32 15
  %y187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy186, i32 0, i32 1
  %191 = load i32, i32* %y187, align 4, !tbaa !211
  %192 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy188 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %192, i32 0, i32 43
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy188, i32 0, i32 1
  store i32 %191, i32* %y189, align 4, !tbaa !124
  %193 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call190 = call i32 @show_move(%struct.gs_show_enum_s* %193) #5
  store i32 %call190, i32* %code, align 4, !tbaa !5
  br label %if.end.194

if.else.191:                                      ; preds = %if.end.173
  %194 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %195 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wxy192 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %195, i32 0, i32 15
  %call193 = call i32 @show_fast_move(%struct.gs_state_s* %194, %struct.gs_fixed_point_s* %wxy192) #5
  store i32 %call193, i32* %code, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.191, %if.then.182
  %196 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %196, 0
  br i1 %tobool, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.194
  %197 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.196:                                       ; preds = %if.end.194
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.196
  br label %for.cond

if.else.197:                                      ; preds = %cond.end.26
  %198 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index198 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %198, i32 0, i32 18
  %199 = load i32, i32* %xy_index198, align 4, !tbaa !205
  %inc199 = add i32 %199, 1
  store i32 %inc199, i32* %xy_index198, align 4, !tbaa !205
  %200 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !1
  %201 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %202 = bitcast %struct.gs_show_enum_s* %201 to %struct.gs_text_enum_s*
  %call200 = call i32 %200(%struct.gs_text_enum_s* %202, i64* %chr, i64* %glyph) #5
  store i32 %call200, i32* %code, align 4, !tbaa !5
  switch i32 %call200, label %sw.default.201 [
    i32 2, label %sw.bb.202
    i32 1, label %sw.bb.204
    i32 0, label %sw.bb.214
  ]

sw.default.201:                                   ; preds = %if.else.197
  %203 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

sw.bb.202:                                        ; preds = %if.else.197
  %204 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call203 = call i32 @show_finish(%struct.gs_show_enum_s* %204) #5
  store i32 %call203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

sw.bb.204:                                        ; preds = %if.else.197
  %205 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack205 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %205, i32 0, i32 19
  %depth206 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack205, i32 0, i32 0
  %206 = load i32, i32* %depth206, align 4, !tbaa !44
  %idxprom207 = sext i32 %206 to i64
  %207 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fstack208 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %207, i32 0, i32 19
  %items209 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack208, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items209, i32 0, i64 %idxprom207
  %font211 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx210, i32 0, i32 0
  %208 = load %struct.gs_font_s*, %struct.gs_font_s** %font211, align 8, !tbaa !86
  store %struct.gs_font_s* %208, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %209 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %210 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font212 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %210, i32 0, i32 12
  store %struct.gs_font_s* %209, %struct.gs_font_s** %current_font212, align 8, !tbaa !89
  %211 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call213 = call i32 @show_state_setup(%struct.gs_show_enum_s* %211) #5
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  br label %sw.bb.214

sw.bb.214:                                        ; preds = %if.else.197, %sw.bb.204
  %212 = bitcast i32* %alpha_bits215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i32* %depth216 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = bitcast %struct.gs_log2_scale_point_s* %log2_scale217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  %215 = bitcast %struct.gs_fixed_point_s* %subpix_origin218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #1
  %216 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call219 = call i32 @compute_glyph_raster_params(%struct.gs_show_enum_s* %216, i32 0, i32* %alpha_bits215, i32* %depth216, %struct.gs_fixed_point_s* %subpix_origin218, %struct.gs_log2_scale_point_s* %log2_scale217) #5
  store i32 %call219, i32* %code, align 4, !tbaa !5
  %217 = load i32, i32* %code, align 4, !tbaa !5
  %cmp220 = icmp slt i32 %217, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %sw.bb.214
  %218 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.238

if.end.223:                                       ; preds = %sw.bb.214
  %219 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %cmp224 = icmp eq %struct.cached_fm_pair_s* %219, null
  br i1 %cmp224, label %if.then.226, label %if.end.236

if.then.226:                                      ; preds = %if.end.223
  %220 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %221 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm227 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %221, i32 0, i32 72
  %222 = bitcast %struct.gs_matrix_fixed_s* %char_tm227 to %struct.gs_matrix_s*
  %223 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag228 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %223, i32 0, i32 32
  %224 = load i32, i32* %charpath_flag228, align 4, !tbaa !62
  %cmp229 = icmp ne i32 %224, 0
  %conv230 = zext i1 %cmp229 to i32
  %call231 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %220, %struct.gs_matrix_s* %222, %struct.gs_log2_scale_point_s* %log2_scale217, i32 %conv230, %struct.cached_fm_pair_s** %pair) #5
  store i32 %call231, i32* %code, align 4, !tbaa !5
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp232 = icmp slt i32 %225, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.226
  %226 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %226, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.238

if.end.235:                                       ; preds = %if.then.226
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.223
  %227 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %228 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pair237 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %228, i32 0, i32 16
  store %struct.cached_fm_pair_s* %227, %struct.cached_fm_pair_s** %pair237, align 8, !tbaa !163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.238

cleanup.238:                                      ; preds = %if.end.236, %if.then.234, %if.then.222
  %229 = bitcast %struct.gs_fixed_point_s* %subpix_origin218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast %struct.gs_log2_scale_point_s* %log2_scale217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i32* %depth216 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %alpha_bits215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %cleanup.dest.242 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.242, label %cleanup.424 [
    i32 0, label %cleanup.cont.243
  ]

cleanup.cont.243:                                 ; preds = %cleanup.238
  br label %sw.epilog.244

sw.epilog.244:                                    ; preds = %cleanup.cont.243
  %233 = load i64, i64* %chr, align 8, !tbaa !85
  %234 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned245 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %234, i32 0, i32 28
  %current_char246 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned245, i32 0, i32 0
  store i64 %233, i64* %current_char246, align 8, !tbaa !142
  %235 = load i64, i64* %glyph, align 8, !tbaa !85
  %cmp247 = icmp eq i64 %235, 2147483647
  br i1 %cmp247, label %if.then.249, label %if.end.252

if.then.249:                                      ; preds = %sw.epilog.244
  %236 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %encode_char250 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %236, i32 0, i32 39
  %237 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char250, align 8, !tbaa !165
  %238 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %239 = load i64, i64* %chr, align 8, !tbaa !85
  %call251 = call i64 %237(%struct.gs_font_s* %238, i64 %239, i32 0) #5
  store i64 %call251, i64* %glyph, align 8, !tbaa !85
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.249, %sw.epilog.244
  %240 = load i64, i64* %glyph, align 8, !tbaa !85
  %241 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned253 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %241, i32 0, i32 28
  %current_glyph254 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned253, i32 0, i32 1
  store i64 %240, i64* %current_glyph254, align 8, !tbaa !166
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc, align 8, !tbaa !1
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.252
  br label %no_cache

no_cache:                                         ; preds = %if.end.255, %cleanup, %if.then.168, %if.then.86
  %242 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call256 = call i32 @gs_gsave(%struct.gs_state_s* %242) #5
  store i32 %call256, i32* %code, align 4, !tbaa !5
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %no_cache
  %243 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %243, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.260:                                       ; preds = %no_cache
  %244 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %245 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font261 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %245, i32 0, i32 70
  store %struct.gs_font_s* %244, %struct.gs_font_s** %font261, align 8, !tbaa !71
  %246 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %246, i32 0, i32 74
  store i32 0, i32* %in_cachedevice, align 4, !tbaa !141
  %247 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag262 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %247, i32 0, i32 32
  %248 = load i32, i32* %charpath_flag262, align 4, !tbaa !62
  %249 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %249, i32 0, i32 75
  store i32 %248, i32* %in_charpath, align 4, !tbaa !63
  %250 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %show_gstate263 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %250, i32 0, i32 33
  %251 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate263, align 8, !tbaa !24
  %252 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp264 = icmp eq %struct.gs_state_s* %251, %252
  br i1 %cmp264, label %cond.true.266, label %cond.false.267

cond.true.266:                                    ; preds = %if.end.260
  %253 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %253, i32 0, i32 56
  %254 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !212
  br label %cond.end.269

cond.false.267:                                   ; preds = %if.end.260
  %255 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %show_gstate268 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %255, i32 0, i32 33
  %256 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate268, align 8, !tbaa !24
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.267, %cond.true.266
  %cond270 = phi %struct.gs_state_s* [ %254, %cond.true.266 ], [ %256, %cond.false.267 ]
  %257 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate271 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %257, i32 0, i32 76
  store %struct.gs_state_s* %cond270, %struct.gs_state_s** %show_gstate271, align 8, !tbaa !67
  %258 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %stroke_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %258, i32 0, i32 29
  store i32 0, i32* %stroke_adjust, align 4, !tbaa !213
  %259 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  %260 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %260, i32 0, i32 6
  %261 = load i32, i32* %current_point_valid, align 4, !tbaa !190
  %tobool272 = icmp ne i32 %261, 0
  br i1 %tobool272, label %cond.false.274, label %cond.true.273

cond.true.273:                                    ; preds = %cond.end.269
  br label %cond.end.287

cond.false.274:                                   ; preds = %cond.end.269
  %262 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %262, i32 0, i32 7
  %x275 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %263 = load double, double* %x275, align 8, !tbaa !191
  %mul = fmul double %263, 2.560000e+02
  %add276 = fadd double %mul, 5.000000e-01
  %call277 = call double @floor(double %add276) #6
  %conv278 = fptosi double %call277 to i32
  %x279 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  store i32 %conv278, i32* %x279, align 4, !tbaa !139
  %264 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point280 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %264, i32 0, i32 7
  %y281 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point280, i32 0, i32 1
  %265 = load double, double* %y281, align 8, !tbaa !192
  %mul282 = fmul double %265, 2.560000e+02
  %add283 = fadd double %mul282, 5.000000e-01
  %call284 = call double @floor(double %add283) #6
  %conv285 = fptosi double %call284 to i32
  %y286 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  store i32 %conv285, i32* %y286, align 4, !tbaa !140
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.274, %cond.true.273
  %cond288 = phi i32 [ -14, %cond.true.273 ], [ 0, %cond.false.274 ]
  store i32 %cond288, i32* %code, align 4, !tbaa !5
  %cmp289 = icmp slt i32 %cond288, 0
  br i1 %cmp289, label %if.then.291, label %if.end.301

if.then.291:                                      ; preds = %cond.end.287
  %266 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text292 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %266, i32 0, i32 0
  %operation293 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text292, i32 0, i32 0
  %267 = load i32, i32* %operation293, align 4, !tbaa !38
  %and294 = and i32 %267, 512
  %cmp295 = icmp ne i32 %and294, 0
  br i1 %cmp295, label %if.end.298, label %if.then.297

if.then.297:                                      ; preds = %if.then.291
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.387

if.end.298:                                       ; preds = %if.then.291
  %y299 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  store i32 0, i32* %y299, align 4, !tbaa !140
  %x300 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  store i32 0, i32* %x300, align 4, !tbaa !139
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.298, %cond.end.287
  %x302 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %268 = load i32, i32* %x302, align 4, !tbaa !139
  %269 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %269, i32 0, i32 46
  %x303 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  store i32 %268, i32* %x303, align 4, !tbaa !169
  %y304 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %270 = load i32, i32* %y304, align 4, !tbaa !140
  %271 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin305 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %271, i32 0, i32 46
  %y306 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin305, i32 0, i32 1
  store i32 %270, i32* %y306, align 4, !tbaa !170
  %272 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call307 = call i32 @gs_currentcharmatrix(%struct.gs_state_s* %272, %struct.gs_matrix_s* null, i32 1) #5
  %273 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %273, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 8
  %274 = load i32, i32* %txy_fixed_valid, align 4, !tbaa !103
  %tobool308 = icmp ne i32 %274, 0
  br i1 %tobool308, label %land.lhs.true.309, label %if.else.327

land.lhs.true.309:                                ; preds = %if.end.301
  %275 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm310 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %275, i32 0, i32 72
  %txy_fixed_valid311 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm310, i32 0, i32 8
  %276 = load i32, i32* %txy_fixed_valid311, align 4, !tbaa !104
  %tobool312 = icmp ne i32 %276, 0
  br i1 %tobool312, label %if.then.313, label %if.else.327

if.then.313:                                      ; preds = %land.lhs.true.309
  %277 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %277) #1
  %278 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm314 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %278, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm314, i32 0, i32 6
  %279 = load i32, i32* %tx_fixed, align 4, !tbaa !106
  store i32 %279, i32* %tx, align 4, !tbaa !5
  %280 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #1
  %281 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm315 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %281, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm315, i32 0, i32 7
  %282 = load i32, i32* %ty_fixed, align 4, !tbaa !109
  store i32 %282, i32* %ty, align 4, !tbaa !5
  %283 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call316 = call i32 @gs_settocharmatrix(%struct.gs_state_s* %283) #5
  %284 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm317 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %284, i32 0, i32 5
  %tx_fixed318 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm317, i32 0, i32 6
  %285 = load i32, i32* %tx_fixed318, align 4, !tbaa !106
  %286 = load i32, i32* %tx, align 4, !tbaa !5
  %sub319 = sub nsw i32 %285, %286
  %x320 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %287 = load i32, i32* %x320, align 4, !tbaa !139
  %add321 = add nsw i32 %287, %sub319
  store i32 %add321, i32* %x320, align 4, !tbaa !139
  %288 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm322 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %288, i32 0, i32 5
  %ty_fixed323 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm322, i32 0, i32 7
  %289 = load i32, i32* %ty_fixed323, align 4, !tbaa !109
  %290 = load i32, i32* %ty, align 4, !tbaa !5
  %sub324 = sub nsw i32 %289, %290
  %y325 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %291 = load i32, i32* %y325, align 4, !tbaa !140
  %add326 = add nsw i32 %291, %sub324
  store i32 %add326, i32* %y325, align 4, !tbaa !140
  %292 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  br label %if.end.378

if.else.327:                                      ; preds = %land.lhs.true.309, %if.end.301
  %294 = bitcast double* %tx328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %294) #1
  %295 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm329 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %295, i32 0, i32 5
  %tx330 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm329, i32 0, i32 4
  %296 = load float, float* %tx330, align 4, !tbaa !112
  %conv331 = fpext float %296 to double
  store double %conv331, double* %tx328, align 8, !tbaa !113
  %297 = bitcast double* %ty332 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %297) #1
  %298 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm333 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %298, i32 0, i32 5
  %ty334 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm333, i32 0, i32 5
  %299 = load float, float* %ty334, align 4, !tbaa !115
  %conv335 = fpext float %299 to double
  store double %conv335, double* %ty332, align 8, !tbaa !113
  %300 = bitcast double* %fpx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %300) #1
  %301 = bitcast double* %fpy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %301) #1
  %302 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call336 = call i32 @gs_settocharmatrix(%struct.gs_state_s* %302) #5
  %x337 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %303 = load i32, i32* %x337, align 4, !tbaa !139
  %conv338 = sitofp i32 %303 to double
  %mul339 = fmul double %conv338, 3.906250e-03
  %304 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm340 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %304, i32 0, i32 5
  %tx341 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm340, i32 0, i32 4
  %305 = load float, float* %tx341, align 4, !tbaa !112
  %conv342 = fpext float %305 to double
  %306 = load double, double* %tx328, align 8, !tbaa !113
  %sub343 = fsub double %conv342, %306
  %add344 = fadd double %mul339, %sub343
  store double %add344, double* %fpx, align 8, !tbaa !113
  %y345 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %307 = load i32, i32* %y345, align 4, !tbaa !140
  %conv346 = sitofp i32 %307 to double
  %mul347 = fmul double %conv346, 3.906250e-03
  %308 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm348 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %308, i32 0, i32 5
  %ty349 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm348, i32 0, i32 5
  %309 = load float, float* %ty349, align 4, !tbaa !115
  %conv350 = fpext float %309 to double
  %310 = load double, double* %ty332, align 8, !tbaa !113
  %sub351 = fsub double %conv350, %310
  %add352 = fadd double %mul347, %sub351
  store double %add352, double* %fpy, align 8, !tbaa !113
  %311 = load double, double* %fpx, align 8, !tbaa !113
  %cmp353 = fcmp oge double %311, -8.388608e+06
  br i1 %cmp353, label %land.lhs.true.355, label %if.then.364

land.lhs.true.355:                                ; preds = %if.else.327
  %312 = load double, double* %fpx, align 8, !tbaa !113
  %cmp356 = fcmp olt double %312, 8.388608e+06
  br i1 %cmp356, label %land.lhs.true.358, label %if.then.364

land.lhs.true.358:                                ; preds = %land.lhs.true.355
  %313 = load double, double* %fpy, align 8, !tbaa !113
  %cmp359 = fcmp oge double %313, -8.388608e+06
  br i1 %cmp359, label %land.lhs.true.361, label %if.then.364

land.lhs.true.361:                                ; preds = %land.lhs.true.358
  %314 = load double, double* %fpy, align 8, !tbaa !113
  %cmp362 = fcmp olt double %314, 8.388608e+06
  br i1 %cmp362, label %if.end.365, label %if.then.364

if.then.364:                                      ; preds = %land.lhs.true.361, %land.lhs.true.358, %land.lhs.true.355, %if.else.327
  store i32 -13, i32* %code, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.372

if.end.365:                                       ; preds = %land.lhs.true.361
  %315 = load double, double* %fpx, align 8, !tbaa !113
  %mul366 = fmul double %315, 2.560000e+02
  %conv367 = fptosi double %mul366 to i32
  %x368 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  store i32 %conv367, i32* %x368, align 4, !tbaa !139
  %316 = load double, double* %fpy, align 8, !tbaa !113
  %mul369 = fmul double %316, 2.560000e+02
  %conv370 = fptosi double %mul369 to i32
  %y371 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  store i32 %conv370, i32* %y371, align 4, !tbaa !140
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.372

cleanup.372:                                      ; preds = %if.then.364, %if.end.365
  %317 = bitcast double* %fpy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast double* %fpx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast double* %ty332 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast double* %tx328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %cleanup.dest.376 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.376, label %cleanup.387 [
    i32 0, label %cleanup.cont.377
  ]

cleanup.cont.377:                                 ; preds = %cleanup.372
  br label %if.end.378

if.end.378:                                       ; preds = %cleanup.cont.377, %if.then.313
  %321 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call379 = call i32 @gs_newpath(%struct.gs_state_s* %321) #5
  %322 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %x380 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %323 = load i32, i32* %x380, align 4, !tbaa !139
  %y381 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %324 = load i32, i32* %y381, align 4, !tbaa !140
  %325 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call382 = call i32 @show_origin_setup(%struct.gs_state_s* %322, i32 %323, i32 %324, %struct.gs_show_enum_s* %325) #5
  store i32 %call382, i32* %code, align 4, !tbaa !5
  %326 = load i32, i32* %code, align 4, !tbaa !5
  %cmp383 = icmp slt i32 %326, 0
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.end.378
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.387

if.end.386:                                       ; preds = %if.end.378
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.387

cleanup.387:                                      ; preds = %if.then.385, %if.then.297, %if.end.386, %cleanup.372
  %327 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %cleanup.dest.388 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.388, label %cleanup.424 [
    i32 0, label %cleanup.cont.389
    i32 10, label %rret
  ]

cleanup.cont.389:                                 ; preds = %cleanup.387
  %328 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %328, i32 0, i32 48
  store i32 0, i32* %width_status, align 4, !tbaa !123
  %329 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %329, i32 0, i32 49
  store i32 (%struct.gs_show_enum_s*)* @continue_show_update, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8, !tbaa !65
  %330 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale390 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %330, i32 0, i32 15
  %y391 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale390, i32 0, i32 1
  store i32 0, i32* %y391, align 4, !tbaa !161
  %331 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale392 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %331, i32 0, i32 15
  %x393 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale392, i32 0, i32 0
  store i32 0, i32* %x393, align 4, !tbaa !162
  %332 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %333 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc394 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %333, i32 0, i32 47
  store %struct.cached_char_s* %332, %struct.cached_char_s** %cc394, align 8, !tbaa !64
  %334 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs395 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %334, i32 0, i32 20
  %build_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs395, i32 0, i32 12
  %335 = load i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)** %build_char, align 8, !tbaa !214
  %336 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %337 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %338 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %339 = load i64, i64* %chr, align 8, !tbaa !85
  %340 = load i64, i64* %glyph, align 8, !tbaa !85
  %call396 = call i32 %335(%struct.gs_show_enum_s* %336, %struct.gs_state_s* %337, %struct.gs_font_s* %338, i64 %339, i64 %340) #5
  store i32 %call396, i32* %code, align 4, !tbaa !5
  %341 = load i32, i32* %code, align 4, !tbaa !5
  %cmp397 = icmp slt i32 %341, 0
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %cleanup.cont.389
  %342 = load i32, i32* %code, align 4, !tbaa !5
  br label %rret

if.end.400:                                       ; preds = %cleanup.cont.389
  %343 = load i32, i32* %code, align 4, !tbaa !5
  %cmp401 = icmp eq i32 %343, 0
  br i1 %cmp401, label %if.then.403, label %if.end.413

if.then.403:                                      ; preds = %if.end.400
  %344 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call404 = call i32 @show_update(%struct.gs_show_enum_s* %344) #5
  store i32 %call404, i32* %code, align 4, !tbaa !5
  %345 = load i32, i32* %code, align 4, !tbaa !5
  %cmp405 = icmp slt i32 %345, 0
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.then.403
  br label %rret

if.end.408:                                       ; preds = %if.then.403
  %346 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call409 = call i32 @show_move(%struct.gs_show_enum_s* %346) #5
  store i32 %call409, i32* %code, align 4, !tbaa !5
  %347 = load i32, i32* %code, align 4, !tbaa !5
  %tobool410 = icmp ne i32 %347, 0
  br i1 %tobool410, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.408
  %348 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %348, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.412:                                       ; preds = %if.end.408
  br label %more

if.end.413:                                       ; preds = %if.end.400
  %349 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %349, i32 0, i32 40
  %350 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %cmp414 = icmp eq %struct.gx_device_memory_s* %350, null
  br i1 %cmp414, label %if.then.416, label %if.end.422

if.then.416:                                      ; preds = %if.end.413
  %351 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call417 = call i32 @show_cache_setup(%struct.gs_show_enum_s* %351) #5
  store i32 %call417, i32* %code, align 4, !tbaa !5
  %352 = load i32, i32* %code, align 4, !tbaa !5
  %cmp418 = icmp slt i32 %352, 0
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %if.then.416
  br label %rret

if.end.421:                                       ; preds = %if.then.416
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.end.413
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

rret:                                             ; preds = %cleanup.387, %if.then.420, %if.then.407, %if.then.399
  %353 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call423 = call i32 @gs_grestore(%struct.gs_state_s* %353) #5
  %354 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %354, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

cleanup.424:                                      ; preds = %rret, %if.end.422, %if.then.411, %cleanup.387, %if.then.259, %cleanup.238, %sw.bb.202, %sw.default.201, %if.then.195, %if.then.164, %cleanup.146, %cleanup, %sw.bb, %sw.default, %if.then.12
  %355 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #1
  %356 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  %362 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %365 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = load i32, i32* %retval
  ret i32 %367
}

; Function Attrs: nounwind uwtable
define internal i32 @show_finish(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %rcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %4 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %4, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 0
  %operation3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text2, i32 0, i32 0
  %6 = load i32, i32* %operation3, align 4, !tbaa !38
  %and4 = and i32 %6, 8192
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 61
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !70
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !215
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %10 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !219
  %tobool6 = icmp ne %struct.subpath_s* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 61
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path8, align 8, !tbaa !70
  %segments9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 3
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments9, align 8, !tbaa !215
  %contents10 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %13, i32 0, i32 1
  %subpath_current11 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents10, i32 0, i32 1
  %14 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current11, align 8, !tbaa !219
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %14, i32 0, i32 5
  %15 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !220
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 61
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %path12, align 8, !tbaa !70
  %last_charpath_segment = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 4
  store %struct.segment_s* %15, %struct.segment_s** %last_charpath_segment, align 8, !tbaa !223
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %lor.lhs.false
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %auto_release = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 29
  %19 = load i32, i32* %auto_release, align 4, !tbaa !37
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %20, i32 0, i32 9
  %21 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !224
  %release = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %21, i32 0, i32 6
  %22 = load void (%struct.gs_text_enum_s*, i8*)*, void (%struct.gs_text_enum_s*, i8*)** %release, align 8, !tbaa !225
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gs_show_enum_s* %23 to %struct.gs_text_enum_s*
  call void %22(%struct.gs_text_enum_s* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text17 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 0
  %operation18 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text17, i32 0, i32 0
  %26 = load i32, i32* %operation18, align 4, !tbaa !38
  %and19 = and i32 %26, 393728
  %cmp = icmp eq i32 %and19, 131584
  br i1 %cmp, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.16
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %29 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %29, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %call = call i32 @gs_currentpoint(%struct.gs_state_s* %28, %struct.gs_point_s* %total_width) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %30 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call21 = call i32 @gs_grestore(%struct.gs_state_s* %31) #5
  store i32 %call21, i32* %rcode, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %32, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %33 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %34 = load i32, i32* %rcode, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %35 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %cleanup

if.end.23:                                        ; preds = %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %cond.end
  %37 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gx_lookup_fm_pair(%struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32, %struct.cached_fm_pair_s**) #2

declare %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s*, %struct.cached_fm_pair_s*, i64, i32, i32, %struct.gs_fixed_point_s*) #2

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #2

declare i32 @gx_path_add_char_path(%struct.gx_path_s*, %struct.gx_path_s*, i32) #2

declare i32 @gx_image_cached_char(%struct.gs_show_enum_s*, %struct.cached_char_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @show_move(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %dpt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %chr = alloca i64, align 8
  %dxy = alloca %struct.gs_fixed_point_s, align 4
  %code76 = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %5 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %5, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 0
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 18
  %9 = load i32, i32* %xy_index, align 4, !tbaa !205
  %sub = sub i32 %9, 1
  %call = call i32 @gs_text_replaced_width(%struct.gs_text_params_s* %text2, i32 %sub, %struct.gs_point_s* %dpt) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !227
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %14 = load double, double* %y, align 8, !tbaa !228
  %15 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %15, i32 0, i32 43
  %call5 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %13, double %14, %struct.gs_fixed_point_s* %wxy) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.4
  %18 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.else:                                          ; preds = %entry
  %19 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store double 0.000000e+00, double* %dx, align 8, !tbaa !113
  %20 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store double 0.000000e+00, double* %dy, align 8, !tbaa !113
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text9 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 0
  %operation10 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text9, i32 0, i32 0
  %22 = load i32, i32* %operation10, align 4, !tbaa !38
  %and11 = and i32 %22, 128
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.else
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %single_byte_space = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %23, i32 0, i32 21
  %24 = load i32, i32* %single_byte_space, align 4, !tbaa !229
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %land.lhs.true
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %bytes_decoded = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 22
  %26 = load i32, i32* %bytes_decoded, align 4, !tbaa !206
  %cmp13 = icmp eq i32 %26, 1
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %27 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gs_show_enum_s* %28 to %struct.gs_text_enum_s*
  %call15 = call i32 @gx_current_char(%struct.gs_text_enum_s* %29) #5
  %conv = sext i32 %call15 to i64
  store i64 %conv, i64* %chr, align 8, !tbaa !85
  %30 = load i64, i64* %chr, align 8, !tbaa !85
  %31 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text16 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %31, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text16, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %32 = load i64, i64* %s_char, align 8, !tbaa !85
  %cmp17 = icmp eq i64 %30, %32
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.then.14
  %33 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text20 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %33, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text20, i32 0, i32 4
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %34 = load double, double* %x21, align 8, !tbaa !230
  store double %34, double* %dx, align 8, !tbaa !113
  %35 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text22 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %35, i32 0, i32 0
  %delta_space23 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text22, i32 0, i32 4
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space23, i32 0, i32 1
  %36 = load double, double* %y24, align 8, !tbaa !231
  store double %36, double* %dy, align 8, !tbaa !113
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.then.14
  %37 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false, %if.else
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text27 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 0
  %operation28 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text27, i32 0, i32 0
  %39 = load i32, i32* %operation28, align 4, !tbaa !38
  %and29 = and i32 %39, 64
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.26
  %40 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text33 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %40, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text33, i32 0, i32 3
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %41 = load double, double* %x34, align 8, !tbaa !232
  %42 = load double, double* %dx, align 8, !tbaa !113
  %add = fadd double %42, %41
  store double %add, double* %dx, align 8, !tbaa !113
  %43 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text35 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %43, i32 0, i32 0
  %delta_all36 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text35, i32 0, i32 3
  %y37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all36, i32 0, i32 1
  %44 = load double, double* %y37, align 8, !tbaa !233
  %45 = load double, double* %dy, align 8, !tbaa !113
  %add38 = fadd double %45, %44
  store double %add38, double* %dy, align 8, !tbaa !113
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.32, %if.end.26
  %46 = load double, double* %dx, align 8, !tbaa !113
  %cmp40 = fcmp oeq double %46, 0.000000e+00
  br i1 %cmp40, label %land.lhs.true.42, label %if.then.45

land.lhs.true.42:                                 ; preds = %if.end.39
  %47 = load double, double* %dy, align 8, !tbaa !113
  %cmp43 = fcmp oeq double %47, 0.000000e+00
  br i1 %cmp43, label %if.end.63, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.42, %if.end.39
  %48 = bitcast %struct.gs_fixed_point_s* %dxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 5
  %50 = load double, double* %dx, align 8, !tbaa !113
  %51 = load double, double* %dy, align 8, !tbaa !113
  %call47 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm46, double %50, double %51, %struct.gs_fixed_point_s* %dxy) #5
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %52, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.51:                                        ; preds = %if.then.45
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dxy, i32 0, i32 0
  %54 = load i32, i32* %x52, align 4, !tbaa !139
  %55 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy53 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %55, i32 0, i32 43
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy53, i32 0, i32 0
  %56 = load i32, i32* %x54, align 4, !tbaa !125
  %add55 = add nsw i32 %56, %54
  store i32 %add55, i32* %x54, align 4, !tbaa !125
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dxy, i32 0, i32 1
  %57 = load i32, i32* %y56, align 4, !tbaa !140
  %58 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy57 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %58, i32 0, i32 43
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy57, i32 0, i32 1
  %59 = load i32, i32* %y58, align 4, !tbaa !124
  %add59 = add nsw i32 %59, %57
  store i32 %add59, i32* %y58, align 4, !tbaa !124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.51, %if.then.50
  %60 = bitcast %struct.gs_fixed_point_s* %dxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %cleanup.dest.61 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.61, label %cleanup.64 [
    i32 0, label %cleanup.cont.62
  ]

cleanup.cont.62:                                  ; preds = %cleanup.60
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont.62, %land.lhs.true.42
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %cleanup.60
  %61 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest.66 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.66, label %cleanup.120 [
    i32 0, label %cleanup.cont.67
  ]

cleanup.cont.67:                                  ; preds = %cleanup.64
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont.67, %cleanup.cont
  %63 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text69 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %63, i32 0, i32 0
  %operation70 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text69, i32 0, i32 0
  %64 = load i32, i32* %operation70, align 4, !tbaa !38
  %and71 = and i32 %64, 66048
  %cmp72 = icmp eq i32 %and71, 66048
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  %65 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %65, i32 0, i32 49
  store i32 (%struct.gs_show_enum_s*)* @continue_kshow, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8, !tbaa !65
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.75:                                        ; preds = %if.end.68
  %66 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %67, i32 0, i32 45
  %68 = load i32, i32* %use_wxy_float, align 4, !tbaa !126
  %tobool77 = icmp ne i32 %68, 0
  br i1 %tobool77, label %if.then.78, label %if.else.97

if.then.78:                                       ; preds = %if.end.75
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %70 = bitcast %struct.gs_state_s* %69 to %struct.gs_imager_state_s*
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %71, i32 0, i32 61
  %72 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !70
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %73, i32 0, i32 7
  %x79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %74 = load double, double* %x79, align 8, !tbaa !191
  %75 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %75, i32 0, i32 44
  %x80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float, i32 0, i32 0
  %76 = load double, double* %x80, align 8, !tbaa !128
  %add81 = fadd double %74, %76
  %77 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy82 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %77, i32 0, i32 43
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy82, i32 0, i32 0
  %78 = load i32, i32* %x83, align 4, !tbaa !125
  %conv84 = sitofp i32 %78 to double
  %mul = fmul double %conv84, 3.906250e-03
  %add85 = fadd double %add81, %mul
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point86 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 7
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point86, i32 0, i32 1
  %80 = load double, double* %y87, align 8, !tbaa !192
  %81 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float88 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %81, i32 0, i32 44
  %y89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float88, i32 0, i32 1
  %82 = load double, double* %y89, align 8, !tbaa !127
  %add90 = fadd double %80, %82
  %83 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy91 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %83, i32 0, i32 43
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy91, i32 0, i32 1
  %84 = load i32, i32* %y92, align 4, !tbaa !124
  %conv93 = sitofp i32 %84 to double
  %mul94 = fmul double %conv93, 3.906250e-03
  %add95 = fadd double %add90, %mul94
  %call96 = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %70, %struct.gx_path_s* %72, double %add85, double %add95) #5
  store i32 %call96, i32* %code76, align 4, !tbaa !5
  br label %if.end.100

if.else.97:                                       ; preds = %if.end.75
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %86 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy98 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %86, i32 0, i32 43
  %call99 = call i32 @show_fast_move(%struct.gs_state_s* %85, %struct.gs_fixed_point_s* %wxy98) #5
  store i32 %call99, i32* %code76, align 4, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.78
  %87 = load i32, i32* %code76, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %87, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  %88 = load i32, i32* %code76, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105

if.end.104:                                       ; preds = %if.end.100
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.105

cleanup.105:                                      ; preds = %if.end.104, %if.then.103
  %89 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest.106 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.106, label %cleanup.120 [
    i32 0, label %cleanup.cont.107
  ]

cleanup.cont.107:                                 ; preds = %cleanup.105
  %90 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text108 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %90, i32 0, i32 0
  %operation109 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text108, i32 0, i32 0
  %91 = load i32, i32* %operation109, align 4, !tbaa !38
  %and110 = and i32 %91, 65536
  %cmp111 = icmp ne i32 %and110, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.119

land.lhs.true.113:                                ; preds = %cleanup.cont.107
  %92 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %92, i32 0, i32 17
  %93 = load i32, i32* %index, align 4, !tbaa !204
  %94 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text114 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %94, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text114, i32 0, i32 2
  %95 = load i32, i32* %size, align 4, !tbaa !234
  %cmp115 = icmp ult i32 %93, %95
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %land.lhs.true.113
  %96 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %continue_proc118 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %96, i32 0, i32 49
  store i32 (%struct.gs_show_enum_s*)* @continue_kshow, i32 (%struct.gs_show_enum_s*)** %continue_proc118, align 8, !tbaa !65
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.119:                                       ; preds = %land.lhs.true.113, %cleanup.cont.107
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.119, %if.then.117, %cleanup.105, %if.then.74, %cleanup.64, %cleanup
  %97 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @show_fast_move(%struct.gs_state_s* %pgs, %struct.gs_fixed_point_s* %pwxy) #4 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pwxy.addr = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pwxy, %struct.gs_fixed_point_s** %pwxy.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !70
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %5 = load double, double* %x, align 8, !tbaa !191
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pwxy.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i32 0, i32 0
  %7 = load i32, i32* %x1, align 4, !tbaa !139
  %conv = sitofp i32 %7 to double
  %mul = fmul double %conv, 3.906250e-03
  %add = fadd double %5, %mul
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point2, i32 0, i32 1
  %9 = load double, double* %y, align 8, !tbaa !192
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pwxy.addr, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 1
  %11 = load i32, i32* %y3, align 4, !tbaa !140
  %conv4 = sitofp i32 %11 to double
  %mul5 = fmul double %conv4, 3.906250e-03
  %add6 = fadd double %9, %mul5
  %call = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %1, %struct.gx_path_s* %3, double %add, double %add6) #5
  ret i32 %call
}

declare i32 @gs_currentcharmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*, i32) #2

declare i32 @gs_settocharmatrix(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @show_origin_setup(%struct.gs_state_s* %pgs, i32 %cpt_x, i32 %cpt_y, %struct.gs_show_enum_s* %penum) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cpt_x.addr = alloca i32, align 4
  %cpt_y.addr = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %scx = alloca i32, align 4
  %scy = alloca i32, align 4
  %rdx = alloca i32, align 4
  %rdy = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cpt_x, i32* %cpt_x.addr, align 4, !tbaa !5
  store i32 %cpt_y, i32* %cpt_y.addr, align 4, !tbaa !5
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 32
  %1 = load i32, i32* %charpath_flag, align 4, !tbaa !62
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 12
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !89
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 3
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %call = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %4) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = bitcast i32* %scx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 15
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !162
  %sub = sub nsw i32 8, %7
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %conv = trunc i64 %shl to i32
  store i32 %conv, i32* %scx, align 4, !tbaa !5
  %8 = bitcast i32* %scy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 15
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale3, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !161
  %sub4 = sub nsw i32 8, %10
  %sh_prom5 = zext i32 %sub4 to i64
  %shl6 = shl i64 -1, %sh_prom5
  %conv7 = trunc i64 %shl6 to i32
  store i32 %conv7, i32* %scy, align 4, !tbaa !5
  %11 = bitcast i32* %rdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale8 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 15
  %x9 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale8, i32 0, i32 0
  %13 = load i32, i32* %x9, align 4, !tbaa !162
  %sub10 = sub nsw i32 7, %13
  %sh_prom11 = zext i32 %sub10 to i64
  %shl12 = shl i64 1, %sh_prom11
  %conv13 = trunc i64 %shl12 to i32
  store i32 %conv13, i32* %rdx, align 4, !tbaa !5
  %14 = bitcast i32* %rdy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %15, i32 0, i32 15
  %y15 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale14, i32 0, i32 1
  %16 = load i32, i32* %y15, align 4, !tbaa !161
  %sub16 = sub nsw i32 7, %16
  %sh_prom17 = zext i32 %sub16 to i64
  %shl18 = shl i64 1, %sh_prom17
  %conv19 = trunc i64 %shl18 to i32
  store i32 %conv19, i32* %rdy, align 4, !tbaa !5
  %17 = load i32, i32* %cpt_x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %rdx, align 4, !tbaa !5
  %add = add nsw i32 %17, %18
  %19 = load i32, i32* %scx, align 4, !tbaa !5
  %and = and i32 %add, %19
  store i32 %and, i32* %cpt_x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %cpt_y.addr, align 4, !tbaa !5
  %21 = load i32, i32* %rdy, align 4, !tbaa !5
  %add20 = add nsw i32 %20, %21
  %22 = load i32, i32* %scy, align 4, !tbaa !5
  %and21 = and i32 %add20, %22
  store i32 %and21, i32* %cpt_y.addr, align 4, !tbaa !5
  %23 = bitcast i32* %rdy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %rdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %scy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %scx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %if.end

if.else:                                          ; preds = %if.then
  %27 = load i32, i32* %cpt_x.addr, align 4, !tbaa !5
  %add22 = add nsw i32 %27, 128
  %conv23 = sext i32 %add22 to i64
  %and24 = and i64 %conv23, -256
  %conv25 = trunc i64 %and24 to i32
  store i32 %conv25, i32* %cpt_x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %cpt_y.addr, align 4, !tbaa !5
  %add26 = add nsw i32 %28, 128
  %conv27 = sext i32 %add26 to i64
  %and28 = and i64 %conv27, -256
  %conv29 = trunc i64 %and28 to i32
  store i32 %conv29, i32* %cpt_y.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %entry
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %30 = load i32, i32* %cpt_x.addr, align 4, !tbaa !5
  %31 = load i32, i32* %cpt_y.addr, align 4, !tbaa !5
  %call31 = call i32 @gx_translate_to_fixed(%struct.gs_state_s* %29, i32 %30, i32 %31) #5
  ret i32 %call31
}

; Function Attrs: nounwind uwtable
define internal i32 @continue_show_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @show_update(%struct.gs_show_enum_s* %1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call1 = call i32 @show_move(%struct.gs_show_enum_s* %4) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call5 = call i32 @show_proceed(%struct.gs_show_enum_s* %7) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @show_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cc = alloca %struct.cached_char_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 47
  %5 = load %struct.cached_char_s*, %struct.cached_char_s** %cc2, align 8, !tbaa !64
  store %struct.cached_char_s* %5, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %width_status = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 48
  %8 = load i32, i32* %width_status, align 4, !tbaa !123
  switch i32 %8, label %sw.epilog.49 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 1, label %sw.bb.7
    i32 3, label %sw.bb.33
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %entry, %entry
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 43
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !124
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 43
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy3, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !125
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 44
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float, i32 0, i32 1
  store double 0.000000e+00, double* %y4, align 8, !tbaa !127
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 44
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float5, i32 0, i32 0
  store double 0.000000e+00, double* %x6, align 8, !tbaa !128
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %13, i32 0, i32 45
  store i32 0, i32* %use_wxy_float, align 4, !tbaa !126
  br label %sw.epilog.49

sw.bb.7:                                          ; preds = %entry
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 77
  %15 = load i32, i32* %level, align 4, !tbaa !48
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %level8 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 31
  %17 = load i32, i32* %level8, align 4, !tbaa !61
  %sub = sub nsw i32 %15, %17
  switch i32 %sub, label %sw.default [
    i32 2, label %sw.bb.10
    i32 1, label %sw.bb.11
  ]

sw.default:                                       ; preds = %sw.bb.7
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %18, i32 0, i32 4
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !235
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 3
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %cc9 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %21, i32 0, i32 47
  %22 = load %struct.cached_char_s*, %struct.cached_char_s** %cc9, align 8, !tbaa !64
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %20, %struct.cached_char_s* %22) #5
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

sw.bb.10:                                         ; preds = %sw.bb.7
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call i32 @gs_grestore(%struct.gs_state_s* %23) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.10
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %sw.bb.10
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %sw.bb.7, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11
  %26 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 70
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 72
  %30 = bitcast %struct.gs_matrix_fixed_s* %char_tm to %struct.gs_matrix_s*
  %31 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %31, i32 0, i32 15
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 32
  %33 = load i32, i32* %charpath_flag, align 4, !tbaa !62
  %cmp12 = icmp ne i32 %33, 0
  %conv = zext i1 %cmp12 to i32
  %call13 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %28, %struct.gs_matrix_s* %30, %struct.gs_log2_scale_point_s* %log2_scale, i32 %conv, %struct.cached_fm_pair_s** %pair) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %34, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.epilog
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %sw.epilog
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 70
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %font18, align 8, !tbaa !71
  %dir19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 3
  %38 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir19, align 8, !tbaa !160
  %39 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %39, i32 0, i32 40
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev_cache, align 8, !tbaa !25
  %41 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %42 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %43 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale20 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %43, i32 0, i32 15
  %call21 = call i32 @gx_add_cached_char(%struct.gs_font_dir_s* %38, %struct.gx_device_memory_s* %40, %struct.cached_char_s* %41, %struct.cached_fm_pair_s* %42, %struct.gs_log2_scale_point_s* %log2_scale20) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %44, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.17
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.16
  %46 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %47 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %47, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %48 = load i32, i32* %operation, align 4, !tbaa !38
  %and = and i32 %48, 2560
  %cmp26 = icmp ne i32 %and, 0
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.cont
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag28 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 32
  %50 = load i32, i32* %charpath_flag28, align 4, !tbaa !62
  %cmp29 = icmp ne i32 %50, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %cleanup.cont
  br label %sw.epilog.49

if.end.32:                                        ; preds = %lor.lhs.false
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %entry, %if.end.32
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call34 = call i32 @gs_grestore(%struct.gs_state_s* %51) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %52, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %sw.bb.33
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.38:                                        ; preds = %sw.bb.33
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !194
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 0
  %56 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !196
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %56, i32 0, i32 4
  %57 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !202
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 69
  %arrayidx40 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color39, i32 0, i64 0
  %dev_color41 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx40, i32 0, i32 2
  %59 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color41, align 8, !tbaa !194
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %61 = bitcast %struct.gs_state_s* %60 to %struct.gs_imager_state_s*
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 78
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !68
  %call42 = call i32 %57(%struct.gx_device_color_s* %59, %struct.gs_imager_state_s* %61, %struct.gx_device_s* %63, i32 0) #5
  store i32 %call42, i32* %code, align 4, !tbaa !5
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %64, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.38
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.46:                                        ; preds = %if.end.38
  %66 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %67 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %call47 = call i32 @gx_image_cached_char(%struct.gs_show_enum_s* %66, %struct.cached_char_s* %67) #5
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

sw.bb.48:                                         ; preds = %entry
  br label %sw.epilog.49

sw.epilog.49:                                     ; preds = %sw.bb.48, %entry, %if.then.31, %sw.bb
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %charpath_flag50 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %68, i32 0, i32 32
  %69 = load i32, i32* %charpath_flag50, align 4, !tbaa !62
  %cmp51 = icmp ne i32 %69, 0
  br i1 %cmp51, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %sw.epilog.49
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %70, i32 0, i32 76
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !67
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %71, i32 0, i32 61
  %72 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !70
  %73 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %73, i32 0, i32 46
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %74 = load i32, i32* %x54, align 4, !tbaa !169
  %75 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %origin55 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %75, i32 0, i32 46
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin55, i32 0, i32 1
  %76 = load i32, i32* %y56, align 4, !tbaa !170
  %call57 = call i32 @gx_path_add_point(%struct.gx_path_s* %72, i32 %74, i32 %76) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %77, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.53
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.61:                                        ; preds = %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %sw.epilog.49
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call63 = call i32 @gs_grestore(%struct.gs_state_s* %79) #5
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.62, %if.then.60, %if.end.46, %if.then.45, %if.then.37, %cleanup, %if.then, %sw.default
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #2

declare i32 @gs_text_replaced_width(%struct.gs_text_params_s*, i32, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @continue_kshow(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 30
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !9
  store %struct.gs_state_s* %3, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 70
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !71
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 4
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !235
  %cmp = icmp ne %struct.gs_font_s* %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 4
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font2, align 8, !tbaa !235
  %call = call i32 @gs_setfont(%struct.gs_state_s* %8, %struct.gs_font_s* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call3 = call i32 @show_state_setup(%struct.gs_show_enum_s* %11) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %call7 = call i32 @show_proceed(%struct.gs_show_enum_s* %14) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %15 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gs_moveto_aux(%struct.gs_imager_state_s*, %struct.gx_path_s*, double, double) #2

declare i32 @gs_setfont(%struct.gs_state_s*, %struct.gs_font_s*) #2

declare i32 @gx_add_cached_char(%struct.gs_font_dir_s*, %struct.gx_device_memory_s*, %struct.cached_char_s*, %struct.cached_fm_pair_s*, %struct.gs_log2_scale_point_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s*, i32) #2

declare i32 @gs_setcharmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_effective_clip_path(%struct.gs_state_s*, %struct.gx_clip_path_s**) #2

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 456}
!10 = !{!"gs_show_enum_s", !11, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !14, i64 160, !2, i64 184, !2, i64 192, !15, i64 200, !6, i64 208, !16, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !17, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !12, i64 360, !15, i64 376, !6, i64 384, !16, i64 388, !12, i64 400, !18, i64 416, !6, i64 448, !2, i64 456, !6, i64 464, !3, i64 468, !2, i64 472, !6, i64 480, !19, i64 484, !19, i64 500, !6, i64 516, !6, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !21, i64 560, !12, i64 568, !6, i64 584, !21, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!11 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !12, i64 24, !12, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!12 = !{!"gs_point_s", !13, i64 0, !13, i64 8}
!13 = !{!"double", !3, i64 0}
!14 = !{!"rc_header_s", !15, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!"long", !3, i64 0}
!16 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!18 = !{!"gs_text_returned_s", !15, i64 0, !15, i64 8, !12, i64 16}
!19 = !{!"gs_int_rect_s", !20, i64 0, !20, i64 8}
!20 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!21 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!22 = !{!23, !2, i64 0}
!23 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!24 = !{!10, !2, i64 472}
!25 = !{!10, !2, i64 536}
!26 = !{!10, !2, i64 544}
!27 = !{!10, !2, i64 552}
!28 = !{!8, !2, i64 40}
!29 = !{!30, !2, i64 0}
!30 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!31 = !{!32, !2, i64 72}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!10, !15, i64 160}
!35 = !{!10, !2, i64 168}
!36 = !{!10, !2, i64 176}
!37 = !{!10, !6, i64 448}
!38 = !{!10, !6, i64 0}
!39 = !{!10, !2, i64 88}
!40 = !{!10, !6, i64 392}
!41 = !{!10, !6, i64 388}
!42 = !{!10, !13, i64 408}
!43 = !{!10, !13, i64 400}
!44 = !{!10, !6, i64 240}
!45 = !{!11, !6, i64 0}
!46 = !{!32, !2, i64 128}
!47 = !{!32, !2, i64 24}
!48 = !{!49, !6, i64 1864}
!49 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !50, i64 24, !6, i64 128, !54, i64 132, !6, i64 168, !12, i64 176, !12, i64 192, !6, i64 208, !6, i64 212, !55, i64 216, !3, i64 220, !56, i64 224, !56, i64 228, !57, i64 232, !15, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !51, i64 296, !21, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !51, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !58, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !59, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !59, i64 1336, !2, i64 1616, !52, i64 1624, !6, i64 1648, !52, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !15, i64 1712, !15, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !54, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !60, i64 1888}
!50 = !{!"gx_line_params_s", !51, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !6, i64 36, !52, i64 40, !53, i64 64}
!51 = !{!"float", !3, i64 0}
!52 = !{!"gs_matrix_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20}
!53 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !51, i64 12, !6, i64 16, !51, i64 20, !6, i64 24, !6, i64 28, !51, i64 32}
!54 = !{!"gs_matrix_fixed_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!55 = !{!"short", !3, i64 0}
!56 = !{!"gs_transparency_source_s", !51, i64 0}
!57 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!58 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!59 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !15, i64 16, !3, i64 24}
!60 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!61 = !{!10, !6, i64 464}
!62 = !{!10, !3, i64 468}
!63 = !{!49, !3, i64 1852}
!64 = !{!10, !2, i64 600}
!65 = !{!10, !2, i64 616}
!66 = !{!10, !6, i64 480}
!67 = !{!49, !2, i64 1856}
!68 = !{!49, !2, i64 1872}
!69 = !{!49, !6, i64 1676}
!70 = !{!49, !2, i64 1680}
!71 = !{!49, !2, i64 1792}
!72 = !{!73, !3, i64 128}
!73 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !74, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !52, i64 80, !52, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !51, i64 156, !6, i64 160, !75, i64 168, !76, i64 272, !76, i64 324}
!74 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!75 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!76 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!77 = !{!78, !2, i64 528}
!78 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !74, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !52, i64 80, !52, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !51, i64 156, !6, i64 160, !75, i64 168, !76, i64 272, !76, i64 324, !79, i64 376, !80, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !81, i64 448}
!79 = !{!"gs_rect_s", !12, i64 0, !12, i64 16}
!80 = !{!"gs_uid_s", !15, i64 0, !2, i64 8}
!81 = !{!"gs_font_cid0_data_s", !82, i64 0, !15, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!82 = !{!"gs_font_cid_data_s", !83, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!83 = !{!"gs_cid_system_info_s", !84, i64 0, !84, i64 16, !6, i64 32}
!84 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!85 = !{!15, !15, i64 0}
!86 = !{!87, !2, i64 0}
!87 = !{!"gx_font_stack_item_s", !2, i64 0, !6, i64 8}
!88 = !{!87, !6, i64 8}
!89 = !{!10, !2, i64 192}
!90 = !{!91, !6, i64 0}
!91 = !{!"gs_fixed_rect_s", !21, i64 0, !21, i64 8}
!92 = !{!10, !6, i64 484}
!93 = !{!91, !6, i64 4}
!94 = !{!10, !6, i64 488}
!95 = !{!91, !6, i64 8}
!96 = !{!10, !6, i64 492}
!97 = !{!91, !6, i64 12}
!98 = !{!10, !6, i64 496}
!99 = !{!10, !6, i64 500}
!100 = !{!10, !6, i64 504}
!101 = !{!10, !6, i64 508}
!102 = !{!10, !6, i64 512}
!103 = !{!49, !6, i64 164}
!104 = !{!49, !6, i64 1840}
!105 = !{!49, !6, i64 1832}
!106 = !{!49, !6, i64 156}
!107 = !{!10, !6, i64 516}
!108 = !{!49, !6, i64 1836}
!109 = !{!49, !6, i64 160}
!110 = !{!10, !6, i64 520}
!111 = !{!49, !51, i64 1824}
!112 = !{!49, !51, i64 148}
!113 = !{!13, !13, i64 0}
!114 = !{!49, !51, i64 1828}
!115 = !{!49, !51, i64 152}
!116 = !{!73, !2, i64 256}
!117 = !{!11, !6, i64 16}
!118 = !{!49, !2, i64 1800}
!119 = !{!120, !2, i64 8}
!120 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !50, i64 24, !6, i64 128, !54, i64 132, !6, i64 168, !12, i64 176, !12, i64 192, !6, i64 208, !6, i64 212, !55, i64 216, !3, i64 220, !56, i64 224, !56, i64 228, !57, i64 232, !15, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !51, i64 296, !21, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !51, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !58, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !59, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !59, i64 1336}
!121 = !{!122, !6, i64 0}
!122 = !{!"gs_text_enum_s", !11, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !14, i64 160, !2, i64 184, !2, i64 192, !15, i64 200, !6, i64 208, !16, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !17, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !12, i64 360, !15, i64 376, !6, i64 384, !16, i64 388, !12, i64 400, !18, i64 416}
!123 = !{!10, !3, i64 608}
!124 = !{!10, !6, i64 564}
!125 = !{!10, !6, i64 560}
!126 = !{!10, !6, i64 584}
!127 = !{!10, !13, i64 576}
!128 = !{!10, !13, i64 568}
!129 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!130 = !{!16, !6, i64 4}
!131 = !{!16, !6, i64 0}
!132 = !{!73, !6, i64 152}
!133 = !{!10, !6, i64 208}
!134 = !{!135, !13, i64 392}
!135 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !74, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !52, i64 80, !52, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !51, i64 156, !6, i64 160, !75, i64 168, !76, i64 272, !76, i64 324, !79, i64 376, !80, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!136 = !{!135, !13, i64 376}
!137 = !{!135, !13, i64 400}
!138 = !{!135, !13, i64 384}
!139 = !{!21, !6, i64 0}
!140 = !{!21, !6, i64 4}
!141 = !{!49, !3, i64 1848}
!142 = !{!10, !15, i64 416}
!143 = !{!144, !3, i64 376}
!144 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !74, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !52, i64 80, !52, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !51, i64 156, !6, i64 160, !75, i64 168, !76, i64 272, !76, i64 324, !145, i64 376}
!145 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !84, i64 8, !6, i64 24, !6, i64 28, !2, i64 32, !6, i64 40, !2, i64 48, !6, i64 56, !2, i64 64}
!146 = !{!10, !6, i64 344}
!147 = !{!122, !6, i64 232}
!148 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 4, !5, i64 24, i64 8, !113, i64 32, i64 8, !113, i64 40, i64 8, !113, i64 48, i64 8, !113, i64 56, i64 8, !85, i64 56, i64 8, !85, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5}
!149 = !{!3, !3, i64 0}
!150 = !{!73, !51, i64 80}
!151 = !{!73, !51, i64 84}
!152 = !{!73, !51, i64 88}
!153 = !{!73, !51, i64 92}
!154 = !{!73, !6, i64 148}
!155 = !{!51, !51, i64 0}
!156 = !{!157, !6, i64 96}
!157 = !{!"cached_char_s", !158, i64 0, !55, i64 8, !55, i64 10, !55, i64 12, !55, i64 14, !15, i64 16, !2, i64 24, !6, i64 32, !15, i64 40, !3, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !21, i64 72, !15, i64 80, !21, i64 88, !21, i64 96}
!158 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!159 = !{!157, !6, i64 100}
!160 = !{!73, !2, i64 24}
!161 = !{!10, !6, i64 216}
!162 = !{!10, !6, i64 212}
!163 = !{!10, !2, i64 224}
!164 = !{!73, !2, i64 200}
!165 = !{!10, !2, i64 528}
!166 = !{!10, !15, i64 424}
!167 = !{!49, !6, i64 1844}
!168 = !{!55, !55, i64 0}
!169 = !{!10, !6, i64 588}
!170 = !{!10, !6, i64 592}
!171 = !{!49, !2, i64 8}
!172 = !{!49, !2, i64 1688}
!173 = !{!157, !15, i64 40}
!174 = !{!157, !3, i64 48}
!175 = !{!157, !2, i64 24}
!176 = !{!177, !6, i64 72}
!177 = !{!"cached_fm_pair_s", !2, i64 0, !80, i64 8, !3, i64 24, !6, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !6, i64 104}
!178 = !{!157, !6, i64 68}
!179 = !{i64 0, i64 4, !155, i64 4, i64 4, !155, i64 8, i64 4, !155, i64 12, i64 4, !155, i64 16, i64 4, !155, i64 20, i64 4, !155}
!180 = !{!181, !2, i64 1304}
!181 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !182, i64 96, !184, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !185, i64 984, !6, i64 1052, !6, i64 1056, !186, i64 1064, !2, i64 1104, !3, i64 1112, !188, i64 1120, !189, i64 1144}
!182 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !55, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !183, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !15, i64 704, !6, i64 712}
!183 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!184 = !{!"gx_device_cached_colors_s", !15, i64 0, !15, i64 8}
!185 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!186 = !{!"gdev_space_params_s", !15, i64 0, !15, i64 8, !187, i64 16, !6, i64 32, !3, i64 36}
!187 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !15, i64 8}
!188 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!189 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!190 = !{!49, !6, i64 168}
!191 = !{!49, !13, i64 176}
!192 = !{!49, !13, i64 184}
!193 = !{!10, !2, i64 144}
!194 = !{!195, !2, i64 16}
!195 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!196 = !{!197, !2, i64 0}
!197 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !20, i64 352, !6, i64 360, !198, i64 368, !200, i64 632}
!198 = !{!"gs_client_color_s", !2, i64 0, !199, i64 8}
!199 = !{!"gs_paint_color_s", !3, i64 0}
!200 = !{!"_mask", !201, i64 0, !15, i64 8, !2, i64 16}
!201 = !{!"mp_", !6, i64 0, !6, i64 4}
!202 = !{!203, !2, i64 32}
!203 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!204 = !{!10, !6, i64 232}
!205 = !{!10, !6, i64 236}
!206 = !{!10, !6, i64 352}
!207 = !{!49, !6, i64 212}
!208 = !{!157, !55, i64 8}
!209 = !{!157, !55, i64 10}
!210 = !{!157, !6, i64 88}
!211 = !{!157, !6, i64 92}
!212 = !{!49, !2, i64 1616}
!213 = !{!49, !6, i64 308}
!214 = !{!73, !2, i64 264}
!215 = !{!216, !2, i64 56}
!216 = !{!"gx_path_s", !217, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !91, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !21, i64 112, !2, i64 120}
!217 = !{!"gx_path_segments_s", !14, i64 0, !218, i64 24}
!218 = !{!"psc_", !2, i64 0, !2, i64 8}
!219 = !{!217, !2, i64 32}
!220 = !{!221, !2, i64 32}
!221 = !{!"subpath_s", !2, i64 0, !2, i64 8, !55, i64 16, !55, i64 18, !21, i64 20, !2, i64 32, !6, i64 40, !222, i64 48, !3, i64 88}
!222 = !{!"", !2, i64 0, !2, i64 8, !55, i64 16, !55, i64 18, !21, i64 20, !2, i64 32}
!223 = !{!216, !2, i64 64}
!224 = !{!10, !2, i64 152}
!225 = !{!226, !2, i64 48}
!226 = !{!"gs_text_enum_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!227 = !{!12, !13, i64 0}
!228 = !{!12, !13, i64 8}
!229 = !{!10, !6, i64 348}
!230 = !{!10, !13, i64 40}
!231 = !{!10, !13, i64 48}
!232 = !{!10, !13, i64 24}
!233 = !{!10, !13, i64 32}
!234 = !{!10, !6, i64 16}
!235 = !{!10, !2, i64 112}
