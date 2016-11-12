; ModuleID = './gxccache.bc'
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
%struct.gx_clip_stack_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type { %struct.gx_xfont_s* (%struct.gx_device_s*, i8*, i32, i32, %struct.gs_uid_s*, %struct.gs_matrix_s*, %struct.gs_memory_s*)*, i64 (%struct.gx_xfont_s*, i64, i32, i64, %struct.gs_const_string_s*)*, i32 (%struct.gx_xfont_s*, i64, i32, %struct.gs_point_s*, %struct.gs_int_rect_s*)*, i32 (%struct.gx_xfont_s*, i64, %struct.gx_device_s*, i32, i32, i64, i32)*, i32 (%struct.gx_xfont_s*, %struct.gs_memory_s*)* }
%struct.gx_xfont_s = type { %struct.gx_xfont_common_s }
%struct.gx_xfont_common_s = type { %struct.gx_xfont_procs_s* }
%struct.gs_uid_s = type { i64, i64* }
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
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
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
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gs_image_enum_s = type opaque

@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@scale_log2_1 = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"image_char(image_enum)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"compress_alpha_bits\00", align 1

; Function Attrs: nounwind uwtable
define void @gx_compute_char_matrix(%struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, float* %mxx, float* %mxy, float* %myx, float* %myy) #0 {
entry:
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %mxx.addr = alloca float*, align 8
  %mxy.addr = alloca float*, align 8
  %myx.addr = alloca float*, align 8
  %myy.addr = alloca float*, align 8
  %scale_x = alloca i32, align 4
  %scale_y = alloca i32, align 4
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store float* %mxx, float** %mxx.addr, align 8, !tbaa !1
  store float* %mxy, float** %mxy.addr, align 8, !tbaa !1
  store float* %myx, float** %myx.addr, align 8, !tbaa !1
  store float* %myy, float** %myy.addr, align 8, !tbaa !1
  %0 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !5
  %shl = shl i32 1, %2
  store i32 %shl, i32* %scale_x, align 4, !tbaa !8
  %3 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !9
  %shl1 = shl i32 1, %5
  store i32 %shl1, i32* %scale_y, align 4, !tbaa !8
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 0
  %7 = load float, float* %xx, align 4, !tbaa !10
  %8 = load i32, i32* %scale_x, align 4, !tbaa !8
  %conv = sitofp i32 %8 to float
  %mul = fmul float %7, %conv
  %9 = load float*, float** %mxx.addr, align 8, !tbaa !1
  store float %mul, float* %9, align 4, !tbaa !13
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 1
  %11 = load float, float* %xy, align 4, !tbaa !14
  %12 = load i32, i32* %scale_x, align 4, !tbaa !8
  %conv2 = sitofp i32 %12 to float
  %mul3 = fmul float %11, %conv2
  %13 = load float*, float** %mxy.addr, align 8, !tbaa !1
  store float %mul3, float* %13, align 4, !tbaa !13
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 2
  %15 = load float, float* %yx, align 4, !tbaa !15
  %16 = load i32, i32* %scale_y, align 4, !tbaa !8
  %conv4 = sitofp i32 %16 to float
  %mul5 = fmul float %15, %conv4
  %17 = load float*, float** %myx.addr, align 8, !tbaa !1
  store float %mul5, float* %17, align 4, !tbaa !13
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 3
  %19 = load float, float* %yy, align 4, !tbaa !16
  %20 = load i32, i32* %scale_y, align 4, !tbaa !8
  %conv6 = sitofp i32 %20 to float
  %mul7 = fmul float %19, %conv6
  %21 = load float*, float** %myy.addr, align 8, !tbaa !1
  store float %mul7, float* %21, align 4, !tbaa !13
  %22 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_compute_ccache_key(%struct.gs_font_s* %pfont, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid, float* %mxx, float* %mxy, float* %myx, float* %myy) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %mxx.addr = alloca float*, align 8
  %mxy.addr = alloca float*, align 8
  %myx.addr = alloca float*, align 8
  %myy.addr = alloca float*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !8
  store float* %mxx, float** %mxx.addr, align 8, !tbaa !1
  store float* %mxy, float** %mxy.addr, align 8, !tbaa !1
  store float* %myx, float** %myx.addr, align 8, !tbaa !1
  store float* %myy, float** %myy.addr, align 8, !tbaa !1
  %0 = load i32, i32* %design_grid.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 11
  %2 = load i32, i32* %FontType, align 4, !tbaa !17
  %cmp = icmp eq i32 %2, 42
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 11
  %4 = load i32, i32* %FontType1, align 4, !tbaa !17
  %cmp2 = icmp eq i32 %4, 11
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load float*, float** %myy.addr, align 8, !tbaa !1
  store float 0.000000e+00, float* %5, align 4, !tbaa !13
  %6 = load float*, float** %myx.addr, align 8, !tbaa !1
  store float 0.000000e+00, float* %6, align 4, !tbaa !13
  %7 = load float*, float** %mxy.addr, align 8, !tbaa !1
  store float 0.000000e+00, float* %7, align 4, !tbaa !13
  %8 = load float*, float** %mxx.addr, align 8, !tbaa !1
  store float 0.000000e+00, float* %8, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %10 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %11 = load float*, float** %mxx.addr, align 8, !tbaa !1
  %12 = load float*, float** %mxy.addr, align 8, !tbaa !1
  %13 = load float*, float** %myx.addr, align 8, !tbaa !1
  %14 = load float*, float** %myy.addr, align 8, !tbaa !1
  call void @gx_compute_char_matrix(%struct.gs_matrix_s* %9, %struct.gs_log2_scale_point_s* %10, float* %11, float* %12, float* %13, float* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_lookup_fm_pair(%struct.gs_font_s* %pfont, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid, %struct.cached_fm_pair_s** %ppair) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %ppair.addr = alloca %struct.cached_fm_pair_s**, align 8
  %mxx = alloca float, align 4
  %mxy = alloca float, align 4
  %myx = alloca float, align 4
  %myy = alloca float, align 4
  %font = alloca %struct.gs_font_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %count = alloca i32, align 4
  %uid = alloca %struct.gs_uid_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !8
  store %struct.cached_fm_pair_s** %ppair, %struct.cached_fm_pair_s*** %ppair.addr, align 8, !tbaa !1
  %0 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %myx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %myy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %5, %struct.gs_font_s** %font, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %dir1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 3
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir1, align 8, !tbaa !23
  store %struct.gs_font_dir_s* %8, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %9 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !24
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 4
  %used = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache2, i32 0, i32 3
  %13 = load i32, i32* %used, align 4, !tbaa !28
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %11, i64 %idx.ext
  store %struct.cached_fm_pair_s* %add.ptr, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %14 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 4
  %msize = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache3, i32 0, i32 0
  %16 = load i32, i32* %msize, align 4, !tbaa !29
  store i32 %16, i32* %count, align 4, !tbaa !8
  %17 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %20 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %21 = load i32, i32* %design_grid.addr, align 4, !tbaa !8
  call void @gx_compute_ccache_key(%struct.gs_font_s* %18, %struct.gs_matrix_s* %19, %struct.gs_log2_scale_point_s* %20, i32 %21, float* %mxx, float* %mxy, float* %myx, float* %myy) #4
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 11
  %23 = load i32, i32* %FontType, align 4, !tbaa !17
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 17
  %25 = load i32, i32* %PaintType, align 4, !tbaa !30
  %cmp4 = icmp ne i32 %25, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !31
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !33
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %27 = bitcast %struct.gs_font_s* %26 to %struct.gs_font_base_s*
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %27, i32 0, i32 24
  %28 = bitcast %struct.gs_uid_s* %uid to i8*
  %29 = bitcast %struct.gs_uid_s* %UID to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !34
  %id5 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  %30 = load i64, i64* %id5, align 8, !tbaa !31
  %cmp6 = icmp ne i64 %30, 9223372036854775807
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  store %struct.gs_font_s* null, %struct.gs_font_s** %font, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %31 = load i32, i32* %count, align 4, !tbaa !8
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %count, align 4, !tbaa !8
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.gs_font_s* %32, null
  br i1 %cmp9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %for.body
  %33 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font11 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %33, i32 0, i32 0
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %font11, align 8, !tbaa !36
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.gs_font_s* %34, %35
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  br label %for.inc

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.24

if.else.15:                                       ; preds = %for.body
  %36 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID16 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %36, i32 0, i32 1
  %call = call i32 @uid_equal(%struct.gs_uid_s* %UID16, %struct.gs_uid_s* %uid) #4
  %tobool17 = icmp ne i32 %call, 0
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.22

lor.lhs.false.18:                                 ; preds = %if.else.15
  %37 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %FontType19 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %37, i32 0, i32 2
  %38 = load i32, i32* %FontType19, align 4, !tbaa !38
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType20 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 11
  %40 = load i32, i32* %FontType20, align 4, !tbaa !17
  %cmp21 = icmp ne i32 %38, %40
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.18, %if.else.15
  br label %for.inc

if.end.23:                                        ; preds = %lor.lhs.false.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %41 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %mxx25 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %41, i32 0, i32 4
  %42 = load float, float* %mxx25, align 4, !tbaa !39
  %43 = load float, float* %mxx, align 4, !tbaa !13
  %cmp26 = fcmp oeq float %42, %43
  br i1 %cmp26, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end.24
  %44 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %mxy27 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %44, i32 0, i32 5
  %45 = load float, float* %mxy27, align 4, !tbaa !40
  %46 = load float, float* %mxy, align 4, !tbaa !13
  %cmp28 = fcmp oeq float %45, %46
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.56

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %47 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %myx30 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %47, i32 0, i32 6
  %48 = load float, float* %myx30, align 4, !tbaa !41
  %49 = load float, float* %myx, align 4, !tbaa !13
  %cmp31 = fcmp oeq float %48, %49
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.56

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %50 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %myy33 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %50, i32 0, i32 7
  %51 = load float, float* %myy33, align 4, !tbaa !42
  %52 = load float, float* %myy, align 4, !tbaa !13
  %cmp34 = fcmp oeq float %51, %52
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.56

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %53 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %design_grid36 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %53, i32 0, i32 15
  %54 = load i32, i32* %design_grid36, align 4, !tbaa !43
  %55 = load i32, i32* %design_grid.addr, align 4, !tbaa !8
  %cmp37 = icmp eq i32 %54, %55
  br i1 %cmp37, label %if.then.38, label %if.end.56

if.then.38:                                       ; preds = %land.lhs.true.35
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font39 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %57, i32 0, i32 0
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font39, align 8, !tbaa !36
  %cmp40 = icmp eq %struct.gs_font_s* %58, null
  br i1 %cmp40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.then.38
  %59 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %60 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font42 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %60, i32 0, i32 0
  store %struct.gs_font_s* %59, %struct.gs_font_s** %font42, align 8, !tbaa !36
  br label %do.body

do.body:                                          ; preds = %if.then.41
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.47

if.else.43:                                       ; preds = %if.then.38
  br label %do.body.44

do.body.44:                                       ; preds = %if.else.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end
  %61 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %62 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %call48 = call i32 @gx_touch_fm_pair(%struct.gs_font_dir_s* %61, %struct.cached_fm_pair_s* %62) #4
  store i32 %call48, i32* %code, align 4, !tbaa !8
  %63 = load i32, i32* %code, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %63, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %64 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.47
  %65 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %67 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %69 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %70 = load i32, i32* %design_grid.addr, align 4, !tbaa !8
  %call52 = call i32 @gx_provide_fm_pair_attributes(%struct.gs_font_dir_s* %65, %struct.gs_font_s* %66, %struct.cached_fm_pair_s* %67, %struct.gs_matrix_s* %68, %struct.gs_log2_scale_point_s* %69, i32 %70) #4
  store i32 %call52, i32* %code, align 4, !tbaa !8
  %71 = load i32, i32* %code, align 4, !tbaa !8
  %cmp53 = icmp slt i32 %71, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %72 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.51
  %73 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %74 = load %struct.cached_fm_pair_s**, %struct.cached_fm_pair_s*** %ppair.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %73, %struct.cached_fm_pair_s** %74, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.54, %if.then.50
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %cleanup.62

if.end.56:                                        ; preds = %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.56, %if.then.22, %if.then.13
  %76 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache57 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %76, i32 0, i32 4
  %mdata58 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache57, i32 0, i32 2
  %77 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata58, align 8, !tbaa !24
  %78 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %78, i32 0, i32 17
  %79 = load i32, i32* %next, align 4, !tbaa !44
  %idx.ext59 = zext i32 %79 to i64
  %add.ptr60 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %77, i64 %idx.ext59
  store %struct.cached_fm_pair_s* %add.ptr60, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %81 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %83 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %84 = load i32, i32* %design_grid.addr, align 4, !tbaa !8
  %85 = load %struct.cached_fm_pair_s**, %struct.cached_fm_pair_s*** %ppair.addr, align 8, !tbaa !1
  %call61 = call i32 @gx_add_fm_pair(%struct.gs_font_dir_s* %80, %struct.gs_font_s* %81, %struct.gs_uid_s* %uid, %struct.gs_matrix_s* %82, %struct.gs_log2_scale_point_s* %83, i32 %84, %struct.cached_fm_pair_s** %85) #4
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %for.end, %cleanup
  %86 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %86) #1
  %87 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast float* %myy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast float* %myx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @uid_equal(%struct.gs_uid_s*, %struct.gs_uid_s*) #2

