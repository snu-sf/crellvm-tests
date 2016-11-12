; ModuleID = './gsfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
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
%struct.gs_fapi_server_s = type opaque
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { {}*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }

@gs_font_procs_default = constant { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* } { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)* @gs_no_define_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)* @gs_no_make_font, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @gs_default_font_info, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)* @gs_default_same_font, i64 (%struct.gs_font_s*, i64, i32)* @gs_no_encode_char, i64 (%struct.gs_font_s*, i64, i32)* @gs_no_decode_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)* @gs_no_enumerate_glyph, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_default_glyph_info, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @gs_no_glyph_outline, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)* @gs_no_glyph_name, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)* @gs_default_init_fstack, i32 (%struct.gs_text_enum_s*, i64*, i64*)* @gs_default_next_char_glyph, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* @gs_no_build_char }, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_font_info_t\00", align 1
@gs_font_info_data = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @gs_font_info_ptrs, i32 0, i32 0) }, align 8
@st_gs_font_info = constant %struct.gs_memory_struct_type_s { i32 160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_font_info_data to i8*) }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"gs_font\00", align 1
@st_gs_font = constant %struct.gs_memory_struct_type_s { i32 376, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"gs_font_base\00", align 1
@font_base_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_gs_font, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @font_base_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_font_base = constant %struct.gs_memory_struct_type_s { i32 448, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* bitcast (%struct.gc_struct_data_s* @font_base_reloc_ptrs to i8*) }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"gs_font *[]\00", align 1
@st_gs_font_ptr_element = constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_ptr_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_ptr_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@st_font_dir = internal constant %struct.gs_memory_struct_type_s { i32 224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_dir_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_dir_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_dir_finalize, i8* null }, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"font_dir_alloc(dir)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gs_makefont\00", align 1
@__func__.gs_setcachesize = private unnamed_addr constant [16 x i8] c"gs_setcachesize\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./base/gsfont.c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"gs_setcachesize(mdata)\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gs_setcachesize(table)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"purged font 0x%lx not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"gs_base_make_font(XUID)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@gs_font_info_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 88 }, %struct.gc_ptr_element_s { i16 2, i16 104 }, %struct.gc_ptr_element_s { i16 2, i16 120 }, %struct.gc_ptr_element_s { i16 2, i16 136 }], align 16
@font_base_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 416 }], align 2
@st_gs_font_ptr = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_ptr_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_ptr_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"gs_font *\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_gs_notify_list = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"gs_font_dir\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_no_define_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_default_font_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %wmode = alloca i32, align 4
  %bfont = alloca %struct.gs_font_base_s*, align 8
  %scale = alloca %struct.gs_point_s, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %cleanup.dest.slot = alloca i32
  %notdef = alloca i64, align 8
  %glyph = alloca i64, align 8
  %fixed_width = alloca i32, align 4
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %has_glyphs = alloca i32, align 4
  %glyph_info = alloca %struct.gs_glyph_info_s, align 8
  %glyph125 = alloca i64, align 8
  %index126 = alloca i32, align 4
  %glyph_info142 = alloca %struct.gs_glyph_info_s, align 8
  %code143 = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 16
  %2 = load i32, i32* %WMode, align 4, !tbaa !7
  store i32 %2, i32* %wmode, align 4, !tbaa !5
  %3 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %6 = bitcast %struct.gs_point_s* %scale to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_point_s* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !15
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !18
  store %struct.gs_matrix_s* null, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_point_s* %scale to i8*
  %12 = bitcast %struct.gs_point_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !19
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  %13 = load double, double* %x1, align 8, !tbaa !18
  %y2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 1
  %14 = load double, double* %y2, align 8, !tbaa !15
  %call = call i32 @gs_make_scaling(double %13, double %14, %struct.gs_matrix_s* %smat) #5
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members3 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %15, i32 0, i32 0
  store i32 0, i32* %members3, align 4, !tbaa !21
  %16 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and = and i32 %16, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Flags_returned = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %17, i32 0, i32 8
  store i32 0, i32* %Flags_returned, align 4, !tbaa !26
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 11
  %19 = load i32, i32* %FontType, align 4, !tbaa !27
  %cmp6 = icmp eq i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.8:                                         ; preds = %if.end.5
  %20 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and9 = and i32 %20, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %if.end.8
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %22 = load double, double* %x12, align 8, !tbaa !28
  %conv = fptosi double %22 to i32
  %23 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %23, i32 0, i32 3
  %p13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox, i32 0, i32 0
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p13, i32 0, i32 0
  store i32 %conv, i32* %x14, align 4, !tbaa !32
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox15 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 23
  %p16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox15, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p16, i32 0, i32 1
  %25 = load double, double* %y17, align 8, !tbaa !33
  %conv18 = fptosi double %25 to i32
  %26 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %BBox19 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %26, i32 0, i32 3
  %p20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox19, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p20, i32 0, i32 1
  store i32 %conv18, i32* %y21, align 4, !tbaa !34
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox22 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %27, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox22, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %28 = load double, double* %x23, align 8, !tbaa !35
  %conv24 = fptosi double %28 to i32
  %29 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %BBox25 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %29, i32 0, i32 3
  %q26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox25, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q26, i32 0, i32 0
  store i32 %conv24, i32* %x27, align 4, !tbaa !36
  %30 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox28 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %30, i32 0, i32 23
  %q29 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox28, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q29, i32 0, i32 1
  %31 = load double, double* %y30, align 8, !tbaa !37
  %conv31 = fptosi double %31 to i32
  %32 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %BBox32 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %32, i32 0, i32 3
  %q33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox32, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q33, i32 0, i32 1
  store i32 %conv31, i32* %y34, align 4, !tbaa !38
  %33 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Flags_returned35 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %33, i32 0, i32 8
  %34 = load i32, i32* %Flags_returned35, align 4, !tbaa !26
  %or = or i32 %34, 4
  store i32 %or, i32* %Flags_returned35, align 4, !tbaa !26
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.11, %if.end.8
  %35 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and37 = and i32 %35, 32
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else.121

land.lhs.true:                                    ; preds = %if.end.36
  %36 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Flags_requested = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %36, i32 0, i32 7
  %37 = load i32, i32* %Flags_requested, align 4, !tbaa !39
  %and39 = and i32 %37, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.121

if.then.41:                                       ; preds = %land.lhs.true
  %38 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  store i64 2147483647, i64* %notdef, align 8, !tbaa !40
  %39 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  %40 = bitcast i32* %fixed_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  store i32 0, i32* %fixed_width, align 4, !tbaa !5
  %41 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %43 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %44 = bitcast i32* %has_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 0, i32* %has_glyphs, align 4, !tbaa !5
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %if.then.41
  %45 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %45, 0
  br i1 %cmp42, label %land.lhs.true.44, label %land.end

land.lhs.true.44:                                 ; preds = %for.cond
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %46, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %47 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !41
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call45 = call i32 %47(%struct.gs_font_s* %48, i32* %index, i32 0, i64* %glyph) #5
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp sge i32 %call45, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.44
  %49 = load i32, i32* %index, align 4, !tbaa !5
  %cmp48 = icmp ne i32 %49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.44, %for.cond
  %50 = phi i1 [ false, %land.lhs.true.44 ], [ false, %for.cond ], [ %cmp48, %land.rhs ]
  br i1 %50, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %51 = bitcast %struct.gs_glyph_info_s* %glyph_info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %51) #2
  %52 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %52, i32 0, i32 20
  %glyph_info51 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs50, i32 0, i32 7
  %53 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info51, align 8, !tbaa !42
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %55 = load i64, i64* %glyph, align 8, !tbaa !40
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %57 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 1, %57
  %call52 = call i32 %53(%struct.gs_font_s* %54, i64 %55, %struct.gs_matrix_s* %56, i32 %shl, %struct.gs_glyph_info_s* %glyph_info) #5
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %58, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %ecode, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %for.body
  %60 = load i64, i64* %notdef, align 8, !tbaa !40
  %cmp57 = icmp eq i64 %60, 2147483647
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.67

land.lhs.true.59:                                 ; preds = %if.end.56
  %61 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %62 = load i64, i64* %glyph, align 8, !tbaa !40
  %call60 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %61, i64 %62) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %land.lhs.true.59
  %63 = load i64, i64* %glyph, align 8, !tbaa !40
  store i64 %63, i64* %notdef, align 8, !tbaa !40
  %64 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom = sext i32 %64 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %glyph_info, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %65 = load double, double* %x63, align 8, !tbaa !18
  %conv64 = fptosi double %65 to i32
  %66 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %MissingWidth = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %66, i32 0, i32 12
  store i32 %conv64, i32* %MissingWidth, align 4, !tbaa !43
  %67 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members65 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %67, i32 0, i32 0
  %68 = load i32, i32* %members65, align 4, !tbaa !21
  %or66 = or i32 %68, 2048
  store i32 %or66, i32* %members65, align 4, !tbaa !21
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %land.lhs.true.59, %if.end.56
  %69 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom68 = sext i32 %69 to i64
  %width69 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %glyph_info, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width69, i32 0, i64 %idxprom68
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx70, i32 0, i32 1
  %70 = load double, double* %y71, align 8, !tbaa !15
  %cmp72 = fcmp une double %70, 0.000000e+00
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.67
  store i32 -2147483648, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.95

if.else.75:                                       ; preds = %if.end.67
  %71 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %71, 0
  br i1 %cmp76, label %if.then.78, label %if.else.84

if.then.78:                                       ; preds = %if.else.75
  %72 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom79 = sext i32 %72 to i64
  %width80 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %glyph_info, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width80, i32 0, i64 %idxprom79
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx81, i32 0, i32 0
  %73 = load double, double* %x82, align 8, !tbaa !18
  %conv83 = fptosi double %73 to i32
  store i32 %conv83, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.94

if.else.84:                                       ; preds = %if.else.75
  %74 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom85 = sext i32 %74 to i64
  %width86 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %glyph_info, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width86, i32 0, i64 %idxprom85
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx87, i32 0, i32 0
  %75 = load double, double* %x88, align 8, !tbaa !18
  %76 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %conv89 = sitofp i32 %76 to double
  %cmp90 = fcmp une double %75, %conv89
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.84
  store i32 -2147483648, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.else.84
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.78
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.74
  store i32 1, i32* %has_glyphs, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.95, %if.then.55
  %77 = bitcast %struct.gs_glyph_info_s* %glyph_info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %77) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %land.end
  %78 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %78, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.101

land.lhs.true.98:                                 ; preds = %for.end
  %79 = load i32, i32* %has_glyphs, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %79, 0
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.98
  %80 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.101:                                       ; preds = %land.lhs.true.98, %for.end
  %81 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %cmp102 = icmp sgt i32 %81, 0
  br i1 %cmp102, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.101
  %82 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Flags = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %82, i32 0, i32 6
  %83 = load i32, i32* %Flags, align 4, !tbaa !44
  %or105 = or i32 %83, 1
  store i32 %or105, i32* %Flags, align 4, !tbaa !44
  %84 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members106 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %84, i32 0, i32 0
  %85 = load i32, i32* %members106, align 4, !tbaa !21
  %or107 = or i32 %85, 3074
  store i32 %or107, i32* %members106, align 4, !tbaa !21
  %86 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %87 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %MissingWidth108 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %87, i32 0, i32 12
  store i32 %86, i32* %MissingWidth108, align 4, !tbaa !43
  %88 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %MaxWidth = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %88, i32 0, i32 11
  store i32 %86, i32* %MaxWidth, align 4, !tbaa !45
  %89 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %AvgWidth = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %89, i32 0, i32 2
  store i32 %86, i32* %AvgWidth, align 4, !tbaa !46
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.end.101
  %90 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Flags_returned110 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %90, i32 0, i32 8
  %91 = load i32, i32* %Flags_returned110, align 4, !tbaa !26
  %or111 = or i32 %91, 1
  store i32 %or111, i32* %Flags_returned110, align 4, !tbaa !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %if.end.109, %if.then.100
  %92 = bitcast i32* %has_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %fixed_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %cleanup.dest.119 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.119, label %cleanup.170 [
    i32 0, label %cleanup.cont.120
  ]