declare i32 @gx_touch_fm_pair(%struct.gs_font_dir_s*, %struct.cached_fm_pair_s*) #2

declare i32 @gx_provide_fm_pair_attributes(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.cached_fm_pair_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32) #2

declare i32 @gx_add_fm_pair(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_uid_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32, %struct.cached_fm_pair_s**) #2

; Function Attrs: nounwind uwtable
define %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s* %pfont, %struct.cached_fm_pair_s* %pair, i64 %glyph, i32 %wmode, i32 %depth, %struct.gs_fixed_point_s* %subpix_origin) #0 {
entry:
  %retval = alloca %struct.cached_char_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %glyph.addr = alloca i64, align 8
  %wmode.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %subpix_origin.addr = alloca %struct.gs_fixed_point_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %chi = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !35
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !8
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !8
  store %struct.gs_fixed_point_s* %subpix_origin, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %dir1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 3
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir1, align 8, !tbaa !23
  store %struct.gs_font_dir_s* %2, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %3 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %conv = trunc i64 %4 to i32
  %mul = mul i32 %conv, 59
  %5 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %5, i32 0, i32 3
  %6 = load i32, i32* %hash, align 4, !tbaa !45
  %mul2 = mul i32 %6, 73
  %add = add i32 %mul, %mul2
  store i32 %add, i32* %chi, align 4, !tbaa !8
  %7 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %8 = load i32, i32* %chi, align 4, !tbaa !8
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %10 = load i32, i32* %table_mask, align 4, !tbaa !46
  %and = and i32 %8, %10
  %idxprom = zext i32 %and to i64
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache3, i32 0, i32 6
  %12 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !47
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %12, i64 %idxprom
  %13 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  store %struct.cached_char_s* %13, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp = icmp ne %struct.cached_char_s* %13, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %14, i32 0, i32 8
  %15 = load i64, i64* %code, align 8, !tbaa !48
  %16 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %cmp5 = icmp eq i64 %15, %16
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %17 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair7 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %17, i32 0, i32 6
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair7, align 8, !tbaa !53
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.cached_fm_pair_s* %18, %19
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %20 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %subpix_origin11 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %20, i32 0, i32 13
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin11, i32 0, i32 0
  %21 = load i32, i32* %x, align 4, !tbaa !54
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 0
  %23 = load i32, i32* %x12, align 4, !tbaa !55
  %cmp13 = icmp eq i32 %21, %23
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %subpix_origin16 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %24, i32 0, i32 13
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin16, i32 0, i32 1
  %25 = load i32, i32* %y, align 4, !tbaa !56
  %26 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 1
  %27 = load i32, i32* %y17, align 4, !tbaa !57
  %cmp18 = icmp eq i32 %25, %27
  br i1 %cmp18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %land.lhs.true.15
  %28 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %wmode21 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %28, i32 0, i32 9
  %29 = load i8, i8* %wmode21, align 1, !tbaa !58
  %conv22 = zext i8 %29 to i32
  %30 = load i32, i32* %wmode.addr, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %conv22, %30
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true.20
  %31 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %31, i32 0, i32 0
  %depth26 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  %32 = load i32, i32* %depth26, align 4, !tbaa !59
  %33 = load i32, i32* %depth.addr, align 4, !tbaa !8
  %cmp27 = icmp eq i32 %32, %33
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.25
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  store %struct.cached_char_s* %34, %struct.cached_char_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.25, %land.lhs.true.20, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true, %while.body
  %35 = load i32, i32* %chi, align 4, !tbaa !8
  %inc = add i32 %35, 1
  store i32 %inc, i32* %chi, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.29

do.body.29:                                       ; preds = %while.end
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  store %struct.cached_char_s* null, %struct.cached_char_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.31, %do.end
  %36 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load %struct.cached_char_s*, %struct.cached_char_s** %retval
  ret %struct.cached_char_s* %39
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_cached_char(%struct.gs_show_enum_s* %penum, %struct.cached_char_s* %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %depth = alloca i32, align 4
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %imaging_dev = alloca %struct.gx_device_s*, align 8
  %orig_dev = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %xg = alloca i64, align 8
  %xf = alloca %struct.gx_xfont_s*, align 8
  %bits = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s, align 8
  %pcpath185 = alloca %struct.gx_clip_path_s*, align 8
  %color221 = alloca i64, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pie = alloca %struct.gs_image_enum_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %iy = alloca i32, align 4
  %used = alloca i32, align 4
  %raster264 = alloca i32, align 4
  %code1 = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !60
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !70
  store %struct.gx_device_color_s* %5, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !72
  store %struct.gx_device_s* %15, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s** %imaging_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %imaging_dev3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev3, align 8, !tbaa !73
  %tobool = icmp ne %struct.gx_device_s* %18, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %imaging_dev4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev4, align 8, !tbaa !73
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ %20, %cond.true ], [ %21, %cond.false ]
  store %struct.gx_device_s* %cond, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s** %orig_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  store %struct.gx_device_s* %23, %struct.gx_device_s** %orig_dev, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %24) #1
  %25 = bitcast i64* %xg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %xglyph = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %26, i32 0, i32 14
  %27 = load i64, i64* %xglyph, align 8, !tbaa !74
  store i64 %27, i64* %xg, align 8, !tbaa !35
  %28 = bitcast %struct.gx_xfont_s** %xf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  br label %top

top:                                              ; preds = %cleanup.162, %cond.end
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 6
  %31 = load i32, i32* %current_point_valid, align 4, !tbaa !75
  %tobool5 = icmp ne i32 %31, 0
  br i1 %tobool5, label %cond.false.7, label %cond.true.6

cond.true.6:                                      ; preds = %top
  br label %cond.end.17

cond.false.7:                                     ; preds = %top
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 7
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %33 = load double, double* %x8, align 8, !tbaa !85
  %mul = fmul double %33, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #5
  %conv = fptosi double %call to i32
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %conv, i32* %x9, align 4, !tbaa !55
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %current_point10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 7
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point10, i32 0, i32 1
  %35 = load double, double* %y11, align 8, !tbaa !86
  %mul12 = fmul double %35, 2.560000e+02
  %add13 = fadd double %mul12, 5.000000e-01
  %call14 = call double @floor(double %add13) #5
  %conv15 = fptosi double %call14 to i32
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  store i32 %conv15, i32* %y16, align 4, !tbaa !57
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.7, %cond.true.6
  %cond18 = phi i32 [ -14, %cond.true.6 ], [ 0, %cond.false.7 ]
  store i32 %cond18, i32* %code, align 4, !tbaa !8
  %36 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %36, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.17
  %37 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end:                                           ; preds = %cond.end.17
  %38 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %38, i32 0, i32 16
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %39 = load i32, i32* %x20, align 4, !tbaa !87
  %40 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %subpix_origin = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %40, i32 0, i32 13
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin, i32 0, i32 0
  %41 = load i32, i32* %x21, align 4, !tbaa !54
  %add22 = add nsw i32 %39, %41
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %42 = load i32, i32* %x23, align 4, !tbaa !55
  %sub = sub nsw i32 %42, %add22
  store i32 %sub, i32* %x23, align 4, !tbaa !55
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %43 = load i32, i32* %x24, align 4, !tbaa !55
  %add25 = add nsw i32 %43, 128
  %shr = ashr i32 %add25, 8
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ftx = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 37
  %45 = load i32, i32* %ftx, align 4, !tbaa !88
  %add26 = add nsw i32 %shr, %45
  store i32 %add26, i32* %x, align 4, !tbaa !8
  %46 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset27 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %46, i32 0, i32 16
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset27, i32 0, i32 1
  %47 = load i32, i32* %y28, align 4, !tbaa !89
  %48 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %subpix_origin29 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %48, i32 0, i32 13
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin29, i32 0, i32 1
  %49 = load i32, i32* %y30, align 4, !tbaa !56
  %add31 = add nsw i32 %47, %49
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %50 = load i32, i32* %y32, align 4, !tbaa !57
  %sub33 = sub nsw i32 %50, %add31
  store i32 %sub33, i32* %y32, align 4, !tbaa !57
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %51 = load i32, i32* %y34, align 4, !tbaa !57
  %add35 = add nsw i32 %51, 128
  %shr36 = ashr i32 %add35, 8
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fty = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %52, i32 0, i32 38
  %53 = load i32, i32* %fty, align 4, !tbaa !90
  %add37 = add nsw i32 %shr36, %53
  store i32 %add37, i32* %y, align 4, !tbaa !8
  %54 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %54, i32 0, i32 1
  %55 = load i16, i16* %width, align 2, !tbaa !91
  %conv38 = zext i16 %55 to i32
  store i32 %conv38, i32* %w, align 4, !tbaa !8
  %56 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %56, i32 0, i32 2
  %57 = load i16, i16* %height, align 2, !tbaa !92
  %conv39 = zext i16 %57 to i32
  store i32 %conv39, i32* %h, align 4, !tbaa !8
  %58 = load i32, i32* %x, align 4, !tbaa !8
  %59 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %59, i32 0, i32 35
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %60 = load i32, i32* %x40, align 4, !tbaa !93
  %cmp41 = icmp slt i32 %58, %60
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %61 = load i32, i32* %x, align 4, !tbaa !8
  %62 = load i32, i32* %w, align 4, !tbaa !8
  %add43 = add nsw i32 %61, %62
  %63 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox44 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %63, i32 0, i32 35
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox44, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %64 = load i32, i32* %x45, align 4, !tbaa !94
  %cmp46 = icmp sgt i32 %add43, %64
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %65 = load i32, i32* %y, align 4, !tbaa !8
  %66 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox49 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %66, i32 0, i32 35
  %p50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox49, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p50, i32 0, i32 1
  %67 = load i32, i32* %y51, align 4, !tbaa !95
  %cmp52 = icmp slt i32 %65, %67
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.48
  %68 = load i32, i32* %y, align 4, !tbaa !8
  %69 = load i32, i32* %h, align 4, !tbaa !8
  %add55 = add nsw i32 %68, %69
  %70 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %ibox56 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %70, i32 0, i32 35
  %q57 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox56, i32 0, i32 1
  %y58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q57, i32 0, i32 1
  %71 = load i32, i32* %y58, align 4, !tbaa !96
  %cmp59 = icmp sgt i32 %add55, %71
  br i1 %cmp59, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %lor.lhs.false.54, %lor.lhs.false.48, %lor.lhs.false, %if.end
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %73 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %cmp61 = icmp ne %struct.gx_device_s* %72, %73
  br i1 %cmp61, label %if.then.63, label %if.end.95

if.then.63:                                       ; preds = %land.lhs.true
  %74 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i32, i32* %x, align 4, !tbaa !8
  %76 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %76, i32 0, i32 36
  %q64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q64, i32 0, i32 0
  %77 = load i32, i32* %x65, align 4, !tbaa !97
  %cmp66 = icmp sge i32 %75, %77
  br i1 %cmp66, label %if.then.88, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.63
  %78 = load i32, i32* %x, align 4, !tbaa !8
  %79 = load i32, i32* %w, align 4, !tbaa !8
  %add69 = add nsw i32 %78, %79
  %80 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox70 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %80, i32 0, i32 36
  %p71 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox70, i32 0, i32 0
  %x72 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p71, i32 0, i32 0
  %81 = load i32, i32* %x72, align 4, !tbaa !98
  %cmp73 = icmp sle i32 %add69, %81
  br i1 %cmp73, label %if.then.88, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.68
  %82 = load i32, i32* %y, align 4, !tbaa !8
  %83 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox76 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %83, i32 0, i32 36
  %q77 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox76, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q77, i32 0, i32 1
  %84 = load i32, i32* %y78, align 4, !tbaa !99
  %cmp79 = icmp sge i32 %82, %84
  br i1 %cmp79, label %if.then.88, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.75
  %85 = load i32, i32* %y, align 4, !tbaa !8
  %86 = load i32, i32* %h, align 4, !tbaa !8
  %add82 = add nsw i32 %85, %86
  %87 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %obox83 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %87, i32 0, i32 36
  %p84 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %obox83, i32 0, i32 0
  %y85 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p84, i32 0, i32 1
  %88 = load i32, i32* %y85, align 4, !tbaa !100
  %cmp86 = icmp sle i32 %add82, %88
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.81, %lor.lhs.false.75, %lor.lhs.false.68, %if.then.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.89:                                        ; preds = %lor.lhs.false.81
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call90 = call i32 @gx_effective_clip_path(%struct.gs_state_s* %89, %struct.gx_clip_path_s** %pcpath) #4
  store i32 %call90, i32* %code, align 4, !tbaa !8
  %90 = load i32, i32* %code, align 4, !tbaa !8
  %cmp91 = icmp slt i32 %90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.89
  %91 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.89
  %92 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %92, %struct.gx_device_s* %93) #4
  %94 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  store %struct.gx_device_s* %94, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.94
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.93, %if.then.88
  %95 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.341 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.95