cleanup.cont.120:                                 ; preds = %cleanup.112
  br label %if.end.169

if.else.121:                                      ; preds = %land.lhs.true, %if.end.36
  %99 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and122 = and i32 %99, 2048
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.168

if.then.124:                                      ; preds = %if.else.121
  %100 = bitcast i64* %glyph125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = bitcast i32* %index126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  store i32 0, i32* %index126, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %if.then.140, %if.then.124
  %102 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs128 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %102, i32 0, i32 20
  %enumerate_glyph129 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs128, i32 0, i32 6
  %103 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph129, align 8, !tbaa !41
  %104 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call130 = call i32 %103(%struct.gs_font_s* %104, i32* %index126, i32 0, i64* %glyph125) #5
  %cmp131 = icmp sge i32 %call130, 0
  br i1 %cmp131, label %land.rhs.133, label %land.end.136

land.rhs.133:                                     ; preds = %for.cond.127
  %105 = load i32, i32* %index126, align 4, !tbaa !5
  %cmp134 = icmp ne i32 %105, 0
  br label %land.end.136

land.end.136:                                     ; preds = %land.rhs.133, %for.cond.127
  %106 = phi i1 [ false, %for.cond.127 ], [ %cmp134, %land.rhs.133 ]
  br i1 %106, label %for.body.137, label %for.end.163

for.body.137:                                     ; preds = %land.end.136
  %107 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %108 = load i64, i64* %glyph125, align 8, !tbaa !40
  %call138 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %107, i64 %108) #5
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %for.body.137
  br label %for.cond.127

if.end.141:                                       ; preds = %for.body.137
  %109 = bitcast %struct.gs_glyph_info_s* %glyph_info142 to i8*
  call void @llvm.lifetime.start(i64 104, i8* %109) #2
  %110 = bitcast i32* %code143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #2
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs144 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %111, i32 0, i32 20
  %glyph_info145 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs144, i32 0, i32 7
  %112 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info145, align 8, !tbaa !42
  %113 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %114 = load i64, i64* %glyph125, align 8, !tbaa !40
  %115 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %116 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl146 = shl i32 1, %116
  %call147 = call i32 %112(%struct.gs_font_s* %113, i64 %114, %struct.gs_matrix_s* %115, i32 %shl146, %struct.gs_glyph_info_s* %glyph_info142) #5
  store i32 %call147, i32* %code143, align 4, !tbaa !5
  %117 = load i32, i32* %code143, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %117, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.141
  %118 = load i32, i32* %code143, align 4, !tbaa !5
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.151:                                       ; preds = %if.end.141
  %119 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom152 = sext i32 %119 to i64
  %width153 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %glyph_info142, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width153, i32 0, i64 %idxprom152
  %x155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx154, i32 0, i32 0
  %120 = load double, double* %x155, align 8, !tbaa !18
  %conv156 = fptosi double %120 to i32
  %121 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %MissingWidth157 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %121, i32 0, i32 12
  store i32 %conv156, i32* %MissingWidth157, align 4, !tbaa !43
  %122 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members158 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %122, i32 0, i32 0
  %123 = load i32, i32* %members158, align 4, !tbaa !21
  %or159 = or i32 %123, 2048
  store i32 %or159, i32* %members158, align 4, !tbaa !21
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.151, %if.then.150
  %124 = bitcast i32* %code143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast %struct.gs_glyph_info_s* %glyph_info142 to i8*
  call void @llvm.lifetime.end(i64 104, i8* %125) #2
  %cleanup.dest.162 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.162, label %cleanup.164 [
    i32 4, label %for.end.163
  ]

for.end.163:                                      ; preds = %cleanup.160, %land.end.136
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.164

cleanup.164:                                      ; preds = %for.end.163, %cleanup.160
  %126 = bitcast i32* %index126 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i64* %glyph125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.170 [
    i32 0, label %cleanup.cont.167
  ]

cleanup.cont.167:                                 ; preds = %cleanup.164
  br label %if.end.168

if.end.168:                                       ; preds = %cleanup.cont.167, %if.else.121
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %cleanup.cont.120
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %if.end.169, %cleanup.164, %cleanup.112, %if.then.7
  %128 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %129) #2
  %130 = bitcast %struct.gs_point_s* %scale to i8*
  call void @llvm.lifetime.end(i64 16, i8* %130) #2
  %131 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = load i32, i32* %retval
  ret i32 %133

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_default_same_font(%struct.gs_font_s* %font, %struct.gs_font_s* %ofont, i32 %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %mask.addr = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 7
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 7
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %base1, align 8, !tbaa !47
  store %struct.gs_font_s* %4, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %base3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 7
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %base3, align 8, !tbaa !47
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_font_s* %6, %7
  br i1 %cmp4, label %while.body.5, label %while.end.7

while.body.5:                                     ; preds = %while.cond.2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %base6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 7
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %base6, align 8, !tbaa !47
  store %struct.gs_font_s* %9, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  br label %while.cond.2

while.end.7:                                      ; preds = %while.cond.2
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_font_s* %10, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.7
  %12 = load i32, i32* %mask.addr, align 4, !tbaa !5
  store i32 %12, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @gs_no_encode_char(%struct.gs_font_s* %pfont, i64 %chr, i32 %glyph_space) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph_space.addr = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !40
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !48
  ret i64 2147483647
}

; Function Attrs: nounwind uwtable
define i64 @gs_no_decode_glyph(%struct.gs_font_s* %pfont, i64 %glyph, i32 %ch) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !48
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define i32 @gs_default_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %path = alloca %struct.gx_path_s, align 8
  %returned = alloca i32, align 4
  %code = alloca i32, align 4
  %wmode = alloca i32, align 4
  %sbw = alloca [4 x double], align 16
  %charstrings_font = alloca i32, align 4
  %wmode18 = alloca i32, align 4
  %wmask = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast i32* %returned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %returned, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and = and i32 %4, 2
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %wmode, align 4, !tbaa !5
  %5 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 16, i1 false)
  %7 = bitcast i32* %charstrings_font to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 11
  %9 = load i32, i32* %FontType, align 4, !tbaa !27
  %cmp1 = icmp eq i32 %9, 1
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 11
  %11 = load i32, i32* %FontType3, align 4, !tbaa !27
  %cmp4 = icmp eq i32 %11, 2
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 11
  %13 = load i32, i32* %FontType6, align 4, !tbaa !27
  %cmp7 = icmp eq i32 %13, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %14 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  store i32 %lor.ext, i32* %charstrings_font, align 4, !tbaa !5
  call void @gx_path_init_bbox_accumulator(%struct.gx_path_s* %path) #5
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %path, i32 0, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  br label %out

if.end:                                           ; preds = %lor.end
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 8
  %17 = load i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !49
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = load i32, i32* %wmode, align 4, !tbaa !5
  %20 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %call11 = call i32 %17(%struct.gs_font_s* %18, i32 %19, i64 %20, %struct.gs_matrix_s* %21, %struct.gx_path_s* %path, double* %arraydecay) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  br label %out

if.end.15:                                        ; preds = %if.end
  %23 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and16 = and i32 %23, 3
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %if.end.15
  %24 = bitcast i32* %wmode18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 16
  %26 = load i32, i32* %WMode, align 4, !tbaa !7
  store i32 %26, i32* %wmode18, align 4, !tbaa !5
  %27 = bitcast i32* %wmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %wmode18, align 4, !tbaa !5
  %shl = shl i32 1, %28
  store i32 %shl, i32* %wmask, align 4, !tbaa !5
  %29 = load i32, i32* %members.addr, align 4, !tbaa !5
  %30 = load i32, i32* %wmask, align 4, !tbaa !5
  %and19 = and i32 %29, %30
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.then.17
  %31 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %call22 = call i32 @gx_path_current_point(%struct.gx_path_s* %path, %struct.gs_fixed_point_s* %pt) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %32, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %33 = load i32, i32* %x, align 4, !tbaa !50
  %conv27 = sitofp i32 %33 to double
  %mul = fmul double %conv27, 3.906250e-03
  %34 = load i32, i32* %wmode18, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %35, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  store double %mul, double* %x28, align 8, !tbaa !18
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !52
  %conv29 = sitofp i32 %36 to double
  %mul30 = fmul double %conv29, 3.906250e-03
  %37 = load i32, i32* %wmode18, align 4, !tbaa !5
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %38, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width32, i32 0, i64 %idxprom31
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx33, i32 0, i32 1
  store double %mul30, double* %y34, align 8, !tbaa !15
  %39 = load i32, i32* %wmask, align 4, !tbaa !5
  %40 = load i32, i32* %returned, align 4, !tbaa !5
  %or = or i32 %40, %39
  store i32 %or, i32* %returned, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.25, %if.end.26
  %41 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.end.35:                                        ; preds = %cleanup.cont, %if.then.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %cleanup
  %42 = bitcast i32* %wmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %wmode18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %cleanup.dest.38 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.38, label %cleanup.147 [
    i32 0, label %cleanup.cont.39
    i32 2, label %out
  ]

cleanup.cont.39:                                  ; preds = %cleanup.36
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont.39, %if.end.15
  %44 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and41 = and i32 %44, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.79

if.then.43:                                       ; preds = %if.end.40
  %45 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #2
  %call44 = call i32 @gx_path_bbox(%struct.gx_path_s* %path, %struct.gs_fixed_rect_s* %bbox) #5
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %46, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.43
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.48:                                        ; preds = %if.then.43
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %47 = load i32, i32* %x49, align 4, !tbaa !53
  %conv50 = sitofp i32 %47 to double
  %mul51 = fmul double %conv50, 3.906250e-03
  %48 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %bbox52 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %48, i32 0, i32 3
  %p53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox52, i32 0, i32 0
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p53, i32 0, i32 0
  store double %mul51, double* %x54, align 8, !tbaa !55
  %p55 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p55, i32 0, i32 1
  %49 = load i32, i32* %y56, align 4, !tbaa !57
  %conv57 = sitofp i32 %49 to double
  %mul58 = fmul double %conv57, 3.906250e-03
  %50 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %bbox59 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %50, i32 0, i32 3
  %p60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox59, i32 0, i32 0
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p60, i32 0, i32 1
  store double %mul58, double* %y61, align 8, !tbaa !58
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %51 = load i32, i32* %x62, align 4, !tbaa !59
  %conv63 = sitofp i32 %51 to double
  %mul64 = fmul double %conv63, 3.906250e-03
  %52 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %bbox65 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %52, i32 0, i32 3
  %q66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox65, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q66, i32 0, i32 0
  store double %mul64, double* %x67, align 8, !tbaa !60
  %q68 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q68, i32 0, i32 1
  %53 = load i32, i32* %y69, align 4, !tbaa !61
  %conv70 = sitofp i32 %53 to double
  %mul71 = fmul double %conv70, 3.906250e-03
  %54 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %bbox72 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %54, i32 0, i32 3
  %q73 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox72, i32 0, i32 1
  %y74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q73, i32 0, i32 1
  store double %mul71, double* %y74, align 8, !tbaa !62
  %55 = load i32, i32* %returned, align 4, !tbaa !5
  %or75 = or i32 %55, 4
  store i32 %or75, i32* %returned, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.then.47, %if.end.48
  %56 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #2
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.147 [
    i32 0, label %cleanup.cont.78
    i32 2, label %out
  ]

cleanup.cont.78:                                  ; preds = %cleanup.76
  br label %if.end.79

if.end.79:                                        ; preds = %cleanup.cont.78, %if.end.40
  %57 = load i32, i32* %members.addr, align 4, !tbaa !5
  %58 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl80 = shl i32 1, %58
  %and81 = and i32 %57, %shl80
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %if.end.79
  %59 = load i32, i32* %charstrings_font, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %59, 0
  br i1 %tobool83, label %if.then.84, label %if.end.111