if.end.95:                                        ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false.54
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color96 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %96, i32 0, i32 69
  %arrayidx97 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color96, i32 0, i64 0
  %dev_color98 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx97, i32 0, i32 2
  %97 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color98, align 8, !tbaa !70
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %97, i32 0, i32 0
  %98 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !101
  %cmp99 = icmp ne %struct.gx_device_color_type_s* %98, @gx_dc_type_data_none
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %if.end.95
  br label %cond.end.104

cond.false.102:                                   ; preds = %if.end.95
  %99 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call103 = call i32 @gx_remap_color(%struct.gs_state_s* %99) #4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.101
  %cond105 = phi i32 [ 0, %cond.true.101 ], [ %call103, %cond.false.102 ]
  store i32 %cond105, i32* %code, align 4, !tbaa !8
  %100 = load i32, i32* %code, align 4, !tbaa !8
  %cmp106 = icmp ne i32 %100, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %cond.end.104
  %101 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end.109:                                       ; preds = %cond.end.104
  %102 = load i64, i64* %xg, align 8, !tbaa !35
  %cmp110 = icmp ne i64 %102, -1
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.166

land.lhs.true.112:                                ; preds = %if.end.109
  %103 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %103, i32 0, i32 6
  %104 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !53
  %xfont = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %104, i32 0, i32 10
  %105 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont, align 8, !tbaa !107
  store %struct.gx_xfont_s* %105, %struct.gx_xfont_s** %xf, align 8, !tbaa !1
  %cmp113 = icmp ne %struct.gx_xfont_s* %105, null
  br i1 %cmp113, label %if.then.115, label %if.end.166

if.then.115:                                      ; preds = %land.lhs.true.112
  %106 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load i32, i32* %x, align 4, !tbaa !8
  %108 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset116 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %108, i32 0, i32 16
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset116, i32 0, i32 0
  %109 = load i32, i32* %x117, align 4, !tbaa !87
  %shr118 = ashr i32 %109, 8
  %add119 = add nsw i32 %107, %shr118
  store i32 %add119, i32* %cx, align 4, !tbaa !8
  %110 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = load i32, i32* %y, align 4, !tbaa !8
  %112 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset120 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %112, i32 0, i32 16
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset120, i32 0, i32 1
  %113 = load i32, i32* %y121, align 4, !tbaa !89
  %shr122 = ashr i32 %113, 8
  %add123 = add nsw i32 %111, %shr122
  store i32 %add123, i32* %cy, align 4, !tbaa !8
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color124 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 69
  %arrayidx125 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color124, i32 0, i64 0
  %dev_color126 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx125, i32 0, i32 2
  %115 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color126, align 8, !tbaa !70
  %type127 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %115, i32 0, i32 0
  %116 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type127, align 8, !tbaa !101
  %cmp128 = icmp eq %struct.gx_device_color_type_s* %116, @gx_dc_type_data_pure
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.142

land.lhs.true.130:                                ; preds = %if.then.115
  %117 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %117, i32 0, i32 10
  %118 = load i32, i32* %log_op, align 4, !tbaa !108
  %and = and i32 %118, 563
  %cmp131 = icmp eq i32 %and, 48
  br i1 %cmp131, label %if.then.133, label %if.end.142

if.then.133:                                      ; preds = %land.lhs.true.130
  %119 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xf, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gx_xfont_s, %struct.gx_xfont_s* %119, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gx_xfont_common_s, %struct.gx_xfont_common_s* %common, i32 0, i32 0
  %120 = load %struct.gx_xfont_procs_s*, %struct.gx_xfont_procs_s** %procs, align 8, !tbaa !109
  %render_char = getelementptr inbounds %struct.gx_xfont_procs_s, %struct.gx_xfont_procs_s* %120, i32 0, i32 3
  %121 = load i32 (%struct.gx_xfont_s*, i64, %struct.gx_device_s*, i32, i32, i64, i32)*, i32 (%struct.gx_xfont_s*, i64, %struct.gx_device_s*, i32, i32, i64, i32)** %render_char, align 8, !tbaa !112
  %122 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xf, align 8, !tbaa !1
  %123 = load i64, i64* %xg, align 8, !tbaa !35
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %125 = load i32, i32* %cx, align 4, !tbaa !8
  %126 = load i32, i32* %cy, align 4, !tbaa !8
  %127 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %127, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %128 = load i64, i64* %pure, align 8, !tbaa !35
  %call134 = call i32 %121(%struct.gx_xfont_s* %122, i64 %123, %struct.gx_device_s* %124, i32 %125, i32 %126, i64 %128, i32 0) #4
  store i32 %call134, i32* %code, align 4, !tbaa !8
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.133
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.135
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  %129 = load i32, i32* %code, align 4, !tbaa !8
  %cmp138 = icmp eq i32 %129, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %do.end.137
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.141:                                       ; preds = %do.end.137
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.lhs.true.130, %if.then.115
  %130 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %130, i32 0, i32 5
  %131 = load i64, i64* %id, align 8, !tbaa !114
  %cmp143 = icmp ne i64 %131, 0
  br i1 %cmp143, label %if.end.161, label %if.then.145

if.then.145:                                      ; preds = %if.end.142
  %132 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %132) #1
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !115
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %mdev, %struct.gs_memory_s* %134, %struct.gx_device_s* %135) #4
  %136 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  call void @gx_open_cache_device(%struct.gx_device_memory_s* %mdev, %struct.cached_char_s* %136) #4
  %137 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xf, align 8, !tbaa !1
  %common146 = getelementptr inbounds %struct.gx_xfont_s, %struct.gx_xfont_s* %137, i32 0, i32 0
  %procs147 = getelementptr inbounds %struct.gx_xfont_common_s, %struct.gx_xfont_common_s* %common146, i32 0, i32 0
  %138 = load %struct.gx_xfont_procs_s*, %struct.gx_xfont_procs_s** %procs147, align 8, !tbaa !109
  %render_char148 = getelementptr inbounds %struct.gx_xfont_procs_s, %struct.gx_xfont_procs_s* %138, i32 0, i32 3
  %139 = load i32 (%struct.gx_xfont_s*, i64, %struct.gx_device_s*, i32, i32, i64, i32)*, i32 (%struct.gx_xfont_s*, i64, %struct.gx_device_s*, i32, i32, i64, i32)** %render_char148, align 8, !tbaa !112
  %140 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xf, align 8, !tbaa !1
  %141 = load i64, i64* %xg, align 8, !tbaa !35
  %142 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %143 = load i32, i32* %cx, align 4, !tbaa !8
  %144 = load i32, i32* %x, align 4, !tbaa !8
  %sub149 = sub nsw i32 %143, %144
  %145 = load i32, i32* %cy, align 4, !tbaa !8
  %146 = load i32, i32* %y, align 4, !tbaa !8
  %sub150 = sub nsw i32 %145, %146
  %call151 = call i32 %139(%struct.gx_xfont_s* %140, i64 %141, %struct.gx_device_s* %142, i32 %sub149, i32 %sub150, i64 1, i32 1) #4
  store i32 %call151, i32* %code, align 4, !tbaa !8
  br label %do.body.152

do.body.152:                                      ; preds = %if.then.145
  br label %do.cond.153

do.cond.153:                                      ; preds = %do.body.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  %147 = load i32, i32* %code, align 4, !tbaa !8
  %cmp155 = icmp ne i32 %147, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %do.end.154
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.158:                                       ; preds = %do.end.154
  %148 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair159 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %148, i32 0, i32 6
  %149 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair159, align 8, !tbaa !53
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %149, i32 0, i32 0
  %150 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !36
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %150, i32 0, i32 3
  %151 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !23
  %152 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  call void @gx_add_char_bits(%struct.gs_font_dir_s* %151, %struct.cached_char_s* %152, %struct.gs_log2_scale_point_s* @scale_log2_1) #4
  store i64 -1, i64* %xg, align 8, !tbaa !35
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.158, %if.then.157
  %153 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %153) #1
  br label %cleanup.162

if.end.161:                                       ; preds = %if.end.142
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %if.end.161, %cleanup.160, %if.then.140
  %154 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %cleanup.dest.164 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.164, label %cleanup.341 [
    i32 0, label %cleanup.cont.165
    i32 2, label %top
  ]

cleanup.cont.165:                                 ; preds = %cleanup.162
  br label %if.end.166

if.end.166:                                       ; preds = %cleanup.cont.165, %land.lhs.true.112, %if.end.109
  %156 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %157 = bitcast %struct.cached_char_s* %156 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %157, i64 104
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  %158 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %158, i32 0, i32 0
  %depth167 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  %159 = load i32, i32* %depth167, align 4, !tbaa !59
  %cmp168 = icmp eq i32 %159, 3
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.end.166
  br label %cond.end.174

cond.false.171:                                   ; preds = %if.end.166
  %160 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head172 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %160, i32 0, i32 0
  %depth173 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head172, i32 0, i32 1
  %161 = load i32, i32* %depth173, align 4, !tbaa !59
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.171, %cond.true.170
  %cond175 = phi i32 [ 2, %cond.true.170 ], [ %161, %cond.false.171 ]
  store i32 %cond175, i32* %depth, align 4, !tbaa !8
  %162 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev, align 8, !tbaa !1
  %procs176 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %162, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs176, i32 0, i32 26
  %163 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !125
  %cmp177 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* %163, @gx_default_fill_mask
  br i1 %cmp177, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %cond.end.174
  %164 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %log_op180 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %164, i32 0, i32 10
  %165 = load i32, i32* %log_op180, align 4, !tbaa !108
  %and181 = and i32 %165, 563
  %cmp182 = icmp eq i32 %and181, 48
  br i1 %cmp182, label %if.else, label %if.then.184

if.then.184:                                      ; preds = %lor.lhs.false.179, %cond.end.174
  %166 = bitcast %struct.gx_clip_path_s** %pcpath185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  %167 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %tobool186 = icmp ne %struct.gs_show_enum_s* %167, null
  br i1 %tobool186, label %if.then.187, label %if.end.192

if.then.187:                                      ; preds = %if.then.184
  %168 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %168, i32 0, i32 45
  store i32 0, i32* %use_wxy_float, align 4, !tbaa !126
  %169 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %169, i32 0, i32 44
  %y188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float, i32 0, i32 1
  store double 0.000000e+00, double* %y188, align 8, !tbaa !127
  %170 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy_float189 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %170, i32 0, i32 44
  %x190 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float189, i32 0, i32 0
  store double 0.000000e+00, double* %x190, align 8, !tbaa !128
  %171 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %171, i32 0, i32 43
  %172 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %wxy191 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %172, i32 0, i32 15
  %173 = bitcast %struct.gs_fixed_point_s* %wxy to i8*
  %174 = bitcast %struct.gs_fixed_point_s* %wxy191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 8, i32 4, i1 false), !tbaa.struct !129
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.187, %if.then.184
  %175 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call193 = call i32 @gx_effective_clip_path(%struct.gs_state_s* %175, %struct.gx_clip_path_s** %pcpath185) #4
  store i32 %call193, i32* %code, align 4, !tbaa !8
  %176 = load i32, i32* %code, align 4, !tbaa !8
  %cmp194 = icmp sge i32 %176, 0
  br i1 %cmp194, label %if.then.196, label %if.end.205

if.then.196:                                      ; preds = %if.end.192
  %177 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev, align 8, !tbaa !1
  %178 = load i8*, i8** %bits, align 8, !tbaa !1
  %179 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %179, i32 0, i32 4
  %180 = load i16, i16* %raster, align 2, !tbaa !130
  %conv197 = zext i16 %180 to i32
  %181 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %id198 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %181, i32 0, i32 5
  %182 = load i64, i64* %id198, align 8, !tbaa !114
  %183 = load i32, i32* %x, align 4, !tbaa !8
  %184 = load i32, i32* %y, align 4, !tbaa !8
  %185 = load i32, i32* %w, align 4, !tbaa !8
  %186 = load i32, i32* %h, align 4, !tbaa !8
  %187 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %188 = load i32, i32* %depth, align 4, !tbaa !8
  %189 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %log_op199 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %189, i32 0, i32 10
  %190 = load i32, i32* %log_op199, align 4, !tbaa !108
  %191 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath185, align 8, !tbaa !1
  %call200 = call i32 @gx_image_fill_masked(%struct.gx_device_s* %177, i8* %178, i32 0, i32 %conv197, i64 %182, i32 %183, i32 %184, i32 %185, i32 %186, %struct.gx_device_color_s* %187, i32 %188, i32 %190, %struct.gx_clip_path_s* %191) #4
  store i32 %call200, i32* %code, align 4, !tbaa !8
  %192 = load i32, i32* %code, align 4, !tbaa !8
  %cmp201 = icmp sge i32 %192, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.196
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.204:                                       ; preds = %if.then.196
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.192
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %if.then.203, %if.end.205
  %193 = bitcast %struct.gx_clip_path_s** %pcpath185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %cleanup.dest.207 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.207, label %cleanup.341 [
    i32 0, label %cleanup.cont.208
    i32 9, label %done
  ]

cleanup.cont.208:                                 ; preds = %cleanup.206
  br label %if.end.249

if.else:                                          ; preds = %lor.lhs.false.179
  %194 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color209 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %194, i32 0, i32 69
  %arrayidx210 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color209, i32 0, i64 0
  %dev_color211 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx210, i32 0, i32 2
  %195 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color211, align 8, !tbaa !70
  %type212 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %195, i32 0, i32 0
  %196 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type212, align 8, !tbaa !101
  %cmp213 = icmp eq %struct.gx_device_color_type_s* %196, @gx_dc_type_data_pure
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.248

land.lhs.true.215:                                ; preds = %if.else
  %197 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %log_op216 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %197, i32 0, i32 10
  %198 = load i32, i32* %log_op216, align 4, !tbaa !108
  %and217 = and i32 %198, 563
  %cmp218 = icmp eq i32 %and217, 48
  br i1 %cmp218, label %if.then.220, label %if.end.248

if.then.220:                                      ; preds = %land.lhs.true.215
  %199 = bitcast i64* %color221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %colors222 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %200, i32 0, i32 1
  %pure223 = bitcast %union._c* %colors222 to i64*
  %201 = load i64, i64* %pure223, align 8, !tbaa !35
  store i64 %201, i64* %color221, align 8, !tbaa !35
  %202 = load i32, i32* %depth, align 4, !tbaa !8
  %cmp224 = icmp sgt i32 %202, 1
  br i1 %cmp224, label %if.then.226, label %if.end.242

if.then.226:                                      ; preds = %if.then.220
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %procs227 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %203, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs227, i32 0, i32 21
  %204 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !131
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %206 = load i8*, i8** %bits, align 8, !tbaa !1
  %207 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster228 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %207, i32 0, i32 4
  %208 = load i16, i16* %raster228, align 2, !tbaa !130
  %conv229 = zext i16 %208 to i32
  %209 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %id230 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %209, i32 0, i32 5
  %210 = load i64, i64* %id230, align 8, !tbaa !114
  %211 = load i32, i32* %x, align 4, !tbaa !8
  %212 = load i32, i32* %y, align 4, !tbaa !8
  %213 = load i32, i32* %w, align 4, !tbaa !8
  %214 = load i32, i32* %h, align 4, !tbaa !8
  %215 = load i64, i64* %color221, align 8, !tbaa !35
  %216 = load i32, i32* %depth, align 4, !tbaa !8
  %call231 = call i32 %204(%struct.gx_device_s* %205, i8* %206, i32 0, i32 %conv229, i64 %210, i32 %211, i32 %212, i32 %213, i32 %214, i64 %215, i32 %216) #4
  store i32 %call231, i32* %code, align 4, !tbaa !8
  %217 = load i32, i32* %code, align 4, !tbaa !8
  %cmp232 = icmp sge i32 %217, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.226
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.235:                                       ; preds = %if.then.226
  %218 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %219 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory236 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %219, i32 0, i32 8
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory236, align 8, !tbaa !132
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 3
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !133
  %call237 = call i8* @compress_alpha_bits(%struct.cached_char_s* %218, %struct.gs_memory_s* %221) #4
  store i8* %call237, i8** %bits, align 8, !tbaa !1
  %222 = load i8*, i8** %bits, align 8, !tbaa !1
  %cmp238 = icmp eq i8* %222, null
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.235
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.241:                                       ; preds = %if.end.235
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.220
  %223 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %procs243 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %223, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs243, i32 0, i32 9
  %224 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !136
  %225 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !1
  %226 = load i8*, i8** %bits, align 8, !tbaa !1
  %227 = load i32, i32* %w, align 4, !tbaa !8
  %add244 = add nsw i32 %227, 63
  %shr245 = ashr i32 %add244, 6
  %shl = shl i32 %shr245, 3
  %228 = load i32, i32* %x, align 4, !tbaa !8
  %229 = load i32, i32* %y, align 4, !tbaa !8
  %230 = load i32, i32* %w, align 4, !tbaa !8
  %231 = load i32, i32* %h, align 4, !tbaa !8
  %232 = load i64, i64* %color221, align 8, !tbaa !35
  %call246 = call i32 %224(%struct.gx_device_s* %225, i8* %226, i32 0, i32 %shl, i64 0, i32 %228, i32 %229, i32 %230, i32 %231, i64 -1, i64 %232) #4
  store i32 %call246, i32* %code, align 4, !tbaa !8
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.247

cleanup.247:                                      ; preds = %if.end.242, %if.then.240, %if.then.234
  %233 = bitcast i64* %color221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %cleanup.dest325 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest325, label %cleanup.341 [
    i32 9, label %done
  ]

if.end.248:                                       ; preds = %land.lhs.true.215, %if.else
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %cleanup.cont.208
  %234 = load i32, i32* %depth, align 4, !tbaa !8
  %cmp250 = icmp sgt i32 %234, 1
  br i1 %cmp250, label %if.then.252, label %if.end.260