if.then.84:                                       ; preds = %land.lhs.true
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp85 = icmp eq %struct.gs_matrix_s* %60, null
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %if.then.84
  %arrayidx88 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %61 = load double, double* %arrayidx88, align 8, !tbaa !20
  %62 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom89 = sext i32 %62 to i64
  %63 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width90 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %63, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width90, i32 0, i64 %idxprom89
  %x92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx91, i32 0, i32 0
  store double %61, double* %x92, align 8, !tbaa !18
  %arrayidx93 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  %64 = load double, double* %arrayidx93, align 8, !tbaa !20
  %65 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom94 = sext i32 %65 to i64
  %66 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width95 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %66, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width95, i32 0, i64 %idxprom94
  %y97 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx96, i32 0, i32 1
  store double %64, double* %y97, align 8, !tbaa !15
  br label %if.end.108

if.else:                                          ; preds = %if.then.84
  %arrayidx98 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %67 = load double, double* %arrayidx98, align 8, !tbaa !20
  %arrayidx99 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  %68 = load double, double* %arrayidx99, align 8, !tbaa !20
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %70 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom100 = sext i32 %70 to i64
  %71 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width101 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %71, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width101, i32 0, i64 %idxprom100
  %call103 = call i32 @gs_distance_transform(double %67, double %68, %struct.gs_matrix_s* %69, %struct.gs_point_s* %arrayidx102) #5
  store i32 %call103, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %72, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.else
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.107:                                       ; preds = %if.else
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.87
  %74 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl109 = shl i32 1, %74
  %75 = load i32, i32* %returned, align 4, !tbaa !5
  %or110 = or i32 %75, %shl109
  store i32 %or110, i32* %returned, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.108, %land.lhs.true, %if.end.79
  %76 = load i32, i32* %members.addr, align 4, !tbaa !5
  %77 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl112 = shl i32 64, %77
  %and113 = and i32 %76, %shl112
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.138

land.lhs.true.115:                                ; preds = %if.end.111
  %78 = load i32, i32* %charstrings_font, align 4, !tbaa !5
  %tobool116 = icmp ne i32 %78, 0
  br i1 %tobool116, label %if.then.117, label %if.end.138

if.then.117:                                      ; preds = %land.lhs.true.115
  %79 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp118 = icmp eq %struct.gs_matrix_s* %79, null
  br i1 %cmp118, label %if.then.120, label %if.else.126

if.then.120:                                      ; preds = %if.then.117
  %arrayidx121 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  %80 = load double, double* %arrayidx121, align 8, !tbaa !20
  %81 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %81, i32 0, i32 2
  %x122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %80, double* %x122, align 8, !tbaa !63
  %arrayidx123 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  %82 = load double, double* %arrayidx123, align 8, !tbaa !20
  %83 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v124 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %83, i32 0, i32 2
  %y125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v124, i32 0, i32 1
  store double %82, double* %y125, align 8, !tbaa !64
  br label %if.end.135

if.else.126:                                      ; preds = %if.then.117
  %arrayidx127 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  %84 = load double, double* %arrayidx127, align 8, !tbaa !20
  %arrayidx128 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  %85 = load double, double* %arrayidx128, align 8, !tbaa !20
  %86 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %87 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v129 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %87, i32 0, i32 2
  %call130 = call i32 @gs_distance_transform(double %84, double %85, %struct.gs_matrix_s* %86, %struct.gs_point_s* %v129) #5
  store i32 %call130, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %88, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.else.126
  %89 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.134:                                       ; preds = %if.else.126
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.120
  %90 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl136 = shl i32 64, %90
  %91 = load i32, i32* %returned, align 4, !tbaa !5
  %or137 = or i32 %91, %shl136
  store i32 %or137, i32* %returned, align 4, !tbaa !5
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.135, %land.lhs.true.115, %if.end.111
  %92 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and139 = and i32 %92, 8
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.end.138
  %93 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %93, i32 0, i32 4
  store i32 0, i32* %num_pieces, align 4, !tbaa !65
  %94 = load i32, i32* %returned, align 4, !tbaa !5
  %or142 = or i32 %94, 8
  store i32 %or142, i32* %returned, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.end.138
  %95 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and144 = and i32 %95, 16
  %96 = load i32, i32* %returned, align 4, !tbaa !5
  %or145 = or i32 %96, %and144
  store i32 %or145, i32* %returned, align 4, !tbaa !5
  br label %out

out:                                              ; preds = %if.end.143, %cleanup.76, %cleanup.36, %if.then.14, %if.then
  %97 = load i32, i32* %returned, align 4, !tbaa !5
  %98 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members146 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %98, i32 0, i32 0
  store i32 %97, i32* %members146, align 4, !tbaa !66
  %99 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %out, %if.then.133, %if.then.106, %cleanup.76, %cleanup.36
  %100 = bitcast i32* %charstrings_font to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %101) #2
  %102 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %returned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %105) #2
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_glyph_name(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  ret i32 -21
}

declare i32 @gs_default_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #1

declare i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #1

declare i32 @gs_no_build_char(%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.11
    i32 4, label %sw.bb.14
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_notify_list, i32 0, i32 4), align 8, !tbaa !67
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 5
  %7 = bitcast %struct.gs_notify_list_s* %notify_list to i8*
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 5
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %7, i32 16, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_gs_notify_list, %struct.gc_state_s* %10) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 7
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_s* %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 0
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_font_s* [ null, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast %struct.gs_font_s* %cond to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 7
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %base2, align 8, !tbaa !47
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_font_s* %19, %20
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %sw.bb.1
  br label %cond.end.6

cond.false.5:                                     ; preds = %sw.bb.1
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 1
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !72
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi %struct.gs_font_s* [ null, %cond.true.4 ], [ %22, %cond.false.5 ]
  %23 = bitcast %struct.gs_font_s* %cond7 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr8, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_font_s*
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 3
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %28 = bitcast %struct.gs_font_dir_s* %27 to i8*
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr10, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %entry
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_font_s*
  %base12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %31, i32 0, i32 7
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %base12, align 8, !tbaa !47
  %33 = bitcast %struct.gs_font_s* %32 to i8*
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* %33, i8** %ptr13, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %entry
  %35 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %36 = bitcast i8* %35 to %struct.gs_font_s*
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 8
  %37 = load i8*, i8** %client_data, align 8, !tbaa !74
  %38 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %38, i32 0, i32 0
  store i8* %37, i8** %ptr15, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.14, %sw.bb.11, %sw.bb.9, %cond.end.6, %cond.end, %sw.default
  %39 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %40
}

; Function Attrs: nounwind uwtable
define internal void @font_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_notify_list, i32 0, i32 5), align 8, !tbaa !75
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 5
  %5 = bitcast %struct.gs_notify_list_s* %notify_list to i8*
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %5, i32 16, %struct.gs_memory_struct_type_s* @st_gs_notify_list, %struct.gc_state_s* %6) #5
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !76
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_font_s*
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 0
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  %14 = bitcast %struct.gs_font_s* %13 to i8*
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %14, %struct.gc_state_s* %15) #5
  %16 = bitcast i8* %call to %struct.gs_font_s*
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to %struct.gs_font_s*
  %next1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 0
  store %struct.gs_font_s* %16, %struct.gs_font_s** %next1, align 8, !tbaa !69
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gc_state_s* %19 to %struct.gc_procs_common_s**
  %21 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %20, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %21, i32 0, i32 0
  %22 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !76
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_font_s*
  %prev = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 1
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !72
  %26 = bitcast %struct.gs_font_s* %25 to i8*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %22(i8* %26, %struct.gc_state_s* %27) #5
  %28 = bitcast i8* %call3 to %struct.gs_font_s*
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = bitcast i8* %29 to %struct.gs_font_s*
  %prev4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 1
  store %struct.gs_font_s* %28, %struct.gs_font_s** %prev4, align 8, !tbaa !72
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gc_state_s* %31 to %struct.gc_procs_common_s**
  %33 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %32, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %33, i32 0, i32 0
  %34 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !76
  %35 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %36 = bitcast i8* %35 to %struct.gs_font_s*
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 3
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %38 = bitcast %struct.gs_font_dir_s* %37 to i8*
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %34(i8* %38, %struct.gc_state_s* %39) #5
  %40 = bitcast i8* %call6 to %struct.gs_font_dir_s*
  %41 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to %struct.gs_font_s*
  %dir7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 3
  store %struct.gs_font_dir_s* %40, %struct.gs_font_dir_s** %dir7, align 8, !tbaa !73
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gc_state_s* %43 to %struct.gc_procs_common_s**
  %45 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %44, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %45, i32 0, i32 0
  %46 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !76
  %47 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %48 = bitcast i8* %47 to %struct.gs_font_s*
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %48, i32 0, i32 7
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %50 = bitcast %struct.gs_font_s* %49 to i8*
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %46(i8* %50, %struct.gc_state_s* %51) #5
  %52 = bitcast i8* %call9 to %struct.gs_font_s*
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct.gs_font_s*
  %base10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %54, i32 0, i32 7
  store %struct.gs_font_s* %52, %struct.gs_font_s** %base10, align 8, !tbaa !47
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gc_state_s* %55 to %struct.gc_procs_common_s**
  %57 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %56, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %57, i32 0, i32 0
  %58 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !76
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct.gs_font_s*
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %60, i32 0, i32 8
  %61 = load i8*, i8** %client_data, align 8, !tbaa !74
  %62 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %58(i8* %61, %struct.gc_state_s* %62) #5
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct.gs_font_s*
  %client_data13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %64, i32 0, i32 8
  store i8* %call12, i8** %client_data13, align 8, !tbaa !74
  %65 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_font_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %ppfirst = alloca %struct.gs_font_s**, align 8
  %next = alloca %struct.gs_font_s*, align 8
  %prev = alloca %struct.gs_font_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s*** %ppfirst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.gs_font_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 0
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %next1, align 8, !tbaa !69
  store %struct.gs_font_s* %6, %struct.gs_font_s** %next, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %prev2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %prev2, align 8, !tbaa !72
  store %struct.gs_font_s* %9, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 5
  %call = call i32 @gs_notify_all(%struct.gs_notify_list_s* %notify_list, i8* null) #5
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call3 = call i32 @gs_purge_font_from_char_caches(%struct.gs_font_s* %12) #5
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 3
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %cmp = icmp eq %struct.gs_font_dir_s* %14, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store %struct.gs_font_s** null, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  br label %if.end.17

if.else:                                          ; preds = %do.end
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 7
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_font_s* %16, %17
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 3
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir6, align 8, !tbaa !73
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %19, i32 0, i32 0
  store %struct.gs_font_s** %orig_fonts, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  br label %if.end.16

if.else.7:                                        ; preds = %if.else
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %20, null
  br i1 %tobool, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.7
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.gs_font_s* %21, null
  br i1 %tobool8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 3
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir10, align 8, !tbaa !73
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 1
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gs_font_s* %24, %25
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.else.7
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 3
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir13, align 8, !tbaa !73
  %ssize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %27, i32 0, i32 2
  %28 = load i32, i32* %ssize, align 4, !tbaa !82
  %dec = add i32 %28, -1
  store i32 %dec, i32* %ssize, align 4, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.9
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir14 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 3
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir14, align 8, !tbaa !73
  %scaled_fonts15 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %30, i32 0, i32 1
  store %struct.gs_font_s** %scaled_fonts15, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.gs_font_s* %31, null
  br i1 %cmp18, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.17
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %prev19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %32, i32 0, i32 1
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %prev19, align 8, !tbaa !72
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.gs_font_s* %33, %34
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %prev22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 1
  store %struct.gs_font_s* %35, %struct.gs_font_s** %prev22, align 8, !tbaa !72
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.17
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.gs_font_s* %37, null
  br i1 %cmp24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.end.23
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %38, i32 0, i32 0
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %next26, align 8, !tbaa !69
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.gs_font_s* %39, %40
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.25
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %next29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 0
  store %struct.gs_font_s* %41, %struct.gs_font_s** %next29, align 8, !tbaa !69
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.25
  br label %if.end.37