if.then.252:                                      ; preds = %if.end.249
  %235 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %236 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory253 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %236, i32 0, i32 8
  %237 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory253, align 8, !tbaa !132
  %non_gc_memory254 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %237, i32 0, i32 3
  %238 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory254, align 8, !tbaa !133
  %call255 = call i8* @compress_alpha_bits(%struct.cached_char_s* %235, %struct.gs_memory_s* %238) #4
  store i8* %call255, i8** %bits, align 8, !tbaa !1
  %239 = load i8*, i8** %bits, align 8, !tbaa !1
  %cmp256 = icmp eq i8* %239, null
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.252
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end.259:                                       ; preds = %if.then.252
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.end.249
  %240 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  %241 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory261 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %241, i32 0, i32 8
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory261, align 8, !tbaa !132
  %non_gc_memory262 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %242, i32 0, i32 3
  %243 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory262, align 8, !tbaa !133
  store %struct.gs_memory_s* %243, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %244 = bitcast %struct.gs_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %244) #1
  %245 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call263 = call %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.gs_image_enum_s* %call263, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %246 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %246) #1
  %247 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #1
  %248 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  %249 = bitcast i32* %raster264 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = load i8*, i8** %bits, align 8, !tbaa !1
  %251 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %252 = bitcast %struct.cached_char_s* %251 to i8*
  %add.ptr265 = getelementptr inbounds i8, i8* %252, i64 104
  %cmp266 = icmp eq i8* %250, %add.ptr265
  br i1 %cmp266, label %cond.true.268, label %cond.false.271

cond.true.268:                                    ; preds = %if.end.260
  %253 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster269 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %253, i32 0, i32 4
  %254 = load i16, i16* %raster269, align 2, !tbaa !130
  %conv270 = zext i16 %254 to i32
  br label %cond.end.277

cond.false.271:                                   ; preds = %if.end.260
  %255 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width272 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %255, i32 0, i32 1
  %256 = load i16, i16* %width272, align 2, !tbaa !91
  %conv273 = zext i16 %256 to i32
  %add274 = add nsw i32 %conv273, 63
  %shr275 = ashr i32 %add274, 6
  %shl276 = shl i32 %shr275, 3
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.271, %cond.true.268
  %cond278 = phi i32 [ %conv270, %cond.true.268 ], [ %shl276, %cond.false.271 ]
  store i32 %cond278, i32* %raster264, align 4, !tbaa !8
  %257 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  %258 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %cmp279 = icmp eq %struct.gs_image_enum_s* %258, null
  br i1 %cmp279, label %if.then.281, label %if.end.288

if.then.281:                                      ; preds = %cond.end.277
  %259 = load i8*, i8** %bits, align 8, !tbaa !1
  %260 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %261 = bitcast %struct.cached_char_s* %260 to i8*
  %add.ptr282 = getelementptr inbounds i8, i8* %261, i64 104
  %cmp283 = icmp ne i8* %259, %add.ptr282
  br i1 %cmp283, label %if.then.285, label %if.end.287

if.then.285:                                      ; preds = %if.then.281
  %262 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs286 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %262, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs286, i32 0, i32 2
  %263 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !137
  %264 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %265 = load i8*, i8** %bits, align 8, !tbaa !1
  call void %263(%struct.gs_memory_s* %264, i8* %265, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.285, %if.then.281
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.316

if.end.288:                                       ; preds = %cond.end.277
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 1, i32 1) #4
  %266 = load i32, i32* %x, align 4, !tbaa !8
  %sub289 = sub nsw i32 0, %266
  %conv290 = sitofp i32 %sub289 to double
  %267 = load i32, i32* %y, align 4, !tbaa !8
  %sub291 = sub nsw i32 0, %267
  %conv292 = sitofp i32 %sub291 to double
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %call293 = call i32 @gs_make_translation(double %conv290, double %conv292, %struct.gs_matrix_s* %ImageMatrix) #4
  %268 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %268, i32 0, i32 5
  %269 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %ImageMatrix294 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %ImageMatrix295 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %call296 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %269, %struct.gs_matrix_s* %ImageMatrix294, %struct.gs_matrix_s* %ImageMatrix295) #4
  %270 = load i32, i32* %w, align 4, !tbaa !8
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  store i32 %270, i32* %Width, align 4, !tbaa !138
  %271 = load i32, i32* %h, align 4, !tbaa !8
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  store i32 %271, i32* %Height, align 4, !tbaa !140
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 11
  store i32 0, i32* %adjust, align 4, !tbaa !141
  %272 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %273 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call297 = call i32 @gs_image_init(%struct.gs_image_enum_s* %272, %struct.gs_image1_s* %image, i32 0, %struct.gs_state_s* %273) #4
  store i32 %call297, i32* %code, align 4, !tbaa !8
  %274 = load i32, i32* %code, align 4, !tbaa !8
  switch i32 %274, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.298
  ]

sw.bb:                                            ; preds = %if.end.288
  store i32 0, i32* %code, align 4, !tbaa !8
  br label %sw.default

sw.default:                                       ; preds = %if.end.288, %sw.bb
  br label %sw.epilog

sw.bb.298:                                        ; preds = %if.end.288
  store i32 0, i32* %iy, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.298
  %275 = load i32, i32* %iy, align 4, !tbaa !8
  %276 = load i32, i32* %h, align 4, !tbaa !8
  %cmp299 = icmp slt i32 %275, %276
  br i1 %cmp299, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %277 = load i32, i32* %code, align 4, !tbaa !8
  %cmp301 = icmp sge i32 %277, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %278 = phi i1 [ false, %for.cond ], [ %cmp301, %land.rhs ]
  br i1 %278, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %279 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %280 = load i8*, i8** %bits, align 8, !tbaa !1
  %281 = load i32, i32* %iy, align 4, !tbaa !8
  %282 = load i32, i32* %raster264, align 4, !tbaa !8
  %mul303 = mul i32 %281, %282
  %idx.ext = zext i32 %mul303 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %280, i64 %idx.ext
  %283 = load i32, i32* %w, align 4, !tbaa !8
  %add305 = add nsw i32 %283, 7
  %shr306 = ashr i32 %add305, 3
  %call307 = call i32 @gs_image_next(%struct.gs_image_enum_s* %279, i8* %add.ptr304, i32 %shr306, i32* %used) #4
  store i32 %call307, i32* %code, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %284 = load i32, i32* %iy, align 4, !tbaa !8
  %inc = add nsw i32 %284, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.default
  %285 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %286 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call308 = call i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %285, %struct.gs_state_s* %286) #4
  store i32 %call308, i32* %code1, align 4, !tbaa !8
  %287 = load i32, i32* %code, align 4, !tbaa !8
  %cmp309 = icmp sge i32 %287, 0
  br i1 %cmp309, label %land.lhs.true.311, label %if.end.315

land.lhs.true.311:                                ; preds = %sw.epilog
  %288 = load i32, i32* %code1, align 4, !tbaa !8
  %cmp312 = icmp slt i32 %288, 0
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %land.lhs.true.311
  %289 = load i32, i32* %code1, align 4, !tbaa !8
  store i32 %289, i32* %code, align 4, !tbaa !8
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %land.lhs.true.311, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.316

cleanup.316:                                      ; preds = %if.end.315, %if.end.287
  %290 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %raster264 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %294) #1
  %295 = bitcast %struct.gs_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %cleanup.dest.323 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.323, label %cleanup.341 [
    i32 0, label %cleanup.cont.324
  ]

cleanup.cont.324:                                 ; preds = %cleanup.316
  br label %done

done:                                             ; preds = %cleanup.cont.324, %cleanup.247, %cleanup.206
  %297 = load i8*, i8** %bits, align 8, !tbaa !1
  %298 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %299 = bitcast %struct.cached_char_s* %298 to i8*
  %add.ptr326 = getelementptr inbounds i8, i8* %299, i64 104
  %cmp327 = icmp ne i8* %297, %add.ptr326
  br i1 %cmp327, label %if.then.329, label %if.end.336

if.then.329:                                      ; preds = %done
  %300 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory330 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %300, i32 0, i32 8
  %301 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory330, align 8, !tbaa !132
  %non_gc_memory331 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %301, i32 0, i32 3
  %302 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory331, align 8, !tbaa !133
  %procs332 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %302, i32 0, i32 1
  %free_object333 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs332, i32 0, i32 2
  %303 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object333, align 8, !tbaa !137
  %304 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory334 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %304, i32 0, i32 8
  %305 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory334, align 8, !tbaa !132
  %non_gc_memory335 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %305, i32 0, i32 3
  %306 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory335, align 8, !tbaa !133
  %307 = load i8*, i8** %bits, align 8, !tbaa !1
  call void %303(%struct.gs_memory_s* %306, i8* %307, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.329, %done
  %308 = load i32, i32* %code, align 4, !tbaa !8
  %cmp337 = icmp sgt i32 %308, 0
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.end.336
  store i32 0, i32* %code, align 4, !tbaa !8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.339, %if.end.336
  %309 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

cleanup.341:                                      ; preds = %if.end.340, %cleanup.247, %cleanup.316, %if.then.258, %cleanup.206, %cleanup.162, %if.then.108, %cleanup, %if.then
  %310 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.gx_xfont_s** %xf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i64* %xg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %313) #1
  %314 = bitcast %struct.gx_device_s** %orig_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast %struct.gx_device_s** %imaging_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = load i32, i32* %retval
  ret i32 %326
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @gx_effective_clip_path(%struct.gs_state_s*, %struct.gx_clip_path_s**) #2

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #2