if.else.31:                                       ; preds = %if.end.23
  %43 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  %cmp32 = icmp ne %struct.gs_font_s** %43, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.36

land.lhs.true.33:                                 ; preds = %if.else.31
  %44 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %44, align 8, !tbaa !1
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.gs_font_s* %45, %46
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.33
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %48 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfirst, align 8, !tbaa !1
  store %struct.gs_font_s* %47, %struct.gs_font_s** %48, align 8, !tbaa !1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.else.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.30
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %notify_list38 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %49, i32 0, i32 5
  call void @gs_notify_release(%struct.gs_notify_list_s* %notify_list38) #5
  %50 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gs_font_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast %struct.gs_font_s*** %ppfirst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_ptr_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_ptr, i32 0, i32 4), align 8, !tbaa !67
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 8, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_gs_font_ptr, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @font_ptr_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_ptr, i32 0, i32 5), align 8, !tbaa !75
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 8, %struct.gs_memory_struct_type_s* @st_gs_font_ptr, %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gs_notify_all(%struct.gs_notify_list_s*, i8*) #1

declare i32 @gs_purge_font_from_char_caches(%struct.gs_font_s*) #1

declare void @gs_notify_release(%struct.gs_notify_list_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.gs_font_dir_s* @gs_font_dir_alloc2(%struct.gs_memory_s* %struct_mem, %struct.gs_memory_s* %bits_mem) #0 {
entry:
  %retval = alloca %struct.gs_font_dir_s*, align 8
  %struct_mem.addr = alloca %struct.gs_memory_s*, align 8
  %bits_mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %struct_mem, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bits_mem, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_dir_s* @gs_font_dir_alloc2_limits(%struct.gs_memory_s* %1, %struct.gs_memory_s* %2, i32 50, i32 1000000, i32 200, i32 5000, i32 32000) #5
  store %struct.gs_font_dir_s* %call, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_dir_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_font_dir_s* @gs_font_dir_alloc2_limits(%struct.gs_memory_s* %4, %struct.gs_memory_s* %5, i32 20, i32 25000, i32 40, i32 500, i32 100) #5
  store %struct.gs_font_dir_s* %call1, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_font_dir_s* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i32 0, i32 5
  %mark_glyph = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 13
  store i32 (%struct.gs_memory_s*, i64, i8*)* @cc_no_mark_glyph, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !83
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %ccache5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %8, i32 0, i32 5
  %mark_glyph_data = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache5, i32 0, i32 14
  store i8* null, i8** %mark_glyph_data, align 8, !tbaa !84
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %9, %struct.gs_font_dir_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %10 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %retval
  ret %struct.gs_font_dir_s* %11
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_dir_s* @gs_font_dir_alloc2_limits(%struct.gs_memory_s* %struct_mem, %struct.gs_memory_s* %bits_mem, i32 %smax, i32 %bmax, i32 %mmax, i32 %cmax, i32 %upper) #0 {
entry:
  %retval = alloca %struct.gs_font_dir_s*, align 8
  %struct_mem.addr = alloca %struct.gs_memory_s*, align 8
  %bits_mem.addr = alloca %struct.gs_memory_s*, align 8
  %smax.addr = alloca i32, align 4
  %bmax.addr = alloca i32, align 4
  %mmax.addr = alloca i32, align 4
  %cmax.addr = alloca i32, align 4
  %upper.addr = alloca i32, align 4
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %struct_mem, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bits_mem, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  store i32 %smax, i32* %smax.addr, align 4, !tbaa !5
  store i32 %bmax, i32* %bmax.addr, align 4, !tbaa !5
  store i32 %mmax, i32* %mmax.addr, align 4, !tbaa !5
  store i32 %cmax, i32* %cmax.addr, align 4, !tbaa !5
  store i32 %upper, i32* %upper.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !85
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_font_dir, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %4, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_dir_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_dir_s* %7 to i8*
  %call1 = call i8* @memset(i8* %8, i32 0, i64 224) #6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %12 = load i32, i32* %bmax.addr, align 4, !tbaa !5
  %13 = load i32, i32* %mmax.addr, align 4, !tbaa !5
  %14 = load i32, i32* %cmax.addr, align 4, !tbaa !5
  %15 = load i32, i32* %upper.addr, align 4, !tbaa !5
  %call2 = call i32 @gx_char_cache_alloc(%struct.gs_memory_s* %9, %struct.gs_memory_s* %10, %struct.gs_font_dir_s* %11, i32 %12, i32 %13, i32 %14, i32 %15) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !88
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %21 = bitcast %struct.gs_font_dir_s* %20 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !89
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %24, i32 0, i32 2
  store i32 0, i32* %ssize, align 4, !tbaa !82
  %25 = load i32, i32* %smax.addr, align 4, !tbaa !5
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %smax7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %26, i32 0, i32 3
  store i32 %25, i32* %smax7, align 4, !tbaa !90
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %align_to_pixels = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %27, i32 0, i32 9
  store i32 0, i32* %align_to_pixels, align 4, !tbaa !91
  %28 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %glyph_to_unicode_table = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %28, i32 0, i32 10
  store i8* null, i8** %glyph_to_unicode_table, align 8, !tbaa !92
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %grid_fit_tt = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %29, i32 0, i32 14
  store i32 1, i32* %grid_fit_tt, align 4, !tbaa !93
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %31 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %31, i32 0, i32 11
  store %struct.gs_memory_s* %30, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  %32 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %32, i32 0, i32 12
  store %struct.ttfInterpreter_s* null, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !95
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %ttm = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %33, i32 0, i32 13
  store %struct.gx_ttfMemory_s* null, %struct.gx_ttfMemory_s** %ttm, align 8, !tbaa !96
  %34 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %34, i32 0, i32 15
  store %struct.gx_device_spot_analyzer_s* null, %struct.gx_device_spot_analyzer_s** %san, align 8, !tbaa !97
  %35 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %global_glyph_code = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %35, i32 0, i32 16
  store i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)* null, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)** %global_glyph_code, align 8, !tbaa !98
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %text_enum_id = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %36, i32 0, i32 17
  store i64 0, i64* %text_enum_id, align 8, !tbaa !99
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 8
  store i32 42, i32* %hash, align 4, !tbaa !100
  %38 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %38, %struct.gs_font_dir_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %retval
  ret %struct.gs_font_dir_s* %41
}

; Function Attrs: nounwind uwtable
define internal i32 @cc_no_mark_glyph(%struct.gs_memory_s* %mem, i64 %glyph, i8* %ignore_data) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ignore_data.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  store i8* %ignore_data, i8** %ignore_data.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gx_char_cache_alloc(%struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, %struct.gs_font_procs_s* %procs, %struct.gs_font_dir_s* %dir, i8* %cname) #0 {
entry:
  %retval = alloca %struct.gs_font_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %procs.addr = alloca %struct.gs_font_procs_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gs_font_procs_s* %procs, %struct.gs_font_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !85
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* %5) #5
  %6 = bitcast i8* %call to %struct.gs_font_s*
  store %struct.gs_font_s* %6, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_font_s* null, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_s* %8 to i8*
  %10 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %10, i32 0, i32 0
  %11 = load i32, i32* %ssize, align 4, !tbaa !101
  %conv = zext i32 %11 to i64
  %call2 = call i8* @memset(i8* %9, i32 0, i64 %conv) #6
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 2
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory, align 8, !tbaa !102
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 3
  store %struct.gs_font_dir_s* %14, %struct.gs_font_dir_s** %dir3, align 8, !tbaa !73
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  call void @gs_font_notify_init(%struct.gs_font_s* %16) #5
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i64 @gs_next_ids(%struct.gs_memory_s* %17, i32 1) #5
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 6
  store i64 %call4, i64* %id, align 8, !tbaa !103
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 7
  store %struct.gs_font_s* %19, %struct.gs_font_s** %base, align 8, !tbaa !47
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %TransformedChar = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 15
  store i32 0, i32* %TransformedChar, align 4, !tbaa !104
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %InBetweenSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 14
  store i32 0, i32* %InBetweenSize, align 4, !tbaa !105
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %ExactSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 13
  store i32 0, i32* %ExactSize, align 4, !tbaa !106
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 20
  %25 = load %struct.gs_font_procs_s*, %struct.gs_font_procs_s** %procs.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_procs_s* %procs5 to i8*
  %27 = bitcast %struct.gs_font_procs_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 104, i32 8, i1 false), !tbaa.struct !107
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  store %struct.gs_font_s* %28, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %retval
  ret %struct.gs_font_s* %30
}

; Function Attrs: nounwind uwtable
define void @gs_font_notify_init(%struct.gs_font_s* %font) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 5
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !102
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %3 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !108
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !102
  %call = call %struct.gs_memory_s* %3(%struct.gs_memory_s* %5) #5
  call void @gs_notify_init(%struct.gs_notify_list_s* %notify_list, %struct.gs_memory_s* %call) #5
  ret void
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.gs_font_base_s* @gs_font_base_alloc(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, %struct.gs_font_procs_s* %procs, %struct.gs_font_dir_s* %dir, i8* %cname) #0 {
entry:
  %retval = alloca %struct.gs_font_base_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %procs.addr = alloca %struct.gs_font_procs_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gs_font_procs_s* %procs, %struct.gs_font_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %3 = load %struct.gs_font_procs_s*, %struct.gs_font_procs_s** %procs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s* %1, %struct.gs_memory_struct_type_s* %2, %struct.gs_font_procs_s* %3, %struct.gs_font_dir_s* %4, i8* %5) #5
  %6 = bitcast %struct.gs_font_s* %call to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %6, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_base_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %8, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !37
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 23
  %q2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox1, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q2, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !35
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %10, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox3, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y4, align 8, !tbaa !33
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontBBox5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 23
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox5, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 0
  store double 0.000000e+00, double* %x7, align 8, !tbaa !28
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %12, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !109
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID8 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 24
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID8, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !110
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %nearest_encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %14, i32 0, i32 28
  store i32 -1, i32* %nearest_encoding_index, align 4, !tbaa !111
  %15 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %15, i32 0, i32 27
  store i32 -1, i32* %encoding_index, align 4, !tbaa !112
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  store %struct.gs_font_base_s* %16, %struct.gs_font_base_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %retval
  ret %struct.gs_font_base_s* %18
}

declare void @gs_notify_init(%struct.gs_notify_list_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_font_notify_register(%struct.gs_font_s* %font, i32 (i8*, i8*)* %proc, i8* %proc_data) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 (i8*, i8*)* %proc, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 5
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %call = call i32 @gs_notify_register(%struct.gs_notify_list_s* %notify_list, i32 (i8*, i8*)* %1, i8* %2) #5
  ret i32 %call
}