declare i32 @gx_remap_color(%struct.gs_state_s*) #2

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare void @gx_open_cache_device(%struct.gx_device_memory_s*, %struct.cached_char_s*) #2

declare void @gx_add_char_bits(%struct.gs_font_dir_s*, %struct.cached_char_s*, %struct.gs_log2_scale_point_s*) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

declare i32 @gx_image_fill_masked(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

; Function Attrs: nounwind uwtable
define internal i8* @compress_alpha_bits(%struct.cached_char_s* %cc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i8*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %depth = alloca i32, align 4
  %sraster = alloca i32, align 4
  %sskip = alloca i32, align 4
  %draster = alloca i32, align 4
  %dskip = alloca i32, align 4
  %mask = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %dptr = alloca i8*, align 8
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sbit = alloca i8, align 1
  %d = alloca i8, align 1
  %dbit = alloca i8, align 1
  %w = alloca i32, align 4
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cached_char_s* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 104
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %4, i32 0, i32 1
  %5 = load i16, i16* %width1, align 2, !tbaa !91
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !8
  %6 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %7, i32 0, i32 2
  %8 = load i16, i16* %height2, align 2, !tbaa !92
  %conv3 = zext i16 %8 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !8
  %9 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %10, i32 0, i32 0
  %depth4 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  %11 = load i32, i32* %depth4, align 4, !tbaa !59
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head6 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %12, i32 0, i32 0
  %depth7 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head6, i32 0, i32 1
  %13 = load i32, i32* %depth7, align 4, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %depth, align 4, !tbaa !8
  %14 = bitcast i32* %sraster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %15, i32 0, i32 4
  %16 = load i16, i16* %raster, align 2, !tbaa !130
  %conv8 = zext i16 %16 to i32
  store i32 %conv8, i32* %sraster, align 4, !tbaa !8
  %17 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %sraster, align 4, !tbaa !8
  %19 = load i32, i32* %width, align 4, !tbaa !8
  %20 = load i32, i32* %depth, align 4, !tbaa !8
  %mul = mul i32 %19, %20
  %add = add i32 %mul, 7
  %shr = lshr i32 %add, 3
  %sub = sub i32 %18, %shr
  store i32 %sub, i32* %sskip, align 4, !tbaa !8
  %21 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %width, align 4, !tbaa !8
  %add9 = add i32 %22, 63
  %shr10 = lshr i32 %add9, 6
  %shl = shl i32 %shr10, 3
  store i32 %shl, i32* %draster, align 4, !tbaa !8
  %23 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %draster, align 4, !tbaa !8
  %25 = load i32, i32* %width, align 4, !tbaa !8
  %add11 = add i32 %25, 7
  %shr12 = lshr i32 %add11, 3
  %sub13 = sub i32 %24, %shr12
  store i32 %sub13, i32* %dskip, align 4, !tbaa !8
  %26 = bitcast i8** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !142
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load i32, i32* %draster, align 4, !tbaa !8
  %31 = load i32, i32* %height, align 4, !tbaa !8
  %mul14 = mul i32 %30, %31
  %call = call i8* %28(%struct.gs_memory_s* %29, i32 %mul14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call, i8** %mask, align 8, !tbaa !1
  %32 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %33, i8** %sptr, align 8, !tbaa !1
  %34 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i8*, i8** %mask, align 8, !tbaa !1
  store i8* %35, i8** %dptr, align 8, !tbaa !1
  %36 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8*, i8** %mask, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %37, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %38 = load i32, i32* %height, align 4, !tbaa !8
  store i32 %38, i32* %h, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end
  %39 = load i32, i32* %h, align 4, !tbaa !8
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %sbit) #1
  store i8 -128, i8* %sbit, align 1, !tbaa !143
  call void @llvm.lifetime.start(i64 1, i8* %d) #1
  store i8 0, i8* %d, align 1, !tbaa !143
  call void @llvm.lifetime.start(i64 1, i8* %dbit) #1
  store i8 -128, i8* %dbit, align 1, !tbaa !143
  %40 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %width, align 4, !tbaa !8
  store i32 %41, i32* %w, align 4, !tbaa !8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %42 = load i32, i32* %w, align 4, !tbaa !8
  %tobool18 = icmp ne i32 %42, 0
  br i1 %tobool18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %43 = load i8*, i8** %sptr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !143
  %conv20 = zext i8 %44 to i32
  %45 = load i8, i8* %sbit, align 1, !tbaa !143
  %conv21 = zext i8 %45 to i32
  %and = and i32 %conv20, %conv21
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %for.body.19
  %46 = load i8, i8* %dbit, align 1, !tbaa !143
  %conv24 = zext i8 %46 to i32
  %47 = load i8, i8* %d, align 1, !tbaa !143
  %conv25 = zext i8 %47 to i32
  %add26 = add nsw i32 %conv25, %conv24
  %conv27 = trunc i32 %add26 to i8
  store i8 %conv27, i8* %d, align 1, !tbaa !143
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %for.body.19
  %48 = load i32, i32* %depth, align 4, !tbaa !8
  %49 = load i8, i8* %sbit, align 1, !tbaa !143
  %conv29 = zext i8 %49 to i32
  %shr30 = ashr i32 %conv29, %48
  %conv31 = trunc i32 %shr30 to i8
  store i8 %conv31, i8* %sbit, align 1, !tbaa !143
  %tobool32 = icmp ne i8 %conv31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.28
  store i8 -128, i8* %sbit, align 1, !tbaa !143
  %50 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.28
  %51 = load i8, i8* %dbit, align 1, !tbaa !143
  %conv35 = zext i8 %51 to i32
  %shr36 = ashr i32 %conv35, 1
  %conv37 = trunc i32 %shr36 to i8
  store i8 %conv37, i8* %dbit, align 1, !tbaa !143
  %tobool38 = icmp ne i8 %conv37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  %52 = load i8, i8* %d, align 1, !tbaa !143
  %53 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr40, i8** %dptr, align 8, !tbaa !1
  store i8 %52, i8* %53, align 1, !tbaa !143
  store i8 -128, i8* %dbit, align 1, !tbaa !143
  store i8 0, i8* %d, align 1, !tbaa !143
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %54 = load i32, i32* %w, align 4, !tbaa !8
  %dec = add i32 %54, -1
  store i32 %dec, i32* %w, align 4, !tbaa !8
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %55 = load i8, i8* %dbit, align 1, !tbaa !143
  %conv42 = zext i8 %55 to i32
  %cmp43 = icmp ne i32 %conv42, 128
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.end
  %56 = load i8, i8* %d, align 1, !tbaa !143
  %57 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr46, i8** %dptr, align 8, !tbaa !1
  store i8 %56, i8* %57, align 1, !tbaa !143
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %for.end
  %58 = load i32, i32* %dskip, align 4, !tbaa !8
  store i32 %58, i32* %w, align 4, !tbaa !8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.53, %if.end.47
  %59 = load i32, i32* %w, align 4, !tbaa !8
  %cmp49 = icmp ne i32 %59, 0
  br i1 %cmp49, label %for.body.51, label %for.end.55

for.body.51:                                      ; preds = %for.cond.48
  %60 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr52, i8** %dptr, align 8, !tbaa !1
  store i8 0, i8* %60, align 1, !tbaa !143
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.51
  %61 = load i32, i32* %w, align 4, !tbaa !8
  %dec54 = add i32 %61, -1
  store i32 %dec54, i32* %w, align 4, !tbaa !8
  br label %for.cond.48

for.end.55:                                       ; preds = %for.cond.48
  %62 = load i8, i8* %sbit, align 1, !tbaa !143
  %conv56 = zext i8 %62 to i32
  %cmp57 = icmp ne i32 %conv56, 128
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.end.55
  %63 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr60, i8** %sptr, align 8, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end.55
  %64 = load i32, i32* %sskip, align 4, !tbaa !8
  %65 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext = zext i32 %64 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr62, i8** %sptr, align 8, !tbaa !1
  %66 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbit) #1
  call void @llvm.lifetime.end(i64 1, i8* %d) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbit) #1
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.61
  %67 = load i32, i32* %h, align 4, !tbaa !8
  %dec64 = add i32 %67, -1
  store i32 %dec64, i32* %h, align 4, !tbaa !8
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %68 = load i8*, i8** %mask, align 8, !tbaa !1
  store i8* %68, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.65, %if.then
  %69 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %sraster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i8*, i8** %retval
  ret i8* %81
}

declare %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s*, i8*) #2

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_image_init(%struct.gs_image_enum_s*, %struct.gs_image1_s*, i32, %struct.gs_state_s*) #2

declare i32 @gs_image_next(%struct.gs_image_enum_s*, i8*, i32, i32*) #2

declare i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s*, %struct.gs_state_s*) #2

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
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !7, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 4}
!15 = !{!11, !12, i64 8}
!16 = !{!11, !12, i64 12}
!17 = !{!18, !3, i64 128}
!18 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !19, i64 40, !20, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !12, i64 156, !7, i64 160, !21, i64 168, !22, i64 272, !22, i64 324}
!19 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!20 = !{!"long", !3, i64 0}
!21 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!22 = !{!"gs_font_name_s", !3, i64 0, !7, i64 48}
!23 = !{!18, !2, i64 24}
!24 = !{!25, !2, i64 32}
!25 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !26, i64 24, !27, i64 56, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !7, i64 192, !2, i64 200, !2, i64 208, !20, i64 216}
!26 = !{!"fm_pair_cache_s", !7, i64 0, !7, i64 4, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24}
!27 = !{!"char_cache_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !2, i64 72, !2, i64 80}
!28 = !{!25, !7, i64 40}
!29 = !{!25, !7, i64 24}
!30 = !{!18, !7, i64 152}
!31 = !{!32, !20, i64 0}
!32 = !{!"gs_uid_s", !20, i64 0, !2, i64 8}
!33 = !{!32, !2, i64 8}
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !1}
!35 = !{!20, !20, i64 0}
!36 = !{!37, !2, i64 0}
!37 = !{!"cached_fm_pair_s", !2, i64 0, !32, i64 8, !3, i64 24, !7, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !7, i64 48, !7, i64 52, !2, i64 56, !2, i64 64, !7, i64 72, !2, i64 80, !2, i64 88, !7, i64 96, !7, i64 100, !7, i64 104}
!38 = !{!37, !3, i64 24}
!39 = !{!37, !12, i64 32}
!40 = !{!37, !12, i64 36}
!41 = !{!37, !12, i64 40}
!42 = !{!37, !12, i64 44}
!43 = !{!37, !7, i64 96}
!44 = !{!37, !7, i64 104}
!45 = !{!37, !7, i64 28}
!46 = !{!25, !7, i64 104}
!47 = !{!25, !2, i64 96}
!48 = !{!49, !20, i64 40}
!49 = !{!"cached_char_s", !50, i64 0, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !20, i64 16, !2, i64 24, !7, i64 32, !20, i64 40, !3, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !52, i64 72, !20, i64 80, !52, i64 88, !52, i64 96}
!50 = !{!"gx_cached_bits_head_s", !7, i64 0, !7, i64 4}
!51 = !{!"short", !3, i64 0}
!52 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!53 = !{!49, !2, i64 24}
!54 = !{!49, !7, i64 72}
!55 = !{!52, !7, i64 0}
!56 = !{!49, !7, i64 76}
!57 = !{!52, !7, i64 4}
!58 = !{!49, !3, i64 48}
!59 = !{!49, !7, i64 4}
!60 = !{!61, !2, i64 456}
!61 = !{!"gs_show_enum_s", !62, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !65, i64 160, !2, i64 184, !2, i64 192, !20, i64 200, !7, i64 208, !6, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !66, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !63, i64 360, !20, i64 376, !7, i64 384, !6, i64 388, !63, i64 400, !67, i64 416, !7, i64 448, !2, i64 456, !7, i64 464, !3, i64 468, !2, i64 472, !7, i64 480, !68, i64 484, !68, i64 500, !7, i64 516, !7, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !52, i64 560, !63, i64 568, !7, i64 584, !52, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!62 = !{!"gs_text_params_s", !7, i64 0, !3, i64 8, !7, i64 16, !63, i64 24, !63, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !7, i64 80}
!63 = !{!"gs_point_s", !64, i64 0, !64, i64 8}
!64 = !{!"double", !3, i64 0}
!65 = !{!"rc_header_s", !20, i64 0, !2, i64 8, !2, i64 16}
!66 = !{!"gx_font_stack_s", !7, i64 0, !3, i64 8}
!67 = !{!"gs_text_returned_s", !20, i64 0, !20, i64 8, !63, i64 16}
!68 = !{!"gs_int_rect_s", !69, i64 0, !69, i64 8}
!69 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!70 = !{!71, !2, i64 16}
!71 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!72 = !{!61, !2, i64 88}
!73 = !{!61, !2, i64 96}
!74 = !{!49, !20, i64 80}
!75 = !{!76, !7, i64 168}
!76 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !77, i64 24, !7, i64 128, !79, i64 132, !7, i64 168, !63, i64 176, !63, i64 192, !7, i64 208, !7, i64 212, !51, i64 216, !3, i64 220, !80, i64 224, !80, i64 228, !81, i64 232, !20, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !12, i64 296, !52, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !12, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !82, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !83, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !83, i64 1336, !2, i64 1616, !11, i64 1624, !7, i64 1648, !11, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !20, i64 1712, !20, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !79, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !84, i64 1888}
!77 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 36, !11, i64 40, !78, i64 64}
!78 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !12, i64 12, !7, i64 16, !12, i64 20, !7, i64 24, !7, i64 28, !12, i64 32}
!79 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!80 = !{!"gs_transparency_source_s", !12, i64 0}
!81 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!82 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!83 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !20, i64 16, !3, i64 24}
!84 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!85 = !{!76, !64, i64 176}
!86 = !{!76, !64, i64 184}
!87 = !{!49, !7, i64 96}
!88 = !{!61, !7, i64 516}
!89 = !{!49, !7, i64 100}
!90 = !{!61, !7, i64 520}
!91 = !{!49, !51, i64 8}
!92 = !{!49, !51, i64 10}
!93 = !{!61, !7, i64 484}
!94 = !{!61, !7, i64 492}
!95 = !{!61, !7, i64 488}
!96 = !{!61, !7, i64 496}
!97 = !{!61, !7, i64 508}
!98 = !{!61, !7, i64 500}
!99 = !{!61, !7, i64 512}
!100 = !{!61, !7, i64 504}
!101 = !{!102, !2, i64 0}
!102 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !69, i64 352, !7, i64 360, !103, i64 368, !105, i64 632}
!103 = !{!"gs_client_color_s", !2, i64 0, !104, i64 8}
!104 = !{!"gs_paint_color_s", !3, i64 0}
!105 = !{!"_mask", !106, i64 0, !20, i64 8, !2, i64 16}
!106 = !{!"mp_", !7, i64 0, !7, i64 4}
!107 = !{!37, !2, i64 56}
!108 = !{!76, !7, i64 212}
!109 = !{!110, !2, i64 0}
!110 = !{!"gx_xfont_s", !111, i64 0}
!111 = !{!"gx_xfont_common_s", !2, i64 0}
!112 = !{!113, !2, i64 24}
!113 = !{!"gx_xfont_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!114 = !{!49, !20, i64 16}
!115 = !{!116, !2, i64 24}
!116 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !65, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !117, i64 96, !119, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !20, i64 928, !20, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !20, i64 968, !20, i64 976, !120, i64 984, !7, i64 1052, !7, i64 1056, !121, i64 1064, !2, i64 1104, !3, i64 1112, !123, i64 1120, !124, i64 1144}
!117 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !51, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !118, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !20, i64 704, !7, i64 712}
!118 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!119 = !{!"gx_device_cached_colors_s", !20, i64 0, !20, i64 8}
!120 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!121 = !{!"gdev_space_params_s", !20, i64 0, !20, i64 8, !122, i64 16, !7, i64 32, !3, i64 36}
!122 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !20, i64 8}
!123 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!124 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!125 = !{!116, !2, i64 1352}
!126 = !{!61, !7, i64 584}
!127 = !{!61, !64, i64 576}
!128 = !{!61, !64, i64 568}
!129 = !{i64 0, i64 4, !8, i64 4, i64 4, !8}
!130 = !{!49, !51, i64 14}
!131 = !{!116, !2, i64 1312}
!132 = !{!61, !2, i64 144}
!133 = !{!134, !2, i64 200}
!134 = !{!"gs_memory_s", !2, i64 0, !135, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!135 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!136 = !{!116, !2, i64 1216}
!137 = !{!134, !2, i64 24}
!138 = !{!139, !7, i64 32}
!139 = !{!"gs_image1_s", !2, i64 0, !11, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576, !7, i64 584, !7, i64 588, !3, i64 592, !3, i64 596}
!140 = !{!139, !7, i64 36}
!141 = !{!139, !7, i64 588}
!142 = !{!134, !2, i64 64}
!143 = !{!3, !3, i64 0}