declare i32 @gs_notify_register(%struct.gs_notify_list_s*, i32 (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_font_notify_unregister(%struct.gs_font_s* %font, i32 (i8*, i8*)* %proc, i8* %proc_data) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 (i8*, i8*)* %proc, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 5
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %call = call i32 @gs_notify_unregister(%struct.gs_notify_list_s* %notify_list, i32 (i8*, i8*)* %1, i8* %2) #5
  ret i32 %call
}

declare i32 @gs_notify_unregister(%struct.gs_notify_list_s*, i32 (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_definefont(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 3
  store %struct.gs_font_dir_s* %1, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 7
  store %struct.gs_font_s* %3, %struct.gs_font_s** %base, align 8, !tbaa !47
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 20
  %define_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 0
  %define_font1 = bitcast {}** %define_font to i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)**
  %6 = load i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)** %define_font1, align 8, !tbaa !113
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_font_dir_s* %7, %struct.gs_font_s* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 7
  store %struct.gs_font_s* null, %struct.gs_font_s** %base2, align 8, !tbaa !47
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 0
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  call void @font_link_first(%struct.gs_font_s** %orig_fonts, %struct.gs_font_s* %13) #5
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
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @font_link_first(%struct.gs_font_s** %pfirst, %struct.gs_font_s* %elt) #0 {
entry:
  %pfirst.addr = alloca %struct.gs_font_s**, align 8
  %elt.addr = alloca %struct.gs_font_s*, align 8
  %first = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s** %pfirst, %struct.gs_font_s*** %pfirst.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %elt, %struct.gs_font_s** %elt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s**, %struct.gs_font_s*** %pfirst.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %1, align 8, !tbaa !1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %elt.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 0
  store %struct.gs_font_s* %2, %struct.gs_font_s** %next, align 8, !tbaa !69
  store %struct.gs_font_s* %2, %struct.gs_font_s** %first, align 8, !tbaa !1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %first, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %elt.addr, align 8, !tbaa !1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %first, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 1
  store %struct.gs_font_s* %5, %struct.gs_font_s** %prev, align 8, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %elt.addr, align 8, !tbaa !1
  %prev1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev1, align 8, !tbaa !72
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %elt.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_s**, %struct.gs_font_s*** %pfirst.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %8, %struct.gs_font_s** %9, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s** %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_font_find_similar(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s** %ppfont, i32 (%struct.gs_font_s*, %struct.gs_font_s*)* %similar) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %similar.addr = alloca i32 (%struct.gs_font_s*, %struct.gs_font_s*)*, align 8
  %pfont0 = alloca %struct.gs_font_s*, align 8
  %pfont1 = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_font_s*, %struct.gs_font_s*)* %similar, i32 (%struct.gs_font_s*, %struct.gs_font_s*)** %similar.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %1, align 8, !tbaa !1
  store %struct.gs_font_s* %2, %struct.gs_font_s** %pfont0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %4, i32 0, i32 0
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !89
  store %struct.gs_font_s* %5, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_font_s* %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType, align 4, !tbaa !27
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0, align 8, !tbaa !1
  %FontType2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType2, align 4, !tbaa !27
  %cmp3 = icmp eq i32 %10, %12
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32 (%struct.gs_font_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*)** %similar.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0, align 8, !tbaa !1
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %call = call i32 %14(%struct.gs_font_s* %15, %struct.gs_font_s* %16) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %19 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %18, %struct.gs_font_s** %19, align 8, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 0
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  store %struct.gs_font_s* %23, %struct.gs_font_s** %pfont1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %for.end, %cleanup
  %24 = bitcast %struct.gs_font_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gs_font_s** %pfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @gs_scalefont(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, double %scale, %struct.gs_font_s** %ppfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %scale.addr = alloca double, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !20
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = load double, double* %scale.addr, align 8, !tbaa !20
  %2 = load double, double* %scale.addr, align 8, !tbaa !20
  %call = call i32 @gs_make_scaling(double %1, double %2, %struct.gs_matrix_s* %mat) #5
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %5 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_makefont(%struct.gs_font_dir_s* %3, %struct.gs_font_s* %4, %struct.gs_matrix_s* %mat, %struct.gs_font_s** %5) #5
  %6 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #2
  ret i32 %call1
}

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_makefont(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.gs_font_s*, align 8
  %pf_out = alloca %struct.gs_font_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %newmat = alloca %struct.gs_matrix_s, align 4
  %can_cache = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s** %pf_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  store %struct.gs_font_s* %4, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !102
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_matrix_s* %newmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #2
  %9 = bitcast i32* %can_cache to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 9
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %11, %struct.gs_matrix_s* %newmat) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType, align 4, !tbaa !27
  %cmp1 = icmp ne i32 %14, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gs_font_s* %15, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontType4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 11
  %17 = load i32, i32* %FontType4, align 4, !tbaa !27
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 11
  %19 = load i32, i32* %FontType5, align 4, !tbaa !27
  %cmp6 = icmp eq i32 %17, %19
  br i1 %cmp6, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 7
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %base7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 7
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %base7, align 8, !tbaa !47
  %cmp8 = icmp eq %struct.gs_font_s* %21, %23
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.34

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix10, i32 0, i32 0
  %25 = load float, float* %xx, align 4, !tbaa !114
  %xx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 0
  %26 = load float, float* %xx11, align 4, !tbaa !115
  %cmp12 = fcmp oeq float %25, %26
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.34

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix14 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix14, i32 0, i32 1
  %28 = load float, float* %xy, align 4, !tbaa !116
  %xy15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 1
  %29 = load float, float* %xy15, align 4, !tbaa !117
  %cmp16 = fcmp oeq float %28, %29
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.34

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix18 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix18, i32 0, i32 2
  %31 = load float, float* %yx, align 4, !tbaa !118
  %yx19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 2
  %32 = load float, float* %yx19, align 4, !tbaa !119
  %cmp20 = fcmp oeq float %31, %32
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix22, i32 0, i32 3
  %34 = load float, float* %yy, align 4, !tbaa !120
  %yy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 3
  %35 = load float, float* %yy23, align 4, !tbaa !121
  %cmp24 = fcmp oeq float %34, %35
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %land.lhs.true.21
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix26 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 9
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix26, i32 0, i32 4
  %37 = load float, float* %tx, align 4, !tbaa !122
  %tx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 4
  %38 = load float, float* %tx27, align 4, !tbaa !123
  %cmp28 = fcmp oeq float %37, %38
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 9
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix30, i32 0, i32 5
  %40 = load float, float* %ty, align 4, !tbaa !124
  %ty31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 5
  %41 = load float, float* %ty31, align 4, !tbaa !125
  %cmp32 = fcmp oeq float %40, %41
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.29
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %43 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %42, %struct.gs_font_s** %43, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.33
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %land.lhs.true.29, %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  store %struct.gs_font_s* %44, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 0
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  store %struct.gs_font_s* %46, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %can_cache, align 4, !tbaa !5
  br label %if.end.35

if.else:                                          ; preds = %if.end
  store i32 0, i32* %can_cache, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %for.end
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %48 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !85
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 15
  %51 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !126
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gs_font_s* %53 to i8*
  %call37 = call %struct.gs_memory_struct_type_s* %51(%struct.gs_memory_s* %52, i8* %54) #5
  %call38 = call i8* %48(%struct.gs_memory_s* %49, %struct.gs_memory_struct_type_s* %call37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #5
  %55 = bitcast i8* %call38 to %struct.gs_font_s*
  store %struct.gs_font_s* %55, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %56, null
  br i1 %tobool, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.35
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.35
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_s* %57 to i8*
  %59 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gs_font_s* %59 to i8*
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 14
  %62 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !127
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %64 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gs_font_s* %64 to i8*
  %call42 = call i32 %62(%struct.gs_memory_s* %63, i8* %65) #5
  %conv = zext i32 %call42 to i64
  %call43 = call i8* @memcpy(i8* %58, i8* %60, i64 %conv) #6
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  call void @gs_font_notify_init(%struct.gs_font_s* %66) #5
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %FontMatrix44 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 9
  %68 = bitcast %struct.gs_matrix_s* %FontMatrix44 to i8*
  %69 = bitcast %struct.gs_matrix_s* %newmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 24, i32 4, i1 false), !tbaa.struct !128
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %70, i32 0, i32 8
  store i8* null, i8** %client_data, align 8, !tbaa !74
  %71 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %72 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %72, i32 0, i32 3
  store %struct.gs_font_dir_s* %71, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %73 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %base45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %73, i32 0, i32 7
  %74 = load %struct.gs_font_s*, %struct.gs_font_s** %base45, align 8, !tbaa !47
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %base46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %75, i32 0, i32 7
  store %struct.gs_font_s* %74, %struct.gs_font_s** %base46, align 8, !tbaa !47
  %76 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %77 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %76, %struct.gs_font_s** %77, align 8, !tbaa !1
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %78, i32 0, i32 20
  %make_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs47, i32 0, i32 1
  %79 = load i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)** %make_font, align 8, !tbaa !130
  %80 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %81 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %83 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call48 = call i32 %79(%struct.gs_font_dir_s* %80, %struct.gs_font_s* %81, %struct.gs_matrix_s* %82, %struct.gs_font_s** %83) #5
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %84, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.40
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.40
  %86 = load i32, i32* %can_cache, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %86, 0
  br i1 %tobool53, label %if.then.54, label %if.else.78

if.then.54:                                       ; preds = %if.end.52
  %87 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %87, i32 0, i32 2
  %88 = load i32, i32* %ssize, align 4, !tbaa !82
  %89 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %smax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %89, i32 0, i32 3
  %90 = load i32, i32* %smax, align 4, !tbaa !90
  %cmp55 = icmp uge i32 %88, %90
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.75

land.lhs.true.57:                                 ; preds = %if.then.54
  %91 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %cmp58 = icmp ne %struct.gs_font_s* %91, null
  br i1 %cmp58, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %land.lhs.true.57
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %92 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %prev64 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %92, i32 0, i32 1
  %93 = load %struct.gs_font_s*, %struct.gs_font_s** %prev64, align 8, !tbaa !72
  %cmp65 = icmp ne %struct.gs_font_s* %93, null
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %do.end.63
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %prev68 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %94, i32 0, i32 1
  %95 = load %struct.gs_font_s*, %struct.gs_font_s** %prev68, align 8, !tbaa !72
  %next69 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %95, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next69, align 8, !tbaa !69
  br label %if.end.72

if.else.70:                                       ; preds = %do.end.63
  %96 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %scaled_fonts71 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %96, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %scaled_fonts71, align 8, !tbaa !78
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.67
  %97 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ssize73 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %97, i32 0, i32 2
  %98 = load i32, i32* %ssize73, align 4, !tbaa !82
  %dec = add i32 %98, -1
  store i32 %dec, i32* %ssize73, align 4, !tbaa !82
  %99 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %prev74 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %99, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev74, align 8, !tbaa !72
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %land.lhs.true.57, %if.then.54
  %100 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ssize76 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %100, i32 0, i32 2
  %101 = load i32, i32* %ssize76, align 4, !tbaa !82
  %inc = add i32 %101, 1
  store i32 %inc, i32* %ssize76, align 4, !tbaa !82
  %102 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %scaled_fonts77 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %102, i32 0, i32 1
  %103 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  call void @font_link_first(%struct.gs_font_s** %scaled_fonts77, %struct.gs_font_s* %103) #5
  br label %if.end.81

if.else.78:                                       ; preds = %if.end.52
  %104 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %prev79 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %104, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev79, align 8, !tbaa !72
  %105 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8, !tbaa !1
  %next80 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %105, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next80, align 8, !tbaa !69
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.end.75
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.84, %if.then.51, %if.then.39, %do.end, %if.then
  %106 = bitcast i32* %can_cache to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast %struct.gs_matrix_s* %newmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %107) #2
  %108 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.gs_font_s** %pf_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gs_set_currentfont(%struct.gs_state_s* %pgs, %struct.gs_font_s* %pfont) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 70
  store %struct.gs_font_s* %0, %struct.gs_font_s** %font, align 8, !tbaa !131
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !142
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setfont(%struct.gs_state_s* %pgs, %struct.gs_font_s* %pfont) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 71
  store %struct.gs_font_s* %0, %struct.gs_font_s** %root_font, align 8, !tbaa !143
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 70
  store %struct.gs_font_s* %0, %struct.gs_font_s** %font, align 8, !tbaa !131
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !142
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 70
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !131
  ret %struct.gs_font_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 71
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !143
  ret %struct.gs_font_s* %1
}

; Function Attrs: nounwind uwtable
define void @gs_cachestatus(%struct.gs_font_dir_s* %pdir, i32* %pstat) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pstat.addr = alloca i32*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 5
  %bsize = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 2
  %1 = load i32, i32* %bsize, align 4, !tbaa !144
  %2 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %1, i32* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 5
  %bmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache1, i32 0, i32 8
  %4 = load i32, i32* %bmax, align 4, !tbaa !145
  %5 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %4, i32* %arrayidx2, align 4, !tbaa !5
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 4
  %msize = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 0
  %7 = load i32, i32* %msize, align 4, !tbaa !146
  %8 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %7, i32* %arrayidx3, align 4, !tbaa !5
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache4, i32 0, i32 1
  %10 = load i32, i32* %mmax, align 4, !tbaa !147
  %11 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %10, i32* %arrayidx5, align 4, !tbaa !5
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 5
  %csize = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache6, i32 0, i32 3
  %13 = load i32, i32* %csize, align 4, !tbaa !148
  %14 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %13, i32* %arrayidx7, align 4, !tbaa !5
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 5
  %cmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache8, i32 0, i32 9
  %16 = load i32, i32* %cmax, align 4, !tbaa !149
  %17 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %16, i32* %arrayidx9, align 4, !tbaa !5
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache10, i32 0, i32 12
  %19 = load i32, i32* %upper, align 4, !tbaa !150
  %20 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 6
  store i32 %19, i32* %arrayidx11, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcachesize(%struct.gs_state_s* %pgs, %struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  %stable_mem = alloca %struct.gs_memory_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 11
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !151
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %4, 100000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 100000, i32* %size.addr, align 4, !tbaa !5
  br label %if.end.3

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %5, 100000000
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 100000000, i32* %size.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %6 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %8, i32 0, i32 1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  store %struct.gs_font_s* %9, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_font_s* %10, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call = call i32 @gs_purge_font_from_char_caches_completely(%struct.gs_font_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.body
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call7 = call i8* @gs_errstr(i32 %14) #5
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gs_setcachesize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 662, i32 1, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %call7) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 0
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  store %struct.gs_font_s* %16, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !88
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %23 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !152
  %24 = bitcast %struct.cached_fm_pair_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %21, i8* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #5
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !88
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %28 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %28, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 6
  %29 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !153
  %30 = bitcast %struct.cached_char_s** %29 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #5
  %31 = load i32, i32* %size.addr, align 4, !tbaa !5
  %32 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %32, i32 0, i32 5
  %bmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache12, i32 0, i32 8
  store i32 %31, i32* %bmax, align 4, !tbaa !145
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !154
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache13 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 5
  %bmax14 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache13, i32 0, i32 8
  %38 = load i32, i32* %bmax14, align 4, !tbaa !145
  %39 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache15 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %39, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache15, i32 0, i32 1
  %40 = load i32, i32* %mmax, align 4, !tbaa !147
  %41 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %41, i32 0, i32 5
  %cmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache16, i32 0, i32 9
  %42 = load i32, i32* %cmax, align 4, !tbaa !149
  %43 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache17 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %43, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache17, i32 0, i32 12
  %44 = load i32, i32* %upper, align 4, !tbaa !150
  %call18 = call i32 @gx_char_cache_alloc(%struct.gs_memory_s* %33, %struct.gs_memory_s* %35, %struct.gs_font_dir_s* %36, i32 %38, i32 %40, i32 %42, i32 %44) #5
  %45 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  ret i32 %call18
}

declare i32 @gs_purge_font_from_char_caches_completely(%struct.gs_font_s*) #1

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #1

declare i8* @gs_errstr(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setcachelower(%struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 5
  %lower = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 11
  store i32 %cond, i32* %lower, align 4, !tbaa !155
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcacheupper(%struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 12
  store i32 %cond, i32* %upper, align 4, !tbaa !150
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setaligntopixels(%struct.gs_font_dir_s* %pdir, i32 %v) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %v.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = load i32, i32* %v.addr, align 4, !tbaa !5
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %align_to_pixels = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 9
  store i32 %0, i32* %align_to_pixels, align 4, !tbaa !91
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setgridfittt(%struct.gs_font_dir_s* %pdir, i32 %v) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %v.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = load i32, i32* %v.addr, align 4, !tbaa !5
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %grid_fit_tt = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 14
  store i32 %0, i32* %grid_fit_tt, align 4, !tbaa !93
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcachesize(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 5
  %bmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 8
  %1 = load i32, i32* %bmax, align 4, !tbaa !145
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcachelower(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 5
  %lower = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 11
  %1 = load i32, i32* %lower, align 4, !tbaa !155
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcacheupper(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 12
  %1 = load i32, i32* %upper, align 4, !tbaa !150
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %align_to_pixels = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 9
  %1 = load i32, i32* %align_to_pixels, align 4, !tbaa !91
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentgridfittt(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %grid_fit_tt = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 14
  %1 = load i32, i32* %grid_fit_tt, align 4, !tbaa !93
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_purge_font(%struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  %pf = alloca %struct.gs_font_s*, align 8
  %prev = alloca %struct.gs_font_s*, align 8
  %next = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 3
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  store %struct.gs_font_dir_s* %2, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %prev1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %prev1, align 8, !tbaa !72
  store %struct.gs_font_s* %6, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 0
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %next2, align 8, !tbaa !69
  store %struct.gs_font_s* %9, %struct.gs_font_s** %next, align 8, !tbaa !1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %prev3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 1
  store %struct.gs_font_s* %11, %struct.gs_font_s** %prev3, align 8, !tbaa !72
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next4, align 8, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.gs_font_s* %14, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 0
  store %struct.gs_font_s* %15, %struct.gs_font_s** %next7, align 8, !tbaa !69
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %prev8 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev8, align 8, !tbaa !72
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 0
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !89
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_font_s* %19, %20
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %orig_fonts11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 0
  store %struct.gs_font_s* %21, %struct.gs_font_s** %orig_fonts11, align 8, !tbaa !89
  br label %if.end.20

if.else.12:                                       ; preds = %if.else
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 1
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_font_s* %24, %25
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.12
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !1
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts15 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %27, i32 0, i32 1
  store %struct.gs_font_s* %26, %struct.gs_font_s** %scaled_fonts15, align 8, !tbaa !78
  br label %if.end.19

if.else.16:                                       ; preds = %if.else.12
  %call = call i8* @gs_program_name() #5
  %call17 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call, i64 %call17) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 750) #5
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %29 = ptrtoint %struct.gs_font_s* %28 to i64
  %call18 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i64 %29) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.6
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts22 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %30, i32 0, i32 1
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts22, align 8, !tbaa !78
  store %struct.gs_font_s* %31, %struct.gs_font_s** %pf, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.33, %if.end.21
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %pf, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.gs_font_s* %32, null
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %pf, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 7
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !47
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gs_font_s* %34, %35
  br i1 %cmp24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %for.body
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %pf, align 8, !tbaa !1
  %call26 = call i32 @gs_purge_font(%struct.gs_font_s* %37) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %38, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.25
  %40 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %40, i32 0, i32 1
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts30, align 8, !tbaa !78
  store %struct.gs_font_s* %41, %struct.gs_font_s** %pf, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.else.31:                                       ; preds = %for.body
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %pf, align 8, !tbaa !1
  %next32 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 0
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %next32, align 8, !tbaa !69
  store %struct.gs_font_s* %44, %struct.gs_font_s** %pf, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %cleanup.cont
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call34 = call i32 @gs_purge_font_from_char_caches(%struct.gs_font_s* %45) #5
  store i32 %call34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %for.end, %cleanup
  %46 = bitcast %struct.gs_font_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.gs_font_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.gs_font_s** %pf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare void @eprintf_program_ident(i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare void @lprintf_file_and_line(i8*, i32) #1

declare i32 @errprintf_nomem(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_find_font_by_id(%struct.gs_font_dir_s* %pdir, i64 %id, %struct.gs_matrix_s* %FontMatrix) #0 {
entry:
  %retval = alloca %struct.gs_font_s*, align 8
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %id.addr = alloca i64, align 8
  %FontMatrix.addr = alloca %struct.gs_matrix_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !40
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %FontMatrix.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 0
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !89
  store %struct.gs_font_s* %2, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 6
  %5 = load i64, i64* %id1, align 8, !tbaa !103
  %6 = load i64, i64* %id.addr, align 8, !tbaa !40
  %cmp2 = icmp eq i64 %5, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 9
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %FontMatrix.addr, align 8, !tbaa !1
  %call = call i32 @gs_matrix_compare(%struct.gs_matrix_s* %FontMatrix3, %struct.gs_matrix_s* %8) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  store %struct.gs_font_s* %9, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 0
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !69
  store %struct.gs_font_s* %11, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.gs_font_s* null, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %retval
  ret %struct.gs_font_s* %13
}

declare i32 @gs_matrix_compare(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_base_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %0, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_base_s*
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %2, i32 0, i32 24
  %3 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %3, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !102
  %call = call i32 @uid_copy(%struct.gs_uid_s* %UID, %struct.gs_memory_s* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #5
  ret i32 %call
}

declare i32 @uid_copy(%struct.gs_uid_s*, %struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %bfont, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %bfont.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph.addr = alloca i64, align 8
  %gnstr = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %bfont, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  %0 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %cmp = icmp eq i64 %1, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %cmp1 = icmp uge i64 %2, 2147483648
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %cmp3 = icmp eq i64 %3, 2147483648
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %4, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 9
  %5 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !156
  %6 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_base_s* %6 to %struct.gs_font_s*
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %call = call i32 %5(%struct.gs_font_s* %7, i64 %8, %struct.gs_const_string_s* %gnstr) #5
  %cmp5 = icmp sge i32 %call, 0
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !157
  %cmp7 = icmp eq i32 %9, 7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !158
  %call9 = call i32 @memcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 7) #7
  %tobool = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.4
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.4 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.2, %if.then
  %12 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gs_base_same_font(%struct.gs_font_s* %font, %struct.gs_font_s* %ofont, i32 %mask) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %mask.addr = alloca i32, align 4
  %same = alloca i32, align 4
  %bfont = alloca %struct.gs_font_base_s*, align 8
  %obfont = alloca %struct.gs_font_base_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !5
  %0 = bitcast i32* %same to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %3 = load i32, i32* %mask.addr, align 4, !tbaa !5
  %call = call i32 @gs_default_same_font(%struct.gs_font_s* %1, %struct.gs_font_s* %2, i32 %3) #5
  store i32 %call, i32* %same, align 4, !tbaa !5
  %4 = load i32, i32* %same, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %7, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_base_s** %obfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %10, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %11 = load i32, i32* %mask.addr, align 4, !tbaa !5
  %and = and i32 %11, 4
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.then
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %12, i32 0, i32 27
  %13 = load i32, i32* %encoding_index, align 4, !tbaa !112
  %cmp = icmp ne i32 %13, -1
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %encoding_index3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %14, i32 0, i32 27
  %15 = load i32, i32* %encoding_index3, align 4, !tbaa !112
  %cmp4 = icmp ne i32 %15, -1
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.2
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %encoding_index6 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %16, i32 0, i32 27
  %17 = load i32, i32* %encoding_index6, align 4, !tbaa !112
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %encoding_index7 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %18, i32 0, i32 27
  %19 = load i32, i32* %encoding_index7, align 4, !tbaa !112
  %cmp8 = icmp eq i32 %17, %19
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.5
  %20 = load i32, i32* %same, align 4, !tbaa !5
  %or = or i32 %20, 4
  store i32 %or, i32* %same, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %lor.lhs.false
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %21 = bitcast %struct.gs_font_base_s** %obfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %23 = load i32, i32* %same, align 4, !tbaa !5
  %24 = bitcast i32* %same to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret i32 %23
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @gx_path_init_bbox_accumulator(%struct.gx_path_s*) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #1

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #1

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_ptr_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_s**
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %2, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %6 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %6
}

; Function Attrs: nounwind uwtable
define internal void @font_ptr_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gc_state_s* %0 to %struct.gc_procs_common_s**
  %2 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %1, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %2, i32 0, i32 0
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !76
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_font_s**
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %5, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #5
  %9 = bitcast i8* %call to %struct.gs_font_s*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gs_font_s**
  store %struct.gs_font_s* %9, %struct.gs_font_s** %11, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_dir_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %cci = alloca i32, align 4
  %offset = alloca i32, align 4
  %count = alloca i32, align 4
  %tmask = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %2, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.32
    i32 5, label %sw.bb.34
    i32 6, label %sw.bb.36
    i32 7, label %sw.bb.38
  ]

sw.default:                                       ; preds = %entry
  %4 = bitcast i32* %cci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 8
  store i32 %sub, i32* %cci, align 4, !tbaa !5
  %6 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %tmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %10 = load i32, i32* %table_mask, align 4, !tbaa !159
  store i32 %10, i32* %tmask, align 4, !tbaa !5
  %11 = load i32, i32* %cci, align 4, !tbaa !5
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  store i32 0, i32* %offset, align 4, !tbaa !5
  store i32 1, i32* %count, align 4, !tbaa !5
  br label %if.end.5

if.else:                                          ; preds = %sw.default
  %12 = load i32, i32* %cci, align 4, !tbaa !5
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %enum_index = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 6
  %14 = load i32, i32* %enum_index, align 4, !tbaa !160
  %add = add i32 %14, 1
  %cmp1 = icmp eq i32 %12, %add
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %enum_offset = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 7
  %16 = load i32, i32* %enum_offset, align 4, !tbaa !161
  %add3 = add i32 %16, 1
  store i32 %add3, i32* %offset, align 4, !tbaa !5
  store i32 1, i32* %count, align 4, !tbaa !5
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* %offset, align 4, !tbaa !5
  %17 = load i32, i32* %cci, align 4, !tbaa !5
  store i32 %17, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %18 = load i32, i32* %offset, align 4, !tbaa !5
  %19 = load i32, i32* %tmask, align 4, !tbaa !5
  %cmp6 = icmp ule i32 %18, %19
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache7, i32 0, i32 6
  %23 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !153
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %23, i64 %idxprom
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  store %struct.cached_char_s* %24, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %25 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.cached_char_s* %25, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %26 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %26, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %27, i32 0, i32 5
  %mark_glyph = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache10, i32 0, i32 13
  %28 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !83
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %30, i32 0, i32 8
  %31 = load i64, i64* %code, align 8, !tbaa !162
  %32 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %32, i32 0, i32 5
  %mark_glyph_data = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache11, i32 0, i32 14
  %33 = load i8*, i8** %mark_glyph_data, align 8, !tbaa !84
  %call = call i32 %28(%struct.gs_memory_s* %29, i64 %31, i8* %33) #5
  %34 = load i32, i32* %cci, align 4, !tbaa !5
  %35 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %enum_index12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %35, i32 0, i32 6
  store i32 %34, i32* %enum_index12, align 4, !tbaa !160
  %36 = load i32, i32* %offset, align 4, !tbaa !5
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %enum_offset13 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 7
  store i32 %36, i32* %enum_offset13, align 4, !tbaa !161
  %38 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %38, i32 0, i32 6
  %39 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !165
  %40 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair_index = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %40, i32 0, i32 12
  %41 = load i32, i32* %pair_index, align 4, !tbaa !166
  %idx.ext = zext i32 %41 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %39, i64 %idx.neg
  %42 = bitcast %struct.cached_fm_pair_s* %add.ptr to i8*
  %43 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %43, i32 0, i32 0
  store i8* %42, i8** %ptr, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.9
  %44 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %45 = load i32, i32* %offset, align 4, !tbaa !5
  %inc = add i32 %45, 1
  store i32 %inc, i32* %offset, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %for.end, %cleanup
  %46 = bitcast i32* %tmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %cci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %cleanup.dest.19 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.19, label %cleanup.40 [
    i32 0, label %cleanup.cont.20
  ]

cleanup.cont.20:                                  ; preds = %cleanup.15
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb:                                            ; preds = %entry
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gs_font_dir_s*
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %51, i32 0, i32 1
  %52 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  %53 = bitcast %struct.gs_font_s* %52 to i8*
  %54 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %54, i32 0, i32 0
  store i8* %53, i8** %ptr21, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.22:                                         ; preds = %entry
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gs_font_dir_s*
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %56, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %57 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !152
  %58 = bitcast %struct.cached_fm_pair_s* %57 to i8*
  %59 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %59, i32 0, i32 0
  store i8* %58, i8** %ptr23, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.24:                                         ; preds = %entry
  %60 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %61 = bitcast i8* %60 to %struct.gs_font_dir_s*
  %ccache25 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %61, i32 0, i32 5
  %table26 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache25, i32 0, i32 6
  %62 = load %struct.cached_char_s**, %struct.cached_char_s*** %table26, align 8, !tbaa !153
  %63 = bitcast %struct.cached_char_s** %62 to i8*
  %64 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr27 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %64, i32 0, i32 0
  store i8* %63, i8** %ptr27, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.28:                                         ; preds = %entry
  %65 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %66 = bitcast i8* %65 to %struct.gs_font_dir_s*
  %ccache29 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %66, i32 0, i32 5
  %mark_glyph_data30 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache29, i32 0, i32 14
  %67 = load i8*, i8** %mark_glyph_data30, align 8, !tbaa !84
  %68 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %68, i32 0, i32 0
  store i8* %67, i8** %ptr31, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.32:                                         ; preds = %entry
  %69 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %70 = bitcast i8* %69 to %struct.gs_font_dir_s*
  %glyph_to_unicode_table = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %70, i32 0, i32 10
  %71 = load i8*, i8** %glyph_to_unicode_table, align 8, !tbaa !92
  %72 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %72, i32 0, i32 0
  store i8* %71, i8** %ptr33, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.34:                                         ; preds = %entry
  %73 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %74 = bitcast i8* %73 to %struct.gs_font_dir_s*
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %74, i32 0, i32 12
  %75 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !95
  %76 = bitcast %struct.ttfInterpreter_s* %75 to i8*
  %77 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %77, i32 0, i32 0
  store i8* %76, i8** %ptr35, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.36:                                         ; preds = %entry
  %78 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %79 = bitcast i8* %78 to %struct.gs_font_dir_s*
  %ttm = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %79, i32 0, i32 13
  %80 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm, align 8, !tbaa !96
  %81 = bitcast %struct.gx_ttfMemory_s* %80 to i8*
  %82 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr37 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %82, i32 0, i32 0
  store i8* %81, i8** %ptr37, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.38:                                         ; preds = %entry
  %83 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %84 = bitcast i8* %83 to %struct.gs_font_dir_s*
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %84, i32 0, i32 15
  %85 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %san, align 8, !tbaa !97
  %86 = bitcast %struct.gx_device_spot_analyzer_s* %85 to i8*
  %87 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %87, i32 0, i32 0
  store i8* %86, i8** %ptr39, align 8, !tbaa !70
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.28, %sw.bb.24, %sw.bb.22, %sw.bb, %cleanup.cont.20, %cleanup.15
  %88 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %89
}

; Function Attrs: nounwind uwtable
define internal void @font_dir_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %chi = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %2, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %3 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %4, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %5 = load i32, i32* %table_mask, align 4, !tbaa !159
  store i32 %5, i32* %chi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %chi, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %chi, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache1, i32 0, i32 6
  %10 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !153
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %10, i64 %idxprom
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  store %struct.cached_char_s* %11, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.cached_char_s* %12, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !76
  %17 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %17, i32 0, i32 6
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !165
  %19 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair_index = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %19, i32 0, i32 12
  %20 = load i32, i32* %pair_index, align 4, !tbaa !166
  %idx.ext = zext i32 %20 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %18, i64 %idx.neg
  %21 = bitcast %struct.cached_fm_pair_s* %add.ptr to i8*
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %16(i8* %21, %struct.gc_state_s* %22) #5
  %23 = bitcast i8* %call to %struct.cached_fm_pair_s*
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair_index3 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %24, i32 0, i32 12
  %25 = load i32, i32* %pair_index3, align 4, !tbaa !166
  %idx.ext4 = zext i32 %25 to i64
  %add.ptr5 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %23, i64 %idx.ext4
  %26 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair6 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %26, i32 0, i32 6
  store %struct.cached_fm_pair_s* %add.ptr5, %struct.cached_fm_pair_s** %pair6, align 8, !tbaa !165
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %27 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %chi, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %chi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gc_state_s* %30 to %struct.gc_procs_common_s**
  %32 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %31, align 8, !tbaa !1
  %reloc_struct_ptr7 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %32, i32 0, i32 0
  %33 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr7, align 8, !tbaa !76
  %34 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_font_dir_s*
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %35, i32 0, i32 0
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !89
  %37 = bitcast %struct.gs_font_s* %36 to i8*
  %38 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call8 = call i8* %33(i8* %37, %struct.gc_state_s* %38) #5
  %39 = bitcast i8* %call8 to %struct.gs_font_s*
  %40 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to %struct.gs_font_dir_s*
  %orig_fonts9 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %41, i32 0, i32 0
  store %struct.gs_font_s* %39, %struct.gs_font_s** %orig_fonts9, align 8, !tbaa !89
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gc_state_s* %42 to %struct.gc_procs_common_s**
  %44 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %43, align 8, !tbaa !1
  %reloc_struct_ptr10 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %44, i32 0, i32 0
  %45 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr10, align 8, !tbaa !76
  %46 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %47 = bitcast i8* %46 to %struct.gs_font_dir_s*
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %47, i32 0, i32 1
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !78
  %49 = bitcast %struct.gs_font_s* %48 to i8*
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call11 = call i8* %45(i8* %49, %struct.gc_state_s* %50) #5
  %51 = bitcast i8* %call11 to %struct.gs_font_s*
  %52 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %53 = bitcast i8* %52 to %struct.gs_font_dir_s*
  %scaled_fonts12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %53, i32 0, i32 1
  store %struct.gs_font_s* %51, %struct.gs_font_s** %scaled_fonts12, align 8, !tbaa !78
  %54 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gc_state_s* %54 to %struct.gc_procs_common_s**
  %56 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %55, align 8, !tbaa !1
  %reloc_struct_ptr13 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %56, i32 0, i32 0
  %57 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr13, align 8, !tbaa !76
  %58 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %59 = bitcast i8* %58 to %struct.gs_font_dir_s*
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %59, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %60 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !152
  %61 = bitcast %struct.cached_fm_pair_s* %60 to i8*
  %62 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call14 = call i8* %57(i8* %61, %struct.gc_state_s* %62) #5
  %63 = bitcast i8* %call14 to %struct.cached_fm_pair_s*
  %64 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %65 = bitcast i8* %64 to %struct.gs_font_dir_s*
  %fmcache15 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %65, i32 0, i32 4
  %mdata16 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache15, i32 0, i32 2
  store %struct.cached_fm_pair_s* %63, %struct.cached_fm_pair_s** %mdata16, align 8, !tbaa !152
  %66 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gc_state_s* %66 to %struct.gc_procs_common_s**
  %68 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %67, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %68, i32 0, i32 0
  %69 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !76
  %70 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %71 = bitcast i8* %70 to %struct.gs_font_dir_s*
  %ccache18 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %71, i32 0, i32 5
  %table19 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache18, i32 0, i32 6
  %72 = load %struct.cached_char_s**, %struct.cached_char_s*** %table19, align 8, !tbaa !153
  %73 = bitcast %struct.cached_char_s** %72 to i8*
  %74 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call20 = call i8* %69(i8* %73, %struct.gc_state_s* %74) #5
  %75 = bitcast i8* %call20 to %struct.cached_char_s**
  %76 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %77 = bitcast i8* %76 to %struct.gs_font_dir_s*
  %ccache21 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %77, i32 0, i32 5
  %table22 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache21, i32 0, i32 6
  store %struct.cached_char_s** %75, %struct.cached_char_s*** %table22, align 8, !tbaa !153
  %78 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gc_state_s* %78 to %struct.gc_procs_common_s**
  %80 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %79, align 8, !tbaa !1
  %reloc_struct_ptr23 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %80, i32 0, i32 0
  %81 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr23, align 8, !tbaa !76
  %82 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %83 = bitcast i8* %82 to %struct.gs_font_dir_s*
  %ccache24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %83, i32 0, i32 5
  %mark_glyph_data = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache24, i32 0, i32 14
  %84 = load i8*, i8** %mark_glyph_data, align 8, !tbaa !84
  %85 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call25 = call i8* %81(i8* %84, %struct.gc_state_s* %85) #5
  %86 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %87 = bitcast i8* %86 to %struct.gs_font_dir_s*
  %ccache26 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %87, i32 0, i32 5
  %mark_glyph_data27 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache26, i32 0, i32 14
  store i8* %call25, i8** %mark_glyph_data27, align 8, !tbaa !84
  %88 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gc_state_s* %88 to %struct.gc_procs_common_s**
  %90 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %89, align 8, !tbaa !1
  %reloc_struct_ptr28 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %90, i32 0, i32 0
  %91 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr28, align 8, !tbaa !76
  %92 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %93 = bitcast i8* %92 to %struct.gs_font_dir_s*
  %glyph_to_unicode_table = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %93, i32 0, i32 10
  %94 = load i8*, i8** %glyph_to_unicode_table, align 8, !tbaa !92
  %95 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call29 = call i8* %91(i8* %94, %struct.gc_state_s* %95) #5
  %96 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %97 = bitcast i8* %96 to %struct.gs_font_dir_s*
  %glyph_to_unicode_table30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %97, i32 0, i32 10
  store i8* %call29, i8** %glyph_to_unicode_table30, align 8, !tbaa !92
  %98 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %99 = bitcast %struct.gc_state_s* %98 to %struct.gc_procs_common_s**
  %100 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %99, align 8, !tbaa !1
  %reloc_struct_ptr31 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %100, i32 0, i32 0
  %101 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr31, align 8, !tbaa !76
  %102 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %103 = bitcast i8* %102 to %struct.gs_font_dir_s*
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %103, i32 0, i32 12
  %104 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !95
  %105 = bitcast %struct.ttfInterpreter_s* %104 to i8*
  %106 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call32 = call i8* %101(i8* %105, %struct.gc_state_s* %106) #5
  %107 = bitcast i8* %call32 to %struct.ttfInterpreter_s*
  %108 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %109 = bitcast i8* %108 to %struct.gs_font_dir_s*
  %tti33 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %109, i32 0, i32 12
  store %struct.ttfInterpreter_s* %107, %struct.ttfInterpreter_s** %tti33, align 8, !tbaa !95
  %110 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %111 = bitcast %struct.gc_state_s* %110 to %struct.gc_procs_common_s**
  %112 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %111, align 8, !tbaa !1
  %reloc_struct_ptr34 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %112, i32 0, i32 0
  %113 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr34, align 8, !tbaa !76
  %114 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %115 = bitcast i8* %114 to %struct.gs_font_dir_s*
  %ttm = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %115, i32 0, i32 13
  %116 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm, align 8, !tbaa !96
  %117 = bitcast %struct.gx_ttfMemory_s* %116 to i8*
  %118 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call35 = call i8* %113(i8* %117, %struct.gc_state_s* %118) #5
  %119 = bitcast i8* %call35 to %struct.gx_ttfMemory_s*
  %120 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %121 = bitcast i8* %120 to %struct.gs_font_dir_s*
  %ttm36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %121, i32 0, i32 13
  store %struct.gx_ttfMemory_s* %119, %struct.gx_ttfMemory_s** %ttm36, align 8, !tbaa !96
  %122 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %123 = bitcast %struct.gc_state_s* %122 to %struct.gc_procs_common_s**
  %124 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %123, align 8, !tbaa !1
  %reloc_struct_ptr37 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %124, i32 0, i32 0
  %125 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr37, align 8, !tbaa !76
  %126 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %127 = bitcast i8* %126 to %struct.gs_font_dir_s*
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %127, i32 0, i32 15
  %128 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %san, align 8, !tbaa !97
  %129 = bitcast %struct.gx_device_spot_analyzer_s* %128 to i8*
  %130 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call38 = call i8* %125(i8* %129, %struct.gc_state_s* %130) #5
  %131 = bitcast i8* %call38 to %struct.gx_device_spot_analyzer_s*
  %132 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %133 = bitcast i8* %132 to %struct.gs_font_dir_s*
  %san39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %133, i32 0, i32 15
  store %struct.gx_device_spot_analyzer_s* %131, %struct.gx_device_spot_analyzer_s** %san39, align 8, !tbaa !97
  %134 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_font_dir_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %2, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 2
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !167
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 22
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !168
  %cmp = icmp eq %struct.gs_font_dir_s* %3, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !167
  %font_dir2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 22
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %font_dir2, align 8, !tbaa !168
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 148}
!8 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324}
!9 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!15 = !{!16, !17, i64 8}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!16, !17, i64 0}
!19 = !{i64 0, i64 8, !20, i64 8, i64 8, !20}
!20 = !{!17, !17, i64 0}
!21 = !{!22, !6, i64 0}
!22 = !{!"gs_font_info_s", !6, i64 0, !6, i64 4, !6, i64 8, !23, i64 12, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !25, i64 88, !25, i64 104, !25, i64 120, !25, i64 136, !6, i64 152}
!23 = !{!"gs_int_rect_s", !24, i64 0, !24, i64 8}
!24 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!25 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!26 = !{!22, !6, i64 44}
!27 = !{!8, !3, i64 128}
!28 = !{!29, !17, i64 376}
!29 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !30, i64 376, !31, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!30 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!31 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!32 = !{!22, !6, i64 12}
!33 = !{!29, !17, i64 384}
!34 = !{!22, !6, i64 16}
!35 = !{!29, !17, i64 392}
!36 = !{!22, !6, i64 20}
!37 = !{!29, !17, i64 400}
!38 = !{!22, !6, i64 24}
!39 = !{!22, !6, i64 40}
!40 = !{!10, !10, i64 0}
!41 = !{!8, !2, i64 216}
!42 = !{!8, !2, i64 224}
!43 = !{!22, !6, i64 60}
!44 = !{!22, !6, i64 36}
!45 = !{!22, !6, i64 56}
!46 = !{!22, !6, i64 8}
!47 = !{!8, !2, i64 64}
!48 = !{!3, !3, i64 0}
!49 = !{!8, !2, i64 232}
!50 = !{!51, !6, i64 0}
!51 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!52 = !{!51, !6, i64 4}
!53 = !{!54, !6, i64 0}
!54 = !{!"gs_fixed_rect_s", !51, i64 0, !51, i64 8}
!55 = !{!56, !17, i64 56}
!56 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !16, i64 40, !30, i64 56, !6, i64 88, !2, i64 96}
!57 = !{!54, !6, i64 4}
!58 = !{!56, !17, i64 64}
!59 = !{!54, !6, i64 8}
!60 = !{!56, !17, i64 72}
!61 = !{!54, !6, i64 12}
!62 = !{!56, !17, i64 80}
!63 = !{!56, !17, i64 40}
!64 = !{!56, !17, i64 48}
!65 = !{!56, !6, i64 88}
!66 = !{!56, !6, i64 0}
!67 = !{!68, !2, i64 32}
!68 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!69 = !{!8, !2, i64 0}
!70 = !{!71, !2, i64 0}
!71 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!72 = !{!8, !2, i64 8}
!73 = !{!8, !2, i64 24}
!74 = !{!8, !2, i64 72}
!75 = !{!68, !2, i64 40}
!76 = !{!77, !2, i64 0}
!77 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!78 = !{!79, !2, i64 8}
!79 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !80, i64 24, !81, i64 56, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208, !10, i64 216}
!80 = !{!"fm_pair_cache_s", !6, i64 0, !6, i64 4, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!81 = !{!"char_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!82 = !{!79, !6, i64 16}
!83 = !{!79, !2, i64 128}
!84 = !{!79, !2, i64 136}
!85 = !{!86, !2, i64 72}
!86 = !{!"gs_memory_s", !2, i64 0, !87, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!87 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!88 = !{!86, !2, i64 24}
!89 = !{!79, !2, i64 0}
!90 = !{!79, !6, i64 20}
!91 = !{!79, !6, i64 156}
!92 = !{!79, !2, i64 160}
!93 = !{!79, !6, i64 192}
!94 = !{!79, !2, i64 168}
!95 = !{!79, !2, i64 176}
!96 = !{!79, !2, i64 184}
!97 = !{!79, !2, i64 200}
!98 = !{!79, !2, i64 208}
!99 = !{!79, !10, i64 216}
!100 = !{!79, !6, i64 152}
!101 = !{!68, !6, i64 0}
!102 = !{!8, !2, i64 16}
!103 = !{!8, !10, i64 56}
!104 = !{!8, !3, i64 144}
!105 = !{!8, !3, i64 140}
!106 = !{!8, !3, i64 136}
!107 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1}
!108 = !{!86, !2, i64 32}
!109 = !{!31, !10, i64 0}
!110 = !{!31, !2, i64 8}
!111 = !{!29, !3, i64 444}
!112 = !{!29, !3, i64 440}
!113 = !{!8, !2, i64 168}
!114 = !{!8, !12, i64 80}
!115 = !{!11, !12, i64 0}
!116 = !{!8, !12, i64 84}
!117 = !{!11, !12, i64 4}
!118 = !{!8, !12, i64 88}
!119 = !{!11, !12, i64 8}
!120 = !{!8, !12, i64 92}
!121 = !{!11, !12, i64 12}
!122 = !{!8, !12, i64 96}
!123 = !{!11, !12, i64 16}
!124 = !{!8, !12, i64 100}
!125 = !{!11, !12, i64 20}
!126 = !{!86, !2, i64 128}
!127 = !{!86, !2, i64 120}
!128 = !{i64 0, i64 4, !129, i64 4, i64 4, !129, i64 8, i64 4, !129, i64 12, i64 4, !129, i64 16, i64 4, !129, i64 20, i64 4, !129}
!129 = !{!12, !12, i64 0}
!130 = !{!8, !2, i64 176}
!131 = !{!132, !2, i64 1792}
!132 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !133, i64 24, !6, i64 128, !135, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !136, i64 216, !3, i64 220, !137, i64 224, !137, i64 228, !138, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !51, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !139, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !140, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !140, i64 1336, !2, i64 1616, !11, i64 1624, !6, i64 1648, !11, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !135, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !141, i64 1888}
!133 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !11, i64 40, !134, i64 64}
!134 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!135 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!136 = !{!"short", !3, i64 0}
!137 = !{!"gs_transparency_source_s", !12, i64 0}
!138 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!139 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!140 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!141 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!142 = !{!132, !6, i64 1844}
!143 = !{!132, !2, i64 1800}
!144 = !{!79, !6, i64 68}
!145 = !{!79, !6, i64 108}
!146 = !{!79, !6, i64 24}
!147 = !{!79, !6, i64 28}
!148 = !{!79, !6, i64 72}
!149 = !{!79, !6, i64 112}
!150 = !{!79, !6, i64 124}
!151 = !{!86, !2, i64 0}
!152 = !{!79, !2, i64 32}
!153 = !{!79, !2, i64 96}
!154 = !{!86, !2, i64 200}
!155 = !{!79, !6, i64 120}
!156 = !{!29, !2, i64 240}
!157 = !{!25, !6, i64 8}
!158 = !{!25, !2, i64 0}
!159 = !{!79, !6, i64 104}
!160 = !{!79, !6, i64 144}
!161 = !{!79, !6, i64 148}
!162 = !{!163, !10, i64 40}
!163 = !{!"cached_char_s", !164, i64 0, !136, i64 8, !136, i64 10, !136, i64 12, !136, i64 14, !10, i64 16, !2, i64 24, !6, i64 32, !10, i64 40, !3, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !51, i64 72, !10, i64 80, !51, i64 88, !51, i64 96}
!164 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!165 = !{!163, !2, i64 24}
!166 = !{!163, !6, i64 68}
!167 = !{!86, !2, i64 192}
!168 = !{!169, !2, i64 168}
!169 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !10, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
