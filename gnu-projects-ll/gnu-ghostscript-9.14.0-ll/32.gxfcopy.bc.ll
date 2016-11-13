; ModuleID = './gxfcopy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_copied_font_procs_s = type { i32 (%struct.gs_font_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)*, i32 (%struct.gs_font_s*, i64, i64)*, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_path_s = type opaque
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
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type opaque
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_copied_font_data_s = type { %struct.gs_font_info_s, %struct.gs_copied_font_procs_s*, %struct.gs_copied_glyph_s*, i32, i32, i64, %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_extra_name_s*, i8*, i32, i64*, i16*, %struct.gs_subr_info_s, %struct.gs_subr_info_s, %struct.gs_font_cid0_s*, %struct.gs_font_dir_s*, i32 }
%struct.gs_copied_glyph_s = type { %struct.gs_const_string_s, i8, i32 }
%struct.gs_copied_glyph_name_s = type { i64, %struct.gs_const_string_s }
%struct.gs_copied_glyph_extra_name_s = type { %struct.gs_copied_glyph_name_s, i32, %struct.gs_copied_glyph_extra_name_s* }
%struct.gs_subr_info_s = type { i8*, i32, i32* }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.1, float, i32, %struct.anon.2, %struct.anon.3, i32, %struct.anon.4, i32, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon.1 = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [14 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [10 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [1 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [12 x float] }
%struct.anon.9 = type { i32, [16 x float] }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }

@copied_procs_type42 = internal constant %struct.gs_copied_font_procs_s { i32 (%struct.gs_font_s*, %struct.gs_font_s*)* @copy_font_type42, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)* @copy_glyph_type42, i32 (%struct.gs_font_s*, i64, i64)* @copied_char_add_encoding, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)* @named_glyph_slot_linear, i64 (%struct.gs_font_s*, i64, i32)* @copied_type42_encode_char, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type42_glyph_info, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @gs_type42_glyph_outline }, align 8
@copied_procs_type1 = internal constant %struct.gs_copied_font_procs_s { i32 (%struct.gs_font_s*, %struct.gs_font_s*)* @copy_font_type1, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)* @copy_glyph_type1, i32 (%struct.gs_font_s*, i64, i64)* @copied_char_add_encoding, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)* @named_glyph_slot_hashed, i64 (%struct.gs_font_s*, i64, i32)* @copied_encode_char, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type1_glyph_info, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @copied_type1_glyph_outline }, align 8
@some_primes = internal constant [23 x i32] [i32 257, i32 359, i32 521, i32 769, i32 1031, i32 2053, i32 3079, i32 4099, i32 5101, i32 6101, i32 7109, i32 8209, i32 10007, i32 12007, i32 14009, i32 16411, i32 20107, i32 26501, i32 32771, i32 48857, i32 65537, i32 85229, i32 127837], align 16
@copied_procs_cid0 = internal constant %struct.gs_copied_font_procs_s { i32 (%struct.gs_font_s*, %struct.gs_font_s*)* @copy_font_cid0, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)* @copy_glyph_cid0, i32 (%struct.gs_font_s*, i64, i64)* @copied_no_add_encoding, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)* @named_glyph_slot_none, i64 (%struct.gs_font_s*, i64, i32)* @gs_no_encode_char, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @copied_cid0_glyph_info, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @copied_cid0_glyph_outline }, align 8
@copied_procs_cid2 = internal constant %struct.gs_copied_font_procs_s { i32 (%struct.gs_font_s*, %struct.gs_font_s*)* @copy_font_cid2, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)* @copy_glyph_cid2, i32 (%struct.gs_font_s*, i64, i64)* @copied_no_add_encoding, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)* @named_glyph_slot_none, i64 (%struct.gs_font_s*, i64, i32)* @gs_no_encode_char, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type42_glyph_info, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @gs_type42_glyph_outline }, align 8
@st_gs_copied_glyph_element = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @copied_glyph_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @copied_glyph_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"gs_copy_font(glyphs)\00", align 1
@st_gs_copied_glyph_name_element = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @copied_glyph_name_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @copied_glyph_name_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"gs_copy_font(names)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gs_copy_font(copied font)\00", align 1
@st_gs_copied_font_data = internal constant %struct.gs_memory_struct_type_s { i32 312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_copied_font_data_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_copied_font_data_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"gs_copy_font(wrapper data)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gs_copy_font(Copyright)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gs_copy_font(Notice)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"gs_copy_font(FamilyName)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"gs_copy_font(FullName)\00", align 1
@copied_font_procs = internal constant %struct.gs_font_procs_s { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)* null, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)* null, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @copied_font_info, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)* @gs_default_same_font, i64 (%struct.gs_font_s*, i64, i32)* null, i64 (%struct.gs_font_s*, i64, i32)* null, i32 (%struct.gs_font_s*, i32*, i32, i64*)* @copied_enumerate_glyph, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* null, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* null, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)* @copied_glyph_name, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)* @gs_default_init_fstack, i32 (%struct.gs_text_enum_s*, i64*, i64*)* @gs_default_next_char_glyph, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* @copied_build_char }, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"gs_copy_font(UID)\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Free copied glyph\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"gs_free_copied_font(FullName)\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"gs_free_copied_font(FamilyName)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gs_free_copied_font(Notice)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"gs_free_copied_font(Copyright)\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"gs_free_copied_font(Encoding)\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"gs_free_copied_font(glyphs)\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"gs_free_copied_font(names)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"gs_free_copied_font(data)\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"gs_free_copied_font(wrapper data)\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"gs_free_copied_font(copied font)\00", align 1
@gx_extendeg_glyph_name_separator = external constant [0 x i8], align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"copy_font_type42(data)\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"copy_font_type42(Encoding)\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"copy_font_type1(Encoding)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"copied_data_alloc\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"copy_glyph_data(data)\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"copy_glyph_data\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"copy_subrs\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"copy_subrs(data)\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"copy_subrs(starts)\00", align 1
@st_gs_font_type1_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"FDArray\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"copy_font_cid0(Encoding)\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"copy_font_cid0(subfont names)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"copy_font_cid0(subfont glyphs)\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"copy_font_cid0(subfont)\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"copy_font_cid2(CIDMap\00", align 1
@st_subst_CID_on_WMode = external constant %struct.gs_memory_struct_type_s, align 8
@.str.38 = private unnamed_addr constant [15 x i8] c"copy_font_cid2\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"gs_copied_glyph_t[]\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.40 = private unnamed_addr constant [25 x i8] c"gs_copied_glyph_name_t[]\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"gs_copied_font_data_t\00", align 1
@gs_c_min_std_encoding_glyph = external constant i64, align 8
@st_gs_font_info = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.42 = private unnamed_addr constant [16 x i8] c"copy_glyph_name\00", align 1
@st_gs_copied_glyph_extra_name = internal constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_copied_glyph_extra_name_data to i8*) }, align 8
@.str.43 = private unnamed_addr constant [28 x i8] c"copy_glyph_name(extra_name)\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"gs_copied_glyph_extra_name_t\00", align 1
@gs_copied_glyph_extra_name_data = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @gs_copied_glyph_extra_name_ptrs, i32 0, i32 0) }, align 8
@gs_copied_glyph_extra_name_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 1, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.45 = private unnamed_addr constant [17 x i8] c"hash_type1_subrs\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"prep\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"cvt \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"fpgm\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"compare_glyphs\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"order_font_data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_copy_font(%struct.gs_font_s* %font, %struct.gs_matrix_s* %orig_matrix, %struct.gs_memory_s* %mem, %struct.gs_font_s** %pfont_new, i32 %max_reserved_glyphs) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %orig_matrix.addr = alloca %struct.gs_matrix_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfont_new.addr = alloca %struct.gs_font_s**, align 8
  %max_reserved_glyphs.addr = alloca i32, align 4
  %fstype = alloca %struct.gs_memory_struct_type_s*, align 8
  %fssize = alloca i32, align 4
  %copied = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %info = alloca %struct.gs_font_info_s, align 8
  %glyphs = alloca %struct.gs_copied_glyph_s*, align 8
  %glyphs_size = alloca i32, align 4
  %names = alloca %struct.gs_copied_glyph_name_s*, align 8
  %have_names = alloca i32, align 4
  %procs3 = alloca %struct.gs_copied_font_procs_s*, align 8
  %code = alloca i32, align 4
  %index = alloca i32, align 4
  %glyph = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bfont = alloca %struct.gs_font_base_s*, align 8
  %i109 = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %orig_matrix, %struct.gs_matrix_s** %orig_matrix.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %pfont_new, %struct.gs_font_s*** %pfont_new.addr, align 8, !tbaa !1
  store i32 %max_reserved_glyphs, i32* %max_reserved_glyphs.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_struct_type_s** %fstype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %3 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !15
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to i8*
  %call = call %struct.gs_memory_struct_type_s* %3(%struct.gs_memory_s* %5, i8* %7) #6
  store %struct.gs_memory_struct_type_s* %call, %struct.gs_memory_struct_type_s** %fstype, align 8, !tbaa !1
  %8 = bitcast i32* %fssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %fstype, align 8, !tbaa !1
  %call2 = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %9) #6
  store i32 %call2, i32* %fssize, align 4, !tbaa !5
  %10 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %11 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.gs_copied_font_data_s* null, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %12 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %12) #1
  %13 = bitcast %struct.gs_copied_glyph_s** %glyphs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.gs_copied_glyph_s* null, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %14 = bitcast i32* %glyphs_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.gs_copied_glyph_name_s* null, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %16 = bitcast i32* %have_names to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %have_names, align 4, !tbaa !5
  %17 = bitcast %struct.gs_copied_font_procs_s** %procs3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType, align 4, !tbaa !18
  switch i32 %20, label %sw.default [
    i32 42, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.4
    i32 9, label %sw.bb.22
    i32 11, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  store %struct.gs_copied_font_procs_s* @copied_procs_type42, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_font_s* %21 to %struct.gs_font_type42_s*
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %22, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 15
  %23 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !19
  store i32 %23, i32* %glyphs_size, align 4, !tbaa !5
  store i32 1, i32* %have_names, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  store %struct.gs_copied_font_procs_s* @copied_procs_type1, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  store i32 0, i32* %glyphs_size, align 4, !tbaa !5
  %24 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  %25 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.4
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs5, i32 0, i32 6
  %27 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !26
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call6 = call i32 %27(%struct.gs_font_s* %28, i32* %index, i32 0, i64* %glyph) #6
  %29 = load i32, i32* %index, align 4, !tbaa !5
  %cmp = icmp ne i32 %29, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %inc = add i32 %30, 1
  store i32 %inc, i32* %glyphs_size, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %34 = load i32, i32* %max_reserved_glyphs.addr, align 4, !tbaa !5
  %cmp7 = icmp ugt i32 %33, %34
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %35 = load i32, i32* %max_reserved_glyphs.addr, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %35, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %36 = load i32, i32* %max_reserved_glyphs.addr, align 4, !tbaa !5
  store i32 %36, i32* %glyphs_size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %37 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %37, 257
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 257, i32* %glyphs_size, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %38 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %mul = mul i32 %38, 3
  %div = udiv i32 %mul, 2
  store i32 %div, i32* %glyphs_size, align 4, !tbaa !5
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %40, 23
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [23 x i32], [23 x i32]* @some_primes, i32 0, i64 %idxprom
  %43 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp13 = icmp ule i32 %41, %43
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.end

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %44, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %45, 23
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.end
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds [23 x i32], [23 x i32]* @some_primes, i32 0, i64 %idxprom20
  %47 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  store i32 %47, i32* %glyphs_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.150 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 1, i32* %have_names, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  store %struct.gs_copied_font_procs_s* @copied_procs_cid0, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_font_s* %49 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %50, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %MaxCID = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 2
  %51 = load i32, i32* %MaxCID, align 4, !tbaa !27
  %add = add nsw i32 %51, 1
  store i32 %add, i32* %glyphs_size, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store %struct.gs_copied_font_procs_s* @copied_procs_cid2, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %52 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gs_font_s* %52 to %struct.gs_font_cid2_s*
  %data24 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %53, i32 0, i32 29
  %trueNumGlyphs25 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data24, i32 0, i32 15
  %54 = load i32, i32* %trueNumGlyphs25, align 4, !tbaa !33
  store i32 %54, i32* %glyphs_size, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

sw.epilog:                                        ; preds = %sw.bb.23, %sw.bb.22, %cleanup.cont, %sw.bb
  %55 = bitcast %struct.gs_font_info_s* %info to i8*
  %call26 = call i8* @memset(i8* %55, i32 0, i64 160) #7
  %Flags_requested = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 7
  store i32 -1, i32* %Flags_requested, align 4, !tbaa !37
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %56, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs27, i32 0, i32 2
  %57 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !41
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call28 = call i32 %57(%struct.gs_font_s* %58, %struct.gs_point_s* null, i32 -1, %struct.gs_font_info_s* %info) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %59, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %sw.epilog
  %60 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType31 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %60, i32 0, i32 11
  %61 = load i32, i32* %FontType31, align 4, !tbaa !18
  %cmp32 = icmp eq i32 %61, 11
  br i1 %cmp32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.30
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.34:                                        ; preds = %land.lhs.true.30, %sw.epilog
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 12
  %64 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !42
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %66 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %call36 = call i8* %64(%struct.gs_memory_s* %65, i32 %66, %struct.gs_memory_struct_type_s* @st_gs_copied_glyph_element, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #6
  %67 = bitcast i8* %call36 to %struct.gs_copied_glyph_s*
  store %struct.gs_copied_glyph_s* %67, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %68 = load i32, i32* %have_names, align 4, !tbaa !5
  %cmp37 = icmp ne i32 %68, 0
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.34
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_struct_array40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 12
  %70 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array40, align 8, !tbaa !42
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %72 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %call41 = call i8* %70(%struct.gs_memory_s* %71, i32 %72, %struct.gs_memory_struct_type_s* @st_gs_copied_glyph_name_element, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  %73 = bitcast i8* %call41 to %struct.gs_copied_glyph_name_s*
  store %struct.gs_copied_glyph_name_s* %73, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.34
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 8
  %75 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !43
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %77 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %fstype, align 8, !tbaa !1
  %call44 = call i8* %75(%struct.gs_memory_s* %76, %struct.gs_memory_struct_type_s* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6
  %78 = bitcast i8* %call44 to %struct.gs_font_s*
  store %struct.gs_font_s* %78, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %alloc_struct46 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 8
  %80 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct46, align 8, !tbaa !43
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call47 = call i8* %80(%struct.gs_memory_s* %81, %struct.gs_memory_struct_type_s* @st_gs_copied_font_data, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #6
  %82 = bitcast i8* %call47 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %82, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %83 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_copied_font_data_s* %83, null
  br i1 %tobool, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.42
  %84 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %85 = bitcast %struct.gs_copied_font_data_s* %84 to i8*
  %call49 = call i8* @memset(i8* %85, i32 0, i64 312) #7
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.42
  %86 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %cmp51 = icmp eq %struct.gs_copied_glyph_s* %86, null
  br i1 %cmp51, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %87 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %cmp52 = icmp eq %struct.gs_copied_glyph_name_s* %87, null
  br i1 %cmp52, label %land.lhs.true.53, label %lor.lhs.false.55

land.lhs.true.53:                                 ; preds = %lor.lhs.false
  %88 = load i32, i32* %have_names, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %88, 0
  br i1 %tobool54, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53, %lor.lhs.false
  %89 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.gs_font_s* %89, null
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.55
  %90 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %cmp58 = icmp eq %struct.gs_copied_font_data_s* %90, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.55, %land.lhs.true.53, %if.end.50
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.60:                                        ; preds = %lor.lhs.false.57
  %91 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info61 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %91, i32 0, i32 0
  %92 = bitcast %struct.gs_font_info_s* %info61 to i8*
  %93 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 160, i32 8, i1 false), !tbaa.struct !44
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %94, i32 0, i32 3
  %95 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !46
  %96 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %dir62 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %96, i32 0, i32 15
  store %struct.gs_font_dir_s* %95, %struct.gs_font_dir_s** %dir62, align 8, !tbaa !47
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %98 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info63 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %98, i32 0, i32 0
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info63, i32 0, i32 18
  %call64 = call i32 @copy_string(%struct.gs_memory_s* %97, %struct.gs_const_string_s* %Copyright, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %100 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info65 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %100, i32 0, i32 0
  %Notice = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info65, i32 0, i32 19
  %call66 = call i32 @copy_string(%struct.gs_memory_s* %99, %struct.gs_const_string_s* %Notice, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #6
  %or = or i32 %call64, %call66
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %102 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info67 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %102, i32 0, i32 0
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info67, i32 0, i32 20
  %call68 = call i32 @copy_string(%struct.gs_memory_s* %101, %struct.gs_const_string_s* %FamilyName, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #6
  %or69 = or i32 %or, %call68
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %104 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info70 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %104, i32 0, i32 0
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info70, i32 0, i32 21
  %call71 = call i32 @copy_string(%struct.gs_memory_s* %103, %struct.gs_const_string_s* %FullName, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)) #6
  %or72 = or i32 %or69, %call71
  store i32 %or72, i32* %code, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %or72, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.60
  br label %fail

if.end.75:                                        ; preds = %if.end.60
  %105 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %106 = bitcast %struct.gs_font_s* %105 to i8*
  %107 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %108 = bitcast %struct.gs_font_s* %107 to i8*
  %109 = load i32, i32* %fssize, align 4, !tbaa !5
  %conv = zext i32 %109 to i64
  %call76 = call i8* @memcpy(i8* %106, i8* %108, i64 %conv) #7
  %110 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %110, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev, align 8, !tbaa !50
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %111, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next, align 8, !tbaa !51
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %113 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %113, i32 0, i32 2
  store %struct.gs_memory_s* %112, %struct.gs_memory_s** %memory77, align 8, !tbaa !7
  %114 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %114, i32 0, i32 4
  store i32 0, i32* %is_resource, align 4, !tbaa !52
  %115 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %115, i32 0, i32 5
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_notify_init(%struct.gs_notify_list_s* %notify_list, %struct.gs_memory_s* %116) #6
  %117 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %118 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %118, i32 0, i32 7
  store %struct.gs_font_s* %117, %struct.gs_font_s** %base, align 8, !tbaa !53
  %119 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %119, i32 0, i32 9
  %120 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %orig_matrix.addr, align 8, !tbaa !1
  %121 = bitcast %struct.gs_matrix_s* %FontMatrix to i8*
  %122 = bitcast %struct.gs_matrix_s* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 24, i32 4, i1 false), !tbaa.struct !54
  %123 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %124 = bitcast %struct.gs_copied_font_data_s* %123 to i8*
  %125 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %125, i32 0, i32 8
  store i8* %124, i8** %client_data, align 8, !tbaa !55
  %126 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %126, i32 0, i32 20
  %127 = bitcast %struct.gs_font_procs_s* %procs78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* bitcast (%struct.gs_font_procs_s* @copied_font_procs to i8*), i64 104, i32 8, i1 false), !tbaa.struct !56
  %128 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %encode_char = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %128, i32 0, i32 4
  %129 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !57
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %procs79 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %130, i32 0, i32 20
  %encode_char80 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs79, i32 0, i32 4
  store i64 (%struct.gs_font_s*, i64, i32)* %129, i64 (%struct.gs_font_s*, i64, i32)** %encode_char80, align 8, !tbaa !59
  %131 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %glyph_info = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %131, i32 0, i32 5
  %132 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !60
  %133 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %133, i32 0, i32 20
  %glyph_info82 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs81, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* %132, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info82, align 8, !tbaa !61
  %134 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %glyph_outline = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %134, i32 0, i32 6
  %135 = load i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !62
  %136 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %136, i32 0, i32 20
  %glyph_outline84 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs83, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* %135, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline84, align 8, !tbaa !63
  %137 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %139 = bitcast %struct.gs_font_s* %138 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %139, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %140 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %140, i32 0, i32 25
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !64
  %141 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %141, i32 0, i32 26
  store i8* null, i8** %FAPI_font_data, align 8, !tbaa !66
  %142 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %142, i32 0, i32 27
  store i32 -1, i32* %encoding_index, align 4, !tbaa !67
  %143 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %143, i32 0, i32 24
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call85 = call i32 @uid_copy(%struct.gs_uid_s* %UID, %struct.gs_memory_s* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0)) #6
  store i32 %call85, i32* %code, align 4, !tbaa !5
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %145, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.75
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.89:                                        ; preds = %if.end.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.then.88, %if.end.89
  %146 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %cleanup.dest.91 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.91, label %cleanup.150 [
    i32 0, label %cleanup.cont.92
    i32 8, label %fail
  ]

cleanup.cont.92:                                  ; preds = %cleanup.90
  %147 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %148 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %148, i32 0, i32 1
  store %struct.gs_copied_font_procs_s* %147, %struct.gs_copied_font_procs_s** %procs93, align 8, !tbaa !68
  %149 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %150 = bitcast %struct.gs_copied_glyph_s* %149 to i8*
  %151 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %conv94 = zext i32 %151 to i64
  %mul95 = mul i64 %conv94, 24
  %call96 = call i8* @memset(i8* %150, i32 0, i64 %mul95) #7
  %152 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %153 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs97 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %153, i32 0, i32 2
  store %struct.gs_copied_glyph_s* %152, %struct.gs_copied_glyph_s** %glyphs97, align 8, !tbaa !69
  %154 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %155 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size98 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %155, i32 0, i32 3
  store i32 %154, i32* %glyphs_size98, align 4, !tbaa !70
  %156 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %156, i32 0, i32 4
  store i32 0, i32* %num_glyphs, align 4, !tbaa !71
  %157 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %157, i32 0, i32 16
  store i32 0, i32* %ordered, align 4, !tbaa !72
  %158 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %tobool99 = icmp ne %struct.gs_copied_glyph_name_s* %158, null
  br i1 %tobool99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %cleanup.cont.92
  %159 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %160 = bitcast %struct.gs_copied_glyph_name_s* %159 to i8*
  %161 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %conv101 = zext i32 %161 to i64
  %mul102 = mul i64 %conv101, 24
  %call103 = call i8* @memset(i8* %160, i32 0, i64 %mul102) #7
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %cleanup.cont.92
  %162 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %163 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names105 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %163, i32 0, i32 6
  store %struct.gs_copied_glyph_name_s* %162, %struct.gs_copied_glyph_name_s** %names105, align 8, !tbaa !73
  %164 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %cmp106 = icmp ne %struct.gs_copied_glyph_name_s* %164, null
  br i1 %cmp106, label %if.then.108, label %if.end.120

if.then.108:                                      ; preds = %if.end.104
  %165 = bitcast i32* %i109 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  store i32 0, i32* %i109, align 4, !tbaa !5
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.117, %if.then.108
  %166 = load i32, i32* %i109, align 4, !tbaa !5
  %167 = load i32, i32* %glyphs_size, align 4, !tbaa !5
  %cmp111 = icmp ult i32 %166, %167
  br i1 %cmp111, label %for.body.113, label %for.end.119

for.body.113:                                     ; preds = %for.cond.110
  %168 = load i32, i32* %i109, align 4, !tbaa !5
  %idxprom114 = zext i32 %168 to i64
  %169 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %169, i64 %idxprom114
  %glyph116 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx115, i32 0, i32 0
  store i64 2147483647, i64* %glyph116, align 8, !tbaa !74
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.113
  %170 = load i32, i32* %i109, align 4, !tbaa !5
  %inc118 = add i32 %170, 1
  store i32 %inc118, i32* %i109, align 4, !tbaa !5
  br label %for.cond.110

for.end.119:                                      ; preds = %for.cond.110
  %171 = bitcast i32* %i109 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end.104
  %172 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs3, align 8, !tbaa !1
  %finish_copy_font = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %172, i32 0, i32 0
  %173 = load i32 (%struct.gs_font_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*)** %finish_copy_font, align 8, !tbaa !76
  %174 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %175 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %call121 = call i32 %173(%struct.gs_font_s* %174, %struct.gs_font_s* %175) #6
  store i32 %call121, i32* %code, align 4, !tbaa !5
  %176 = load i32, i32* %code, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %176, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.120
  br label %fail

if.end.125:                                       ; preds = %if.end.120
  %177 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %178 = load %struct.gs_font_s**, %struct.gs_font_s*** %pfont_new.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %177, %struct.gs_font_s** %178, align 8, !tbaa !1
  %179 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %179, i32 0, i32 5
  %180 = load i64, i64* %notdef, align 8, !tbaa !77
  %cmp126 = icmp ne i64 %180, 2147483647
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.125
  %181 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %182 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef129 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %182, i32 0, i32 5
  %183 = load i64, i64* %notdef129, align 8, !tbaa !77
  %184 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %call130 = call i32 @gs_copy_glyph(%struct.gs_font_s* %181, i64 %183, %struct.gs_font_s* %184) #6
  store i32 %call130, i32* %code, align 4, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.125
  %185 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

fail:                                             ; preds = %cleanup.90, %if.then.124, %if.then.74, %if.then.59
  %186 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %tobool132 = icmp ne %struct.gs_copied_font_data_s* %186, null
  br i1 %tobool132, label %if.then.133, label %if.end.143

if.then.133:                                      ; preds = %fail
  %187 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %188 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info134 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %188, i32 0, i32 0
  %FullName135 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info134, i32 0, i32 21
  call void @uncopy_string(%struct.gs_memory_s* %187, %struct.gs_const_string_s* %FullName135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)) #6
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %190 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info136 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %190, i32 0, i32 0
  %FamilyName137 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info136, i32 0, i32 20
  call void @uncopy_string(%struct.gs_memory_s* %189, %struct.gs_const_string_s* %FamilyName137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #6
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %192 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info138 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %192, i32 0, i32 0
  %Notice139 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info138, i32 0, i32 19
  call void @uncopy_string(%struct.gs_memory_s* %191, %struct.gs_const_string_s* %Notice139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #6
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %194 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info140 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %194, i32 0, i32 0
  %Copyright141 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info140, i32 0, i32 18
  call void @uncopy_string(%struct.gs_memory_s* %193, %struct.gs_const_string_s* %Copyright141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs142 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %195, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs142, i32 0, i32 2
  %196 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %198 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %199 = bitcast %struct.gs_copied_font_data_s* %198 to i8*
  call void %196(%struct.gs_memory_s* %197, i8* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.133, %fail
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs144 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %200, i32 0, i32 1
  %free_object145 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs144, i32 0, i32 2
  %201 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object145, align 8, !tbaa !78
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %203 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %204 = bitcast %struct.gs_font_s* %203 to i8*
  call void %201(%struct.gs_memory_s* %202, i8* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 1
  %free_object147 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs146, i32 0, i32 2
  %206 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object147, align 8, !tbaa !78
  %207 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %208 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %209 = bitcast %struct.gs_copied_glyph_name_s* %208 to i8*
  call void %206(%struct.gs_memory_s* %207, i8* %209, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs148 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %210, i32 0, i32 1
  %free_object149 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs148, i32 0, i32 2
  %211 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object149, align 8, !tbaa !78
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %213 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !1
  %214 = bitcast %struct.gs_copied_glyph_s* %213 to i8*
  call void %211(%struct.gs_memory_s* %212, i8* %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #6
  %215 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %215, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %if.end.143, %if.end.131, %cleanup.90, %if.then.33, %sw.default, %cleanup
  %216 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast %struct.gs_copied_font_procs_s** %procs3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32* %have_names to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32* %glyphs_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast %struct.gs_copied_glyph_s** %glyphs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %222) #1
  %223 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i32* %fssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast %struct.gs_memory_struct_type_s** %fstype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = load i32, i32* %retval
  ret i32 %227
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @copy_string(%struct.gs_memory_s* %mem, %struct.gs_const_string_s* %pstr, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %cname.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !79
  store i8* %2, i8** %data, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4, !tbaa !80
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !81
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i32, i32* %size, align 4, !tbaa !5
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* %12) #6
  store i8* %call, i8** %str, align 8, !tbaa !1
  %13 = load i8*, i8** %str, align 8, !tbaa !1
  %14 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %14, i32 0, i32 0
  store i8* %13, i8** %data3, align 8, !tbaa !79
  %15 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load i8*, i8** %str, align 8, !tbaa !1
  %17 = load i8*, i8** %data, align 8, !tbaa !1
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %18 to i64
  %call7 = call i8* @memcpy(i8* %16, i8* %17, i64 %conv) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %19 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @gs_notify_init(%struct.gs_notify_list_s*, %struct.gs_memory_s*) #2

declare i32 @uid_copy(%struct.gs_uid_s*, %struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_copy_glyph(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call i32 @gs_copy_glyph_options(%struct.gs_font_s* %0, i64 %1, %struct.gs_font_s* %2, i32 0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @uncopy_string(%struct.gs_memory_s* %mem, %struct.gs_const_string_s* %pstr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !79
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8, !tbaa !79
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !80
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_free_const_string(%struct.gs_memory_s* %2, i8* %4, i32 %6, i8* %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_free_copied_font(%struct.gs_font_s* %font) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !55
  %3 = bitcast i8* %2 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %3, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.gs_copied_glyph_s* null, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %10, i32 0, i32 3
  %11 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %13, i32 0, i32 2
  %14 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %14, i64 %idxprom
  store %struct.gs_copied_glyph_s* %arrayidx, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %15 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %15, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !83
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %19 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !85
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !7
  %22 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata3 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %22, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata3, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !86
  %24 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata4 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %24, i32 0, i32 0
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata4, i32 0, i32 1
  %25 = load i32, i32* %size5, align 4, !tbaa !83
  call void %19(%struct.gs_memory_s* %21, i8* %23, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %tobool6 = icmp ne %struct.gs_copied_font_data_s* %27, null
  br i1 %tobool6, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %for.end
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %29 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %29, i32 0, i32 0
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 21
  call void @uncopy_string(%struct.gs_memory_s* %28, %struct.gs_const_string_s* %FullName, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0)) #6
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %31 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info8 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %31, i32 0, i32 0
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info8, i32 0, i32 20
  call void @uncopy_string(%struct.gs_memory_s* %30, %struct.gs_const_string_s* %FamilyName, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)) #6
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %33 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info9 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %33, i32 0, i32 0
  %Notice = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info9, i32 0, i32 19
  call void @uncopy_string(%struct.gs_memory_s* %32, %struct.gs_const_string_s* %Notice, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #6
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %35 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info10 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %35, i32 0, i32 0
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info10, i32 0, i32 18
  call void @uncopy_string(%struct.gs_memory_s* %34, %struct.gs_const_string_s* %Copyright, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0)) #6
  %36 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %36, i32 0, i32 10
  %37 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %tobool11 = icmp ne i64* %37, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.7
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %41 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding14 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %41, i32 0, i32 10
  %42 = load i64*, i64** %Encoding14, align 8, !tbaa !87
  %43 = bitcast i64* %42 to i8*
  call void %39(%struct.gs_memory_s* %40, i8* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.then.7
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !78
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %47 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs18 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %47, i32 0, i32 2
  %48 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs18, align 8, !tbaa !69
  %49 = bitcast %struct.gs_copied_glyph_s* %48 to i8*
  call void %45(%struct.gs_memory_s* %46, i8* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #6
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !78
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %53, i32 0, i32 6
  %54 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %55 = bitcast %struct.gs_copied_glyph_name_s* %54 to i8*
  call void %51(%struct.gs_memory_s* %52, i8* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)) #6
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %57 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !78
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %59 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %59, i32 0, i32 8
  %60 = load i8*, i8** %data23, align 8, !tbaa !88
  call void %57(%struct.gs_memory_s* %58, i8* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0)) #6
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object25, align 8, !tbaa !78
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %64 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %65 = bitcast %struct.gs_copied_font_data_s* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.15, %for.end
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %free_object28 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object28, align 8, !tbaa !78
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gs_font_s* %69 to i8*
  call void %67(%struct.gs_memory_s* %68, i8* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0)) #6
  %71 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_copy_glyph_options(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %glyphs = alloca [64 x i64], align 16
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [64 x i64]* %glyphs to i8*
  call void @llvm.lifetime.start(i64 512, i8* %1) #1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %count, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %5 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !41
  %cmp = icmp ne i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* %5, @copied_font_info
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %6) #6
  %procs1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %call, i32 0, i32 1
  %7 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs1, align 8, !tbaa !68
  %copy_glyph = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %7, i32 0, i32 1
  %8 = load i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)*, i32 (%struct.gs_font_s*, i64, %struct.gs_font_s*, i32)** %copy_glyph, align 8, !tbaa !89
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %10 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %12 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call2 = call i32 %8(%struct.gs_font_s* %9, i64 %10, %struct.gs_font_s* %11, i32 %12) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %15 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i64 0
  store i64 %15, i64* %arrayidx, align 8, !tbaa !82
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i32 0
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call6 = call i32 @psf_add_subset_pieces(i64* %arraydecay, i32* %count, i32 64, i32 64, %struct.gs_font_s* %16) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %19 = load i32, i32* %count, align 4, !tbaa !5
  %cmp10 = icmp ugt i32 %19, 64
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %count, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %20, %21
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i64 %idxprom
  %24 = load i64, i64* %arrayidx14, align 8, !tbaa !82
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %26 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %26, -2
  %or = or i32 %and, 4
  %call15 = call i32 @gs_copy_glyph_options(%struct.gs_font_s* %22, i64 %24, %struct.gs_font_s* %25, i32 %or) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %27, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.body
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.18
  %30 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp20 = icmp ult i64 %30, 2147483648
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i64 %idxprom22
  %32 = load i64, i64* %arrayidx23, align 8, !tbaa !82
  %cmp24 = icmp ugt i64 %32, 3221225472
  br i1 %cmp24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %land.lhs.true.21
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = zext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i64 %idxprom26
  %35 = load i64, i64* %arrayidx27, align 8, !tbaa !82
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = zext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds [64 x i64], [64 x i64]* %glyphs, i32 0, i64 %idxprom28
  %38 = load i64, i64* %arrayidx29, align 8, !tbaa !82
  %call30 = call i32 @copy_glyph_name(%struct.gs_font_s* %33, i64 %35, %struct.gs_font_s* %36, i64 %38) #6
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %39, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.25
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.21, %land.lhs.true, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %count, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %42, 1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %for.end
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 11
  %44 = load i32, i32* %FontType, align 4, !tbaa !18
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.37, %if.end.37
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.36, %if.then.32, %if.then.17, %if.then.11, %if.then.8, %if.then.4, %if.then
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast [64 x i64]* %glyphs to i8*
  call void @llvm.lifetime.end(i64 512, i8* %47) #1
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_font_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_point_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %2) #6
  %info1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %call, i32 0, i32 0
  %3 = bitcast %struct.gs_font_info_s* %1 to i8*
  %4 = bitcast %struct.gs_font_info_s* %info1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 160, i32 8, i1 false), !tbaa.struct !44
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %font) #4 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %client_data, align 8, !tbaa !55
  %2 = bitcast i8* %1 to %struct.gs_copied_font_data_s*
  ret %struct.gs_copied_font_data_s* %2
}

declare i32 @psf_add_subset_pieces(i64*, i32*, i32, i32, %struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_name(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i64 %copied_glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %copied_glyph.addr = alloca i64, align 8
  %known_glyph = alloca i64, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %pcgn = alloca %struct.gs_copied_glyph_name_s*, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %extra_name = alloca %struct.gs_copied_glyph_extra_name_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %copied_glyph, i64* %copied_glyph.addr, align 8, !tbaa !82
  %0 = bitcast i64* %known_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %2) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %6 = load i64, i64* %copied_glyph.addr, align 8, !tbaa !82
  %call1 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %5, i64 %6, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %9, i32 0, i32 16
  %10 = load i32, i32* %ordered, align 4, !tbaa !72
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 9
  %13 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !90
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %15 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call2 = call i32 %13(%struct.gs_font_s* %14, i64 %15, %struct.gs_const_string_s* %str) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.5:                                         ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !79
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !80
  %call6 = call i64 @gs_c_name_glyph(i8* %17, i32 %18) #6
  store i64 %call6, i64* %known_glyph, align 8, !tbaa !82
  %cmp7 = icmp ne i64 %call6, 2147483647
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %19 = load i64, i64* %known_glyph, align 8, !tbaa !82
  %call9 = call i32 @gs_c_glyph_name(i64 %19, %struct.gs_const_string_s* %str) #6
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call10 = call i32 @copy_string(%struct.gs_memory_s* %21, %struct.gs_const_string_s* %str, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.13:                                        ; preds = %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %23 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %23, i32 0, i32 6
  %24 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %25 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %26 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %26, i32 0, i32 2
  %27 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_copied_glyph_s* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_copied_glyph_s* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %add.ptr = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %24, i64 %sub.ptr.div
  store %struct.gs_copied_glyph_name_s* %add.ptr, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %28 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %glyph15 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %28, i32 0, i32 0
  %29 = load i64, i64* %glyph15, align 8, !tbaa !74
  %cmp16 = icmp ne i64 %29, 2147483647
  br i1 %cmp16, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.14
  %30 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %str17 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %30, i32 0, i32 1
  %size18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str17, i32 0, i32 1
  %31 = load i32, i32* %size18, align 4, !tbaa !91
  %size19 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %32 = load i32, i32* %size19, align 4, !tbaa !80
  %cmp20 = icmp ne i32 %31, %32
  br i1 %cmp20, label %if.then.28, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true
  %33 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %str22 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %33, i32 0, i32 1
  %data23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str22, i32 0, i32 0
  %34 = load i8*, i8** %data23, align 8, !tbaa !92
  %data24 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %35 = load i8*, i8** %data24, align 8, !tbaa !79
  %size25 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %36 = load i32, i32* %size25, align 4, !tbaa !80
  %conv = zext i32 %36 to i64
  %call26 = call i32 @memcmp(i8* %34, i8* %35, i64 %conv) #8
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.44

if.then.28:                                       ; preds = %lor.lhs.false.21, %land.lhs.true
  %37 = bitcast %struct.gs_copied_glyph_extra_name_s** %extra_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %38, i32 0, i32 2
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !7
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 8
  %40 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !43
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 2
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !7
  %call32 = call i8* %40(%struct.gs_memory_s* %42, %struct.gs_memory_struct_type_s* @st_gs_copied_glyph_extra_name, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0)) #6
  %43 = bitcast i8* %call32 to %struct.gs_copied_glyph_extra_name_s*
  store %struct.gs_copied_glyph_extra_name_s* %43, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %44 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.gs_copied_glyph_extra_name_s* %44, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.28
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.28
  %45 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %extra_names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %45, i32 0, i32 7
  %46 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_names, align 8, !tbaa !93
  %47 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %47, i32 0, i32 2
  store %struct.gs_copied_glyph_extra_name_s* %46, %struct.gs_copied_glyph_extra_name_s** %next, align 8, !tbaa !94
  %48 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %49 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs37 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %49, i32 0, i32 2
  %50 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs37, align 8, !tbaa !69
  %sub.ptr.lhs.cast38 = ptrtoint %struct.gs_copied_glyph_s* %48 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.gs_copied_glyph_s* %50 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = sdiv exact i64 %sub.ptr.sub40, 24
  %conv42 = trunc i64 %sub.ptr.div41 to i32
  %51 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %gid = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %51, i32 0, i32 1
  store i32 %conv42, i32* %gid, align 4, !tbaa !96
  %52 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %53 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %extra_names43 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %53, i32 0, i32 7
  store %struct.gs_copied_glyph_extra_name_s* %52, %struct.gs_copied_glyph_extra_name_s** %extra_names43, align 8, !tbaa !93
  %54 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %54, i32 0, i32 0
  store %struct.gs_copied_glyph_name_s* %name, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.35
  %55 = bitcast %struct.gs_copied_glyph_extra_name_s** %extra_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.44

if.end.44:                                        ; preds = %cleanup.cont, %lor.lhs.false.21, %if.end.14
  %56 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %57 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %glyph45 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %57, i32 0, i32 0
  store i64 %56, i64* %glyph45, align 8, !tbaa !74
  %58 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %str46 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %58, i32 0, i32 1
  %59 = bitcast %struct.gs_const_string_s* %str46 to i8*
  %60 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !tbaa.struct !97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.44, %cleanup, %if.then.12, %if.then.4, %if.then
  %61 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %62 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i64* %known_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @gs_copied_font_add_encoding(%struct.gs_font_s* %copied, i64 %chr, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %3 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !41
  %cmp = icmp ne i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* %3, @copied_font_info
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %4, i32 0, i32 1
  %5 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs1, align 8, !tbaa !68
  %add_encoding = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %5, i32 0, i32 2
  %6 = load i32 (%struct.gs_font_s*, i64, i64)*, i32 (%struct.gs_font_s*, i64, i64)** %add_encoding, align 8, !tbaa !98
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %8 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %9 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call2 = call i32 %6(%struct.gs_font_s* %7, i64 %8, i64 %9) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_copy_font_complete(%struct.gs_font_s* %font, %struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %space = alloca i32, align 4
  %glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bfont = alloca %struct.gs_font_base_s*, align 8
  %bcopied = alloca %struct.gs_font_base_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %space, align 4, !tbaa !99
  %3 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %for.cond

for.cond:                                         ; preds = %if.end.18, %entry
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %if.end, %for.cond
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %6 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !26
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load i32, i32* %space, align 4, !tbaa !99
  %call = call i32 %6(%struct.gs_font_s* %7, i32* %index, i32 %8, i64* %glyph) #6
  %9 = load i32, i32* %index, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %10 = phi i1 [ false, %for.cond.1 ], [ %cmp2, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType, align 4, !tbaa !18
  %cmp3 = icmp eq i32 %12, 42
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp4 = icmp uge i64 %13, 2147483648
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %14 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp6 = icmp ult i64 %14, 3221225472
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5, %land.lhs.true
  %15 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp7 = icmp eq i64 %15, 2147483647
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %space, align 4, !tbaa !99
  %cmp9 = icmp eq i32 %16, 1
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %17 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp11 = icmp ult i64 %17, 3221225472
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10, %lor.lhs.false, %land.lhs.true.5
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.10, %lor.lhs.false.8, %for.body
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = load i64, i64* %glyph, align 8, !tbaa !82
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_copy_glyph(%struct.gs_font_s* %18, i64 %19, %struct.gs_font_s* %20) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %space, align 4, !tbaa !99
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %for.end
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 11
  %23 = load i32, i32* %FontType15, align 4, !tbaa !18
  %cmp16 = icmp eq i32 %23, 42
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %space, align 4, !tbaa !99
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true.14, %for.end
  br label %for.end.19

if.end.18:                                        ; preds = %if.then.17
  br label %for.cond

for.end.19:                                       ; preds = %if.else
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call20 = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %24) #6
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %call20, i32 0, i32 10
  %25 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %cmp21 = icmp ne i64* %25, null
  br i1 %cmp21, label %if.then.22, label %if.end.46

if.then.22:                                       ; preds = %for.end.19
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then.22
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp sge i32 %26, 0
  br i1 %cmp24, label %land.rhs.25, label %land.end.27

land.rhs.25:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %index, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %27, 256
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.25, %for.cond.23
  %28 = phi i1 [ false, %for.cond.23 ], [ %cmp26, %land.rhs.25 ]
  br i1 %28, label %for.body.28, label %for.end.45

for.body.28:                                      ; preds = %land.end.27
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs29, i32 0, i32 4
  %30 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !59
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %32 = load i32, i32* %index, align 4, !tbaa !5
  %conv = sext i32 %32 to i64
  %call30 = call i64 %30(%struct.gs_font_s* %31, i64 %conv, i32 0) #6
  store i64 %call30, i64* %glyph, align 8, !tbaa !82
  %33 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp31 = icmp ne i64 %33, 2147483647
  br i1 %cmp31, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %for.body.28
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %35 = load i32, i32* %index, align 4, !tbaa !5
  %conv34 = sext i32 %35 to i64
  %36 = load i64, i64* %glyph, align 8, !tbaa !82
  %call35 = call i32 @gs_copied_font_add_encoding(%struct.gs_font_s* %34, i64 %conv34, i64 %36) #6
  store i32 %call35, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %37, -21
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.33
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.33
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %38, -15
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %39 = load i32, i32* %index, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %index, align 4, !tbaa !5
  br label %for.cond.23

for.end.45:                                       ; preds = %land.end.27
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %for.end.19
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %FontType47 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %40, i32 0, i32 11
  %41 = load i32, i32* %FontType47, align 4, !tbaa !18
  %cmp48 = icmp ne i32 %41, 0
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.46
  %42 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gs_font_s* %43 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %44, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %45 = bitcast %struct.gs_font_base_s** %bcopied to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_font_s* %46 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %47, %struct.gs_font_base_s** %bcopied, align 8, !tbaa !1
  %48 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %48, i32 0, i32 27
  %49 = load i32, i32* %encoding_index, align 4, !tbaa !67
  %50 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bcopied, align 8, !tbaa !1
  %encoding_index51 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %50, i32 0, i32 27
  store i32 %49, i32* %encoding_index51, align 4, !tbaa !67
  %51 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %nearest_encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %51, i32 0, i32 28
  %52 = load i32, i32* %nearest_encoding_index, align 4, !tbaa !100
  %53 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bcopied, align 8, !tbaa !1
  %nearest_encoding_index52 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %53, i32 0, i32 28
  store i32 %52, i32* %nearest_encoding_index52, align 4, !tbaa !100
  %54 = bitcast %struct.gs_font_base_s** %bcopied to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.46
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then
  %57 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @gs_copied_can_copy_glyphs(%struct.gs_font_s* %cfont, %struct.gs_font_s* %ofont, i64* %glyphs, i32 %num_glyphs, i32 %glyphs_step, i32 %check_hinting) #0 {
entry:
  %retval = alloca i32, align 4
  %cfont.addr = alloca %struct.gs_font_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %glyphs.addr = alloca i64*, align 8
  %num_glyphs.addr = alloca i32, align 4
  %glyphs_step.addr = alloca i32, align 4
  %check_hinting.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %cfont, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  store i32 %glyphs_step, i32* %glyphs_step.addr, align 4, !tbaa !5
  store i32 %check_hinting, i32* %check_hinting.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 11
  %4 = load i32, i32* %FontType, align 4, !tbaa !18
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 11
  %6 = load i32, i32* %FontType1, align 4, !tbaa !18
  %cmp2 = icmp ne i32 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 16
  %8 = load i32, i32* %WMode, align 4, !tbaa !101
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %WMode5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 16
  %10 = load i32, i32* %WMode5, align 4, !tbaa !101
  %cmp6 = icmp ne i32 %8, %10
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !102
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %font_name10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 22
  %size11 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name10, i32 0, i32 1
  %14 = load i32, i32* %size11, align 4, !tbaa !102
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.8
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 21
  %size14 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name, i32 0, i32 1
  %16 = load i32, i32* %size14, align 4, !tbaa !103
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %key_name15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 21
  %size16 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name15, i32 0, i32 1
  %18 = load i32, i32* %size16, align 4, !tbaa !103
  %cmp17 = icmp ne i32 %16, %18
  br i1 %cmp17, label %if.then.25, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.then.13
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %key_name19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 21
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name19, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %key_name20 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 21
  %chars21 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name20, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [48 x i8], [48 x i8]* %chars21, i32 0, i32 0
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %font_name23 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 22
  %size24 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name23, i32 0, i32 1
  %22 = load i32, i32* %size24, align 4, !tbaa !102
  %conv = zext i32 %22 to i64
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay22, i64 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.18, %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false.18
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %font_name27 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 22
  %size28 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name27, i32 0, i32 1
  %24 = load i32, i32* %size28, align 4, !tbaa !102
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %font_name29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 22
  %size30 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name29, i32 0, i32 1
  %26 = load i32, i32* %size30, align 4, !tbaa !102
  %cmp31 = icmp ne i32 %24, %26
  br i1 %cmp31, label %if.then.45, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.else
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %font_name34 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 22
  %chars35 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name34, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [48 x i8], [48 x i8]* %chars35, i32 0, i32 0
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %font_name37 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %28, i32 0, i32 22
  %chars38 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name37, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [48 x i8], [48 x i8]* %chars38, i32 0, i32 0
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %font_name40 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 22
  %size41 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name40, i32 0, i32 1
  %30 = load i32, i32* %size41, align 4, !tbaa !102
  %conv42 = zext i32 %30 to i64
  %call43 = call i32 @memcmp(i8* %arraydecay36, i8* %arraydecay39, i64 %conv42) #8
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.33, %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.lhs.false.33
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.26
  %31 = load i32, i32* %check_hinting.addr, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.49, label %if.end.87

if.then.49:                                       ; preds = %if.end.47
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %FontType50 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %32, i32 0, i32 11
  %33 = load i32, i32* %FontType50, align 4, !tbaa !18
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 42, label %sw.bb.55
    i32 9, label %sw.bb.62
    i32 11, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %if.then.49, %if.then.49
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_font_s* %34 to %struct.gs_font_type1_s*
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gs_font_s* %36 to %struct.gs_font_type1_s*
  %call51 = call i32 @same_type1_hinting(%struct.gs_font_type1_s* %35, %struct.gs_font_type1_s* %37) #6
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %sw.bb
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.then.49
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_font_s* %38 to %struct.gs_font_type42_s*
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gs_font_s* %40 to %struct.gs_font_type42_s*
  %call56 = call i32 @same_type42_hinting(%struct.gs_font_type42_s* %39, %struct.gs_font_type42_s* %41) #6
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp sgt i32 %42, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %sw.bb.55
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gs_font_s* %43 to %struct.gs_font_type42_s*
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gs_font_s* %45 to %struct.gs_font_type42_s*
  %call60 = call i32 @same_maxp_values(%struct.gs_font_type42_s* %44, %struct.gs_font_type42_s* %46) #6
  store i32 %call60, i32* %code, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %sw.bb.55
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then.49
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %call63 = call %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s* %47) #6
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %call64 = call %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s* %48) #6
  %call65 = call i32 @gs_is_CIDSystemInfo_compatible(%struct.gs_cid_system_info_s* %call63, %struct.gs_cid_system_info_s* %call64) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %sw.bb.62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %sw.bb.62
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_font_s* %49 to %struct.gs_font_cid0_s*
  %51 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gs_font_s* %51 to %struct.gs_font_cid0_s*
  %call69 = call i32 @same_cid0_hinting(%struct.gs_font_cid0_s* %50, %struct.gs_font_cid0_s* %52) #6
  store i32 %call69, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.then.49
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %call71 = call %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s* %53) #6
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %call72 = call %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s* %54) #6
  %call73 = call i32 @gs_is_CIDSystemInfo_compatible(%struct.gs_cid_system_info_s* %call71, %struct.gs_cid_system_info_s* %call72) #6
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %sw.bb.70
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %sw.bb.70
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gs_font_s* %55 to %struct.gs_font_cid2_s*
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_s* %57 to %struct.gs_font_cid2_s*
  %call77 = call i32 @same_cid2_hinting(%struct.gs_font_cid2_s* %56, %struct.gs_font_cid2_s* %58) #6
  store i32 %call77, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %59, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.76
  %60 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gs_font_s* %60 to %struct.gs_font_type42_s*
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gs_font_s* %62 to %struct.gs_font_type42_s*
  %call81 = call i32 @same_maxp_values(%struct.gs_font_type42_s* %61, %struct.gs_font_type42_s* %63) #6
  store i32 %call81, i32* %code, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.76
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.49
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.82, %if.end.68, %if.end.61, %if.end.54
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp83 = icmp sle i32 %64, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %sw.epilog
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %sw.epilog
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.47
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %68 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %69 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %70 = load i32, i32* %glyphs_step.addr, align 4, !tbaa !5
  %call88 = call i32 @compare_glyphs(%struct.gs_font_s* %66, %struct.gs_font_s* %67, i64* %68, i32 %69, i32 %70, i32 0) #6
  store i32 %call88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.85, %sw.default, %if.then.75, %if.then.67, %if.then.53, %if.then.45, %if.then.25, %if.then.7, %if.then.3, %if.then
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @same_type1_hinting(%struct.gs_font_type1_s* %cfont, %struct.gs_font_type1_s* %ofont) #0 {
entry:
  %retval = alloca i32, align 4
  %cfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %ofont.addr = alloca %struct.gs_font_type1_s*, align 8
  %d0 = alloca %struct.gs_type1_data_s*, align 8
  %d1 = alloca %struct.gs_type1_data_s*, align 8
  %hash0 = alloca i32*, align 8
  %hash1 = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %cfont, %struct.gs_font_type1_s** %cfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %ofont, %struct.gs_font_type1_s** %ofont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_data_s** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %cfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %2 = bitcast %struct.gs_type1_data_s** %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %ofont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %3, i32 0, i32 29
  store %struct.gs_type1_data_s* %data1, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %4 = bitcast i32** %hash0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %hash_subrs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i32 0, i32 26
  %6 = bitcast [16 x i8]* %hash_subrs to i32*
  store i32* %6, i32** %hash0, align 8, !tbaa !1
  %7 = bitcast i32** %hash1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %hash_subrs2 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %8, i32 0, i32 26
  %9 = bitcast [16 x i8]* %hash_subrs2 to i32*
  store i32* %9, i32** %hash1, align 8, !tbaa !1
  %10 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %10, i32 0, i32 4
  %11 = load i32, i32* %lenIV, align 4, !tbaa !104
  %12 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %lenIV3 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %12, i32 0, i32 4
  %13 = load i32, i32* %lenIV3, align 4, !tbaa !104
  %cmp = icmp ne i32 %11, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %BlueFuzz = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %14, i32 0, i32 10
  %15 = load i32, i32* %BlueFuzz, align 4, !tbaa !108
  %16 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %BlueFuzz4 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %16, i32 0, i32 10
  %17 = load i32, i32* %BlueFuzz4, align 4, !tbaa !108
  %cmp5 = icmp ne i32 %15, %17
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %BlueScale = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %18, i32 0, i32 11
  %19 = load float, float* %BlueScale, align 4, !tbaa !109
  %20 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %BlueScale8 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %20, i32 0, i32 11
  %21 = load float, float* %BlueScale8, align 4, !tbaa !109
  %cmp9 = fcmp une float %19, %21
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %22 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %BlueShift = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %22, i32 0, i32 12
  %23 = load float, float* %BlueShift, align 4, !tbaa !110
  %24 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %BlueShift12 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %24, i32 0, i32 12
  %25 = load float, float* %BlueShift12, align 4, !tbaa !110
  %cmp13 = fcmp une float %23, %25
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  %26 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %ExpansionFactor = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %26, i32 0, i32 14
  %27 = load float, float* %ExpansionFactor, align 4, !tbaa !111
  %28 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %ExpansionFactor16 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %28, i32 0, i32 14
  %29 = load float, float* %ExpansionFactor16, align 4, !tbaa !111
  %cmp17 = fcmp une float %27, %29
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %30 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %ForceBold = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %30, i32 0, i32 15
  %31 = load i32, i32* %ForceBold, align 4, !tbaa !112
  %32 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %ForceBold20 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %32, i32 0, i32 15
  %33 = load i32, i32* %ForceBold20, align 4, !tbaa !112
  %cmp21 = icmp ne i32 %31, %33
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.19
  %34 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %FamilyBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %34, i32 0, i32 16
  %values = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues, i32 0, i32 1
  %arraydecay = getelementptr inbounds [14 x float], [14 x float]* %values, i32 0, i32 0
  %35 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %FamilyBlues24 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %35, i32 0, i32 16
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues24, i32 0, i32 0
  %36 = load i32, i32* %count, align 4, !tbaa !113
  %37 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %FamilyBlues25 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %37, i32 0, i32 16
  %values26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues25, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [14 x float], [14 x float]* %values26, i32 0, i32 0
  %38 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %FamilyBlues28 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %38, i32 0, i32 16
  %count29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues28, i32 0, i32 0
  %39 = load i32, i32* %count29, align 4, !tbaa !113
  %call = call i32 @compare_arrays(float* %arraydecay, i32 %36, float* %arraydecay27, i32 %39) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.23
  %40 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %FamilyOtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %40, i32 0, i32 17
  %values32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues, i32 0, i32 1
  %arraydecay33 = getelementptr inbounds [10 x float], [10 x float]* %values32, i32 0, i32 0
  %41 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %FamilyOtherBlues34 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %41, i32 0, i32 17
  %count35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues34, i32 0, i32 0
  %42 = load i32, i32* %count35, align 4, !tbaa !114
  %43 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %FamilyOtherBlues36 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %43, i32 0, i32 17
  %values37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues36, i32 0, i32 1
  %arraydecay38 = getelementptr inbounds [10 x float], [10 x float]* %values37, i32 0, i32 0
  %44 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %FamilyOtherBlues39 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %44, i32 0, i32 17
  %count40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues39, i32 0, i32 0
  %45 = load i32, i32* %count40, align 4, !tbaa !114
  %call41 = call i32 @compare_arrays(float* %arraydecay33, i32 %42, float* %arraydecay38, i32 %45) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.31
  %46 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %LanguageGroup = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %46, i32 0, i32 18
  %47 = load i32, i32* %LanguageGroup, align 4, !tbaa !115
  %48 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %LanguageGroup45 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %48, i32 0, i32 18
  %49 = load i32, i32* %LanguageGroup45, align 4, !tbaa !115
  %cmp46 = icmp ne i32 %47, %49
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.44
  %50 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %OtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %50, i32 0, i32 19
  %values49 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues, i32 0, i32 1
  %arraydecay50 = getelementptr inbounds [10 x float], [10 x float]* %values49, i32 0, i32 0
  %51 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %OtherBlues51 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %51, i32 0, i32 19
  %count52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues51, i32 0, i32 0
  %52 = load i32, i32* %count52, align 4, !tbaa !116
  %53 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %OtherBlues53 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %53, i32 0, i32 19
  %values54 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues53, i32 0, i32 1
  %arraydecay55 = getelementptr inbounds [10 x float], [10 x float]* %values54, i32 0, i32 0
  %54 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %OtherBlues56 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %54, i32 0, i32 19
  %count57 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues56, i32 0, i32 0
  %55 = load i32, i32* %count57, align 4, !tbaa !116
  %call58 = call i32 @compare_arrays(float* %arraydecay50, i32 %52, float* %arraydecay55, i32 %55) #6
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.48
  %56 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %RndStemUp = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %56, i32 0, i32 20
  %57 = load i32, i32* %RndStemUp, align 4, !tbaa !117
  %58 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %RndStemUp62 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %58, i32 0, i32 20
  %59 = load i32, i32* %RndStemUp62, align 4, !tbaa !117
  %cmp63 = icmp ne i32 %57, %59
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.end.61
  %60 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StdHW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %60, i32 0, i32 21
  %values66 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW, i32 0, i32 1
  %arraydecay67 = getelementptr inbounds [1 x float], [1 x float]* %values66, i32 0, i32 0
  %61 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StdHW68 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %61, i32 0, i32 21
  %count69 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW68, i32 0, i32 0
  %62 = load i32, i32* %count69, align 4, !tbaa !118
  %63 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StdHW70 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %63, i32 0, i32 21
  %values71 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW70, i32 0, i32 1
  %arraydecay72 = getelementptr inbounds [1 x float], [1 x float]* %values71, i32 0, i32 0
  %64 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StdHW73 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %64, i32 0, i32 21
  %count74 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW73, i32 0, i32 0
  %65 = load i32, i32* %count74, align 4, !tbaa !118
  %call75 = call i32 @compare_arrays(float* %arraydecay67, i32 %62, float* %arraydecay72, i32 %65) #6
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.65
  %66 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StemSnapH = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %66, i32 0, i32 23
  %values79 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH, i32 0, i32 1
  %arraydecay80 = getelementptr inbounds [12 x float], [12 x float]* %values79, i32 0, i32 0
  %67 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StemSnapH81 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %67, i32 0, i32 23
  %count82 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH81, i32 0, i32 0
  %68 = load i32, i32* %count82, align 4, !tbaa !119
  %69 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StemSnapH83 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %69, i32 0, i32 23
  %values84 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH83, i32 0, i32 1
  %arraydecay85 = getelementptr inbounds [12 x float], [12 x float]* %values84, i32 0, i32 0
  %70 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StemSnapH86 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %70, i32 0, i32 23
  %count87 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH86, i32 0, i32 0
  %71 = load i32, i32* %count87, align 4, !tbaa !119
  %call88 = call i32 @compare_arrays(float* %arraydecay80, i32 %68, float* %arraydecay85, i32 %71) #6
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %if.end.78
  %72 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StemSnapV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %72, i32 0, i32 24
  %values92 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV, i32 0, i32 1
  %arraydecay93 = getelementptr inbounds [12 x float], [12 x float]* %values92, i32 0, i32 0
  %73 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %StemSnapV94 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %73, i32 0, i32 24
  %count95 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV94, i32 0, i32 0
  %74 = load i32, i32* %count95, align 4, !tbaa !120
  %75 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StemSnapV96 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %75, i32 0, i32 24
  %values97 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV96, i32 0, i32 1
  %arraydecay98 = getelementptr inbounds [12 x float], [12 x float]* %values97, i32 0, i32 0
  %76 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %StemSnapV99 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %76, i32 0, i32 24
  %count100 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV99, i32 0, i32 0
  %77 = load i32, i32* %count100, align 4, !tbaa !120
  %call101 = call i32 @compare_arrays(float* %arraydecay93, i32 %74, float* %arraydecay98, i32 %77) #6
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %if.end.91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %if.end.91
  %78 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %78, i32 0, i32 25
  %values105 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector, i32 0, i32 1
  %arraydecay106 = getelementptr inbounds [16 x float], [16 x float]* %values105, i32 0, i32 0
  %79 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %WeightVector107 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %79, i32 0, i32 25
  %count108 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector107, i32 0, i32 0
  %80 = load i32, i32* %count108, align 4, !tbaa !121
  %81 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %WeightVector109 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %81, i32 0, i32 25
  %values110 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector109, i32 0, i32 1
  %arraydecay111 = getelementptr inbounds [16 x float], [16 x float]* %values110, i32 0, i32 0
  %82 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %WeightVector112 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %82, i32 0, i32 25
  %count113 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector112, i32 0, i32 0
  %83 = load i32, i32* %count113, align 4, !tbaa !121
  %call114 = call i32 @compare_arrays(float* %arraydecay106, i32 %80, float* %arraydecay111, i32 %83) #6
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.end.104
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %if.end.104
  %84 = load i32*, i32** %hash0, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp118 = icmp eq i32 %85, 0
  br i1 %cmp118, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %if.end.117
  %86 = load i32*, i32** %hash0, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %86, i64 1
  %87 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  %cmp120 = icmp eq i32 %87, 0
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.128

land.lhs.true.121:                                ; preds = %land.lhs.true
  %88 = load i32*, i32** %hash0, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %88, i64 2
  %89 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %89, 0
  br i1 %cmp123, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %land.lhs.true.121
  %90 = load i32*, i32** %hash0, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %90, i64 3
  %91 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %91, 0
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.124
  %92 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %cfont.addr, align 8, !tbaa !1
  call void @hash_subrs(%struct.gs_font_type1_s* %92) #6
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.124, %land.lhs.true.121, %land.lhs.true, %if.end.117
  %93 = load i32*, i32** %hash1, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %cmp130 = icmp eq i32 %94, 0
  br i1 %cmp130, label %land.lhs.true.131, label %if.end.141

land.lhs.true.131:                                ; preds = %if.end.128
  %95 = load i32*, i32** %hash1, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %95, i64 1
  %96 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %96, 0
  br i1 %cmp133, label %land.lhs.true.134, label %if.end.141

land.lhs.true.134:                                ; preds = %land.lhs.true.131
  %97 = load i32*, i32** %hash1, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %97, i64 2
  %98 = load i32, i32* %arrayidx135, align 4, !tbaa !5
  %cmp136 = icmp eq i32 %98, 0
  br i1 %cmp136, label %land.lhs.true.137, label %if.end.141

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %99 = load i32*, i32** %hash1, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i32, i32* %99, i64 3
  %100 = load i32, i32* %arrayidx138, align 4, !tbaa !5
  %cmp139 = icmp eq i32 %100, 0
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %land.lhs.true.137
  %101 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %ofont.addr, align 8, !tbaa !1
  call void @hash_subrs(%struct.gs_font_type1_s* %101) #6
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %land.lhs.true.137, %land.lhs.true.134, %land.lhs.true.131, %if.end.128
  %102 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %hash_subrs142 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %102, i32 0, i32 26
  %arraydecay143 = getelementptr inbounds [16 x i8], [16 x i8]* %hash_subrs142, i32 0, i32 0
  %103 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %hash_subrs144 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %103, i32 0, i32 26
  %arraydecay145 = getelementptr inbounds [16 x i8], [16 x i8]* %hash_subrs144, i32 0, i32 0
  %call146 = call i32 @memcmp(i8* %arraydecay143, i8* %arraydecay145, i64 16) #8
  %cmp147 = icmp ne i32 %call146, 0
  br i1 %cmp147, label %if.then.150, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.141
  %104 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %num_subrs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %104, i32 0, i32 27
  %105 = load i32, i32* %num_subrs, align 4, !tbaa !122
  %106 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d1, align 8, !tbaa !1
  %num_subrs148 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %106, i32 0, i32 27
  %107 = load i32, i32* %num_subrs148, align 4, !tbaa !122
  %cmp149 = icmp ne i32 %105, %107
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %lor.lhs.false, %if.end.141
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.151, %if.then.150, %if.then.116, %if.then.103, %if.then.90, %if.then.77, %if.then.64, %if.then.60, %if.then.47, %if.then.43, %if.then.30, %if.then.22, %if.then.18, %if.then.14, %if.then.10, %if.then.6, %if.then
  %108 = bitcast i32** %hash1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32** %hash0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.gs_type1_data_s** %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.gs_type1_data_s** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @same_type42_hinting(%struct.gs_font_type42_s* %font0, %struct.gs_font_type42_s* %font1) #0 {
entry:
  %retval = alloca i32, align 4
  %font0.addr = alloca %struct.gs_font_type42_s*, align 8
  %font1.addr = alloca %struct.gs_font_type42_s*, align 8
  %d0 = alloca %struct.gs_type42_data_s*, align 8
  %d1 = alloca %struct.gs_type42_data_s*, align 8
  %font = alloca [2 x %struct.gs_font_type42_s*], align 16
  %pos = alloca [2 x [3 x i32]], align 16
  %len = alloca [2 x [3 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %OffsetTable = alloca i8*, align 8
  %numTables = alloca i32, align 4
  %tab = alloca i8*, align 8
  %start = alloca i64, align 8
  %length = alloca i32, align 4
  %data0 = alloca i8*, align 8
  %data195 = alloca i8*, align 8
  %length96 = alloca i64, align 8
  %size0 = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size = alloca i64, align 8
  %pos0 = alloca i64, align 8
  %pos1 = alloca i64, align 8
  store %struct.gs_font_type42_s* %font0, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %font1, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type42_data_s** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  store %struct.gs_type42_data_s* %data, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %2 = bitcast %struct.gs_type42_data_s** %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %3, i32 0, i32 29
  store %struct.gs_type42_data_s* %data1, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %4 = bitcast [2 x %struct.gs_font_type42_s*]* %font to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast [2 x [3 x i32]]* %pos to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast [2 x [3 x i32]]* %len to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast [2 x [3 x i32]]* %len to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 16, i1 false)
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %11, i32 0, i32 8
  %12 = load i32, i32* %unitsPerEm, align 4, !tbaa !123
  %13 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %unitsPerEm2 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %13, i32 0, i32 8
  %14 = load i32, i32* %unitsPerEm2, align 4, !tbaa !123
  %cmp = icmp ne i32 %12, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_font_type42_s*], [2 x %struct.gs_font_type42_s*]* %font, i32 0, i64 0
  store %struct.gs_font_type42_s* %15, %struct.gs_font_type42_s** %arrayidx, align 8, !tbaa !1
  %16 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [2 x %struct.gs_font_type42_s*], [2 x %struct.gs_font_type42_s*]* %font, i32 0, i64 1
  store %struct.gs_font_type42_s* %16, %struct.gs_font_type42_s** %arrayidx3, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i32 0
  %17 = bitcast [3 x i32]* %arraydecay to i8*
  %call = call i8* @memset(i8* %17, i32 0, i64 24) #7
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.end
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %18, 2
  br i1 %cmp4, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %19 = bitcast i8** %OffsetTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %arrayidx5 = getelementptr inbounds [2 x %struct.gs_font_type42_s*], [2 x %struct.gs_font_type42_s*]* %font, i32 0, i64 %idxprom
  %22 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %arrayidx5, align 8, !tbaa !1
  %call6 = call i32 @access_type42_data(%struct.gs_font_type42_s* %22, i64 0, i64 12, i8** %OffsetTable) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %23, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.9:                                         ; preds = %for.body
  %25 = load i8*, i8** %OffsetTable, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 4
  %call10 = call i32 @U16(i8* %add.ptr) #6
  store i32 %call10, i32* %numTables, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end.9
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp12 = icmp ult i32 %26, %27
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %28 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %31 to i64
  %arrayidx15 = getelementptr inbounds [2 x %struct.gs_font_type42_s*], [2 x %struct.gs_font_type42_s*]* %font, i32 0, i64 %idxprom14
  %32 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %arrayidx15, align 8, !tbaa !1
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %33, 16
  %add = add nsw i32 12, %mul
  %conv = sext i32 %add to i64
  %call16 = call i32 @access_type42_data(%struct.gs_font_type42_s* %32, i64 %conv, i64 16, i8** %tab) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %34, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.13
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %for.body.13
  %36 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %36, i64 8
  %call22 = call i64 @get_u32_msb(i8* %add.ptr21) #6
  store i64 %call22, i64* %start, align 8, !tbaa !82
  %37 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %37, i64 12
  %call24 = call i64 @get_u32_msb(i8* %add.ptr23) #6
  %conv25 = trunc i64 %call24 to i32
  store i32 %conv25, i32* %length, align 4, !tbaa !5
  %38 = load i8*, i8** %tab, align 8, !tbaa !1
  %call26 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* %38, i64 4) #8
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %if.end.20
  %39 = load i64, i64* %start, align 8, !tbaa !82
  %conv28 = trunc i64 %39 to i32
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx30, i32 0, i64 0
  store i32 %conv28, i32* %arrayidx31, align 4, !tbaa !5
  %41 = load i32, i32* %length, align 4, !tbaa !5
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %42 to i64
  %arrayidx33 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 0
  store i32 %41, i32* %arrayidx34, align 4, !tbaa !5
  br label %if.end.58

if.else:                                          ; preds = %if.end.20
  %43 = load i8*, i8** %tab, align 8, !tbaa !1
  %call35 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* %43, i64 4) #8
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.45, label %if.then.37

if.then.37:                                       ; preds = %if.else
  %44 = load i64, i64* %start, align 8, !tbaa !82
  %conv38 = trunc i64 %44 to i32
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %45 to i64
  %arrayidx40 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 1
  store i32 %conv38, i32* %arrayidx41, align 4, !tbaa !5
  %46 = load i32, i32* %length, align 4, !tbaa !5
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx43, i32 0, i64 1
  store i32 %46, i32* %arrayidx44, align 4, !tbaa !5
  br label %if.end.57

if.else.45:                                       ; preds = %if.else
  %48 = load i8*, i8** %tab, align 8, !tbaa !1
  %call46 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* %48, i64 4) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.56, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  %49 = load i64, i64* %start, align 8, !tbaa !82
  %conv49 = trunc i64 %49 to i32
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 2
  store i32 %conv49, i32* %arrayidx52, align 4, !tbaa !5
  %51 = load i32, i32* %length, align 4, !tbaa !5
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx54, i32 0, i64 2
  store i32 %51, i32* %arrayidx55, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.48, %if.else.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.37
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.19
  %53 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i64* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %for.end, %cleanup, %if.then.8
  %57 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i8** %OffsetTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.157 [
    i32 0, label %cleanup.cont.64
  ]

cleanup.cont.64:                                  ; preds = %cleanup.61
  br label %for.inc.65

for.inc.65:                                       ; preds = %cleanup.cont.64
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.82, %for.end.67
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %60, 3
  br i1 %cmp69, label %for.body.71, label %for.end.84

for.body.71:                                      ; preds = %for.cond.68
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %61 to i64
  %arrayidx73 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx73, i32 0, i64 %idxprom72
  %62 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %63 to i64
  %arrayidx76 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx76, i32 0, i64 %idxprom75
  %64 = load i32, i32* %arrayidx77, align 4, !tbaa !5
  %cmp78 = icmp ne i32 %62, %64
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

if.end.81:                                        ; preds = %for.body.71
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %inc83 = add nsw i32 %65, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !5
  br label %for.cond.68

for.end.84:                                       ; preds = %for.cond.68
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.154, %for.end.84
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %66, 3
  br i1 %cmp86, label %for.body.88, label %for.end.156

for.body.88:                                      ; preds = %for.cond.85
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 0
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx90, i32 0, i64 %idxprom89
  %68 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %cmp92 = icmp ne i32 %68, 0
  br i1 %cmp92, label %if.then.94, label %if.end.153

if.then.94:                                       ; preds = %for.body.88
  %69 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = bitcast i8** %data195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = bitcast i64* %length96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %len, i32 0, i64 0
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx98, i32 0, i64 %idxprom97
  %73 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %conv100 = zext i32 %73 to i64
  store i64 %conv100, i64* %length96, align 8, !tbaa !82
  %74 = bitcast i64* %size0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i64* %size1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = bitcast i64* %pos0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %78 to i64
  %arrayidx102 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i64 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 %idxprom101
  %79 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %conv104 = zext i32 %79 to i64
  store i64 %conv104, i64* %pos0, align 8, !tbaa !82
  %80 = bitcast i64* %pos1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %81 to i64
  %arrayidx106 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %pos, i32 0, i64 1
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx106, i32 0, i64 %idxprom105
  %82 = load i32, i32* %arrayidx107, align 4, !tbaa !5
  %conv108 = zext i32 %82 to i64
  store i64 %conv108, i64* %pos1, align 8, !tbaa !82
  br label %while.cond

while.cond:                                       ; preds = %if.end.140, %if.then.94
  %83 = load i64, i64* %length96, align 8, !tbaa !82
  %cmp109 = icmp ugt i64 %83, 0
  br i1 %cmp109, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %84 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  %85 = load i64, i64* %pos0, align 8, !tbaa !82
  %86 = load i64, i64* %length96, align 8, !tbaa !82
  %call111 = call i32 @access_type42_data(%struct.gs_font_type42_s* %84, i64 %85, i64 %86, i8** %data0) #6
  store i32 %call111, i32* %code, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %87, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %while.body
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.115:                                       ; preds = %while.body
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %89, 0
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.115
  %90 = load i64, i64* %length96, align 8, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %if.end.115
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %conv118 = sext i32 %91 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %90, %cond.true ], [ %conv118, %cond.false ]
  store i64 %cond, i64* %size0, align 8, !tbaa !82
  %92 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %93 = load i64, i64* %pos1, align 8, !tbaa !82
  %94 = load i64, i64* %length96, align 8, !tbaa !82
  %call119 = call i32 @access_type42_data(%struct.gs_font_type42_s* %92, i64 %93, i64 %94, i8** %data195) #6
  store i32 %call119, i32* %code, align 4, !tbaa !5
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %95, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %cond.end
  %96 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.123:                                       ; preds = %cond.end
  %97 = load i32, i32* %code, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %97, 0
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %if.end.123
  %98 = load i64, i64* %length96, align 8, !tbaa !82
  br label %cond.end.129

cond.false.127:                                   ; preds = %if.end.123
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %conv128 = sext i32 %99 to i64
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.126
  %cond130 = phi i64 [ %98, %cond.true.126 ], [ %conv128, %cond.false.127 ]
  store i64 %cond130, i64* %size1, align 8, !tbaa !82
  %100 = load i64, i64* %size0, align 8, !tbaa !82
  %101 = load i64, i64* %size1, align 8, !tbaa !82
  %cmp131 = icmp ult i64 %100, %101
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.end.129
  %102 = load i64, i64* %size0, align 8, !tbaa !82
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.end.129
  %103 = load i64, i64* %size1, align 8, !tbaa !82
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i64 [ %102, %cond.true.133 ], [ %103, %cond.false.134 ]
  store i64 %cond136, i64* %size, align 8, !tbaa !82
  %104 = load i8*, i8** %data0, align 8, !tbaa !1
  %105 = load i8*, i8** %data195, align 8, !tbaa !1
  %106 = load i64, i64* %size, align 8, !tbaa !82
  %call137 = call i32 @memcmp(i8* %104, i8* %105, i64 %106) #8
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %cond.end.135
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.140:                                       ; preds = %cond.end.135
  %107 = load i64, i64* %size, align 8, !tbaa !82
  %108 = load i64, i64* %pos0, align 8, !tbaa !82
  %add141 = add i64 %108, %107
  store i64 %add141, i64* %pos0, align 8, !tbaa !82
  %109 = load i64, i64* %size, align 8, !tbaa !82
  %110 = load i64, i64* %pos1, align 8, !tbaa !82
  %add142 = add i64 %110, %109
  store i64 %add142, i64* %pos1, align 8, !tbaa !82
  %111 = load i64, i64* %size, align 8, !tbaa !82
  %112 = load i64, i64* %length96, align 8, !tbaa !82
  %sub = sub i64 %112, %111
  store i64 %sub, i64* %length96, align 8, !tbaa !82
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.143

cleanup.143:                                      ; preds = %while.end, %if.then.139, %if.then.122, %if.then.114
  %113 = bitcast i64* %pos1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i64* %pos0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i64* %size1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i64* %size0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i64* %length96 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %data195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i8** %data0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %cleanup.157 [
    i32 0, label %cleanup.cont.152
  ]

cleanup.cont.152:                                 ; preds = %cleanup.143
  br label %if.end.153

if.end.153:                                       ; preds = %cleanup.cont.152, %for.body.88
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %inc155 = add nsw i32 %121, 1
  store i32 %inc155, i32* %i, align 4, !tbaa !5
  br label %for.cond.85

for.end.156:                                      ; preds = %for.cond.85
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %for.end.156, %cleanup.143, %if.then.80, %cleanup.61, %if.then
  %122 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast [2 x [3 x i32]]* %len to i8*
  call void @llvm.lifetime.end(i64 24, i8* %125) #1
  %126 = bitcast [2 x [3 x i32]]* %pos to i8*
  call void @llvm.lifetime.end(i64 24, i8* %126) #1
  %127 = bitcast [2 x %struct.gs_font_type42_s*]* %font to i8*
  call void @llvm.lifetime.end(i64 16, i8* %127) #1
  %128 = bitcast %struct.gs_type42_data_s** %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.gs_type42_data_s** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal i32 @same_maxp_values(%struct.gs_font_type42_s* %font0, %struct.gs_font_type42_s* %font1) #0 {
entry:
  %retval = alloca i32, align 4
  %font0.addr = alloca %struct.gs_font_type42_s*, align 8
  %font1.addr = alloca %struct.gs_font_type42_s*, align 8
  %d0 = alloca %struct.gs_type42_data_s*, align 8
  %d1 = alloca %struct.gs_type42_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %font0, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %font1, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type42_data_s** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  store %struct.gs_type42_data_s* %data, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %2 = bitcast %struct.gs_type42_data_s** %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %3, i32 0, i32 29
  store %struct.gs_type42_data_s* %data1, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %4 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %maxPoints = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %4, i32 0, i32 16
  %5 = load i32, i32* %maxPoints, align 4, !tbaa !124
  %6 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %maxPoints2 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %6, i32 0, i32 16
  %7 = load i32, i32* %maxPoints2, align 4, !tbaa !124
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %maxContours = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %8, i32 0, i32 17
  %9 = load i32, i32* %maxContours, align 4, !tbaa !125
  %10 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %maxContours3 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %10, i32 0, i32 17
  %11 = load i32, i32* %maxContours3, align 4, !tbaa !125
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %maxCPoints = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %12, i32 0, i32 18
  %13 = load i32, i32* %maxCPoints, align 4, !tbaa !126
  %14 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %maxCPoints7 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %14, i32 0, i32 18
  %15 = load i32, i32* %maxCPoints7, align 4, !tbaa !126
  %cmp8 = icmp ult i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %16 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d0, align 8, !tbaa !1
  %maxCContours = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %16, i32 0, i32 19
  %17 = load i32, i32* %maxCContours, align 4, !tbaa !127
  %18 = load %struct.gs_type42_data_s*, %struct.gs_type42_data_s** %d1, align 8, !tbaa !1
  %maxCContours11 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %18, i32 0, i32 19
  %19 = load i32, i32* %maxCContours11, align 4, !tbaa !127
  %cmp12 = icmp ult i32 %17, %19
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.5, %if.then
  %20 = bitcast %struct.gs_type42_data_s** %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_type42_data_s** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gs_is_CIDSystemInfo_compatible(%struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s*) #2

declare %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @same_cid0_hinting(%struct.gs_font_cid0_s* %cfont, %struct.gs_font_cid0_s* %ofont) #0 {
entry:
  %retval = alloca i32, align 4
  %cfont.addr = alloca %struct.gs_font_cid0_s*, align 8
  %ofont.addr = alloca %struct.gs_font_cid0_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %subfont0 = alloca %struct.gs_font_type1_s*, align 8
  %subfont1 = alloca %struct.gs_font_type1_s*, align 8
  store %struct.gs_font_cid0_s* %cfont, %struct.gs_font_cid0_s** %cfont.addr, align 8, !tbaa !1
  store %struct.gs_font_cid0_s* %ofont, %struct.gs_font_cid0_s** %ofont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %cfont.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %1, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %2 = load i32, i32* %FDArray_size, align 4, !tbaa !128
  %3 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %ofont.addr, align 8, !tbaa !1
  %cidata1 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %3, i32 0, i32 29
  %FDArray_size2 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata1, i32 0, i32 3
  %4 = load i32, i32* %FDArray_size2, align 4, !tbaa !128
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %cfont.addr, align 8, !tbaa !1
  %cidata3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %6, i32 0, i32 29
  %FDArray_size4 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata3, i32 0, i32 3
  %7 = load i32, i32* %FDArray_size4, align 4, !tbaa !128
  %cmp5 = icmp ult i32 %5, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.gs_font_type1_s** %subfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %cfont.addr, align 8, !tbaa !1
  %cidata6 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %10, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata6, i32 0, i32 2
  %11 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !129
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %11, i64 %idxprom
  %12 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %12, %struct.gs_font_type1_s** %subfont0, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %ofont.addr, align 8, !tbaa !1
  %cidata8 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %FDArray9 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata8, i32 0, i32 2
  %16 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray9, align 8, !tbaa !129
  %arrayidx10 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %16, i64 %idxprom7
  %17 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx10, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %17, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont0, align 8, !tbaa !1
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %call = call i32 @same_type1_hinting(%struct.gs_font_type1_s* %18, %struct.gs_font_type1_s* %19) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %20 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_font_type1_s** %subfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

cleanup.14:                                       ; preds = %for.end, %cleanup, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @same_cid2_hinting(%struct.gs_font_cid2_s* %cfont, %struct.gs_font_cid2_s* %ofont) #0 {
entry:
  %cfont.addr = alloca %struct.gs_font_cid2_s*, align 8
  %ofont.addr = alloca %struct.gs_font_cid2_s*, align 8
  store %struct.gs_font_cid2_s* %cfont, %struct.gs_font_cid2_s** %cfont.addr, align 8, !tbaa !1
  store %struct.gs_font_cid2_s* %ofont, %struct.gs_font_cid2_s** %ofont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %cfont.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_font_cid2_s* %0 to %struct.gs_font_type42_s*
  %2 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %ofont.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_cid2_s* %2 to %struct.gs_font_type42_s*
  %call = call i32 @same_type42_hinting(%struct.gs_font_type42_s* %1, %struct.gs_font_type42_s* %3) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_glyphs(%struct.gs_font_s* %cfont, %struct.gs_font_s* %ofont, i64* %glyphs, i32 %num_glyphs, i32 %glyphs_step, i32 %level) #0 {
entry:
  %retval = alloca i32, align 4
  %cfont.addr = alloca %struct.gs_font_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %glyphs.addr = alloca i64*, align 8
  %num_glyphs.addr = alloca i32, align 4
  %glyphs_step.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %WMode = alloca i32, align 4
  %members = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %num_new_glyphs = alloca i32, align 4
  %glyph = alloca i64, align 8
  %pieces0 = alloca [40 x i64], align 16
  %pieces = alloca i64*, align 8
  %info0 = alloca %struct.gs_glyph_info_s, align 8
  %info1 = alloca %struct.gs_glyph_info_s, align 8
  %code0 = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %gdata0 = alloca %struct.gs_glyph_data_s, align 8
  %gdata1 = alloca %struct.gs_glyph_data_s, align 8
  %font0 = alloca %struct.gs_font_type1_s*, align 8
  %font1 = alloca %struct.gs_font_type1_s*, align 8
  %font0155 = alloca %struct.gs_font_type42_s*, align 8
  %font1156 = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index0 = alloca i32, align 4
  %glyph_index1 = alloca i32, align 4
  %font0172 = alloca %struct.gs_font_cid0_s*, align 8
  %font1173 = alloca %struct.gs_font_cid0_s*, align 8
  %fidx0 = alloca i32, align 4
  %fidx1 = alloca i32, align 4
  store %struct.gs_font_s* %cfont, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  store i32 %glyphs_step, i32* %glyphs_step.addr, align 4, !tbaa !5
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %WMode1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 16
  %3 = load i32, i32* %WMode1, align 4, !tbaa !101
  store i32 %3, i32* %WMode, align 4, !tbaa !5
  %4 = bitcast i32* %members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %WMode, align 4, !tbaa !5
  %shl = shl i32 1, %5
  %or = or i32 %shl, 32
  %or2 = or i32 %or, 8
  store i32 %or2, i32* %members, align 4, !tbaa !5
  %6 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %8) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %9 = bitcast i32* %num_new_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %num_new_glyphs, align 4, !tbaa !5
  call void @gs_make_identity(%struct.gs_matrix_s* %mat) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %14 = bitcast i64* %13 to i8*
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %glyphs_step.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %17 = bitcast i8* %add.ptr to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !82
  store i64 %18, i64* %glyph, align 8, !tbaa !82
  %19 = bitcast [40 x i64]* %pieces0 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %19) #1
  %20 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %arraydecay = getelementptr inbounds [40 x i64], [40 x i64]* %pieces0, i32 0, i32 0
  store i64* %arraydecay, i64** %pieces, align 8, !tbaa !1
  %21 = bitcast %struct.gs_glyph_info_s* %info0 to i8*
  call void @llvm.lifetime.start(i64 104, i8* %21) #1
  %22 = bitcast %struct.gs_glyph_info_s* %info1 to i8*
  call void @llvm.lifetime.start(i64 104, i8* %22) #1
  %23 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %25 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !61
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %27 = load i64, i64* %glyph, align 8, !tbaa !82
  %28 = load i32, i32* %members, align 4, !tbaa !5
  %call3 = call i32 %25(%struct.gs_font_s* %26, i64 %27, %struct.gs_matrix_s* %mat, i32 %28, %struct.gs_glyph_info_s* %info0) #6
  store i32 %call3, i32* %code0, align 4, !tbaa !5
  %29 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 20
  %glyph_info5 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs4, i32 0, i32 7
  %31 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info5, align 8, !tbaa !61
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %33 = load i64, i64* %glyph, align 8, !tbaa !82
  %34 = load i32, i32* %members, align 4, !tbaa !5
  %call6 = call i32 %31(%struct.gs_font_s* %32, i64 %33, %struct.gs_matrix_s* %mat, i32 %34, %struct.gs_glyph_info_s* %info1) #6
  store i32 %call6, i32* %code1, align 4, !tbaa !5
  %35 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %37, -21
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end:                                           ; preds = %for.body
  %38 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %38, -21
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %39 = load i32, i32* %num_new_glyphs, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %num_new_glyphs, align 4, !tbaa !5
  %40 = load i32, i32* %num_new_glyphs, align 4, !tbaa !5
  %41 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %41, i32 0, i32 3
  %42 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %43 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %num_glyphs10 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %43, i32 0, i32 4
  %44 = load i32, i32* %num_glyphs10, align 4, !tbaa !71
  %sub = sub i32 %42, %44
  %cmp11 = icmp ugt i32 %40, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.13:                                        ; preds = %if.then.9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.14:                                        ; preds = %if.end
  %45 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %45, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %46 = load i32, i32* %code0, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.17:                                        ; preds = %if.end.14
  %47 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %47, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %48 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.20:                                        ; preds = %if.end.17
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %49 = load i32, i32* %num_pieces, align 4, !tbaa !130
  %num_pieces21 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 4
  %50 = load i32, i32* %num_pieces21, align 4, !tbaa !130
  %cmp22 = icmp ne i32 %49, %50
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.24:                                        ; preds = %if.end.20
  %51 = load i32, i32* %WMode, align 4, !tbaa !5
  %idxprom = sext i32 %51 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %52 = load double, double* %x, align 8, !tbaa !132
  %53 = load i32, i32* %WMode, align 4, !tbaa !5
  %idxprom25 = sext i32 %53 to i64
  %width26 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width26, i32 0, i64 %idxprom25
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx27, i32 0, i32 0
  %54 = load double, double* %x28, align 8, !tbaa !132
  %cmp29 = fcmp une double %52, %54
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %55 = load i32, i32* %WMode, align 4, !tbaa !5
  %idxprom30 = sext i32 %55 to i64
  %width31 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width31, i32 0, i64 %idxprom30
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx32, i32 0, i32 1
  %56 = load double, double* %y, align 8, !tbaa !133
  %57 = load i32, i32* %WMode, align 4, !tbaa !5
  %idxprom33 = sext i32 %57 to i64
  %width34 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width34, i32 0, i64 %idxprom33
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx35, i32 0, i32 1
  %58 = load double, double* %y36, align 8, !tbaa !133
  %cmp37 = fcmp une double %56, %58
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.39:                                        ; preds = %lor.lhs.false
  %59 = load i32, i32* %WMode, align 4, !tbaa !5
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.39
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 2
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %60 = load double, double* %x40, align 8, !tbaa !134
  %v41 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 2
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v41, i32 0, i32 0
  %61 = load double, double* %x42, align 8, !tbaa !134
  %cmp43 = fcmp une double %60, %61
  br i1 %cmp43, label %if.then.50, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %land.lhs.true
  %v45 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 2
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v45, i32 0, i32 1
  %62 = load double, double* %y46, align 8, !tbaa !135
  %v47 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 2
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v47, i32 0, i32 1
  %63 = load double, double* %y48, align 8, !tbaa !135
  %cmp49 = fcmp une double %62, %63
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.44, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.51:                                        ; preds = %lor.lhs.false.44, %if.end.39
  %num_pieces52 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %64 = load i32, i32* %num_pieces52, align 4, !tbaa !130
  %cmp53 = icmp sgt i32 %64, 0
  br i1 %cmp53, label %if.then.54, label %if.else.143

if.then.54:                                       ; preds = %if.end.51
  %65 = load i32, i32* %level.addr, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %65, 5
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.54
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.57:                                        ; preds = %if.then.54
  %num_pieces58 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %66 = load i32, i32* %num_pieces58, align 4, !tbaa !130
  %conv = sext i32 %66 to i64
  %cmp59 = icmp ugt i64 %conv, 20
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %if.end.57
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 2
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 7
  %69 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !136
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %70, i32 0, i32 2
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !7
  %num_pieces64 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %72 = load i32, i32* %num_pieces64, align 4, !tbaa !130
  %conv65 = sext i32 %72 to i64
  %mul66 = mul i64 8, %conv65
  %mul67 = mul i64 %mul66, 2
  %conv68 = trunc i64 %mul67 to i32
  %call69 = call i8* %69(%struct.gs_memory_s* %71, i32 %conv68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  %73 = bitcast i8* %call69 to i64*
  store i64* %73, i64** %pieces, align 8, !tbaa !1
  %74 = load i64*, i64** %pieces, align 8, !tbaa !1
  %cmp70 = icmp eq i64* %74, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.61
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.73:                                        ; preds = %if.then.61
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.57
  %75 = load i64*, i64** %pieces, align 8, !tbaa !1
  %pieces75 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 5
  store i64* %75, i64** %pieces75, align 8, !tbaa !137
  %76 = load i64*, i64** %pieces, align 8, !tbaa !1
  %num_pieces76 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %77 = load i32, i32* %num_pieces76, align 4, !tbaa !130
  %idx.ext77 = sext i32 %77 to i64
  %add.ptr78 = getelementptr inbounds i64, i64* %76, i64 %idx.ext77
  %pieces79 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 5
  store i64* %add.ptr78, i64** %pieces79, align 8, !tbaa !137
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %procs80 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %78, i32 0, i32 20
  %glyph_info81 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs80, i32 0, i32 7
  %79 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info81, align 8, !tbaa !61
  %80 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %81 = load i64, i64* %glyph, align 8, !tbaa !82
  %call82 = call i32 %79(%struct.gs_font_s* %80, i64 %81, %struct.gs_matrix_s* %mat, i32 16, %struct.gs_glyph_info_s* %info0) #6
  store i32 %call82, i32* %code0, align 4, !tbaa !5
  %82 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %82, i32 0, i32 20
  %glyph_info84 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs83, i32 0, i32 7
  %83 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info84, align 8, !tbaa !61
  %84 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %85 = load i64, i64* %glyph, align 8, !tbaa !82
  %call85 = call i32 %83(%struct.gs_font_s* %84, i64 %85, %struct.gs_matrix_s* %mat, i32 16, %struct.gs_glyph_info_s* %info1) #6
  store i32 %call85, i32* %code1, align 4, !tbaa !5
  %86 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp86 = icmp sge i32 %86, 0
  br i1 %cmp86, label %land.lhs.true.88, label %if.else.103

land.lhs.true.88:                                 ; preds = %if.end.74
  %87 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp89 = icmp sge i32 %87, 0
  br i1 %cmp89, label %if.then.91, label %if.else.103

if.then.91:                                       ; preds = %land.lhs.true.88
  %pieces92 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 5
  %88 = load i64*, i64** %pieces92, align 8, !tbaa !137
  %89 = bitcast i64* %88 to i8*
  %pieces93 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info1, i32 0, i32 5
  %90 = load i64*, i64** %pieces93, align 8, !tbaa !137
  %91 = bitcast i64* %90 to i8*
  %num_pieces94 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %92 = load i32, i32* %num_pieces94, align 4, !tbaa !130
  %conv95 = sext i32 %92 to i64
  %mul96 = mul i64 %conv95, 8
  %call97 = call i32 @memcmp(i8* %89, i8* %91, i64 %mul96) #8
  store i32 %call97, i32* %code2, align 4, !tbaa !5
  %93 = load i32, i32* %code2, align 4, !tbaa !5
  %tobool98 = icmp ne i32 %93, 0
  br i1 %tobool98, label %if.else, label %if.then.99

if.then.99:                                       ; preds = %if.then.91
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %95 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %96 = load i64*, i64** %pieces, align 8, !tbaa !1
  %num_pieces100 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info0, i32 0, i32 4
  %97 = load i32, i32* %num_pieces100, align 4, !tbaa !130
  %98 = load i32, i32* %glyphs_step.addr, align 4, !tbaa !5
  %99 = load i32, i32* %level.addr, align 4, !tbaa !5
  %add = add nsw i32 %99, 1
  %call101 = call i32 @compare_glyphs(%struct.gs_font_s* %94, %struct.gs_font_s* %95, i64* %96, i32 %97, i32 %98, i32 %add) #6
  store i32 %call101, i32* %code, align 4, !tbaa !5
  br label %if.end.102

if.else:                                          ; preds = %if.then.91
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %if.then.99
  br label %if.end.104

if.else.103:                                      ; preds = %land.lhs.true.88, %if.end.74
  store i32 0, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %code2, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.end.102
  %100 = load i64*, i64** %pieces, align 8, !tbaa !1
  %arraydecay105 = getelementptr inbounds [40 x i64], [40 x i64]* %pieces0, i32 0, i32 0
  %cmp106 = icmp ne i64* %100, %arraydecay105
  br i1 %cmp106, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.end.104
  %101 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %101, i32 0, i32 2
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !7
  %procs110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs110, i32 0, i32 2
  %103 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %104 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %memory111 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %104, i32 0, i32 2
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory111, align 8, !tbaa !7
  %106 = load i64*, i64** %pieces, align 8, !tbaa !1
  %107 = bitcast i64* %106 to i8*
  call void %103(%struct.gs_memory_s* %105, i8* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.108, %if.end.104
  %108 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %108, -21
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.116:                                       ; preds = %if.end.112
  %109 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %109, -21
  br i1 %cmp117, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %if.end.116
  %110 = load i32, i32* %num_new_glyphs, align 4, !tbaa !5
  %inc120 = add nsw i32 %110, 1
  store i32 %inc120, i32* %num_new_glyphs, align 4, !tbaa !5
  %111 = load i32, i32* %num_new_glyphs, align 4, !tbaa !5
  %112 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size121 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %112, i32 0, i32 3
  %113 = load i32, i32* %glyphs_size121, align 4, !tbaa !70
  %114 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %num_glyphs122 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %114, i32 0, i32 4
  %115 = load i32, i32* %num_glyphs122, align 4, !tbaa !71
  %sub123 = sub i32 %113, %115
  %cmp124 = icmp ugt i32 %111, %sub123
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.119
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.127:                                       ; preds = %if.then.119
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.128:                                       ; preds = %if.end.116
  %116 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %116, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  %117 = load i32, i32* %code0, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.132:                                       ; preds = %if.end.128
  %118 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %118, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  %119 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.136:                                       ; preds = %if.end.132
  %120 = load i32, i32* %code2, align 4, !tbaa !5
  %tobool137 = icmp ne i32 %120, 0
  br i1 %tobool137, label %if.then.141, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.136
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp eq i32 %121, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %lor.lhs.false.138, %if.end.136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.142:                                       ; preds = %lor.lhs.false.138
  br label %if.end.217

if.else.143:                                      ; preds = %if.end.51
  %122 = bitcast %struct.gs_glyph_data_s* %gdata0 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %122) #1
  %123 = bitcast %struct.gs_glyph_data_s* %gdata1 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %123) #1
  %124 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %124, i32 0, i32 11
  %125 = load i32, i32* %FontType, align 4, !tbaa !18
  switch i32 %125, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 42, label %sw.bb.154
    i32 11, label %sw.bb.154
    i32 9, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %if.else.143, %if.else.143
  %126 = bitcast %struct.gs_font_type1_s** %font0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  %127 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %128 = bitcast %struct.gs_font_s* %127 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %128, %struct.gs_font_type1_s** %font0, align 8, !tbaa !1
  %129 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %131 = bitcast %struct.gs_font_s* %130 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %131, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %132 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font0, align 8, !tbaa !1
  %memory144 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %132, i32 0, i32 2
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory144, align 8, !tbaa !138
  %memory145 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 3
  store %struct.gs_memory_s* %133, %struct.gs_memory_s** %memory145, align 8, !tbaa !140
  %134 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %134, i32 0, i32 2
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !138
  %memory147 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata1, i32 0, i32 3
  store %struct.gs_memory_s* %135, %struct.gs_memory_s** %memory147, align 8, !tbaa !140
  %136 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font0, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %136, i32 0, i32 29
  %procs148 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs148, i32 0, i32 0
  %137 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !143
  %138 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font0, align 8, !tbaa !1
  %139 = load i64, i64* %glyph, align 8, !tbaa !82
  %call149 = call i32 %137(%struct.gs_font_type1_s* %138, i64 %139, %struct.gs_glyph_data_s* %gdata0) #6
  store i32 %call149, i32* %code0, align 4, !tbaa !5
  %140 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %data150 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %140, i32 0, i32 29
  %procs151 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data150, i32 0, i32 0
  %glyph_data152 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs151, i32 0, i32 0
  %141 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data152, align 8, !tbaa !143
  %142 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %143 = load i64, i64* %glyph, align 8, !tbaa !82
  %call153 = call i32 %141(%struct.gs_font_type1_s* %142, i64 %143, %struct.gs_glyph_data_s* %gdata1) #6
  store i32 %call153, i32* %code1, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  %144 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct.gs_font_type1_s** %font0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  br label %sw.epilog

sw.bb.154:                                        ; preds = %if.else.143, %if.else.143
  %146 = bitcast %struct.gs_font_type42_s** %font0155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  %147 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %148 = bitcast %struct.gs_font_s* %147 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %148, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %149 = bitcast %struct.gs_font_type42_s** %font1156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  %150 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %151 = bitcast %struct.gs_font_s* %150 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %151, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %152 = bitcast i32* %glyph_index0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %data157 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %153, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data157, i32 0, i32 2
  %154 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !144
  %155 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %156 = load i64, i64* %glyph, align 8, !tbaa !82
  %call158 = call i32 %154(%struct.gs_font_type42_s* %155, i64 %156) #6
  store i32 %call158, i32* %glyph_index0, align 4, !tbaa !5
  %157 = bitcast i32* %glyph_index1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  %158 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %data159 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %158, i32 0, i32 29
  %get_glyph_index160 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data159, i32 0, i32 2
  %159 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index160, align 8, !tbaa !144
  %160 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %161 = load i64, i64* %glyph, align 8, !tbaa !82
  %call161 = call i32 %159(%struct.gs_font_type42_s* %160, i64 %161) #6
  store i32 %call161, i32* %glyph_index1, align 4, !tbaa !5
  %162 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %162, i32 0, i32 2
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory162, align 8, !tbaa !145
  %memory163 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 3
  store %struct.gs_memory_s* %163, %struct.gs_memory_s** %memory163, align 8, !tbaa !140
  %164 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %164, i32 0, i32 2
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory164, align 8, !tbaa !145
  %memory165 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata1, i32 0, i32 3
  store %struct.gs_memory_s* %165, %struct.gs_memory_s** %memory165, align 8, !tbaa !140
  %166 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %data166 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %166, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data166, i32 0, i32 3
  %167 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !146
  %168 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font0155, align 8, !tbaa !1
  %169 = load i32, i32* %glyph_index0, align 4, !tbaa !5
  %call167 = call i32 %167(%struct.gs_font_type42_s* %168, i32 %169, %struct.gs_glyph_data_s* %gdata0) #6
  store i32 %call167, i32* %code0, align 4, !tbaa !5
  %170 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %data168 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %170, i32 0, i32 29
  %get_outline169 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data168, i32 0, i32 3
  %171 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline169, align 8, !tbaa !146
  %172 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font1156, align 8, !tbaa !1
  %173 = load i32, i32* %glyph_index1, align 4, !tbaa !5
  %call170 = call i32 %171(%struct.gs_font_type42_s* %172, i32 %173, %struct.gs_glyph_data_s* %gdata1) #6
  store i32 %call170, i32* %code1, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  %174 = bitcast i32* %glyph_index1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %glyph_index0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast %struct.gs_font_type42_s** %font1156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast %struct.gs_font_type42_s** %font0155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.else.143
  %178 = bitcast %struct.gs_font_cid0_s** %font0172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  %179 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont.addr, align 8, !tbaa !1
  %180 = bitcast %struct.gs_font_s* %179 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %180, %struct.gs_font_cid0_s** %font0172, align 8, !tbaa !1
  %181 = bitcast %struct.gs_font_cid0_s** %font1173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %183 = bitcast %struct.gs_font_s* %182 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %183, %struct.gs_font_cid0_s** %font1173, align 8, !tbaa !1
  %184 = bitcast i32* %fidx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = bitcast i32* %fidx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %186 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font0172, align 8, !tbaa !1
  %memory174 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %186, i32 0, i32 2
  %187 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory174, align 8, !tbaa !147
  %memory175 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 3
  store %struct.gs_memory_s* %187, %struct.gs_memory_s** %memory175, align 8, !tbaa !140
  %188 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font1173, align 8, !tbaa !1
  %memory176 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %188, i32 0, i32 2
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory176, align 8, !tbaa !147
  %memory177 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata1, i32 0, i32 3
  store %struct.gs_memory_s* %189, %struct.gs_memory_s** %memory177, align 8, !tbaa !140
  %190 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font0172, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %190, i32 0, i32 29
  %glyph_data178 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %191 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data178, align 8, !tbaa !148
  %192 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font0172, align 8, !tbaa !1
  %193 = bitcast %struct.gs_font_cid0_s* %192 to %struct.gs_font_base_s*
  %194 = load i64, i64* %glyph, align 8, !tbaa !82
  %call179 = call i32 %191(%struct.gs_font_base_s* %193, i64 %194, %struct.gs_glyph_data_s* %gdata0, i32* %fidx0) #6
  store i32 %call179, i32* %code0, align 4, !tbaa !5
  %195 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font1173, align 8, !tbaa !1
  %cidata180 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %195, i32 0, i32 29
  %glyph_data181 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata180, i32 0, i32 5
  %196 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data181, align 8, !tbaa !148
  %197 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font1173, align 8, !tbaa !1
  %198 = bitcast %struct.gs_font_cid0_s* %197 to %struct.gs_font_base_s*
  %199 = load i64, i64* %glyph, align 8, !tbaa !82
  %call182 = call i32 %196(%struct.gs_font_base_s* %198, i64 %199, %struct.gs_glyph_data_s* %gdata1, i32* %fidx1) #6
  store i32 %call182, i32* %code1, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  %200 = bitcast i32* %fidx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %fidx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast %struct.gs_font_cid0_s** %font1173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.gs_font_cid0_s** %font0172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.143
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.171, %sw.bb.154, %sw.bb
  %204 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp183 = icmp slt i32 %204, 0
  br i1 %cmp183, label %if.then.185, label %if.end.190

if.then.185:                                      ; preds = %sw.epilog
  %205 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp186 = icmp sge i32 %205, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.185
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.then.185
  %206 = load i32, i32* %code0, align 4, !tbaa !5
  store i32 %206, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.190:                                       ; preds = %sw.epilog
  %207 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %207, 0
  br i1 %cmp191, label %if.then.193, label %if.end.198

if.then.193:                                      ; preds = %if.end.190
  %208 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp194 = icmp sge i32 %208, 0
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.then.193
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %if.then.193
  %209 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.198:                                       ; preds = %if.end.190
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %210 = load i32, i32* %size, align 4, !tbaa !149
  %bits199 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata1, i32 0, i32 0
  %size200 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits199, i32 0, i32 1
  %211 = load i32, i32* %size200, align 4, !tbaa !149
  %cmp201 = icmp ne i32 %210, %211
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.198
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.204:                                       ; preds = %if.end.198
  %bits205 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %data206 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits205, i32 0, i32 0
  %212 = load i8*, i8** %data206, align 8, !tbaa !150
  %bits207 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %data208 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits207, i32 0, i32 0
  %213 = load i8*, i8** %data208, align 8, !tbaa !150
  %bits209 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %size210 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits209, i32 0, i32 1
  %214 = load i32, i32* %size210, align 4, !tbaa !149
  %conv211 = zext i32 %214 to i64
  %call212 = call i32 @memcmp(i8* %212, i8* %213, i64 %conv211) #8
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.204
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.215:                                       ; preds = %if.end.204
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.215, %if.then.214, %if.then.203, %if.end.197, %if.end.189, %sw.default
  %215 = bitcast %struct.gs_glyph_data_s* %gdata1 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %215) #1
  %216 = bitcast %struct.gs_glyph_data_s* %gdata0 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %216) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.218 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.217

if.end.217:                                       ; preds = %cleanup.cont, %if.end.142
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %if.end.217, %cleanup, %if.then.141, %if.then.135, %if.then.131, %if.end.127, %if.then.126, %if.then.115, %if.then.72, %if.then.56, %if.then.50, %if.then.38, %if.then.23, %if.then.19, %if.then.16, %if.end.13, %if.then.12, %if.then
  %217 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast %struct.gs_glyph_info_s* %info1 to i8*
  call void @llvm.lifetime.end(i64 104, i8* %221) #1
  %222 = bitcast %struct.gs_glyph_info_s* %info0 to i8*
  call void @llvm.lifetime.end(i64 104, i8* %222) #1
  %223 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast [40 x i64]* %pieces0 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %224) #1
  %225 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %cleanup.dest.227 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.227, label %cleanup.230 [
    i32 0, label %cleanup.cont.228
    i32 4, label %for.inc
  ]

cleanup.cont.228:                                 ; preds = %cleanup.218
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.228, %cleanup.218
  %226 = load i32, i32* %i, align 4, !tbaa !5
  %inc229 = add nsw i32 %226, 1
  store i32 %inc229, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

cleanup.230:                                      ; preds = %for.end, %cleanup.218
  %227 = bitcast i32* %num_new_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %229) #1
  %230 = bitcast i32* %members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = load i32, i32* %retval
  ret i32 %233
}

; Function Attrs: nounwind uwtable
define i32 @copied_drop_extension_glyphs(%struct.gs_font_s* %copied) #0 {
entry:
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %gsize = alloca i32, align 4
  %i = alloca i32, align 4
  %sl = alloca i32, align 4
  %pslot = alloca %struct.gs_copied_glyph_s*, align 8
  %name = alloca %struct.gs_copied_glyph_name_s*, align 8
  %l = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %3, i32 0, i32 3
  %4 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  store i32 %4, i32* %gsize, align 4, !tbaa !5
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0)) #8
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %sl, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.142, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %gsize, align 4, !tbaa !5
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.144

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %11, i32 0, i32 2
  %12 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %12, i64 %idxprom
  store %struct.gs_copied_glyph_s* %arrayidx, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %13 = bitcast %struct.gs_copied_glyph_name_s** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %18, i32 0, i32 1
  %19 = load i8, i8* %used, align 1, !tbaa !151
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = zext i32 %20 to i64
  %21 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %21, i32 0, i32 6
  %22 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %arrayidx4 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %22, i64 %idxprom3
  store %struct.gs_copied_glyph_name_s* %arrayidx4, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %23 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %23, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %24 = load i32, i32* %size, align 4, !tbaa !91
  %25 = load i32, i32* %sl, align 4, !tbaa !5
  %sub = sub i32 %24, %25
  store i32 %sub, i32* %l, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %27 = load i32, i32* %l, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %26, %27
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %28 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %str9 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %28, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str9, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8, !tbaa !92
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load i32, i32* %sl, align 4, !tbaa !5
  %conv10 = sext i32 %31 to i64
  %call11 = call i32 @memcmp(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0), i8* %add.ptr, i64 %conv10) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body.8
  br label %for.end

if.end.14:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %if.then.13, %for.cond.5
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %34 = load i32, i32* %l, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %33, %34
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %35, i32* %i0, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.65, %if.end.18
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %37 = load i32, i32* %gsize, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %36, %37
  br i1 %cmp20, label %for.body.22, label %for.end.67

for.body.22:                                      ; preds = %for.cond.19
  %38 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %38 to i64
  %39 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs24 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %39, i32 0, i32 2
  %40 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs24, align 8, !tbaa !69
  %arrayidx25 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %40, i64 %idxprom23
  %used26 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx25, i32 0, i32 1
  %41 = load i8, i8* %used26, align 1, !tbaa !151
  %conv27 = zext i8 %41 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %for.body.22
  %42 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %42 to i64
  %43 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names30 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %43, i32 0, i32 6
  %44 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names30, align 8, !tbaa !73
  %arrayidx31 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %44, i64 %idxprom29
  %str32 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx31, i32 0, i32 1
  %size33 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str32, i32 0, i32 1
  %45 = load i32, i32* %size33, align 4, !tbaa !91
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %45, %46
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.64

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom37 = sext i32 %47 to i64
  %48 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names38 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %48, i32 0, i32 6
  %49 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names38, align 8, !tbaa !73
  %arrayidx39 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %49, i64 %idxprom37
  %str40 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx39, i32 0, i32 1
  %data41 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str40, i32 0, i32 0
  %50 = load i8*, i8** %data41, align 8, !tbaa !92
  %51 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %str42 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %51, i32 0, i32 1
  %data43 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str42, i32 0, i32 0
  %52 = load i8*, i8** %data43, align 8, !tbaa !92
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %conv44 = sext i32 %53 to i64
  %call45 = call i32 @memcmp(i8* %50, i8* %52, i64 %conv44) #8
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.64, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %land.lhs.true.36
  %54 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %54, i32 0, i32 0
  %data48 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 0
  %55 = load i8*, i8** %data48, align 8, !tbaa !86
  %56 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata49 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %56, i32 0, i32 0
  %size50 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata49, i32 0, i32 1
  %57 = load i32, i32* %size50, align 4, !tbaa !83
  %58 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %58 to i64
  %59 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs52 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %59, i32 0, i32 2
  %60 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs52, align 8, !tbaa !69
  %arrayidx53 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %60, i64 %idxprom51
  %gdata54 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx53, i32 0, i32 0
  %data55 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata54, i32 0, i32 0
  %61 = load i8*, i8** %data55, align 8, !tbaa !86
  %62 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom56 = sext i32 %62 to i64
  %63 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs57 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %63, i32 0, i32 2
  %64 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs57, align 8, !tbaa !69
  %arrayidx58 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %64, i64 %idxprom56
  %gdata59 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx58, i32 0, i32 0
  %size60 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata59, i32 0, i32 1
  %65 = load i32, i32* %size60, align 4, !tbaa !83
  %call61 = call i32 @bytes_compare(i8* %55, i32 %57, i8* %61, i32 %65) #6
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.47
  %66 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %66, i32* %i0, align 4, !tbaa !5
  br label %for.end.67

if.end.64:                                        ; preds = %land.lhs.true.47, %land.lhs.true.36, %land.lhs.true, %for.body.22
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %67 = load i32, i32* %k, align 4, !tbaa !5
  %inc66 = add nsw i32 %67, 1
  store i32 %inc66, i32* %k, align 4, !tbaa !5
  br label %for.cond.19

for.end.67:                                       ; preds = %if.then.63, %for.cond.19
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %69 = load i32, i32* %i0, align 4, !tbaa !5
  %idxprom68 = sext i32 %69 to i64
  %70 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names69 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %70, i32 0, i32 6
  %71 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names69, align 8, !tbaa !73
  %arrayidx70 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %71, i64 %idxprom68
  %str71 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx70, i32 0, i32 1
  %size72 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str71, i32 0, i32 1
  store i32 %68, i32* %size72, align 4, !tbaa !91
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.134, %for.end.67
  %72 = load i32, i32* %k, align 4, !tbaa !5
  %73 = load i32, i32* %gsize, align 4, !tbaa !5
  %cmp74 = icmp ult i32 %72, %73
  br i1 %cmp74, label %for.body.76, label %for.end.136

for.body.76:                                      ; preds = %for.cond.73
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %75 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp77 = icmp ne i32 %74, %75
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.133

land.lhs.true.79:                                 ; preds = %for.body.76
  %76 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom80 = sext i32 %76 to i64
  %77 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs81 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %77, i32 0, i32 2
  %78 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs81, align 8, !tbaa !69
  %arrayidx82 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %78, i64 %idxprom80
  %used83 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx82, i32 0, i32 1
  %79 = load i8, i8* %used83, align 1, !tbaa !151
  %conv84 = zext i8 %79 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.133

land.lhs.true.86:                                 ; preds = %land.lhs.true.79
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %80 to i64
  %81 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names88 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %81, i32 0, i32 6
  %82 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names88, align 8, !tbaa !73
  %arrayidx89 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %82, i64 %idxprom87
  %str90 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx89, i32 0, i32 1
  %size91 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str90, i32 0, i32 1
  %83 = load i32, i32* %size91, align 4, !tbaa !91
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %85 = load i32, i32* %sl, align 4, !tbaa !5
  %add = add nsw i32 %84, %85
  %cmp92 = icmp uge i32 %83, %add
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.133

land.lhs.true.94:                                 ; preds = %land.lhs.true.86
  %86 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom95 = sext i32 %86 to i64
  %87 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names96 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %87, i32 0, i32 6
  %88 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names96, align 8, !tbaa !73
  %arrayidx97 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %88, i64 %idxprom95
  %str98 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx97, i32 0, i32 1
  %data99 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str98, i32 0, i32 0
  %89 = load i8*, i8** %data99, align 8, !tbaa !92
  %90 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %str100 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %90, i32 0, i32 1
  %data101 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str100, i32 0, i32 0
  %91 = load i8*, i8** %data101, align 8, !tbaa !92
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %conv102 = sext i32 %92 to i64
  %call103 = call i32 @memcmp(i8* %89, i8* %91, i64 %conv102) #8
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.133, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %land.lhs.true.94
  %93 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %name, align 8, !tbaa !1
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext106 = sext i32 %94 to i64
  %add.ptr107 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %93, i64 %idx.ext106
  %95 = bitcast %struct.gs_copied_glyph_name_s* %add.ptr107 to i8*
  %96 = load i32, i32* %sl, align 4, !tbaa !5
  %conv108 = sext i32 %96 to i64
  %call109 = call i32 @memcmp(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0), i8* %95, i64 %conv108) #8
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.133, label %land.lhs.true.111

land.lhs.true.111:                                ; preds = %land.lhs.true.105
  %97 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata112 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %97, i32 0, i32 0
  %data113 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata112, i32 0, i32 0
  %98 = load i8*, i8** %data113, align 8, !tbaa !86
  %99 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata114 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %99, i32 0, i32 0
  %size115 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata114, i32 0, i32 1
  %100 = load i32, i32* %size115, align 4, !tbaa !83
  %101 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom116 = sext i32 %101 to i64
  %102 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs117 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %102, i32 0, i32 2
  %103 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs117, align 8, !tbaa !69
  %arrayidx118 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %103, i64 %idxprom116
  %gdata119 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx118, i32 0, i32 0
  %data120 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata119, i32 0, i32 0
  %104 = load i8*, i8** %data120, align 8, !tbaa !86
  %105 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom121 = sext i32 %105 to i64
  %106 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs122 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %106, i32 0, i32 2
  %107 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs122, align 8, !tbaa !69
  %arrayidx123 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %107, i64 %idxprom121
  %gdata124 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx123, i32 0, i32 0
  %size125 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata124, i32 0, i32 1
  %108 = load i32, i32* %size125, align 4, !tbaa !83
  %call126 = call i32 @bytes_compare(i8* %98, i32 %100, i8* %104, i32 %108) #6
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.133, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.111
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom129 = sext i32 %109 to i64
  %110 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs130 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %110, i32 0, i32 2
  %111 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs130, align 8, !tbaa !69
  %arrayidx131 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %111, i64 %idxprom129
  %used132 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx131, i32 0, i32 1
  store i8 0, i8* %used132, align 1, !tbaa !151
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.128, %land.lhs.true.111, %land.lhs.true.105, %land.lhs.true.94, %land.lhs.true.86, %land.lhs.true.79, %for.body.76
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %112 = load i32, i32* %k, align 4, !tbaa !5
  %inc135 = add nsw i32 %112, 1
  store i32 %inc135, i32* %k, align 4, !tbaa !5
  br label %for.cond.73

for.end.136:                                      ; preds = %for.cond.73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.136, %if.then.17, %if.then
  %113 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gs_copied_glyph_name_s** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc.142
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.142

for.inc.142:                                      ; preds = %cleanup.cont, %cleanup
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %inc143 = add i32 %119, 1
  store i32 %inc143, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.144:                                      ; preds = %for.cond
  store i32 1, i32* %cleanup.dest.slot
  %120 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @copied_order_font(%struct.gs_font_s* %font) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %1 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !26
  %cmp = icmp ne i32 (%struct.gs_font_s*, i32*, i32, i64*)* %1, @copied_enumerate_glyph
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType, align 4, !tbaa !18
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 11
  %5 = load i32, i32* %FontType2, align 4, !tbaa !18
  %cmp3 = icmp ne i32 %5, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %6 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %7) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 16
  store i32 1, i32* %ordered, align 4, !tbaa !72
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call6 = call i32 @order_font_data(%struct.gs_copied_font_data_s* %9, %struct.gs_memory_s* %11) #6
  store i32 %call6, i32* %retval
  %12 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !99
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %2, i32 0, i32 16
  %3 = load i32, i32* %ordered, align 4, !tbaa !72
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 4
  %7 = load i32, i32* %num_glyphs, align 4, !tbaa !71
  %cmp = icmp uge i32 %5, %7
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %8 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %8, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %12, i32 0, i32 2
  %13 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %13, i64 %idxprom
  %order_index = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %order_index, align 4, !tbaa !152
  store i32 %14, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %16, i32 0, i32 6
  %17 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %arrayidx3 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %17, i64 %idxprom2
  %glyph = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx3, i32 0, i32 0
  %18 = load i64, i64* %glyph, align 8, !tbaa !74
  %19 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %18, i64* %19, align 8, !tbaa !82
  %20 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %20, align 4, !tbaa !5
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %23 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %25, i32 0, i32 3
  %26 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp5 = icmp ult i32 %24, %26
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %idxprom6 = sext i32 %28 to i64
  %29 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs7 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %29, i32 0, i32 2
  %30 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs7, align 8, !tbaa !69
  %arrayidx8 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %30, i64 %idxprom6
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx8, i32 0, i32 1
  %31 = load i8, i8* %used, align 1, !tbaa !151
  %tobool9 = icmp ne i8 %31, 0
  br i1 %tobool9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %for.body
  %32 = load i32, i32* %glyph_space.addr, align 4, !tbaa !99
  %cmp11 = icmp eq i32 %32, 0
  br i1 %cmp11, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.10
  %33 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names12 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %33, i32 0, i32 6
  %34 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names12, align 8, !tbaa !73
  %cmp13 = icmp ne %struct.gs_copied_glyph_name_s* %34, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %35 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %idxprom14 = sext i32 %36 to i64
  %37 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names15 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %37, i32 0, i32 6
  %38 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names15, align 8, !tbaa !73
  %arrayidx16 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %38, i64 %idxprom14
  %glyph17 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx16, i32 0, i32 0
  %39 = load i64, i64* %glyph17, align 8, !tbaa !74
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.10
  %40 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %conv = sext i32 %41 to i64
  %42 = load i32, i32* %glyph_space.addr, align 4, !tbaa !99
  %cmp18 = icmp eq i32 %42, 0
  %cond = select i1 %cmp18, i64 2147483648, i64 3221225472
  %add = add i64 %conv, %cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i64 [ %39, %cond.true ], [ %add, %cond.false ]
  %43 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %cond20, i64* %43, align 8, !tbaa !82
  %44 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %inc21 = add nsw i32 %45, 1
  store i32 %inc21, i32* %44, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %46 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %inc23 = add nsw i32 %47, 1
  store i32 %inc23, i32* %46, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %48, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.end, %if.end
  %49 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @order_font_data(%struct.gs_copied_font_data_s* %cfdata, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %cfdata.addr = alloca %struct.gs_copied_font_data_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca %struct.gs_copied_glyph_name_s**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_copied_font_data_s* %cfdata, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  %2 = bitcast %struct.gs_copied_glyph_name_s*** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %4 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !153
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 4
  %7 = load i32, i32* %num_glyphs, align 4, !tbaa !71
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %7, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0)) #6
  %8 = bitcast i8* %call to %struct.gs_copied_glyph_name_s**
  store %struct.gs_copied_glyph_name_s** %8, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %9 = load %struct.gs_copied_glyph_name_s**, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_copied_glyph_name_s** %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %11, i32 0, i32 3
  %12 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp1 = icmp ult i32 %10, %12
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %14, i32 0, i32 2
  %15 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %15, i64 %idxprom
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx, i32 0, i32 1
  %16 = load i8, i8* %used, align 1, !tbaa !151
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %for.body
  %17 = load i32, i32* %j, align 4, !tbaa !5
  %18 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %num_glyphs3 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %18, i32 0, i32 4
  %19 = load i32, i32* %num_glyphs3, align 4, !tbaa !71
  %cmp4 = icmp uge i32 %17, %19
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %21, i32 0, i32 6
  %22 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %arrayidx8 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %22, i64 %idxprom7
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %23 to i64
  %24 = load %struct.gs_copied_glyph_name_s**, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %24, i64 %idxprom9
  store %struct.gs_copied_glyph_name_s* %arrayidx8, %struct.gs_copied_glyph_name_s** %arrayidx10, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %25, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.gs_copied_glyph_name_s**, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %27 = bitcast %struct.gs_copied_glyph_name_s** %26 to i8*
  %28 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %num_glyphs13 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %28, i32 0, i32 4
  %29 = load i32, i32* %num_glyphs13, align 4, !tbaa !71
  %conv = zext i32 %29 to i64
  call void @qsort(i8* %27, i64 %conv, i64 8, i32 (i8*, i8*)* @compare_glyph_names) #6
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.25, %for.end
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %31, 0
  br i1 %cmp15, label %for.body.17, label %for.end.27

for.body.17:                                      ; preds = %for.cond.14
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.gs_copied_glyph_name_s**, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %33, i64 %idxprom18
  %34 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %arrayidx19, align 8, !tbaa !1
  %35 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %names20 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %35, i32 0, i32 6
  %36 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names20, align 8, !tbaa !73
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_copied_glyph_name_s* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_copied_glyph_name_s* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv21 = trunc i64 %sub.ptr.div to i32
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs23 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %38, i32 0, i32 2
  %39 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs23, align 8, !tbaa !69
  %arrayidx24 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %39, i64 %idxprom22
  %order_index = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx24, i32 0, i32 2
  store i32 %conv21, i32* %order_index, align 4, !tbaa !152
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.17
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %dec26 = add nsw i32 %40, -1
  store i32 %dec26, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.end.27:                                       ; preds = %for.cond.14
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %44 = load %struct.gs_copied_glyph_name_s**, %struct.gs_copied_glyph_name_s*** %a, align 8, !tbaa !1
  %45 = bitcast %struct.gs_copied_glyph_name_s** %44 to i8*
  call void %42(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.27, %if.then.5, %if.then
  %46 = bitcast %struct.gs_copied_glyph_name_s*** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i64 @copied_get_notdef(%struct.gs_font_s* %font) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %2, i32 0, i32 5
  %3 = load i64, i64* %notdef, align 8, !tbaa !77
  %4 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_font_type42(%struct.gs_font_s* %font, %struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %font42 = alloca %struct.gs_font_type42_s*, align 8
  %copied42 = alloca %struct.gs_font_type42_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %extra = alloca i32, align 4
  %fs = alloca %struct.stream_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %font42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %5, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %6 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %7) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %8 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 15
  %10 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !19
  %mul = mul i32 %10, 8
  store i32 %mul, i32* %extra, align 4, !tbaa !5
  %11 = bitcast %struct.stream_s* %fs to i8*
  call void @llvm.lifetime.start(i64 352, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_font_s* %13 to %struct.gs_font_base_s*
  %call1 = call i64 @find_notdef(%struct.gs_font_base_s* %14) #6
  %15 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %15, i32 0, i32 5
  store i64 %call1, i64* %notdef, align 8, !tbaa !77
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call2 = call i32 @copied_Encoding_alloc(%struct.gs_font_s* %16) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 2
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  call void @s_init(%struct.stream_s* %fs, %struct.gs_memory_s* %20) #6
  call void @swrite_position_only(%struct.stream_s* %fs) #6
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType, align 4, !tbaa !18
  %cmp3 = icmp eq i32 %22, 42
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %23 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %call4 = call i32 @psf_write_truetype_stripped(%struct.stream_s* %fs, %struct.gs_font_type42_s* %23) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %25 = bitcast %struct.gs_font_type42_s* %24 to %struct.gs_font_cid2_s*
  %call5 = call i32 @psf_write_cid2_stripped(%struct.stream_s* %fs, %struct.gs_font_cid2_s* %25) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %27 = load i32, i32* %extra, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %call6 = call i32 @copied_data_alloc(%struct.gs_font_s* %26, %struct.stream_s* %fs, i32 %27, i32 %28) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %29, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  br label %fail

if.end.9:                                         ; preds = %cond.end
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 11
  %31 = load i32, i32* %FontType10, align 4, !tbaa !18
  %cmp11 = icmp eq i32 %31, 42
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %32 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %call13 = call i32 @psf_write_truetype_stripped(%struct.stream_s* %fs, %struct.gs_font_type42_s* %32) #6
  br label %if.end.15

if.else:                                          ; preds = %if.end.9
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %34 = bitcast %struct.gs_font_type42_s* %33 to %struct.gs_font_cid2_s*
  %call14 = call i32 @psf_write_cid2_stripped(%struct.stream_s* %fs, %struct.gs_font_cid2_s* %34) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %35 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %35, i32 0, i32 29
  %string_proc = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data16, i32 0, i32 0
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* @copied_type42_string_proc, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !154
  %36 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %37 = bitcast %struct.gs_copied_font_data_s* %36 to i8*
  %38 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data17 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %38, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data17, i32 0, i32 1
  store i8* %37, i8** %proc_data, align 8, !tbaa !155
  %39 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %call18 = call i32 @gs_type42_font_init(%struct.gs_font_type42_s* %39, i32 0) #6
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %40, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  br label %fail2

if.end.21:                                        ; preds = %if.end.15
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  store i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @copied_font_info, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !41
  %42 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %42, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs22, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @copied_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !156
  %43 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %43, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data23, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @copied_type42_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !144
  %44 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data24 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %44, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data24, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @copied_type42_get_outline, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !146
  %45 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data25 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %45, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data25, i32 0, i32 4
  store i32 (%struct.gs_font_type42_s*, i32, i32, float*)* @copied_type42_get_metrics, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !157
  %46 = load i32, i32* %extra, align 4, !tbaa !5
  %div = udiv i32 %46, 8
  %47 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data26 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %47, i32 0, i32 29
  %metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data26, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics, i32 0, i64 1
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx, i32 0, i32 0
  store i32 %div, i32* %numMetrics, align 4, !tbaa !158
  %48 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data27 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %48, i32 0, i32 29
  %metrics28 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data27, i32 0, i32 10
  %arrayidx29 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics28, i32 0, i64 0
  %numMetrics30 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx29, i32 0, i32 0
  store i32 %div, i32* %numMetrics30, align 4, !tbaa !158
  %49 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %49, i32 0, i32 9
  %50 = load i32, i32* %data_size, align 4, !tbaa !160
  %51 = load i32, i32* %extra, align 4, !tbaa !5
  %sub = sub i32 %50, %51
  %conv = zext i32 %sub to i64
  %52 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %52, i32 0, i32 29
  %metrics32 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data31, i32 0, i32 10
  %arrayidx33 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics32, i32 0, i64 0
  %offset = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx33, i32 0, i32 1
  store i64 %conv, i64* %offset, align 8, !tbaa !161
  %53 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data_size34 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %53, i32 0, i32 9
  %54 = load i32, i32* %data_size34, align 4, !tbaa !160
  %55 = load i32, i32* %extra, align 4, !tbaa !5
  %div35 = udiv i32 %55, 2
  %sub36 = sub i32 %54, %div35
  %conv37 = zext i32 %sub36 to i64
  %56 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %56, i32 0, i32 29
  %metrics39 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data38, i32 0, i32 10
  %arrayidx40 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics39, i32 0, i64 1
  %offset41 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx40, i32 0, i32 1
  store i64 %conv37, i64* %offset41, align 8, !tbaa !161
  %57 = load i32, i32* %extra, align 4, !tbaa !5
  %div42 = udiv i32 %57, 2
  %58 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data43 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %58, i32 0, i32 29
  %metrics44 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data43, i32 0, i32 10
  %arrayidx45 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics44, i32 0, i64 1
  %length = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx45, i32 0, i32 2
  store i32 %div42, i32* %length, align 4, !tbaa !162
  %59 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data46 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %59, i32 0, i32 29
  %metrics47 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data46, i32 0, i32 10
  %arrayidx48 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics47, i32 0, i64 0
  %length49 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx48, i32 0, i32 2
  store i32 %div42, i32* %length49, align 4, !tbaa !162
  %60 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %60, i32 0, i32 8
  %61 = load i8*, i8** %data50, align 8, !tbaa !88
  %62 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data_size51 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %62, i32 0, i32 9
  %63 = load i32, i32* %data_size51, align 4, !tbaa !160
  %idx.ext = zext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  %64 = load i32, i32* %extra, align 4, !tbaa !5
  %idx.ext52 = zext i32 %64 to i64
  %idx.neg = sub i64 0, %idx.ext52
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %65 = load i32, i32* %extra, align 4, !tbaa !5
  %conv54 = zext i32 %65 to i64
  %call55 = call i8* @memset(i8* %add.ptr53, i32 0, i64 %conv54) #7
  %66 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data56 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %66, i32 0, i32 29
  %numGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data56, i32 0, i32 14
  %67 = load i32, i32* %numGlyphs, align 4, !tbaa !163
  %68 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data57 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %68, i32 0, i32 29
  %numGlyphs58 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data57, i32 0, i32 14
  store i32 %67, i32* %numGlyphs58, align 4, !tbaa !163
  %69 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data59 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %69, i32 0, i32 29
  %trueNumGlyphs60 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data59, i32 0, i32 15
  %70 = load i32, i32* %trueNumGlyphs60, align 4, !tbaa !19
  %71 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data61 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %71, i32 0, i32 29
  %trueNumGlyphs62 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data61, i32 0, i32 15
  store i32 %70, i32* %trueNumGlyphs62, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail2:                                            ; preds = %if.then.20
  %72 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %72, i32 0, i32 2
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !7
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 2
  %74 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %75, i32 0, i32 2
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !7
  %77 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data66 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %77, i32 0, i32 8
  %78 = load i8*, i8** %data66, align 8, !tbaa !88
  call void %74(%struct.gs_memory_s* %76, i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #6
  br label %fail

fail:                                             ; preds = %fail2, %if.then.8
  %79 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %79, i32 0, i32 2
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !7
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %free_object69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 2
  %81 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object69, align 8, !tbaa !78
  %82 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %82, i32 0, i32 2
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !7
  %84 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %84, i32 0, i32 10
  %85 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %86 = bitcast i64* %85 to i8*
  call void %81(%struct.gs_memory_s* %83, i8* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0)) #6
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.21, %if.then
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.stream_s* %fs to i8*
  call void @llvm.lifetime.end(i64 352, i8* %89) #1
  %90 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.gs_font_type42_s** %font42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_type42(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %font42 = alloca %struct.gs_font_type42_s*, align 8
  %fontCID2 = alloca %struct.gs_font_cid2_s*, align 8
  %copied42 = alloca %struct.gs_font_type42_s*, align 8
  %gid = alloca i32, align 4
  %code = alloca i32, align 4
  %rcode = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %sbw = alloca [4 x float], align 16
  %factor = alloca double, align 8
  %i = alloca i32, align 4
  %gnstr = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %sb = alloca i32, align 4
  %width = alloca i32, align 4
  %pmetrics = alloca i8*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_font_type42_s** %font42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %3, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_cid2_s** %fontCID2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %6, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_s* %8 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %9, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %10 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %11, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub = sub i64 %12, 3221225472
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType, align 4, !tbaa !18
  %cmp = icmp eq i32 %14, 11
  br i1 %cmp, label %cond.true.1, label %cond.false.2

cond.true.1:                                      ; preds = %cond.false
  %15 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %15, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 2
  %16 = load i32 (%struct.gs_font_cid2_s*, i64)*, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !164
  %17 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %18 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 %16(%struct.gs_font_cid2_s* %17, i64 %18) #6
  br label %cond.end

cond.false.2:                                     ; preds = %cond.false
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %19, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  %20 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !144
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %22 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call3 = call i32 %20(%struct.gs_font_type42_s* %21, i64 %22) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.2, %cond.true.1
  %cond = phi i32 [ %call, %cond.true.1 ], [ %call3, %cond.false.2 ]
  %conv = zext i32 %cond to i64
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i64 [ %sub, %cond.true ], [ %conv, %cond.end ]
  %conv6 = trunc i64 %cond5 to i32
  store i32 %conv6, i32* %gid, align 4, !tbaa !5
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call7 = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %26) #6
  store %struct.gs_copied_font_data_s* %call7, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %27 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #1
  %29 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %30, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data8, i32 0, i32 8
  %31 = load i32, i32* %unitsPerEm, align 4, !tbaa !165
  %conv9 = uitofp i32 %31 to double
  store double %conv9, double* %factor, align 8, !tbaa !166
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %33, i32 0, i32 2
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !145
  %memory10 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %34, %struct.gs_memory_s** %memory10, align 8, !tbaa !140
  %35 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %35, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data11, i32 0, i32 3
  %36 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !146
  %37 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %38 = load i32, i32* %gid, align 4, !tbaa !5
  %call12 = call i32 %36(%struct.gs_font_type42_s* %37, i32 %38, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %39, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %cond.end.4
  %40 = load i32, i32* %gid, align 4, !tbaa !5
  %cmp15 = icmp ne i32 %40, 0
  br i1 %cmp15, label %if.then, label %if.end.31

if.then:                                          ; preds = %land.lhs.true
  %41 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %41) #1
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 9
  %43 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !90
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %45 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call17 = call i32 %43(%struct.gs_font_s* %44, i64 %45, %struct.gs_const_string_s* %gnstr) #6
  %cmp18 = icmp sge i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %if.then
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %46 = load i32, i32* %size, align 4, !tbaa !80
  %cmp21 = icmp eq i32 %46, 7
  br i1 %cmp21, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %data24 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %47 = load i8*, i8** %data24, align 8, !tbaa !79
  %call25 = call i32 @memcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 7) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %gid, align 4, !tbaa !5
  %48 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %48, i32 0, i32 29
  %get_outline29 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data28, i32 0, i32 3
  %49 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline29, align 8, !tbaa !146
  %50 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %51 = load i32, i32* %gid, align 4, !tbaa !5
  %call30 = call i32 %49(%struct.gs_font_type42_s* %50, i32 %51, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call30, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true.23, %land.lhs.true.20, %if.then
  %52 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %land.lhs.true, %cond.end.4
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %53, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.31
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %56 = load i32, i32* %gid, align 4, !tbaa !5
  %conv36 = zext i32 %56 to i64
  %add = add i64 %conv36, 3221225472
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %58 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call37 = call i32 @copy_glyph_data(%struct.gs_font_s* %55, i64 %add, %struct.gs_font_s* %57, i32 %58, %struct.gs_glyph_data_s* %gdata, i8* null, i32 0) #6
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %59, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.35
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.35
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %rcode, align 4, !tbaa !5
  %62 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp42 = icmp ult i64 %62, 2147483648
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.41
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %64 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %66 = load i32, i32* %gid, align 4, !tbaa !5
  %conv45 = zext i32 %66 to i64
  %add46 = add i64 %conv45, 3221225472
  %call47 = call i32 @copy_glyph_name(%struct.gs_font_s* %63, i64 %64, %struct.gs_font_s* %65, i64 %add46) #6
  store i32 %call47, i32* %code, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.41
  %67 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %68 = load i32, i32* %gid, align 4, !tbaa !5
  %conv49 = zext i32 %68 to i64
  %add50 = add i64 %conv49, 3221225472
  %call51 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %67, i64 %add50, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %69, 2
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %70, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data54, i32 0, i32 4
  %71 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !157
  %72 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font42, align 8, !tbaa !1
  %73 = load i32, i32* %gid, align 4, !tbaa !5
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call55 = call i32 %71(%struct.gs_font_type42_s* %72, i32 %73, i32 %74, float* %arraydecay) #6
  %cmp56 = icmp sge i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.86

if.then.58:                                       ; preds = %for.body
  %75 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %76 to i64
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom
  %77 = load float, float* %arrayidx, align 4, !tbaa !45
  %conv59 = fpext float %77 to double
  %78 = load double, double* %factor, align 8, !tbaa !166
  %mul = fmul double %conv59, %78
  %add60 = fadd double %mul, 5.000000e-01
  %conv61 = fptosi double %add60 to i32
  store i32 %conv61, i32* %sb, align 4, !tbaa !5
  %79 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %add62 = add nsw i32 2, %80
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom63
  %81 = load float, float* %arrayidx64, align 4, !tbaa !45
  %conv65 = fpext float %81 to double
  %82 = load double, double* %factor, align 8, !tbaa !166
  %mul66 = fmul double %conv65, %82
  %add67 = fadd double %mul66, 5.000000e-01
  %conv68 = fptoui double %add67 to i32
  store i32 %conv68, i32* %width, align 4, !tbaa !5
  %83 = bitcast i8** %pmetrics to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data69 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %84, i32 0, i32 8
  %85 = load i8*, i8** %data69, align 8, !tbaa !88
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %86 to i64
  %87 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data71 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %87, i32 0, i32 29
  %metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data71, i32 0, i32 10
  %arrayidx72 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics, i32 0, i64 %idxprom70
  %offset = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx72, i32 0, i32 1
  %88 = load i64, i64* %offset, align 8, !tbaa !161
  %add.ptr = getelementptr inbounds i8, i8* %85, i64 %88
  %89 = load i32, i32* %gid, align 4, !tbaa !5
  %mul73 = mul i32 %89, 4
  %idx.ext = zext i32 %mul73 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr74, i8** %pmetrics, align 8, !tbaa !1
  %90 = load i32, i32* %width, align 4, !tbaa !5
  %shr = lshr i32 %90, 8
  %conv75 = trunc i32 %shr to i8
  %91 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 %conv75, i8* %arrayidx76, align 1, !tbaa !99
  %92 = load i32, i32* %width, align 4, !tbaa !5
  %conv77 = trunc i32 %92 to i8
  %93 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 %conv77, i8* %arrayidx78, align 1, !tbaa !99
  %94 = load i32, i32* %sb, align 4, !tbaa !5
  %shr79 = ashr i32 %94, 8
  %conv80 = trunc i32 %shr79 to i8
  %95 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 %conv80, i8* %arrayidx81, align 1, !tbaa !99
  %96 = load i32, i32* %sb, align 4, !tbaa !5
  %conv82 = trunc i32 %96 to i8
  %97 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %97, i64 3
  store i8 %conv82, i8* %arrayidx83, align 1, !tbaa !99
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %shl = shl i32 2, %98
  %99 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %99, i32 0, i32 1
  %100 = load i8, i8* %used, align 1, !tbaa !151
  %conv84 = zext i8 %100 to i32
  %or = or i32 %conv84, %shl
  %conv85 = trunc i32 %or to i8
  store i8 %conv85, i8* %used, align 1, !tbaa !151
  %101 = bitcast i8** %pmetrics to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.58, %for.body
  %104 = load double, double* %factor, align 8, !tbaa !166
  %sub87 = fsub double -0.000000e+00, %104
  store double %sub87, double* %factor, align 8, !tbaa !166
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %106, 0
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %for.end
  %107 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.92

cond.false.91:                                    ; preds = %for.end
  %108 = load i32, i32* %rcode, align 4, !tbaa !5
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i32 [ %107, %cond.true.90 ], [ %108, %cond.false.91 ]
  store i32 %cond93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.92, %if.then.40, %if.then.34
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %112 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.gs_font_cid2_s** %fontCID2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct.gs_font_type42_s** %font42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %120) #1
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_char_add_encoding(%struct.gs_font_s* %copied, i64 %chr, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %Encoding = alloca i64*, align 8
  %pslot = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %3, i32 0, i32 10
  %4 = load i64*, i64** %Encoding1, align 8, !tbaa !87
  store i64* %4, i64** %Encoding, align 8, !tbaa !1
  %5 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %7, i32 0, i32 16
  %8 = load i32, i32* %ordered, align 4, !tbaa !72
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %cmp = icmp eq i64* %9, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %cmp4 = icmp uge i64 %10, 256
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp5 = icmp uge i64 %11, 2147483648
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %12 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %13 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call8 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %12, i64 %13, %struct.gs_copied_glyph_s** %pslot) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %16 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %17 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx, align 8, !tbaa !82
  %19 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp12 = icmp ne i64 %18, %19
  br i1 %cmp12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.11
  %20 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %21 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx13, align 8, !tbaa !82
  %cmp14 = icmp ne i64 %22, 2147483647
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %land.lhs.true, %if.end.11
  %23 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %24 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %25 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %25, i64 %24
  store i64 %23, i64* %arrayidx17, align 8, !tbaa !82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.10, %if.then.6, %if.then.2, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @named_glyph_slot_linear(%struct.gs_copied_font_data_s* %cfdata, i64 %glyph, %struct.gs_copied_glyph_s** %pslot) #0 {
entry:
  %retval = alloca i32, align 4
  %cfdata.addr = alloca %struct.gs_copied_font_data_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pslot.addr = alloca %struct.gs_copied_glyph_s**, align 8
  %names = alloca %struct.gs_copied_glyph_name_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %extra_name = alloca %struct.gs_copied_glyph_extra_name_s*, align 8
  store %struct.gs_copied_font_data_s* %cfdata, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_copied_glyph_s** %pslot, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %names1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %1, i32 0, i32 6
  %2 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names1, align 8, !tbaa !73
  store %struct.gs_copied_glyph_name_s* %2, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %5, i32 0, i32 3
  %6 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %8, i64 %idxprom
  %glyph2 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx, i32 0, i32 0
  %9 = load i64, i64* %glyph2, align 8, !tbaa !74
  %10 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp3 = icmp eq i64 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %12, i32 0, i32 2
  %13 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx5 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %13, i64 %idxprom4
  %14 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %arrayidx5, %struct.gs_copied_glyph_s** %14, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %18 = bitcast %struct.gs_copied_glyph_extra_name_s** %extra_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %extra_names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %19, i32 0, i32 7
  %20 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_names, align 8, !tbaa !93
  store %struct.gs_copied_glyph_extra_name_s* %20, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.17, %cleanup.cont
  %21 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.gs_copied_glyph_extra_name_s* %21, null
  br i1 %cmp8, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.7
  %22 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %22, i32 0, i32 0
  %glyph10 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %name, i32 0, i32 0
  %23 = load i64, i64* %glyph10, align 8, !tbaa !167
  %24 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp11 = icmp eq i64 %23, %24
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body.9
  %25 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %gid = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %25, i32 0, i32 1
  %26 = load i32, i32* %gid, align 4, !tbaa !96
  %idxprom13 = zext i32 %26 to i64
  %27 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs14 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %27, i32 0, i32 2
  %28 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs14, align 8, !tbaa !69
  %arrayidx15 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %28, i64 %idxprom13
  %29 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %arrayidx15, %struct.gs_copied_glyph_s** %29, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

if.end.16:                                        ; preds = %for.body.9
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %30 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %30, i32 0, i32 2
  %31 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %next, align 8, !tbaa !94
  store %struct.gs_copied_glyph_extra_name_s* %31, %struct.gs_copied_glyph_extra_name_s** %extra_name, align 8, !tbaa !1
  br label %for.cond.7

for.end.18:                                       ; preds = %for.cond.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %for.end.18, %if.then.12
  %32 = bitcast %struct.gs_copied_glyph_extra_name_s** %extra_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest.20 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.20, label %unreachable [
    i32 0, label %cleanup.cont.21
    i32 1, label %return
  ]

cleanup.cont.21:                                  ; preds = %cleanup.19
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont.21, %cleanup.19, %cleanup
  %33 = load i32, i32* %retval
  ret i32 %33

unreachable:                                      ; preds = %cleanup.19, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @copied_type42_encode_char(%struct.gs_font_s* %copied, i64 %chr, i32 %glyph_space) #0 {
entry:
  %retval = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph_space.addr = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %Encoding = alloca i64*, align 8
  %glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !99
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %3, i32 0, i32 10
  %4 = load i64*, i64** %Encoding1, align 8, !tbaa !87
  store i64* %4, i64** %Encoding, align 8, !tbaa !1
  %5 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %cmp = icmp uge i64 %6, 256
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %cmp2 = icmp eq i64* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %9 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !82
  store i64 %10, i64* %glyph, align 8, !tbaa !82
  %11 = load i32, i32* %glyph_space.addr, align 4, !tbaa !99
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %12 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %15 = load i64, i64* %glyph, align 8, !tbaa !82
  %call5 = call i32 @named_glyph_slot_linear(%struct.gs_copied_font_data_s* %14, i64 %15, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.then.4
  %17 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %17, i32 0, i32 1
  %18 = load i8, i8* %used, align 1, !tbaa !151
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false.7, %if.then.4
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false.7
  %19 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %20 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %20, i32 0, i32 2
  %21 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_copied_glyph_s* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_copied_glyph_s* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %add = add i64 3221225472, %sub.ptr.div
  store i64 %add, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %cleanup.12

if.end.11:                                        ; preds = %if.end
  %24 = load i64, i64* %glyph, align 8, !tbaa !82
  store i64 %24, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.11, %cleanup, %if.then
  %25 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i64, i64* %retval
  ret i64 %28
}

declare i32 @gs_type42_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

declare i32 @gs_type42_glyph_outline(%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*) #2

; Function Attrs: nounwind uwtable
define internal i64 @find_notdef(%struct.gs_font_base_s* %font) #0 {
entry:
  %retval = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %index = alloca i32, align 4
  %glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  %1 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %2, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %3 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !168
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_base_s* %4 to %struct.gs_font_s*
  %call = call i32 %3(%struct.gs_font_s* %5, i32* %index, i32 0, i64* %glyph) #6
  %6 = load i32, i32* %index, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %8 = load i64, i64* %glyph, align 8, !tbaa !82
  %call1 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %7, i64 %8) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i64, i64* %glyph, align 8, !tbaa !82
  store i64 %9, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %10 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_Encoding_alloc(%struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %Encoding = alloca i64*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %5 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !153
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %call2 = call i8* %5(%struct.gs_memory_s* %7, i32 256, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0)) #6
  %8 = bitcast i8* %call2 to i64*
  store i64* %8, i64** %Encoding, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %cmp = icmp eq i64* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %13, i64 %idxprom
  store i64 2147483647, i64* %arrayidx, align 8, !tbaa !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %16 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding4 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %16, i32 0, i32 10
  store i64* %15, i64** %Encoding4, align 8, !tbaa !87
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_position_only(%struct.stream_s*) #2

declare i32 @psf_write_truetype_stripped(%struct.stream_s*, %struct.gs_font_type42_s*) #2

declare i32 @psf_write_cid2_stripped(%struct.stream_s*, %struct.gs_font_cid2_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_data_alloc(%struct.gs_font_s* %copied, %struct.stream_s* %s, i32 %extra, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %extra.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %len = alloca i32, align 4
  %fdata = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %extra, i32* %extra.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i64 @stell(%struct.stream_s* %3) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %4 = bitcast i8** %fdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %code.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code.addr, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !136
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %12 = load i32, i32* %len, align 4, !tbaa !5
  %13 = load i32, i32* %extra.addr, align 4, !tbaa !5
  %add = add i32 %12, %13
  %call4 = call i8* %9(%struct.gs_memory_s* %11, i32 %add, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)) #6
  store i8* %call4, i8** %fdata, align 8, !tbaa !1
  %14 = load i8*, i8** %fdata, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %14, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 2
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !7
  call void @s_init(%struct.stream_s* %15, %struct.gs_memory_s* %17) #6
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %fdata, align 8, !tbaa !1
  %20 = load i32, i32* %len, align 4, !tbaa !5
  call void @swrite_string(%struct.stream_s* %18, i8* %19, i32 %20) #6
  %21 = load i8*, i8** %fdata, align 8, !tbaa !1
  %22 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %22, i32 0, i32 8
  store i8* %21, i8** %data, align 8, !tbaa !88
  %23 = load i32, i32* %len, align 4, !tbaa !5
  %24 = load i32, i32* %extra.addr, align 4, !tbaa !5
  %add10 = add i32 %23, %24
  %25 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %25, i32 0, i32 9
  store i32 %add10, i32* %data_size, align 4, !tbaa !160
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %26 = bitcast i8** %fdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type42_string_proc(%struct.gs_font_type42_s* %font, i64 %offset, i32 %len, i8** %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_type42_s*, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %pstr.addr = alloca i8**, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %font, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !82
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8** %pstr, i8*** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 1
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !155
  %3 = bitcast i8* %2 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %3, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %4 = load i64, i64* %offset.addr, align 8, !tbaa !82
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %add = add i64 %4, %conv
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 9
  %7 = load i32, i32* %data_size, align 4, !tbaa !160
  %conv1 = zext i32 %7 to i64
  %cmp = icmp ugt i64 %add, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 8
  %9 = load i8*, i8** %data3, align 8, !tbaa !88
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !82
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8**, i8*** %pstr.addr, align 8, !tbaa !1
  store i8* %add.ptr, i8** %11, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_type42_font_init(%struct.gs_font_type42_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_type42_get_glyph_index(%struct.gs_font_type42_s* %font, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %font, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %2) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call1 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %5, i64 %6, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2147483647, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %9, i32 0, i32 2
  %10 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_copied_glyph_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_copied_glyph_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type42_get_outline(%struct.gs_font_type42_s* %font, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %font, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 1
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !155
  %3 = bitcast i8* %2 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %3, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %4 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 3
  %7 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp = icmp uge i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %9, i32 0, i32 2
  %10 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %10, i64 %idxprom
  store %struct.gs_copied_glyph_s* %arrayidx, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %11 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %11, i32 0, i32 1
  %12 = load i8, i8* %used, align 1, !tbaa !151
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %13 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %13) #6
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %14 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %15 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %15, i32 0, i32 0
  %data2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 0
  %16 = load i8*, i8** %data2, align 8, !tbaa !86
  %17 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata3 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %17, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata3, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !83
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %14, i8* %16, i32 %18, %struct.gs_font_s* null) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %19 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type42_get_metrics(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %options, float* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %sbw.addr = alloca float*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %wmode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store i32 %options, i32* %options.addr, align 4, !tbaa !99
  store float* %sbw, float** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 1
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !155
  %3 = bitcast i8* %2 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %3, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %4 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %options.addr, align 4, !tbaa !99
  %and = and i32 %6, 1
  store i32 %and, i32* %wmode, align 4, !tbaa !5
  %7 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 3
  %9 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp = icmp uge i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %11, i32 0, i32 2
  %12 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %12, i64 %idxprom
  store %struct.gs_copied_glyph_s* %arrayidx, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %13 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %13, i32 0, i32 1
  %14 = load i8, i8* %used, align 1, !tbaa !151
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 2, %15
  %and1 = and i32 %conv, %shl
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %16 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %17 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %18 = load i32, i32* %options.addr, align 4, !tbaa !99
  %19 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call = call i32 @gs_type42_default_get_metrics(%struct.gs_font_type42_s* %16, i32 %17, i32 %18, float* %19) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %20 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s*, i64) #2

declare i64 @stell(%struct.stream_s*) #2

declare void @swrite_string(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %cfdata, i64 %glyph, %struct.gs_copied_glyph_s** %pslot) #0 {
entry:
  %retval = alloca i32, align 4
  %cfdata.addr = alloca %struct.gs_copied_font_data_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pslot.addr = alloca %struct.gs_copied_glyph_s**, align 8
  %gsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_copied_font_data_s* %cfdata, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_copied_glyph_s** %pslot, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  %0 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %1, i32 0, i32 3
  %2 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  store i32 %2, i32* %gsize, align 4, !tbaa !5
  %3 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* null, %struct.gs_copied_glyph_s** %3, align 8, !tbaa !1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp = icmp uge i64 %4, 3221225472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub = sub i64 %5, 3221225472
  %6 = load i32, i32* %gsize, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %cmp1 = icmp uge i64 %sub, %conv
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end:                                           ; preds = %if.then
  %7 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub4 = sub i64 %7, 3221225472
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 2
  %9 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %9, i64 %sub4
  %10 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %arrayidx, %struct.gs_copied_glyph_s** %10, align 8, !tbaa !1
  br label %if.end.28

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp5 = icmp uge i64 %11, 2147483648
  br i1 %cmp5, label %if.then.7, label %if.else.17

if.then.7:                                        ; preds = %if.else
  %12 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub8 = sub i64 %12, 2147483648
  %13 = load i32, i32* %gsize, align 4, !tbaa !5
  %conv9 = zext i32 %13 to i64
  %cmp10 = icmp uge i64 %sub8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.13:                                        ; preds = %if.then.7
  %14 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub14 = sub i64 %14, 2147483648
  %15 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs15 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %15, i32 0, i32 2
  %16 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs15, align 8, !tbaa !69
  %arrayidx16 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %16, i64 %sub14
  %17 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %arrayidx16, %struct.gs_copied_glyph_s** %17, align 8, !tbaa !1
  br label %if.end.27

if.else.17:                                       ; preds = %if.else
  %18 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %18, i32 0, i32 6
  %19 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %cmp18 = icmp eq %struct.gs_copied_glyph_name_s* %19, null
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.else.21:                                       ; preds = %if.else.17
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %21, i32 0, i32 1
  %22 = load %struct.gs_copied_font_procs_s*, %struct.gs_copied_font_procs_s** %procs, align 8, !tbaa !68
  %named_glyph_slot = getelementptr inbounds %struct.gs_copied_font_procs_s, %struct.gs_copied_font_procs_s* %22, i32 0, i32 3
  %23 = load i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)*, i32 (%struct.gs_copied_font_data_s*, i64, %struct.gs_copied_glyph_s**)** %named_glyph_slot, align 8, !tbaa !169
  %24 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %25 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %26 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  %call = call i32 %23(%struct.gs_copied_font_data_s* %24, i64 %25, %struct.gs_copied_glyph_s** %26) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %27, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.21
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.13
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %30 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  %31 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %30, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %31, i32 0, i32 1
  %32 = load i8, i8* %used, align 1, !tbaa !151
  %tobool = icmp ne i8 %32, 0
  br i1 %tobool, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.28
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.30:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %if.end.30, %if.then.29, %cleanup, %if.then.20, %if.then.12, %if.then.3
  %33 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #2

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

declare i32 @gs_type42_default_get_metrics(%struct.gs_font_type42_s*, i32, i32, float*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_data(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options, %struct.gs_glyph_data_s* %pgdata, i8* %prefix, i32 %prefix_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %pgdata.addr = alloca %struct.gs_glyph_data_s*, align 8
  %prefix.addr = alloca i8*, align 8
  %prefix_bytes.addr = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %size = alloca i32, align 4
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str_size = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store %struct.gs_glyph_data_s* %pgdata, %struct.gs_glyph_data_s** %pgdata.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i32 %prefix_bytes, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgdata.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 0
  %size1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4, !tbaa !149
  store i32 %4, i32* %size, align 4, !tbaa !5
  %5 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.gs_copied_glyph_s* null, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call2 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %7, i64 %8, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %ordered = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %9, i32 0, i32 16
  %10 = load i32, i32* %ordered, align 4, !tbaa !72
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 -21, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %12, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %13 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %13, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 1
  %14 = load i32, i32* %size4, align 4, !tbaa !83
  %15 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %15, %16
  %cmp = icmp ne i32 %14, %add
  br i1 %cmp, label %if.then.17, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %17 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata6 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %17, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata6, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8, !tbaa !86
  %19 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %20 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %call7 = call i32 @memcmp(i8* %18, i8* %19, i64 %conv) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.17, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %21 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata10 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %21, i32 0, i32 0
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata10, i32 0, i32 0
  %22 = load i8*, i8** %data11, align 8, !tbaa !86
  %23 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgdata.addr, align 8, !tbaa !1
  %bits12 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %24, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits12, i32 0, i32 0
  %25 = load i8*, i8** %data13, align 8, !tbaa !150
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %conv14 = zext i32 %26 to i64
  %call15 = call i32 @memcmp(i8* %add.ptr, i8* %25, i64 %conv14) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %sw.bb
  store i32 -7, i32* %code, align 4, !tbaa !5
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false.9
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end
  %27 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and20 = and i32 %27, 2
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %sw.bb.19
  store i32 -21, i32* %code, align 4, !tbaa !5
  br label %if.end.52

if.else.23:                                       ; preds = %sw.bb.19
  %28 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gs_copied_glyph_s* %28, null
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.23
  store i32 -21, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.else.27:                                       ; preds = %if.else.23
  %29 = bitcast i32* %str_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %31 = load i32, i32* %size, align 4, !tbaa !5
  %add28 = add i32 %30, %31
  store i32 %add28, i32* %str_size, align 4, !tbaa !5
  %32 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 2
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %35 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !81
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 2
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !7
  %38 = load i32, i32* %str_size, align 4, !tbaa !5
  %call30 = call i8* %35(%struct.gs_memory_s* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %call30, i8** %str, align 8, !tbaa !1
  %39 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %39, null
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.27
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.50

if.else.34:                                       ; preds = %if.else.27
  %40 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.else.34
  %41 = load i8*, i8** %str, align 8, !tbaa !1
  %42 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %43 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %conv37 = sext i32 %43 to i64
  %call38 = call i8* @memcpy(i8* %41, i8* %42, i64 %conv37) #7
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.else.34
  %44 = load i8*, i8** %str, align 8, !tbaa !1
  %45 = load i32, i32* %prefix_bytes.addr, align 4, !tbaa !5
  %idx.ext40 = sext i32 %45 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %44, i64 %idx.ext40
  %46 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgdata.addr, align 8, !tbaa !1
  %bits42 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %46, i32 0, i32 0
  %data43 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits42, i32 0, i32 0
  %47 = load i8*, i8** %data43, align 8, !tbaa !150
  %48 = load i32, i32* %size, align 4, !tbaa !5
  %conv44 = zext i32 %48 to i64
  %call45 = call i8* @memcpy(i8* %add.ptr41, i8* %47, i64 %conv44) #7
  %49 = load i8*, i8** %str, align 8, !tbaa !1
  %50 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata46 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %50, i32 0, i32 0
  %data47 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata46, i32 0, i32 0
  store i8* %49, i8** %data47, align 8, !tbaa !86
  %51 = load i32, i32* %str_size, align 4, !tbaa !5
  %52 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata48 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %52, i32 0, i32 0
  %size49 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata48, i32 0, i32 1
  store i32 %51, i32* %size49, align 4, !tbaa !83
  %53 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %53, i32 0, i32 1
  store i8 1, i8* %used, align 1, !tbaa !151
  %54 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %order_index = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %54, i32 0, i32 2
  store i32 -1, i32* %order_index, align 4, !tbaa !152
  store i32 0, i32* %code, align 4, !tbaa !5
  %55 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %55, i32 0, i32 4
  %56 = load i32, i32* %num_glyphs, align 4, !tbaa !71
  %inc = add i32 %56, 1
  store i32 %inc, i32* %num_glyphs, align 4, !tbaa !71
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.39, %if.then.33
  %57 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %str_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.26
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.22
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end.52
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18
  %59 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgdata.addr, align 8, !tbaa !1
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #6
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_font_type1(%struct.gs_font_s* %font, %struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %font1 = alloca %struct.gs_font_type1_s*, align 8
  %copied1 = alloca %struct.gs_font_type1_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type1_s** %copied1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %5, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %6 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %7) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_base_s*
  %call1 = call i64 @find_notdef(%struct.gs_font_base_s* %10) #6
  %11 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %11, i32 0, i32 5
  store i64 %call1, i64* %notdef, align 8, !tbaa !77
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call2 = call i32 @copied_Encoding_alloc(%struct.gs_font_s* %12) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %16 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %16, i32 0, i32 12
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call3 = call i32 @copy_subrs(%struct.gs_font_type1_s* %15, i32 0, %struct.gs_subr_info_s* %subrs, %struct.gs_memory_s* %18) #6
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %20 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %global_subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %20, i32 0, i32 13
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !7
  %call6 = call i32 @copy_subrs(%struct.gs_font_type1_s* %19, i32 1, %struct.gs_subr_info_s* %global_subrs, %struct.gs_memory_s* %22) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 2
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 2
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %28 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %28, i32 0, i32 10
  %29 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %30 = bitcast i64* %29 to i8*
  call void %25(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0)) #6
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %32, i32 0, i32 29
  %procs12 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs12, i32 0, i32 0
  store i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)* @copied_type1_glyph_data, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !143
  %33 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %33, i32 0, i32 29
  %procs14 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data13, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs14, i32 0, i32 1
  store i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)* @copied_type1_subr_data, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !170
  %34 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %34, i32 0, i32 29
  %procs16 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data15, i32 0, i32 0
  %seac_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs16, i32 0, i32 2
  store i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)* @copied_type1_seac_data, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data, align 8, !tbaa !171
  %35 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data17 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %35, i32 0, i32 29
  %procs18 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data17, i32 0, i32 0
  %push_values = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs18, i32 0, i32 3
  store i32 (i8*, i32*, i32)* @copied_type1_push_values, i32 (i8*, i32*, i32)** %push_values, align 8, !tbaa !172
  %36 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %36, i32 0, i32 29
  %procs20 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data19, i32 0, i32 0
  %pop_value = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs20, i32 0, i32 4
  store i32 (i8*, i32*)* @copied_type1_pop_value, i32 (i8*, i32*)** %pop_value, align 8, !tbaa !173
  %37 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %copied1, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %37, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data21, i32 0, i32 2
  store i8* null, i8** %proc_data, align 8, !tbaa !174
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_font_type1_s** %copied1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_type1(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %font1 = alloca %struct.gs_font_type1_s*, align 8
  %code = alloca i32, align 4
  %rcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory1, align 8, !tbaa !140
  %8 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %8, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 0
  %9 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !143
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %font1, align 8, !tbaa !1
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 %9(%struct.gs_font_type1_s* %10, i64 %11, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %15 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %17 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call2 = call i32 @copy_glyph_data(%struct.gs_font_s* %14, i64 %15, %struct.gs_font_s* %16, i32 %17, %struct.gs_glyph_data_s* %gdata, i8* null, i32 0) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %rcode, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %23 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %25 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call8 = call i32 @copy_glyph_name(%struct.gs_font_s* %22, i64 %23, %struct.gs_font_s* %24, i64 %25) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %26, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %27 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %28 = load i32, i32* %rcode, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %29 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gs_font_type1_s** %font1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @named_glyph_slot_hashed(%struct.gs_copied_font_data_s* %cfdata, i64 %glyph, %struct.gs_copied_glyph_s** %pslot) #0 {
entry:
  %retval = alloca i32, align 4
  %cfdata.addr = alloca %struct.gs_copied_font_data_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pslot.addr = alloca %struct.gs_copied_glyph_s**, align 8
  %gsize = alloca i32, align 4
  %names = alloca %struct.gs_copied_glyph_name_s*, align 8
  %hash = alloca i32, align 4
  %hash2 = alloca i32, align 4
  %tries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_copied_font_data_s* %cfdata, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_copied_glyph_s** %pslot, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  %0 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %1, i32 0, i32 3
  %2 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  store i32 %2, i32* %gsize, align 4, !tbaa !5
  %3 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %names1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %4, i32 0, i32 6
  %5 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names1, align 8, !tbaa !73
  store %struct.gs_copied_glyph_name_s* %5, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %6 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %conv = trunc i64 %7 to i32
  %8 = load i32, i32* %gsize, align 4, !tbaa !5
  %rem = urem i32 %conv, %8
  store i32 %rem, i32* %hash, align 4, !tbaa !5
  %9 = bitcast i32* %hash2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %conv2 = trunc i64 %10 to i32
  %11 = load i32, i32* %gsize, align 4, !tbaa !5
  %div = udiv i32 %conv2, %11
  %mul = mul i32 %div, 2
  %add = add i32 %mul, 1
  %12 = load i32, i32* %gsize, align 4, !tbaa !5
  %rem3 = urem i32 %add, %12
  store i32 %rem3, i32* %hash2, align 4, !tbaa !5
  %13 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %gsize, align 4, !tbaa !5
  store i32 %14, i32* %tries, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %15 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %16, i64 %idxprom
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !92
  %cmp = icmp ne i8* %17, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom5 = zext i32 %18 to i64
  %19 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %19, i64 %idxprom5
  %glyph7 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx6, i32 0, i32 0
  %20 = load i64, i64* %glyph7, align 8, !tbaa !74
  %21 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp8 = icmp ne i64 %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i32, i32* %hash, align 4, !tbaa !5
  %24 = load i32, i32* %hash2, align 4, !tbaa !5
  %add10 = add i32 %23, %24
  %25 = load i32, i32* %gsize, align 4, !tbaa !5
  %rem11 = urem i32 %add10, %25
  store i32 %rem11, i32* %hash, align 4, !tbaa !5
  %26 = load i32, i32* %tries, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %27 = load i32, i32* %tries, align 4, !tbaa !5
  %dec = add i32 %27, -1
  store i32 %dec, i32* %tries, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %28 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom12 = zext i32 %28 to i64
  %29 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %29, i32 0, i32 2
  %30 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %arrayidx13 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %30, i64 %idxprom12
  %31 = load %struct.gs_copied_glyph_s**, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %arrayidx13, %struct.gs_copied_glyph_s** %31, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %32 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %hash2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %gsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i64 @copied_encode_char(%struct.gs_font_s* %copied, i64 %chr, i32 %glyph_space) #0 {
entry:
  %retval = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph_space.addr = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %Encoding = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !99
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %Encoding1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %3, i32 0, i32 10
  %4 = load i64*, i64** %Encoding1, align 8, !tbaa !87
  store i64* %4, i64** %Encoding, align 8, !tbaa !1
  %5 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %cmp = icmp uge i64 %5, 256
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %cmp2 = icmp eq i64* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %8 = load i64*, i64** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !82
  store i64 %9, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i64** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i32 @gs_type1_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %code = alloca i32, align 4
  %pgd = alloca %struct.gs_glyph_data_s*, align 8
  %cis = alloca %struct.gs_type1_state_s, align 8
  %gis = alloca %struct.gs_imager_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %imat = alloca %struct.gs_matrix_s, align 4
  %value = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.gs_glyph_data_s* %gdata, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %6 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.start(i64 11216, i8* %6) #1
  %7 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %7) #1
  %8 = bitcast %struct.gs_type1_state_s* %cis to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 11216) #7
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory1, align 8, !tbaa !140
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 0
  %12 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !143
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %14 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call2 = call i32 %12(%struct.gs_font_type1_s* %13, i64 %14, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %17, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !149
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %19, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 4
  %20 = load i32, i32* %lenIV, align 4, !tbaa !175
  %cmp4 = icmp sgt i32 %20, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %21, i32 0, i32 29
  %lenIV6 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data5, i32 0, i32 4
  %22 = load i32, i32* %lenIV6, align 4, !tbaa !175
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ 0, %cond.false ]
  %cmp7 = icmp ule i32 %18, %cond
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end.9:                                         ; preds = %cond.end
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %23, null
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call11 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_s* %24) #6
  br label %if.end.14

if.else:                                          ; preds = %if.end.9
  %25 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %25) #1
  call void @gs_make_identity(%struct.gs_matrix_s* %imat) #6
  %ctm12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %call13 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm12, %struct.gs_matrix_s* %imat) #6
  %26 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #1
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 27
  store float 0.000000e+00, float* %flatness, align 4, !tbaa !176
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %call15 = call i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %cis, %struct.gs_imager_state_s* %gis, %struct.gx_path_s* %27, %struct.gs_log2_scale_point_s* null, %struct.gs_log2_scale_point_s* null, i32 1, i32 0, %struct.gs_font_type1_s* %28) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %29, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end.18:                                        ; preds = %if.end.14
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 4
  store i32 1, i32* %no_grid_fitting, align 4, !tbaa !187
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.18
  %31 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %32, i32 0, i32 29
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data19, i32 0, i32 1
  %33 = load i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !195
  %34 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %call20 = call i32 %33(%struct.gs_type1_state_s* %cis, %struct.gs_glyph_data_s* %34, i32* %value) #6
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.21
    i32 1, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %for.cond
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %sw.bb
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %for.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %for.cond
  store %struct.gs_glyph_data_s* null, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %37 = load double*, double** %sbw.addr, align 8, !tbaa !1
  call void @type1_cis_get_metrics(%struct.gs_type1_state_s* %cis, double* %37) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.21, %sw.default
  %38 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

cleanup.23:                                       ; preds = %cleanup, %if.then.17, %if.then.8, %if.then
  %39 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %39) #1
  %40 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.end(i64 11216, i8* %40) #1
  %41 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_subrs(%struct.gs_font_type1_s* %pfont, i32 %global, %struct.gs_subr_info_s* %psi, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %global.addr = alloca i32, align 4
  %psi.addr = alloca %struct.gs_subr_info_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %data = alloca i8*, align 8
  %starts = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  store %struct.gs_subr_info_s* %psi, %struct.gs_subr_info_s** %psi.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32** %starts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory1, align 8, !tbaa !140
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %size, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %8, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data2, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %9 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !170
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* %global.addr, align 4, !tbaa !5
  %call = call i32 %9(%struct.gs_font_type1_s* %10, i32 %11, i32 %12, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, -15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %13, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %14 = load i32, i32* %size4, align 4, !tbaa !149
  %15 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %15, %14
  store i32 %add, i32* %size, align 4, !tbaa !5
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.end
  store i8* null, i8** %data, align 8, !tbaa !1
  store i32* null, i32** %starts, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %if.end.42

if.else:                                          ; preds = %for.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !136
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load i32, i32* %size, align 4, !tbaa !5
  %call8 = call i8* %19(%struct.gs_memory_s* %20, i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %call8, i8** %data, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !153
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %add10 = add nsw i32 %25, 1
  %call11 = call i8* %23(%struct.gs_memory_s* %24, i32 %add10, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0)) #6
  %26 = bitcast i8* %call11 to i32*
  store i32* %26, i32** %starts, align 8, !tbaa !1
  %27 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %27, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %28 = load i32*, i32** %starts, align 8, !tbaa !1
  %cmp13 = icmp eq i32* %28, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %lor.lhs.false, %if.else
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load i32*, i32** %starts, align 8, !tbaa !1
  %33 = bitcast i32* %32 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0)) #6
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !78
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %data, align 8, !tbaa !1
  call void %35(%struct.gs_memory_s* %36, i8* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %size, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.37, %if.end.18
  %38 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %38, i32 0, i32 29
  %procs21 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data20, i32 0, i32 0
  %subr_data22 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs21, i32 0, i32 1
  %39 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data22, align 8, !tbaa !170
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load i32, i32* %global.addr, align 4, !tbaa !5
  %call23 = call i32 %39(%struct.gs_font_type1_s* %40, i32 %41, i32 %42, %struct.gs_glyph_data_s* %gdata) #6
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %call23, -15
  br i1 %cmp24, label %for.body.25, label %for.end.39

for.body.25:                                      ; preds = %for.cond.19
  %43 = load i32, i32* %size, align 4, !tbaa !5
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load i32*, i32** %starts, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %45, i64 %idxprom
  store i32 %43, i32* %arrayidx, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %46, 0
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %for.body.25
  %47 = load i8*, i8** %data, align 8, !tbaa !1
  %48 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %bits28 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data29 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits28, i32 0, i32 0
  %49 = load i8*, i8** %data29, align 8, !tbaa !150
  %bits30 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size31 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits30, i32 0, i32 1
  %50 = load i32, i32* %size31, align 4, !tbaa !149
  %conv = zext i32 %50 to i64
  %call32 = call i8* @memcpy(i8* %add.ptr, i8* %49, i64 %conv) #7
  %bits33 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size34 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits33, i32 0, i32 1
  %51 = load i32, i32* %size34, align 4, !tbaa !149
  %52 = load i32, i32* %size, align 4, !tbaa !5
  %add35 = add i32 %52, %51
  store i32 %add35, i32* %size, align 4, !tbaa !5
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.27, %for.body.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %53, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  br label %for.cond.19

for.end.39:                                       ; preds = %for.cond.19
  %54 = load i32, i32* %size, align 4, !tbaa !5
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %55 to i64
  %56 = load i32*, i32** %starts, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %56, i64 %idxprom40
  store i32 %54, i32* %arrayidx41, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.39, %if.then.6
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %58 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi.addr, align 8, !tbaa !1
  %data43 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %58, i32 0, i32 0
  store i8* %57, i8** %data43, align 8, !tbaa !196
  %59 = load i32*, i32** %starts, align 8, !tbaa !1
  %60 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi.addr, align 8, !tbaa !1
  %starts44 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %60, i32 0, i32 2
  store i32* %59, i32** %starts44, align 8, !tbaa !197
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %62 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %62, i32 0, i32 1
  store i32 %61, i32* %count, align 4, !tbaa !198
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.14
  %63 = bitcast i32** %starts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %65) #1
  %66 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_glyph_data(%struct.gs_font_type1_s* %pfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pslot = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type1_s* %1 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %2) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call1 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %5, i64 %6, %struct.gs_copied_glyph_s** %pslot) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %10 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %10, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !86
  %12 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pslot, align 8, !tbaa !1
  %gdata2 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %12, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata2, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !83
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %9, i8* %11, i32 %13, %struct.gs_font_s* null) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_copied_glyph_s** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_subr_data(%struct.gs_font_type1_s* %pfont, i32 %subr_num, i32 %global, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %subr_num.addr = alloca i32, align 4
  %global.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %psi = alloca %struct.gs_subr_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %subr_num, i32* %subr_num.addr, align 4, !tbaa !5
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type1_s* %1 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %2) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = bitcast %struct.gs_subr_info_s** %psi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %global.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %global_subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %5, i32 0, i32 13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_subr_info_s* [ %global_subrs, %cond.true ], [ %subrs, %cond.false ]
  store %struct.gs_subr_info_s* %cond, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %7 = load i32, i32* %subr_num.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %8 = load i32, i32* %subr_num.addr, align 4, !tbaa !5
  %9 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %9, i32 0, i32 1
  %10 = load i32, i32* %count, align 4, !tbaa !198
  %cmp1 = icmp sge i32 %8, %10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %12 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !196
  %14 = load i32, i32* %subr_num.addr, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %starts = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %15, i32 0, i32 2
  %16 = load i32*, i32** %starts, align 8, !tbaa !197
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %18 = load i32, i32* %subr_num.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %idxprom2 = sext i32 %add to i64
  %19 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %starts3 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %19, i32 0, i32 2
  %20 = load i32*, i32** %starts3, align 8, !tbaa !197
  %arrayidx4 = getelementptr inbounds i32, i32* %20, i64 %idxprom2
  %21 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %22 = load i32, i32* %subr_num.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %22 to i64
  %23 = load %struct.gs_subr_info_s*, %struct.gs_subr_info_s** %psi, align 8, !tbaa !1
  %starts6 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %23, i32 0, i32 2
  %24 = load i32*, i32** %starts6, align 8, !tbaa !197
  %arrayidx7 = getelementptr inbounds i32, i32* %24, i64 %idxprom5
  %25 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %sub = sub i32 %21, %25
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %11, i8* %add.ptr, i32 %sub, %struct.gs_font_s* null) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast %struct.gs_subr_info_s** %psi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_seac_data(%struct.gs_font_type1_s* %pfont, i32 %ccode, i64* %pglyph, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %ccode.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %gstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %glyph = alloca i64, align 8
  %glyph1 = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %ccode, i32* %ccode.addr, align 4, !tbaa !5
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %gstr, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %ccode.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %call = call i64 @gs_c_known_encode(i64 %conv, i32 0) #6
  store i64 %call, i64* %glyph, align 8, !tbaa !82
  %2 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64, i64* %glyph, align 8, !tbaa !82
  %cmp = icmp eq i64 %4, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %glyph, align 8, !tbaa !82
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_c_glyph_name(i64 %5, %struct.gs_const_string_s* %6) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 3
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !199
  %global_glyph_code = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 16
  %11 = load i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)** %global_glyph_code, align 8, !tbaa !200
  %12 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %14 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %call7 = call i32 %11(%struct.gs_memory_s* %13, %struct.gs_const_string_s* %14, i64* %glyph1) #6
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %17 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %tobool = icmp ne i64* %17, null
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.11
  %18 = load i64, i64* %glyph1, align 8, !tbaa !82
  %19 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %18, i64* %19, align 8, !tbaa !82
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.11
  %20 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool14 = icmp ne %struct.gs_glyph_data_s* %20, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %22 = load i64, i64* %glyph1, align 8, !tbaa !82
  %23 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call16 = call i32 @copied_type1_glyph_data(%struct.gs_font_type1_s* %21, i64 %22, %struct.gs_glyph_data_s* %23) #6
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.15, %if.then.10, %if.then.5, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_push_values(i8* %callback_data, i32* %values, i32 %count) #0 {
entry:
  %callback_data.addr = alloca i8*, align 8
  %values.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  store i8* %callback_data, i8** %callback_data.addr, align 8, !tbaa !1
  store i32* %values, i32** %values.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  ret i32 -28
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_type1_pop_value(i8* %callback_data, i32* %value) #0 {
entry:
  %callback_data.addr = alloca i8*, align 8
  %value.addr = alloca i32*, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8, !tbaa !1
  store i32* %value, i32** %value.addr, align 8, !tbaa !1
  ret i32 -28
}

declare i64 @gs_c_known_encode(i64, i32) #2

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #2

declare i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_type1_interp_init(%struct.gs_type1_state_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s*, i32, i32, %struct.gs_font_type1_s*) #2

declare void @type1_cis_get_metrics(%struct.gs_type1_state_s*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_font_cid0(%struct.gs_font_s* %font, %struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %copied0 = alloca %struct.gs_font_cid0_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %FDArray = alloca %struct.gs_font_type1_s**, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %subfont = alloca %struct.gs_font_s*, align 8
  %subfont1 = alloca %struct.gs_font_type1_s*, align 8
  %subcopy = alloca %struct.gs_font_s*, align 8
  %subcopy1 = alloca %struct.gs_font_type1_s*, align 8
  %subdata = alloca %struct.gs_copied_font_data_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %copied0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %4) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %8 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !42
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %11 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %11, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %12 = load i32, i32* %FDArray_size, align 4, !tbaa !128
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %12, %struct.gs_memory_struct_type_s* @st_gs_font_type1_ptr_element, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #6
  %13 = bitcast i8* %call2 to %struct.gs_font_type1_s**
  store %struct.gs_font_type1_s** %13, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_type1_s** %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %19, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata3, i32 0, i32 0
  %call4 = call i32 @copy_font_cid_common(%struct.gs_font_s* %17, %struct.gs_font_s* %18, %struct.gs_font_cid_data_s* %common) #6
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %20, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %fail

if.end.7:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata8 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %22, i32 0, i32 29
  %FDArray_size9 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata8, i32 0, i32 3
  %23 = load i32, i32* %FDArray_size9, align 4, !tbaa !128
  %cmp10 = icmp ult i32 %21, %23
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata11 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %26, i32 0, i32 29
  %FDArray12 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata11, i32 0, i32 2
  %27 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray12, align 8, !tbaa !129
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %27, i64 %idxprom
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %29 = bitcast %struct.gs_font_type1_s* %28 to %struct.gs_font_s*
  store %struct.gs_font_s* %29, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %30 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %32 = bitcast %struct.gs_font_s* %31 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %32, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %33 = bitcast %struct.gs_font_s** %subcopy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_font_type1_s** %subcopy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast %struct.gs_copied_font_data_s** %subdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %36, 0
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %for.body
  %37 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %38 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %global_subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %38, i32 0, i32 13
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 2
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %call16 = call i32 @copy_subrs(%struct.gs_font_type1_s* %37, i32 1, %struct.gs_subr_info_s* %global_subrs, %struct.gs_memory_s* %40) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %41, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 9
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i32 0, i32 2
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !7
  %call22 = call i32 @gs_copy_font(%struct.gs_font_s* %42, %struct.gs_matrix_s* %FontMatrix, %struct.gs_memory_s* %45, %struct.gs_font_s** %subcopy, i32 -1) #6
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %46, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.20
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %subcopy, align 8, !tbaa !1
  %48 = bitcast %struct.gs_font_s* %47 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %48, %struct.gs_font_type1_s** %subcopy1, align 8, !tbaa !1
  %49 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subcopy1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %49, i32 0, i32 29
  %parent = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 3
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %parent, align 8, !tbaa !204
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %subcopy, align 8, !tbaa !1
  %call26 = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %50) #6
  store %struct.gs_copied_font_data_s* %call26, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %51 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %52 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %parent27 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %52, i32 0, i32 14
  store %struct.gs_font_cid0_s* %51, %struct.gs_font_cid0_s** %parent27, align 8, !tbaa !205
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %53, i32 0, i32 2
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !7
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %56, i32 0, i32 2
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !7
  %58 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %58, i32 0, i32 10
  %59 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %60 = bitcast i64* %59 to i8*
  call void %55(%struct.gs_memory_s* %57, i8* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0)) #6
  %61 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %Encoding31 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %61, i32 0, i32 10
  store i64* null, i64** %Encoding31, align 8, !tbaa !87
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %62, i32 0, i32 2
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !7
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !78
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %65, i32 0, i32 2
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !7
  %67 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %67, i32 0, i32 6
  %68 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %69 = bitcast %struct.gs_copied_glyph_name_s* %68 to i8*
  call void %64(%struct.gs_memory_s* %66, i8* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0)) #6
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %70, i32 0, i32 2
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !7
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %free_object38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %72 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object38, align 8, !tbaa !78
  %73 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %73, i32 0, i32 2
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !7
  %75 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %75, i32 0, i32 2
  %76 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %77 = bitcast %struct.gs_copied_glyph_s* %76 to i8*
  call void %72(%struct.gs_memory_s* %74, i8* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0)) #6
  %78 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subcopy1, align 8, !tbaa !1
  %data40 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %78, i32 0, i32 29
  %procs41 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data40, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs41, i32 0, i32 0
  store i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)* @copied_sub_type1_glyph_data, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !143
  %79 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs42 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %79, i32 0, i32 2
  %80 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs42, align 8, !tbaa !69
  %81 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %glyphs43 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %81, i32 0, i32 2
  store %struct.gs_copied_glyph_s* %80, %struct.gs_copied_glyph_s** %glyphs43, align 8, !tbaa !69
  %82 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %82, i32 0, i32 3
  %83 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %84 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %glyphs_size44 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %84, i32 0, i32 3
  store i32 %83, i32* %glyphs_size44, align 4, !tbaa !70
  %85 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %names45 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %85, i32 0, i32 6
  store %struct.gs_copied_glyph_name_s* null, %struct.gs_copied_glyph_name_s** %names45, align 8, !tbaa !73
  %86 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %subdata, align 8, !tbaa !1
  %global_subrs46 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %86, i32 0, i32 13
  %87 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %global_subrs47 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %87, i32 0, i32 13
  %88 = bitcast %struct.gs_subr_info_s* %global_subrs46 to i8*
  %89 = bitcast %struct.gs_subr_info_s* %global_subrs47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 24, i32 8, i1 false), !tbaa.struct !206
  %90 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subcopy1, align 8, !tbaa !1
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %91 to i64
  %92 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %92, i64 %idxprom48
  store %struct.gs_font_type1_s* %90, %struct.gs_font_type1_s** %arrayidx49, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.24, %if.then.18, %if.end.25
  %93 = bitcast %struct.gs_copied_font_data_s** %subdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_font_type1_s** %subcopy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_font_s** %subcopy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.77 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %99, i32 0, i32 5
  store i64 2147483648, i64* %notdef, align 8, !tbaa !77
  %100 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %101 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata54 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %101, i32 0, i32 29
  %FDArray55 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata54, i32 0, i32 2
  store %struct.gs_font_type1_s** %100, %struct.gs_font_type1_s*** %FDArray55, align 8, !tbaa !129
  %102 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata56 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %102, i32 0, i32 29
  %FDArray_size57 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata56, i32 0, i32 3
  %103 = load i32, i32* %FDArray_size57, align 4, !tbaa !128
  %cmp58 = icmp ule i32 %103, 1
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %104 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata59 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %104, i32 0, i32 29
  %FDArray_size60 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata59, i32 0, i32 3
  %105 = load i32, i32* %FDArray_size60, align 4, !tbaa !128
  %cmp61 = icmp ule i32 %105, 256
  %cond = select i1 %cmp61, i32 1, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond62 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ]
  %106 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata63 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %106, i32 0, i32 29
  %FDBytes = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata63, i32 0, i32 4
  store i32 %cond62, i32* %FDBytes, align 4, !tbaa !207
  %107 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata64 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %107, i32 0, i32 29
  %glyph_data65 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata64, i32 0, i32 5
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)* @copied_cid0_glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data65, align 8, !tbaa !148
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

fail:                                             ; preds = %cleanup, %if.then.6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %fail
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %108, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp66 = icmp sge i32 %dec, 0
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %109 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %109, i32 0, i32 2
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !7
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %free_object69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 2
  %111 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object69, align 8, !tbaa !78
  %112 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %112, i32 0, i32 2
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !7
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %114 to i64
  %115 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %115, i64 %idxprom71
  %116 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx72, align 8, !tbaa !1
  %117 = bitcast %struct.gs_font_type1_s* %116 to i8*
  call void %111(%struct.gs_memory_s* %113, i8* %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0)) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %118 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %118, i32 0, i32 2
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory73, align 8, !tbaa !7
  %procs74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %free_object75 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs74, i32 0, i32 2
  %120 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object75, align 8, !tbaa !78
  %121 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %121, i32 0, i32 2
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !7
  %123 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %124 = bitcast %struct.gs_font_type1_s** %123 to i8*
  call void %120(%struct.gs_memory_s* %122, i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #6
  %125 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %while.end, %cond.end, %cleanup, %if.then
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast %struct.gs_font_cid0_s** %copied0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_cid0(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %fcid0 = alloca %struct.gs_font_cid0_s*, align 8
  %copied0 = alloca %struct.gs_font_cid0_s*, align 8
  %fdbytes = alloca i32, align 4
  %fidx = alloca i32, align 4
  %code = alloca i32, align 4
  %prefix = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_font_cid0_s** %fcid0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %3, %struct.gs_font_cid0_s** %fcid0, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_cid0_s** %copied0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %6, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %7 = bitcast i32* %fdbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %copied0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %8, i32 0, i32 29
  %FDBytes = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 4
  %9 = load i32, i32* %FDBytes, align 4, !tbaa !207
  store i32 %9, i32* %fdbytes, align 4, !tbaa !5
  %10 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast [4 x i8]* %prefix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %memory1, align 8, !tbaa !140
  %16 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %fcid0, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %16, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 5
  %17 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !148
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_s* %18 to %struct.gs_font_base_s*
  %20 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 %17(%struct.gs_font_base_s* %19, i64 %20, %struct.gs_glyph_data_s* %gdata, i32* %fidx) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %fdbytes, align 4, !tbaa !5
  %sub = sub nsw i32 %23, 1
  store i32 %sub, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %24, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %fidx, align 4, !tbaa !5
  %conv = trunc i32 %25 to i8
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %prefix, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %fidx, align 4, !tbaa !5
  %shr = ashr i32 %28, 8
  store i32 %shr, i32* %fidx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %fidx, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %29, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.end
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %31 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %33 = load i32, i32* %options.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %prefix, i32 0, i32 0
  %34 = load i32, i32* %fdbytes, align 4, !tbaa !5
  %call8 = call i32 @copy_glyph_data(%struct.gs_font_s* %30, i64 %31, %struct.gs_font_s* %32, i32 %33, %struct.gs_glyph_data_s* %gdata, i8* %arraydecay, i32 %34) #6
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast [4 x i8]* %prefix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %fdbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_font_cid0_s** %copied0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_font_cid0_s** %fcid0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_no_add_encoding(%struct.gs_font_s* %copied, i64 %chr, i64 %glyph) #0 {
entry:
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  ret i32 -7
}

; Function Attrs: nounwind uwtable
define internal i32 @named_glyph_slot_none(%struct.gs_copied_font_data_s* %cfdata, i64 %glyph, %struct.gs_copied_glyph_s** %pslot) #0 {
entry:
  %cfdata.addr = alloca %struct.gs_copied_font_data_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pslot.addr = alloca %struct.gs_copied_glyph_s**, align 8
  store %struct.gs_copied_font_data_s* %cfdata, %struct.gs_copied_font_data_s** %cfdata.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_copied_glyph_s** %pslot, %struct.gs_copied_glyph_s*** %pslot.addr, align 8, !tbaa !1
  ret i32 -15
}

declare i64 @gs_no_encode_char(%struct.gs_font_s*, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_cid0_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %subfont1 = alloca %struct.gs_font_type1_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %finfo = alloca %struct.gs_font_info_s, align 8
  %code2 = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 @cid0_subfont(%struct.gs_font_s* %2, i64 %3, %struct.gs_font_type1_s** %subfont1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and = and i32 %6, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.29

if.then.1:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_font_info_s* %finfo to i8*
  call void @llvm.lifetime.start(i64 160, i8* %7) #1
  %8 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %10 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !208
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call3 = call i32 %10(%struct.gs_font_s* %11, %struct.gs_point_s* null, i32 4, %struct.gs_font_info_s* %finfo) #6
  store i32 %call3, i32* %code2, align 4, !tbaa !5
  %12 = load i32, i32* %code2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  %13 = load i32, i32* %code2, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.1
  %14 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !132
  %15 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width7, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx8, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !133
  %16 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %16, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width9, i32 0, i64 1
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx10, i32 0, i32 0
  store double 0.000000e+00, double* %x11, align 8, !tbaa !132
  %BBox = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %finfo, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %17 = load i32, i32* %x12, align 4, !tbaa !209
  %sub = sub nsw i32 0, %17
  %conv = sitofp i32 %sub to double
  %18 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %18, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width13, i32 0, i64 1
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx14, i32 0, i32 1
  store double %conv, double* %y15, align 8, !tbaa !133
  %BBox16 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %finfo, i32 0, i32 3
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox16, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 0
  %19 = load i32, i32* %x18, align 4, !tbaa !209
  %div = sdiv i32 %19, 2
  %conv19 = sitofp i32 %div to double
  %20 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %20, i32 0, i32 2
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %conv19, double* %x20, align 8, !tbaa !134
  %BBox21 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %finfo, i32 0, i32 3
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %BBox21, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 1
  %21 = load i32, i32* %y23, align 4, !tbaa !210
  %conv24 = sitofp i32 %21 to double
  %22 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v25 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %22, i32 0, i32 2
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v25, i32 0, i32 1
  store double %conv24, double* %y26, align 8, !tbaa !135
  %23 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members27 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %23, i32 0, i32 0
  store i32 2, i32* %members27, align 4, !tbaa !211
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %24 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_font_info_s* %finfo to i8*
  call void @llvm.lifetime.end(i64 160, i8* %25) #1
  br label %cleanup.32

if.end.29:                                        ; preds = %if.end
  %26 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %26, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs30, i32 0, i32 7
  %27 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !212
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %29 = bitcast %struct.gs_font_type1_s* %28 to %struct.gs_font_s*
  %30 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %32 = load i32, i32* %members.addr, align 4, !tbaa !5
  %33 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call31 = call i32 %27(%struct.gs_font_s* %29, i64 %30, %struct.gs_matrix_s* %31, i32 %32, %struct.gs_glyph_info_s* %33) #6
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %if.end.29, %cleanup, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_cid0_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %subfont1 = alloca %struct.gs_font_type1_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 @cid0_subfont(%struct.gs_font_s* %2, i64 %3, %struct.gs_font_type1_s** %subfont1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 8
  %7 = load i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !213
  %8 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %subfont1, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_type1_s* %8 to %struct.gs_font_s*
  %10 = load i32, i32* %WMode.addr, align 4, !tbaa !5
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %14 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call1 = call i32 %7(%struct.gs_font_s* %9, i32 %10, i64 %11, %struct.gs_matrix_s* %12, %struct.gx_path_s* %13, double* %14) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_font_type1_s** %subfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_font_cid_common(%struct.gs_font_s* %font, %struct.gs_font_s* %copied, %struct.gs_font_cid_data_s* %pcdata) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %pcdata.addr = alloca %struct.gs_font_cid_data_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store %struct.gs_font_cid_data_s* %pcdata, %struct.gs_font_cid_data_s** %pcdata.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %2 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pcdata.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %2, i32 0, i32 0
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %CIDSystemInfo, i32 0, i32 0
  %call = call i32 @copy_string(%struct.gs_memory_s* %1, %struct.gs_const_string_s* %Registry, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)) #6
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %5 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pcdata.addr, align 8, !tbaa !1
  %CIDSystemInfo2 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %5, i32 0, i32 0
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %CIDSystemInfo2, i32 0, i32 1
  %call3 = call i32 @copy_string(%struct.gs_memory_s* %4, %struct.gs_const_string_s* %Ordering, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #6
  %or = or i32 %call, %call3
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_sub_type1_glyph_data(%struct.gs_font_type1_s* %pfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_font_type1_s* %0 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  %parent = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %call, i32 0, i32 14
  %2 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %parent, align 8, !tbaa !205
  %3 = bitcast %struct.gs_font_cid0_s* %2 to %struct.gs_font_base_s*
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %5 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call1 = call i32 @copied_cid0_glyph_data(%struct.gs_font_base_s* %3, i64 %4, %struct.gs_glyph_data_s* %5, i32* null) #6
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_cid0_glyph_data(%struct.gs_font_base_s* %font, i64 %glyph, %struct.gs_glyph_data_s* %pgd, i32* %pfidx) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfidx.addr = alloca i32*, align 8
  %fcid0 = alloca %struct.gs_font_cid0_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %code = alloca i32, align 4
  %fdbytes = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %fcid0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_base_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %fcid0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_base_s* %4 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %5) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %6 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %9 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call1 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %8, i64 %9, %struct.gs_copied_glyph_s** %pcg) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %10 = bitcast i32* %fdbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %fcid0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %11, i32 0, i32 29
  %FDBytes = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 4
  %12 = load i32, i32* %FDBytes, align 4, !tbaa !207
  store i32 %12, i32* %fdbytes, align 4, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 0, i32* %15, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %17 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gs_glyph_data_s* %17, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %18 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %18) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %19 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %tobool7 = icmp ne i32* %19, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %fdbytes, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %shl = shl i32 %23, 8
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %25, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8, !tbaa !86
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !99
  %conv = zext i8 %27 to i32
  %add = add nsw i32 %shl, %conv
  %28 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %add, i32* %28, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.end.6
  %30 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool11 = icmp ne %struct.gs_glyph_data_s* %30, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %31 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %32 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata13 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %32, i32 0, i32 0
  %data14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata13, i32 0, i32 0
  %33 = load i8*, i8** %data14, align 8, !tbaa !86
  %34 = load i32, i32* %fdbytes, align 4, !tbaa !5
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  %35 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %gdata15 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %35, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata15, i32 0, i32 1
  %36 = load i32, i32* %size, align 4, !tbaa !83
  %37 = load i32, i32* %fdbytes, align 4, !tbaa !5
  %sub = sub i32 %36, %37
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %31, i8* %add.ptr, i32 %sub, %struct.gs_font_s* null) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.end.5
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %fdbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gs_font_cid0_s** %fcid0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @cid0_subfont(%struct.gs_font_s* %copied, i64 %glyph, %struct.gs_font_type1_s** %pfont1) #0 {
entry:
  %retval = alloca i32, align 4
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pfont1.addr = alloca %struct.gs_font_type1_s**, align 8
  %fidx = alloca i32, align 4
  %code = alloca i32, align 4
  %font0 = alloca %struct.gs_font_cid0_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_type1_s** %pfont1, %struct.gs_font_type1_s*** %pfont1.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_base_s*
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 @copied_cid0_glyph_data(%struct.gs_font_base_s* %3, i64 %4, %struct.gs_glyph_data_s* null, i32* %fidx) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.gs_font_cid0_s** %font0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_s* %7 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %8, %struct.gs_font_cid0_s** %font0, align 8, !tbaa !1
  %9 = load i32, i32* %fidx, align 4, !tbaa !5
  %10 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %10, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %11 = load i32, i32* %FDArray_size, align 4, !tbaa !128
  %cmp1 = icmp uge i32 %9, %11
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %fidx, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %font0, align 8, !tbaa !1
  %cidata3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %13, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata3, i32 0, i32 2
  %14 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !129
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %14, i64 %idxprom
  %15 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %16 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %pfont1.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %15, %struct.gs_font_type1_s** %16, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %17 = bitcast %struct.gs_font_cid0_s** %font0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4

if.end.4:                                         ; preds = %cleanup.cont, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.4, %cleanup
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_font_cid2(%struct.gs_font_s* %font, %struct.gs_font_s* %copied) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %copied2 = alloca %struct.gs_font_cid2_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %code = alloca i32, align 4
  %CIDCount = alloca i32, align 4
  %CIDMap = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  %copied42 = alloca %struct.gs_font_type42_s*, align 8
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %copied2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %4) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %CIDCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount1 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %8 = load i32, i32* %CIDCount1, align 4, !tbaa !214
  store i32 %8, i32* %CIDCount, align 4, !tbaa !5
  %9 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %12 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !153
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !7
  %15 = load i32, i32* %CIDCount, align 4, !tbaa !5
  %call3 = call i8* %12(%struct.gs_memory_s* %14, i32 %15, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #6
  %16 = bitcast i8* %call3 to i16*
  store i16* %16, i16** %CIDMap, align 8, !tbaa !1
  %17 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %cmp = icmp eq i16* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %20 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %cidata4 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %20, i32 0, i32 30
  %common5 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata4, i32 0, i32 0
  %call6 = call i32 @copy_font_cid_common(%struct.gs_font_s* %18, %struct.gs_font_s* %19, %struct.gs_font_cid_data_s* %common5) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %21, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call8 = call i32 @copy_font_type42(%struct.gs_font_s* %22, %struct.gs_font_s* %23) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 2
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !7
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %29 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %30 = bitcast i16* %29 to i8*
  call void %26(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #6
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end.14:                                        ; preds = %lor.lhs.false
  %32 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %32, i32 0, i32 5
  store i64 2147483648, i64* %notdef, align 8, !tbaa !77
  %33 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %34 = bitcast i16* %33 to i8*
  %35 = load i32, i32* %CIDCount, align 4, !tbaa !5
  %conv = sext i32 %35 to i64
  %mul = mul i64 %conv, 2
  %call15 = call i8* @memset(i8* %34, i32 255, i64 %mul) #7
  %36 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %37 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap16 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %37, i32 0, i32 11
  store i16* %36, i16** %CIDMap16, align 8, !tbaa !215
  %38 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %cidata17 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %38, i32 0, i32 30
  %MetricsCount = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata17, i32 0, i32 1
  store i32 0, i32* %MetricsCount, align 4, !tbaa !216
  %39 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %cidata18 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %39, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata18, i32 0, i32 2
  store i32 (%struct.gs_font_cid2_s*, i64)* @copied_cid2_CIDMap_proc, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !164
  %40 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_font_s* %41 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %42, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %43 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %copied42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %43, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @copied_cid2_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !144
  %44 = bitcast %struct.gs_font_type42_s** %copied42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %45, i32 0, i32 31
  %46 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !217
  %tobool = icmp ne %struct.gs_subst_CID_on_WMode_s* %46, null
  br i1 %tobool, label %if.then.19, label %if.end.56

if.then.19:                                       ; preds = %if.end.14
  %47 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store %struct.gs_subst_CID_on_WMode_s* null, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %48 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %48, i32 0, i32 2
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !218
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 8
  %50 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !43
  %51 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %51, i32 0, i32 2
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !218
  %call23 = call i8* %50(%struct.gs_memory_s* %52, %struct.gs_memory_struct_type_s* @st_subst_CID_on_WMode, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0)) #6
  %53 = bitcast i8* %call23 to %struct.gs_subst_CID_on_WMode_s*
  store %struct.gs_subst_CID_on_WMode_s* %53, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gs_subst_CID_on_WMode_s* %53, null
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.else
  %54 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %54, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !219
  %55 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %55, i32 0, i32 2
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !218
  %57 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc29 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %57, i32 0, i32 0
  %memory30 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc29, i32 0, i32 1
  store %struct.gs_memory_s* %56, %struct.gs_memory_s** %memory30, align 8, !tbaa !222
  %58 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc31 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %58, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !223
  br label %do.body.32

do.body.32:                                       ; preds = %do.body.27
  br label %do.cond

do.cond:                                          ; preds = %do.body.32
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.end
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %59 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %59, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %data38, i32 0, i64 1
  store i32* null, i32** %arrayidx, align 8, !tbaa !1
  %60 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data39 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %60, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data39, i32 0, i64 0
  store i32* null, i32** %arrayidx40, align 8, !tbaa !1
  %61 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %62 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %subst_CID_on_WMode41 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %62, i32 0, i32 31
  store %struct.gs_subst_CID_on_WMode_s* %61, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode41, align 8, !tbaa !217
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.37
  %63 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %tobool43 = icmp ne %struct.gs_subst_CID_on_WMode_s* %63, null
  br i1 %tobool43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %do.body.42
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %64 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc46 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %64, i32 0, i32 0
  %ref_count47 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc46, i32 0, i32 0
  %65 = load i64, i64* %ref_count47, align 8, !tbaa !219
  %inc = add nsw i64 %65, 1
  store i64 %inc, i64* %ref_count47, align 8, !tbaa !219
  br label %do.body.48

do.body.48:                                       ; preds = %do.body.45
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.body.42
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.55, %if.then.26
  %66 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.56, %cleanup, %if.then.10, %if.then
  %67 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %CIDCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.gs_font_cid2_s** %copied2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_glyph_cid2(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_font_s* %copied, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %copied.addr = alloca %struct.gs_font_s*, align 8
  %options.addr = alloca i32, align 4
  %fcid2 = alloca %struct.gs_font_cid2_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %copied2 = alloca %struct.gs_font_cid2_s*, align 8
  %gid = alloca i32, align 4
  %code = alloca i32, align 4
  %cid = alloca i32, align 4
  %CIDCount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_font_s* %copied, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_cid2_s** %fcid2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %fcid2, align 8, !tbaa !1
  %3 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %4) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_cid2_s** %copied2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %7, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %8 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %10, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %11 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub = sub i64 %12, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !5
  %13 = bitcast i32* %CIDCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %15 = load i32, i32* %cid, align 4, !tbaa !5
  %add = add i32 %15, 1
  %call1 = call i32 @expand_CIDMap(%struct.gs_font_cid2_s* %14, i32 %add) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %18 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %18, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount4 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %19 = load i32, i32* %CIDCount4, align 4, !tbaa !214
  store i32 %19, i32* %CIDCount, align 4, !tbaa !5
  %20 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fcid2, align 8, !tbaa !1
  %cidata5 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %20, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata5, i32 0, i32 2
  %21 = load i32 (%struct.gs_font_cid2_s*, i64)*, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !164
  %22 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fcid2, align 8, !tbaa !1
  %23 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call6 = call i32 %21(%struct.gs_font_cid2_s* %22, i64 %23) #6
  store i32 %call6, i32* %gid, align 4, !tbaa !5
  %24 = load i32, i32* %gid, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %24, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %25 = load i32, i32* %gid, align 4, !tbaa !5
  %26 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %26, i32 0, i32 3
  %27 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp9 = icmp uge i32 %25, %27
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %28 = load i32, i32* %cid, align 4, !tbaa !5
  %29 = load i32, i32* %CIDCount, align 4, !tbaa !5
  %cmp13 = icmp ugt i32 %28, %29
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %30 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom = zext i32 %30 to i64
  %31 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %31, i32 0, i32 11
  %32 = load i16*, i16** %CIDMap, align 8, !tbaa !215
  %arrayidx = getelementptr inbounds i16, i16* %32, i64 %idxprom
  %33 = load i16, i16* %arrayidx, align 2, !tbaa !224
  %conv17 = zext i16 %33 to i32
  %cmp18 = icmp ne i32 %conv17, 65535
  br i1 %cmp18, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.16
  %34 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom20 = zext i32 %34 to i64
  %35 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap21 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %35, i32 0, i32 11
  %36 = load i16*, i16** %CIDMap21, align 8, !tbaa !215
  %arrayidx22 = getelementptr inbounds i16, i16* %36, i64 %idxprom20
  %37 = load i16, i16* %arrayidx22, align 2, !tbaa !224
  %conv23 = zext i16 %37 to i32
  %38 = load i32, i32* %gid, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %conv23, %38
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true, %if.end.16
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %40 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %42 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call28 = call i32 @copy_glyph_type42(%struct.gs_font_s* %39, i64 %40, %struct.gs_font_s* %41, i32 %42) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %43, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %45 = load i32, i32* %gid, align 4, !tbaa !5
  %conv33 = trunc i32 %45 to i16
  %46 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom34 = zext i32 %46 to i64
  %47 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap35 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %47, i32 0, i32 11
  %48 = load i16*, i16** %CIDMap35, align 8, !tbaa !215
  %arrayidx36 = getelementptr inbounds i16, i16* %48, i64 %idxprom34
  store i16 %conv33, i16* %arrayidx36, align 2, !tbaa !224
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31, %if.then.26, %if.then.15, %if.then.11, %if.then.3
  %49 = bitcast i32* %CIDCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else:                                          ; preds = %entry
  %51 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub38 = sub i64 %51, 3221225472
  %conv39 = trunc i64 %sub38 to i32
  store i32 %conv39, i32* %gid, align 4, !tbaa !5
  %52 = load i32, i32* %gid, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %52, 0
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.else
  %53 = load i32, i32* %gid, align 4, !tbaa !5
  %54 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size43 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %54, i32 0, i32 3
  %55 = load i32, i32* %glyphs_size43, align 4, !tbaa !70
  %cmp44 = icmp uge i32 %53, %55
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.42, %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.47:                                        ; preds = %lor.lhs.false.42
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %57 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %copied.addr, align 8, !tbaa !1
  %59 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call48 = call i32 @copy_glyph_type42(%struct.gs_font_s* %56, i64 %57, %struct.gs_font_s* %58, i32 %59) #6
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %60, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.52:                                        ; preds = %if.end.47
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %cleanup.cont
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.53, %if.then.51, %if.then.46, %cleanup
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gs_font_cid2_s** %copied2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_font_cid2_s** %fcid2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_cid2_CIDMap_proc(%struct.gs_font_cid2_s* %fcid2, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %fcid2.addr = alloca %struct.gs_font_cid2_s*, align 8
  %glyph.addr = alloca i64, align 8
  %cid = alloca i32, align 4
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %CIDMap = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_cid2_s* %fcid2, %struct.gs_font_cid2_s** %fcid2.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %sub = sub i64 %1, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !5
  %2 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fcid2.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_cid2_s* %3 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %4) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %5 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 11
  %7 = load i16*, i16** %CIDMap1, align 8, !tbaa !215
  store i16* %7, i16** %CIDMap, align 8, !tbaa !1
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp = icmp ult i64 %8, 2147483648
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %cid, align 4, !tbaa !5
  %10 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fcid2.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %10, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %11 = load i32, i32* %CIDCount, align 4, !tbaa !214
  %cmp3 = icmp uge i32 %9, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom = zext i32 %12 to i64
  %13 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !224
  %conv5 = zext i16 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 65535
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %15 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom10 = zext i32 %15 to i64
  %16 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 %idxprom10
  %17 = load i16, i16* %arrayidx11, align 2, !tbaa !224
  %conv12 = zext i16 %17 to i32
  store i32 %conv12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %18 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @copied_cid2_get_glyph_index(%struct.gs_font_type42_s* %font, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %font, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_cid2_s*
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call = call i32 @copied_cid2_CIDMap_proc(%struct.gs_font_cid2_s* %2, i64 %3) #6
  store i32 %call, i32* %glyph_index, align 4, !tbaa !5
  %4 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2147483647, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %glyph_index, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @expand_CIDMap(%struct.gs_font_cid2_s* %copied2, i32 %CIDCount) #0 {
entry:
  %retval = alloca i32, align 4
  %copied2.addr = alloca %struct.gs_font_cid2_s*, align 8
  %CIDCount.addr = alloca i32, align 4
  %CIDMap = alloca i16*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_cid2_s* %copied2, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  store i32 %CIDCount, i32* %CIDCount.addr, align 4, !tbaa !5
  %0 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_cid2_s* %2 to %struct.gs_font_s*
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %3) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %4 = load i32, i32* %CIDCount.addr, align 4, !tbaa !5
  %5 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %5, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount1 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %6 = load i32, i32* %CIDCount1, align 4, !tbaa !214
  %cmp = icmp ule i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !218
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !153
  %10 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !218
  %12 = load i32, i32* %CIDCount.addr, align 4, !tbaa !5
  %call3 = call i8* %9(%struct.gs_memory_s* %11, i32 %12, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #6
  %13 = bitcast i8* %call3 to i16*
  store i16* %13, i16** %CIDMap, align 8, !tbaa !1
  %14 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %cmp4 = icmp eq i16* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %15 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %16 = bitcast i16* %15 to i8*
  %17 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap7 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %17, i32 0, i32 11
  %18 = load i16*, i16** %CIDMap7, align 8, !tbaa !215
  %19 = bitcast i16* %18 to i8*
  %20 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %cidata8 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %20, i32 0, i32 30
  %common9 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata8, i32 0, i32 0
  %CIDCount10 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common9, i32 0, i32 1
  %21 = load i32, i32* %CIDCount10, align 4, !tbaa !214
  %conv = sext i32 %21 to i64
  %mul = mul i64 %conv, 2
  %call11 = call i8* @memcpy(i8* %16, i8* %19, i64 %mul) #7
  %22 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %23 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %cidata12 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %23, i32 0, i32 30
  %common13 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata12, i32 0, i32 0
  %CIDCount14 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common13, i32 0, i32 1
  %24 = load i32, i32* %CIDCount14, align 4, !tbaa !214
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i16, i16* %22, i64 %idx.ext
  %25 = bitcast i16* %add.ptr to i8*
  %26 = load i32, i32* %CIDCount.addr, align 4, !tbaa !5
  %27 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %cidata15 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %27, i32 0, i32 30
  %common16 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata15, i32 0, i32 0
  %CIDCount17 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common16, i32 0, i32 1
  %28 = load i32, i32* %CIDCount17, align 4, !tbaa !214
  %sub = sub i32 %26, %28
  %conv18 = zext i32 %sub to i64
  %mul19 = mul i64 %conv18, 2
  %call20 = call i8* @memset(i8* %25, i32 255, i64 %mul19) #7
  %29 = load i16*, i16** %CIDMap, align 8, !tbaa !1
  %30 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %CIDMap21 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %30, i32 0, i32 11
  store i16* %29, i16** %CIDMap21, align 8, !tbaa !215
  %31 = load i32, i32* %CIDCount.addr, align 4, !tbaa !5
  %32 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %copied2.addr, align 8, !tbaa !1
  %cidata22 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %32, i32 0, i32 30
  %common23 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata22, i32 0, i32 0
  %CIDCount24 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common23, i32 0, i32 1
  store i32 %31, i32* %CIDCount24, align 4, !tbaa !214
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %33 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i16** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @copied_glyph_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_glyph_s*
  store %struct.gs_copied_glyph_s* %2, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %5, 24
  %cmp = icmp ult i32 %4, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %7, i64 %idxprom
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !79
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !225
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %11, i64 %idxprom1
  %gdata3 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %arrayidx2, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata3, i32 0, i32 1
  %12 = load i32, i32* %size4, align 4, !tbaa !80
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 1
  store i32 %12, i32* %size5, align 4, !tbaa !227
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %15
}

; Function Attrs: nounwind uwtable
define internal void @copied_glyph_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %count = alloca i32, align 4
  %p = alloca %struct.gs_copied_glyph_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_glyph_s*
  store %struct.gs_copied_glyph_s* %2, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %4, 24
  store i32 %div, i32* %count, align 4, !tbaa !5
  %5 = bitcast %struct.gs_copied_glyph_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  store %struct.gs_copied_glyph_s* %6, %struct.gs_copied_glyph_s** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %p, align 8, !tbaa !1
  %gdata = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %8, i32 0, i32 0
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gdata, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !83
  %cmp2 = icmp ugt i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 2
  %13 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !228
  %14 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %p, align 8, !tbaa !1
  %gdata3 = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %14, i32 0, i32 0
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %13(%struct.gs_const_string_s* %gdata3, %struct.gc_state_s* %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %16, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %17 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_copied_glyph_s, %struct.gs_copied_glyph_s* %17, i32 1
  store %struct.gs_copied_glyph_s* %incdec.ptr, %struct.gs_copied_glyph_s** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast %struct.gs_copied_glyph_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @copied_glyph_name_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcgn = alloca %struct.gs_copied_glyph_name_s*, align 8
  %p = alloca %struct.gs_copied_glyph_name_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_glyph_name_s*
  store %struct.gs_copied_glyph_name_s* %2, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %5, 24
  %cmp = icmp ult i32 %4, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = bitcast %struct.gs_copied_glyph_name_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %8, i64 %idxprom
  store %struct.gs_copied_glyph_name_s* %arrayidx, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %9 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %9, i32 0, i32 1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %10 = load i32, i32* %size1, align 4, !tbaa !91
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str3 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %11, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str3, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !92
  %13 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str4 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %13, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str4, i32 0, i32 1
  %14 = load i32, i32* %size5, align 4, !tbaa !91
  %call = call i32 @gs_is_c_glyph_name(i8* %12, i32 %14) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !225
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %16, i32 0, i32 1
  store i32 0, i32* %size6, align 4, !tbaa !227
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %17 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str7 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %17, i32 0, i32 1
  %data8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str7, i32 0, i32 0
  %18 = load i8*, i8** %data8, align 8, !tbaa !79
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %19, i32 0, i32 0
  store i8* %18, i8** %ptr9, align 8, !tbaa !225
  %20 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str10 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %20, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str10, i32 0, i32 1
  %21 = load i32, i32* %size11, align 4, !tbaa !80
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 1
  store i32 %21, i32* %size12, align 4, !tbaa !227
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_const_string_procs, %cond.true ], [ @ptr_const_string_procs, %cond.false ]
  store %struct.gs_ptr_procs_s* %cond, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %23 = bitcast %struct.gs_copied_glyph_name_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %24 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %25
}

; Function Attrs: nounwind uwtable
define internal void @copied_glyph_name_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcgn = alloca %struct.gs_copied_glyph_name_s*, align 8
  %count = alloca i32, align 4
  %p = alloca %struct.gs_copied_glyph_name_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_glyph_name_s*
  store %struct.gs_copied_glyph_name_s* %2, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %4, 24
  store i32 %div, i32* %count, align 4, !tbaa !5
  %5 = bitcast %struct.gs_copied_glyph_name_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %pcgn, align 8, !tbaa !1
  store %struct.gs_copied_glyph_name_s* %6, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %8, i32 0, i32 1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !91
  %cmp2 = icmp ugt i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str3 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %10, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str3, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !92
  %12 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str4 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %12, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str4, i32 0, i32 1
  %13 = load i32, i32* %size5, align 4, !tbaa !91
  %call = call i32 @gs_is_c_glyph_name(i8* %11, i32 %13) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gc_state_s* %14 to %struct.gc_procs_common_s**
  %16 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %15, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %16, i32 0, i32 2
  %17 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !228
  %18 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %str6 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %18, i32 0, i32 1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %17(%struct.gs_const_string_s* %str6, %struct.gc_state_s* %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %20, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %21 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %21, i32 1
  store %struct.gs_copied_glyph_name_s* %incdec.ptr, %struct.gs_copied_glyph_name_s** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast %struct.gs_copied_glyph_name_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_copied_glyph_name_s** %pcgn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

declare i32 @gs_is_c_glyph_name(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_copied_font_data_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %names = alloca %struct.gs_copied_glyph_name_s*, align 8
  %en = alloca %struct.gs_copied_glyph_extra_name_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %2, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.34
    i32 4, label %sw.bb.36
    i32 5, label %sw.bb.38
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.43
    i32 8, label %sw.bb.46
    i32 9, label %sw.bb.49
    i32 10, label %sw.bb.53
    i32 11, label %sw.bb.55
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 12
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %sw.default
  %5 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %6, i32 0, i32 6
  %7 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names1, align 8, !tbaa !73
  store %struct.gs_copied_glyph_name_s* %7, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %8 = bitcast %struct.gs_copied_glyph_extra_name_s** %en to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %extra_names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %9, i32 0, i32 7
  %10 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_names, align 8, !tbaa !93
  store %struct.gs_copied_glyph_extra_name_s* %10, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gs_copied_glyph_name_s* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs_size = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %14, i32 0, i32 3
  %15 = load i32, i32* %glyphs_size, align 4, !tbaa !70
  %cmp4 = icmp ult i32 %13, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %17, i64 %idxprom
  %glyph = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx, i32 0, i32 0
  %18 = load i64, i64* %glyph, align 8, !tbaa !74
  %19 = load i64, i64* @gs_c_min_std_encoding_glyph, align 8, !tbaa !82
  %cmp5 = icmp ult i64 %18, %19
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %20 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %20, i32 0, i32 15
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !47
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %21, i32 0, i32 5
  %mark_glyph = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 13
  %22 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !230
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %25, i64 %idxprom7
  %glyph9 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx8, i32 0, i32 0
  %26 = load i64, i64* %glyph9, align 8, !tbaa !74
  %call = call i32 %22(%struct.gs_memory_s* %23, i64 %26, i8* null) #6
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.24, %if.end.10
  %28 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.gs_copied_glyph_extra_name_s* %28, null
  br i1 %cmp12, label %for.body.13, label %for.end.25

for.body.13:                                      ; preds = %for.cond.11
  %29 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %29, i32 0, i32 0
  %glyph14 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %name, i32 0, i32 0
  %30 = load i64, i64* %glyph14, align 8, !tbaa !167
  %31 = load i64, i64* @gs_c_min_std_encoding_glyph, align 8, !tbaa !82
  %cmp15 = icmp ult i64 %30, %31
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %for.body.13
  %32 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %dir17 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %32, i32 0, i32 15
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir17, align 8, !tbaa !47
  %ccache18 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %33, i32 0, i32 5
  %mark_glyph19 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache18, i32 0, i32 13
  %34 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph19, align 8, !tbaa !230
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  %name20 = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %36, i32 0, i32 0
  %glyph21 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %name20, i32 0, i32 0
  %37 = load i64, i64* %glyph21, align 8, !tbaa !167
  %call22 = call i32 %34(%struct.gs_memory_s* %35, i64 %37, i8* null) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %for.body.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %38 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_copied_glyph_extra_name_s, %struct.gs_copied_glyph_extra_name_s* %38, i32 0, i32 2
  %39 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %next, align 8, !tbaa !94
  store %struct.gs_copied_glyph_extra_name_s* %39, %struct.gs_copied_glyph_extra_name_s** %en, align 8, !tbaa !1
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gs_copied_glyph_extra_name_s** %en to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_copied_glyph_name_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %sw.default
  %43 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_info, i32 0, i32 4), align 8, !tbaa !231
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %45 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %45, i32 0, i32 0
  %46 = bitcast %struct.gs_font_info_s* %info to i8*
  %47 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %47, 12
  %48 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call27 = call %struct.gs_ptr_procs_s* %43(%struct.gs_memory_s* %44, i8* %46, i32 160, i32 %sub, %struct.enum_ptr_s* %48, %struct.gs_memory_struct_type_s* @st_gs_font_info, %struct.gc_state_s* %49) #6
  store %struct.gs_ptr_procs_s* %call27, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gs_copied_font_data_s*
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %51, i32 0, i32 2
  %52 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %53 = bitcast %struct.gs_copied_glyph_s* %52 to i8*
  %54 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %54, i32 0, i32 0
  store i8* %53, i8** %ptr, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.28:                                         ; preds = %entry
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gs_copied_font_data_s*
  %names29 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %56, i32 0, i32 6
  %57 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names29, align 8, !tbaa !73
  %58 = bitcast %struct.gs_copied_glyph_name_s* %57 to i8*
  %59 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %59, i32 0, i32 0
  store i8* %58, i8** %ptr30, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.31:                                         ; preds = %entry
  %60 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %61 = bitcast i8* %60 to %struct.gs_copied_font_data_s*
  %extra_names32 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %61, i32 0, i32 7
  %62 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_names32, align 8, !tbaa !93
  %63 = bitcast %struct.gs_copied_glyph_extra_name_s* %62 to i8*
  %64 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %64, i32 0, i32 0
  store i8* %63, i8** %ptr33, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.34:                                         ; preds = %entry
  %65 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %66 = bitcast i8* %65 to %struct.gs_copied_font_data_s*
  %data = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %66, i32 0, i32 8
  %67 = load i8*, i8** %data, align 8, !tbaa !88
  %68 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %68, i32 0, i32 0
  store i8* %67, i8** %ptr35, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %entry
  %69 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %70 = bitcast i8* %69 to %struct.gs_copied_font_data_s*
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %70, i32 0, i32 10
  %71 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %72 = bitcast i64* %71 to i8*
  %73 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr37 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %73, i32 0, i32 0
  store i8* %72, i8** %ptr37, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %entry
  %74 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %75 = bitcast i8* %74 to %struct.gs_copied_font_data_s*
  %CIDMap = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %75, i32 0, i32 11
  %76 = load i16*, i16** %CIDMap, align 8, !tbaa !215
  %77 = bitcast i16* %76 to i8*
  %78 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %78, i32 0, i32 0
  store i8* %77, i8** %ptr39, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.40:                                         ; preds = %entry
  %79 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %80 = bitcast i8* %79 to %struct.gs_copied_font_data_s*
  %subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %80, i32 0, i32 12
  %data41 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs, i32 0, i32 0
  %81 = load i8*, i8** %data41, align 8, !tbaa !233
  %82 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr42 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %82, i32 0, i32 0
  store i8* %81, i8** %ptr42, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %entry
  %83 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %84 = bitcast i8* %83 to %struct.gs_copied_font_data_s*
  %subrs44 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %84, i32 0, i32 12
  %starts = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs44, i32 0, i32 2
  %85 = load i32*, i32** %starts, align 8, !tbaa !234
  %86 = bitcast i32* %85 to i8*
  %87 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr45 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %87, i32 0, i32 0
  store i8* %86, i8** %ptr45, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.46:                                         ; preds = %entry
  %88 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %89 = bitcast i8* %88 to %struct.gs_copied_font_data_s*
  %global_subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %89, i32 0, i32 13
  %data47 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs, i32 0, i32 0
  %90 = load i8*, i8** %data47, align 8, !tbaa !235
  %91 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr48 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %91, i32 0, i32 0
  store i8* %90, i8** %ptr48, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %entry
  %92 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %93 = bitcast i8* %92 to %struct.gs_copied_font_data_s*
  %global_subrs50 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %93, i32 0, i32 13
  %starts51 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs50, i32 0, i32 2
  %94 = load i32*, i32** %starts51, align 8, !tbaa !236
  %95 = bitcast i32* %94 to i8*
  %96 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr52 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %96, i32 0, i32 0
  store i8* %95, i8** %ptr52, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.53:                                         ; preds = %entry
  %97 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %98 = bitcast i8* %97 to %struct.gs_copied_font_data_s*
  %parent = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %98, i32 0, i32 14
  %99 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %parent, align 8, !tbaa !205
  %100 = bitcast %struct.gs_font_cid0_s* %99 to i8*
  %101 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr54 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %101, i32 0, i32 0
  store i8* %100, i8** %ptr54, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.55:                                         ; preds = %entry
  %102 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %103 = bitcast i8* %102 to %struct.gs_copied_font_data_s*
  %dir56 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %103, i32 0, i32 15
  %104 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir56, align 8, !tbaa !47
  %105 = bitcast %struct.gs_font_dir_s* %104 to i8*
  %106 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr57 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %106, i32 0, i32 0
  store i8* %105, i8** %ptr57, align 8, !tbaa !225
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.55, %sw.bb.53, %sw.bb.49, %sw.bb.46, %sw.bb.43, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb, %if.end.26
  %107 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %108
}

; Function Attrs: nounwind uwtable
define internal void @gs_copied_font_data_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_font_data_s*
  store %struct.gs_copied_font_data_s* %2, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !237
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_copied_font_data_s*
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 2
  %9 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %10 = bitcast %struct.gs_copied_glyph_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #6
  %12 = bitcast i8* %call to %struct.gs_copied_glyph_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_copied_font_data_s*
  %glyphs1 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %14, i32 0, i32 2
  store %struct.gs_copied_glyph_s* %12, %struct.gs_copied_glyph_s** %glyphs1, align 8, !tbaa !69
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !237
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.gs_copied_font_data_s*
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %20, i32 0, i32 6
  %21 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %22 = bitcast %struct.gs_copied_glyph_name_s* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #6
  %24 = bitcast i8* %call3 to %struct.gs_copied_glyph_name_s*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_copied_font_data_s*
  %names4 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %26, i32 0, i32 6
  store %struct.gs_copied_glyph_name_s* %24, %struct.gs_copied_glyph_name_s** %names4, align 8, !tbaa !73
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !237
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_copied_font_data_s*
  %extra_names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %32, i32 0, i32 7
  %33 = load %struct.gs_copied_glyph_extra_name_s*, %struct.gs_copied_glyph_extra_name_s** %extra_names, align 8, !tbaa !93
  %34 = bitcast %struct.gs_copied_glyph_extra_name_s* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #6
  %36 = bitcast i8* %call6 to %struct.gs_copied_glyph_extra_name_s*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.gs_copied_font_data_s*
  %extra_names7 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %38, i32 0, i32 7
  store %struct.gs_copied_glyph_extra_name_s* %36, %struct.gs_copied_glyph_extra_name_s** %extra_names7, align 8, !tbaa !93
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !237
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.gs_copied_font_data_s*
  %data = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %44, i32 0, i32 8
  %45 = load i8*, i8** %data, align 8, !tbaa !88
  %46 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %45, %struct.gc_state_s* %46) #6
  %47 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %48 = bitcast i8* %47 to %struct.gs_copied_font_data_s*
  %data10 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %48, i32 0, i32 8
  store i8* %call9, i8** %data10, align 8, !tbaa !88
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gc_state_s* %49 to %struct.gc_procs_common_s**
  %51 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %50, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %51, i32 0, i32 0
  %52 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !237
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct.gs_copied_font_data_s*
  %Encoding = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %54, i32 0, i32 10
  %55 = load i64*, i64** %Encoding, align 8, !tbaa !87
  %56 = bitcast i64* %55 to i8*
  %57 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %52(i8* %56, %struct.gc_state_s* %57) #6
  %58 = bitcast i8* %call12 to i64*
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct.gs_copied_font_data_s*
  %Encoding13 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %60, i32 0, i32 10
  store i64* %58, i64** %Encoding13, align 8, !tbaa !87
  %61 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gc_state_s* %61 to %struct.gc_procs_common_s**
  %63 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %62, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %63, i32 0, i32 0
  %64 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !237
  %65 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %66 = bitcast i8* %65 to %struct.gs_copied_font_data_s*
  %CIDMap = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %66, i32 0, i32 11
  %67 = load i16*, i16** %CIDMap, align 8, !tbaa !215
  %68 = bitcast i16* %67 to i8*
  %69 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call15 = call i8* %64(i8* %68, %struct.gc_state_s* %69) #6
  %70 = bitcast i8* %call15 to i16*
  %71 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %72 = bitcast i8* %71 to %struct.gs_copied_font_data_s*
  %CIDMap16 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %72, i32 0, i32 11
  store i16* %70, i16** %CIDMap16, align 8, !tbaa !215
  %73 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gc_state_s* %73 to %struct.gc_procs_common_s**
  %75 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %74, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %75, i32 0, i32 0
  %76 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !237
  %77 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %78 = bitcast i8* %77 to %struct.gs_copied_font_data_s*
  %subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %78, i32 0, i32 12
  %data18 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs, i32 0, i32 0
  %79 = load i8*, i8** %data18, align 8, !tbaa !233
  %80 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call19 = call i8* %76(i8* %79, %struct.gc_state_s* %80) #6
  %81 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %82 = bitcast i8* %81 to %struct.gs_copied_font_data_s*
  %subrs20 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %82, i32 0, i32 12
  %data21 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs20, i32 0, i32 0
  store i8* %call19, i8** %data21, align 8, !tbaa !233
  %83 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %84 = bitcast %struct.gc_state_s* %83 to %struct.gc_procs_common_s**
  %85 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %84, align 8, !tbaa !1
  %reloc_struct_ptr22 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %85, i32 0, i32 0
  %86 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr22, align 8, !tbaa !237
  %87 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %88 = bitcast i8* %87 to %struct.gs_copied_font_data_s*
  %subrs23 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %88, i32 0, i32 12
  %starts = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs23, i32 0, i32 2
  %89 = load i32*, i32** %starts, align 8, !tbaa !234
  %90 = bitcast i32* %89 to i8*
  %91 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %86(i8* %90, %struct.gc_state_s* %91) #6
  %92 = bitcast i8* %call24 to i32*
  %93 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %94 = bitcast i8* %93 to %struct.gs_copied_font_data_s*
  %subrs25 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %94, i32 0, i32 12
  %starts26 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %subrs25, i32 0, i32 2
  store i32* %92, i32** %starts26, align 8, !tbaa !234
  %95 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %96 = bitcast %struct.gc_state_s* %95 to %struct.gc_procs_common_s**
  %97 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %96, align 8, !tbaa !1
  %reloc_struct_ptr27 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %97, i32 0, i32 0
  %98 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr27, align 8, !tbaa !237
  %99 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %100 = bitcast i8* %99 to %struct.gs_copied_font_data_s*
  %global_subrs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %100, i32 0, i32 13
  %data28 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs, i32 0, i32 0
  %101 = load i8*, i8** %data28, align 8, !tbaa !235
  %102 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call29 = call i8* %98(i8* %101, %struct.gc_state_s* %102) #6
  %103 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %104 = bitcast i8* %103 to %struct.gs_copied_font_data_s*
  %global_subrs30 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %104, i32 0, i32 13
  %data31 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs30, i32 0, i32 0
  store i8* %call29, i8** %data31, align 8, !tbaa !235
  %105 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gc_state_s* %105 to %struct.gc_procs_common_s**
  %107 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %106, align 8, !tbaa !1
  %reloc_struct_ptr32 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %107, i32 0, i32 0
  %108 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr32, align 8, !tbaa !237
  %109 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %110 = bitcast i8* %109 to %struct.gs_copied_font_data_s*
  %global_subrs33 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %110, i32 0, i32 13
  %starts34 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs33, i32 0, i32 2
  %111 = load i32*, i32** %starts34, align 8, !tbaa !236
  %112 = bitcast i32* %111 to i8*
  %113 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call35 = call i8* %108(i8* %112, %struct.gc_state_s* %113) #6
  %114 = bitcast i8* %call35 to i32*
  %115 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %116 = bitcast i8* %115 to %struct.gs_copied_font_data_s*
  %global_subrs36 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %116, i32 0, i32 13
  %starts37 = getelementptr inbounds %struct.gs_subr_info_s, %struct.gs_subr_info_s* %global_subrs36, i32 0, i32 2
  store i32* %114, i32** %starts37, align 8, !tbaa !236
  %117 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %118 = bitcast %struct.gc_state_s* %117 to %struct.gc_procs_common_s**
  %119 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %118, align 8, !tbaa !1
  %reloc_struct_ptr38 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %119, i32 0, i32 0
  %120 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr38, align 8, !tbaa !237
  %121 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %122 = bitcast i8* %121 to %struct.gs_copied_font_data_s*
  %parent = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %122, i32 0, i32 14
  %123 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %parent, align 8, !tbaa !205
  %124 = bitcast %struct.gs_font_cid0_s* %123 to i8*
  %125 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call39 = call i8* %120(i8* %124, %struct.gc_state_s* %125) #6
  %126 = bitcast i8* %call39 to %struct.gs_font_cid0_s*
  %127 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %128 = bitcast i8* %127 to %struct.gs_copied_font_data_s*
  %parent40 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %128, i32 0, i32 14
  store %struct.gs_font_cid0_s* %126, %struct.gs_font_cid0_s** %parent40, align 8, !tbaa !205
  %129 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gc_state_s* %129 to %struct.gc_procs_common_s**
  %131 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %130, align 8, !tbaa !1
  %reloc_struct_ptr41 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %131, i32 0, i32 0
  %132 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr41, align 8, !tbaa !237
  %133 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %134 = bitcast i8* %133 to %struct.gs_copied_font_data_s*
  %dir = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %134, i32 0, i32 15
  %135 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !47
  %136 = bitcast %struct.gs_font_dir_s* %135 to i8*
  %137 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call42 = call i8* %132(i8* %136, %struct.gc_state_s* %137) #6
  %138 = bitcast i8* %call42 to %struct.gs_font_dir_s*
  %139 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %140 = bitcast i8* %139 to %struct.gs_copied_font_data_s*
  %dir43 = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %140, i32 0, i32 15
  store %struct.gs_font_dir_s* %138, %struct.gs_font_dir_s** %dir43, align 8, !tbaa !47
  %141 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_info, i32 0, i32 5), align 8, !tbaa !238
  %142 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %142, i32 0, i32 0
  %143 = bitcast %struct.gs_font_info_s* %info to i8*
  %144 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %141(i8* %143, i32 160, %struct.gs_memory_struct_type_s* @st_gs_font_info, %struct.gc_state_s* %144) #6
  %145 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  ret void
}

declare i32 @gs_default_same_font(%struct.gs_font_s*, %struct.gs_font_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_glyph_name(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %cfdata = alloca %struct.gs_copied_font_data_s*, align 8
  %pcg = alloca %struct.gs_copied_glyph_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %1) #6
  store %struct.gs_copied_font_data_s* %call, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %2 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp = icmp uge i64 %3, 2147483648
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %call1 = call i32 @copied_glyph_slot(%struct.gs_copied_font_data_s* %4, i64 %5, %struct.gs_copied_glyph_s** %pcg) #6
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %7 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %pcg, align 8, !tbaa !1
  %8 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %8, i32 0, i32 2
  %9 = load %struct.gs_copied_glyph_s*, %struct.gs_copied_glyph_s** %glyphs, align 8, !tbaa !69
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_copied_glyph_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_copied_glyph_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %10 = load %struct.gs_copied_font_data_s*, %struct.gs_copied_font_data_s** %cfdata, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %10, i32 0, i32 6
  %11 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %names, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %11, i64 %sub.ptr.div
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %arrayidx, i32 0, i32 1
  %12 = bitcast %struct.gs_const_string_s* %6 to i8*
  %13 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %14 = bitcast %struct.gs_copied_glyph_s** %pcg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.gs_copied_font_data_s** %cfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_default_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #2

declare i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copied_build_char(%struct.gs_show_enum_s* %pte, %struct.gs_state_s* %pgs, %struct.gs_font_s* %font, i64 %chr, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  %wmode = alloca i32, align 4
  %code = alloca i32, align 4
  %info = alloca %struct.gs_glyph_info_s, align 8
  %wxy = alloca [6 x double], align 16
  %sbw_stub = alloca [4 x double], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %pte, %struct.gs_show_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !82
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !82
  %0 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 16
  %2 = load i32, i32* %WMode, align 4, !tbaa !101
  store i32 %2, i32* %wmode, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %4) #1
  %5 = bitcast [6 x double]* %wxy to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast [4 x double]* %sbw_stub to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp = icmp eq i64 %7, 2147483647
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %9 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !59
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %11 = load i64, i64* %chr.addr, align 8, !tbaa !82
  %call = call i64 %9(%struct.gs_font_s* %10, i64 %11, i32 1) #6
  store i64 %call, i64* %glyph.addr, align 8, !tbaa !82
  %12 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %cmp1 = icmp eq i64 %12, 2147483647
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_copied_font_data_s* @cf_data(%struct.gs_font_s* %13) #6
  %notdef = getelementptr inbounds %struct.gs_copied_font_data_s, %struct.gs_copied_font_data_s* %call3, i32 0, i32 5
  %14 = load i64, i64* %notdef, align 8, !tbaa !77
  store i64 %14, i64* %glyph.addr, align 8, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_moveto(%struct.gs_state_s* %15, double 0.000000e+00, double 0.000000e+00) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs7, i32 0, i32 7
  %17 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !61
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %20 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 1, %20
  %or = or i32 %shl, 4
  %or8 = or i32 %or, 32
  %call9 = call i32 %17(%struct.gs_font_s* %18, i64 %19, %struct.gs_matrix_s* null, i32 %or8, %struct.gs_glyph_info_s* %info) #6
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.4
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %22 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %23 = load double, double* %x, align 8, !tbaa !132
  %arrayidx13 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 0
  store double %23, double* %arrayidx13, align 8, !tbaa !166
  %24 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom14 = sext i32 %24 to i64
  %width15 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width15, i32 0, i64 %idxprom14
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx16, i32 0, i32 1
  %25 = load double, double* %y, align 8, !tbaa !133
  %arrayidx17 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 1
  store double %25, double* %arrayidx17, align 8, !tbaa !166
  %bbox = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %26 = load double, double* %x18, align 8, !tbaa !239
  %arrayidx19 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 2
  store double %26, double* %arrayidx19, align 8, !tbaa !166
  %bbox20 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox20, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 1
  %27 = load double, double* %y22, align 8, !tbaa !240
  %arrayidx23 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 3
  store double %27, double* %arrayidx23, align 8, !tbaa !166
  %bbox24 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox24, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %28 = load double, double* %x25, align 8, !tbaa !241
  %arrayidx26 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 4
  store double %28, double* %arrayidx26, align 8, !tbaa !166
  %bbox27 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox27, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 1
  %29 = load double, double* %y29, align 8, !tbaa !242
  %arrayidx30 = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i64 5
  store double %29, double* %arrayidx30, align 8, !tbaa !166
  %30 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %pte.addr, align 8, !tbaa !1
  %31 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %pte.addr, align 8, !tbaa !1
  %pgs31 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %31, i32 0, i32 30
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs31, align 8, !tbaa !243
  %arraydecay = getelementptr inbounds [6 x double], [6 x double]* %wxy, i32 0, i32 0
  %call32 = call i32 @gs_setcachedevice_double(%struct.gs_show_enum_s* %30, %struct.gs_state_s* %32, double* %arraydecay) #6
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.12
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs35, i32 0, i32 8
  %34 = load i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !63
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %36 = load i32, i32* %wmode, align 4, !tbaa !5
  %37 = load i64, i64* %glyph.addr, align 8, !tbaa !82
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 5
  %39 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 61
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !248
  %arraydecay36 = getelementptr inbounds [4 x double], [4 x double]* %sbw_stub, i32 0, i32 0
  %call37 = call i32 %34(%struct.gs_font_s* %35, i32 %36, i64 %37, %struct.gs_matrix_s* %39, %struct.gx_path_s* %41, double* %arraydecay36) #6
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.34, %if.end.12
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %lor.lhs.false.34
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 17
  %44 = load i32, i32* %PaintType, align 4, !tbaa !251
  %cmp41 = icmp ne i32 %44, 0
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.40
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %46, i32 0, i32 18
  %47 = load float, float* %StrokeWidth, align 4, !tbaa !252
  %conv = fpext float %47 to double
  %call43 = call i32 @gs_setlinewidth(%struct.gs_state_s* %45, double %conv) #6
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call44 = call i32 @gs_stroke(%struct.gs_state_s* %48) #6
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.40
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call45 = call i32 @gs_fill(%struct.gs_state_s* %49) #6
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.42, %if.then.39, %if.then.11
  %50 = bitcast [4 x double]* %sbw_stub to i8*
  call void @llvm.lifetime.end(i64 32, i8* %50) #1
  %51 = bitcast [6 x double]* %wxy to i8*
  call void @llvm.lifetime.end(i64 48, i8* %51) #1
  %52 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %52) #1
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_setcachedevice_double(%struct.gs_show_enum_s*, %struct.gs_state_s*, double*) #2

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

declare i32 @gs_stroke(%struct.gs_state_s*) #2

declare i32 @gs_fill(%struct.gs_state_s*) #2

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #2

declare i64 @gs_c_name_glyph(i8*, i32) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @compare_arrays(float* %v0, i32 %l0, float* %v1, i32 %l1) #4 {
entry:
  %retval = alloca i32, align 4
  %v0.addr = alloca float*, align 8
  %l0.addr = alloca i32, align 4
  %v1.addr = alloca float*, align 8
  %l1.addr = alloca i32, align 4
  store float* %v0, float** %v0.addr, align 8, !tbaa !1
  store i32 %l0, i32* %l0.addr, align 4, !tbaa !5
  store float* %v1, float** %v1.addr, align 8, !tbaa !1
  store i32 %l1, i32* %l1.addr, align 4, !tbaa !5
  %0 = load i32, i32* %l0.addr, align 4, !tbaa !5
  %1 = load i32, i32* %l1.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float*, float** %v0.addr, align 8, !tbaa !1
  %3 = bitcast float* %2 to i8*
  %4 = load float*, float** %v1.addr, align 8, !tbaa !1
  %5 = bitcast float* %4 to i8*
  %6 = load i32, i32* %l0.addr, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call i32 @memcmp(i8* %3, i8* %5, i64 %mul) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @hash_subrs(%struct.gs_font_type1_s* %pfont) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %d0 = alloca %struct.gs_type1_data_s*, align 8
  %gdata0 = alloca %struct.gs_glyph_data_s, align 8
  %md5 = alloca %struct.gs_md5_state_s, align 4
  %i = alloca i32, align 4
  %exit = alloca i32, align 4
  %code0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code015 = alloca i32, align 4
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_data_s** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %2 = bitcast %struct.gs_glyph_data_s* %gdata0 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %exit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %exit, align 4, !tbaa !5
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #6
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 3
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory1, align 8, !tbaa !140
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %exit, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %10, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data2, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %11 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !170
  %12 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %call = call i32 %11(%struct.gs_font_type1_s* %12, i32 %13, i32 1, %struct.gs_glyph_data_s* %gdata0) #6
  store i32 %call, i32* %code0, align 4, !tbaa !5
  %14 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp = icmp eq i32 %14, -15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %exit, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %15, -20
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %16 = load i32, i32* %code0, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.5
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %data8 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %17 = load i8*, i8** %data8, align 8, !tbaa !150
  %bits9 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits9, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !149
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %17, i32 %18) #6
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0)) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.7, %if.then.4
  %19 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %shl = shl i32 %21, 16
  %22 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %num_subrs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %22, i32 0, i32 27
  store i32 %shl, i32* %num_subrs, align 4, !tbaa !122
  store i32 0, i32* %exit, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.37, %for.end
  %23 = load i32, i32* %exit, align 4, !tbaa !5
  %tobool12 = icmp ne i32 %23, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body.14, label %for.end.39

for.body.14:                                      ; preds = %for.cond.11
  %24 = bitcast i32* %code015 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %25, i32 0, i32 29
  %procs17 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data16, i32 0, i32 0
  %subr_data18 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs17, i32 0, i32 1
  %26 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data18, align 8, !tbaa !170
  %27 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %call19 = call i32 %26(%struct.gs_font_type1_s* %27, i32 %28, i32 0, %struct.gs_glyph_data_s* %gdata0) #6
  store i32 %call19, i32* %code015, align 4, !tbaa !5
  %29 = load i32, i32* %code015, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %29, -15
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.14
  store i32 1, i32* %exit, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body.14
  %30 = load i32, i32* %code015, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %30, -20
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.25:                                        ; preds = %if.end.22
  %31 = load i32, i32* %code015, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %31, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.25
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.34

if.else.28:                                       ; preds = %if.end.25
  %bits29 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %data30 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits29, i32 0, i32 0
  %32 = load i8*, i8** %data30, align 8, !tbaa !150
  %bits31 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata0, i32 0, i32 0
  %size32 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits31, i32 0, i32 1
  %33 = load i32, i32* %size32, align 4, !tbaa !149
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %32, i32 %33) #6
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0)) #6
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %if.then.27, %if.then.24
  %34 = bitcast i32* %code015 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.35, label %unreachable [
    i32 0, label %cleanup.cont.36
    i32 7, label %for.inc.37
    i32 5, label %for.end.39
  ]

cleanup.cont.36:                                  ; preds = %cleanup.34
  br label %for.inc.37

for.inc.37:                                       ; preds = %cleanup.cont.36, %cleanup.34
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.39:                                       ; preds = %cleanup.34, %for.cond.11
  %36 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %hash_subrs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %36, i32 0, i32 26
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash_subrs, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md5, i8* %arraydecay) #6
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %d0, align 8, !tbaa !1
  %num_subrs40 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %38, i32 0, i32 27
  %39 = load i32, i32* %num_subrs40, align 4, !tbaa !122
  %add = add nsw i32 %39, %37
  store i32 %add, i32* %num_subrs40, align 4, !tbaa !122
  %40 = bitcast i32* %exit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %42) #1
  %43 = bitcast %struct.gs_glyph_data_s* %gdata0 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %43) #1
  %44 = bitcast %struct.gs_type1_data_s** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret void

unreachable:                                      ; preds = %cleanup.34, %cleanup
  unreachable
}

declare void @gs_md5_init(%struct.gs_md5_state_s*) #2

declare void @gs_md5_append(%struct.gs_md5_state_s*, i8*, i32) #2

declare void @gs_md5_finish(%struct.gs_md5_state_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @access_type42_data(%struct.gs_font_type42_s* %pfont, i64 %base, i64 %length, i8** %vptr) #4 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %base.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %vptr.addr = alloca i8**, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %base, i64* %base.addr, align 8, !tbaa !82
  store i64 %length, i64* %length.addr, align 8, !tbaa !82
  store i8** %vptr, i8*** %vptr.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %0, i32 0, i32 29
  %string_proc = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %1 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !154
  %2 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %3 = load i64, i64* %base.addr, align 8, !tbaa !82
  %4 = load i64, i64* %length.addr, align 8, !tbaa !82
  %conv = trunc i64 %4 to i32
  %5 = load i8**, i8*** %vptr.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gs_font_type42_s* %2, i64 %3, i32 %conv, i8** %5) #6
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @U16(i8* %p) #4 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !99
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !99
  %conv2 = zext i8 %3 to i32
  %add = add i32 %shl, %conv2
  ret i32 %add
}

declare i64 @get_u32_msb(i8*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_glyph_names(i8* %pg1, i8* %pg2) #0 {
entry:
  %pg1.addr = alloca i8*, align 8
  %pg2.addr = alloca i8*, align 8
  %gn1 = alloca %struct.gs_copied_glyph_name_s*, align 8
  %gn2 = alloca %struct.gs_copied_glyph_name_s*, align 8
  store i8* %pg1, i8** %pg1.addr, align 8, !tbaa !1
  store i8* %pg2, i8** %pg2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_copied_glyph_name_s** %gn1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pg1.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_copied_glyph_name_s**
  %3 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %2, align 8, !tbaa !1
  store %struct.gs_copied_glyph_name_s* %3, %struct.gs_copied_glyph_name_s** %gn1, align 8, !tbaa !1
  %4 = bitcast %struct.gs_copied_glyph_name_s** %gn2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %pg2.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_copied_glyph_name_s**
  %7 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %6, align 8, !tbaa !1
  store %struct.gs_copied_glyph_name_s* %7, %struct.gs_copied_glyph_name_s** %gn2, align 8, !tbaa !1
  %8 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %gn1, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %8, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !92
  %10 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %gn1, align 8, !tbaa !1
  %str1 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %10, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str1, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !91
  %12 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %gn2, align 8, !tbaa !1
  %str2 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %12, i32 0, i32 1
  %data3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str2, i32 0, i32 0
  %13 = load i8*, i8** %data3, align 8, !tbaa !92
  %14 = load %struct.gs_copied_glyph_name_s*, %struct.gs_copied_glyph_name_s** %gn2, align 8, !tbaa !1
  %str4 = getelementptr inbounds %struct.gs_copied_glyph_name_s, %struct.gs_copied_glyph_name_s* %14, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str4, i32 0, i32 1
  %15 = load i32, i32* %size5, align 4, !tbaa !91
  %call = call i32 @bytes_compare(i8* %9, i32 %11, i8* %13, i32 %15) #6
  %16 = bitcast %struct.gs_copied_glyph_name_s** %gn2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_copied_glyph_name_s** %gn1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 16}
!8 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324}
!9 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!15 = !{!16, !2, i64 128}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!8, !3, i64 128}
!19 = !{!20, !6, i64 596}
!20 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !21, i64 376, !24, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !25, i64 448}
!21 = !{!"gs_rect_s", !22, i64 0, !22, i64 16}
!22 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!23 = !{!"double", !3, i64 0}
!24 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!25 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !10, i64 48, !10, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !10, i64 120, !10, i64 128, !10, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !10, i64 200}
!26 = !{!8, !2, i64 216}
!27 = !{!28, !6, i64 492}
!28 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !21, i64 376, !24, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !29, i64 448}
!29 = !{!"gs_font_cid0_data_s", !30, i64 0, !10, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!30 = !{!"gs_font_cid_data_s", !31, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!31 = !{!"gs_cid_system_info_s", !32, i64 0, !32, i64 16, !6, i64 32}
!32 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!33 = !{!34, !6, i64 596}
!34 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !21, i64 376, !24, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !25, i64 448, !35, i64 656, !2, i64 744}
!35 = !{!"gs_font_cid2_data_s", !30, i64 0, !6, i64 56, !2, i64 64, !36, i64 72}
!36 = !{!"o_", !2, i64 0, !2, i64 8}
!37 = !{!38, !6, i64 40}
!38 = !{!"gs_font_info_s", !6, i64 0, !6, i64 4, !6, i64 8, !39, i64 12, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !32, i64 88, !32, i64 104, !32, i64 120, !32, i64 136, !6, i64 152}
!39 = !{!"gs_int_rect_s", !40, i64 0, !40, i64 8}
!40 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!41 = !{!8, !2, i64 184}
!42 = !{!16, !2, i64 104}
!43 = !{!16, !2, i64 72}
!44 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !45, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5, i64 68, i64 4, !5, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 104, i64 8, !1, i64 112, i64 4, !5, i64 120, i64 8, !1, i64 128, i64 4, !5, i64 136, i64 8, !1, i64 144, i64 4, !5, i64 152, i64 4, !5}
!45 = !{!12, !12, i64 0}
!46 = !{!8, !2, i64 24}
!47 = !{!48, !2, i64 296}
!48 = !{!"gs_copied_font_data_s", !38, i64 0, !2, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !10, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !2, i64 224, !2, i64 232, !49, i64 240, !49, i64 264, !2, i64 288, !2, i64 296, !6, i64 304}
!49 = !{!"gs_subr_info_s", !2, i64 0, !6, i64 8, !2, i64 16}
!50 = !{!8, !2, i64 8}
!51 = !{!8, !2, i64 0}
!52 = !{!8, !6, i64 32}
!53 = !{!8, !2, i64 64}
!54 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45}
!55 = !{!8, !2, i64 72}
!56 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1}
!57 = !{!58, !2, i64 32}
!58 = !{!"gs_copied_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!59 = !{!8, !2, i64 200}
!60 = !{!58, !2, i64 40}
!61 = !{!8, !2, i64 224}
!62 = !{!58, !2, i64 48}
!63 = !{!8, !2, i64 232}
!64 = !{!65, !2, i64 424}
!65 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !21, i64 376, !24, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!66 = !{!65, !2, i64 432}
!67 = !{!65, !3, i64 440}
!68 = !{!48, !2, i64 160}
!69 = !{!48, !2, i64 168}
!70 = !{!48, !6, i64 176}
!71 = !{!48, !6, i64 180}
!72 = !{!48, !6, i64 304}
!73 = !{!48, !2, i64 192}
!74 = !{!75, !10, i64 0}
!75 = !{!"gs_copied_glyph_name_s", !10, i64 0, !32, i64 8}
!76 = !{!58, !2, i64 0}
!77 = !{!48, !10, i64 184}
!78 = !{!16, !2, i64 24}
!79 = !{!32, !2, i64 0}
!80 = !{!32, !6, i64 8}
!81 = !{!16, !2, i64 136}
!82 = !{!10, !10, i64 0}
!83 = !{!84, !6, i64 8}
!84 = !{!"gs_copied_glyph_s", !32, i64 0, !3, i64 16, !6, i64 20}
!85 = !{!16, !2, i64 160}
!86 = !{!84, !2, i64 0}
!87 = !{!48, !2, i64 224}
!88 = !{!48, !2, i64 208}
!89 = !{!58, !2, i64 8}
!90 = !{!8, !2, i64 240}
!91 = !{!75, !6, i64 16}
!92 = !{!75, !2, i64 8}
!93 = !{!48, !2, i64 200}
!94 = !{!95, !2, i64 32}
!95 = !{!"gs_copied_glyph_extra_name_s", !75, i64 0, !6, i64 24, !2, i64 32}
!96 = !{!95, !6, i64 24}
!97 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!98 = !{!58, !2, i64 16}
!99 = !{!3, !3, i64 0}
!100 = !{!65, !3, i64 444}
!101 = !{!8, !6, i64 148}
!102 = !{!8, !6, i64 372}
!103 = !{!8, !6, i64 320}
!104 = !{!105, !6, i64 64}
!105 = !{!"gs_type1_data_s", !106, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !10, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !12, i64 100, !12, i64 104, !107, i64 108, !12, i64 168, !6, i64 172, !107, i64 176, !107, i64 236, !6, i64 280, !107, i64 284, !6, i64 328, !107, i64 332, !107, i64 340, !107, i64 348, !107, i64 400, !107, i64 452, !3, i64 520, !6, i64 536}
!106 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!107 = !{!"", !6, i64 0, !3, i64 4}
!108 = !{!105, !6, i64 96}
!109 = !{!105, !12, i64 100}
!110 = !{!105, !12, i64 104}
!111 = !{!105, !12, i64 168}
!112 = !{!105, !6, i64 172}
!113 = !{!105, !6, i64 176}
!114 = !{!105, !6, i64 236}
!115 = !{!105, !6, i64 280}
!116 = !{!105, !6, i64 284}
!117 = !{!105, !6, i64 328}
!118 = !{!105, !6, i64 332}
!119 = !{!105, !6, i64 348}
!120 = !{!105, !6, i64 400}
!121 = !{!105, !6, i64 452}
!122 = !{!105, !6, i64 536}
!123 = !{!25, !6, i64 64}
!124 = !{!25, !6, i64 152}
!125 = !{!25, !6, i64 156}
!126 = !{!25, !6, i64 160}
!127 = !{!25, !6, i64 164}
!128 = !{!28, !6, i64 520}
!129 = !{!28, !2, i64 512}
!130 = !{!131, !6, i64 88}
!131 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !22, i64 40, !21, i64 56, !6, i64 88, !2, i64 96}
!132 = !{!22, !23, i64 0}
!133 = !{!22, !23, i64 8}
!134 = !{!131, !23, i64 40}
!135 = !{!131, !23, i64 48}
!136 = !{!16, !2, i64 64}
!137 = !{!131, !2, i64 96}
!138 = !{!139, !2, i64 16}
!139 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !21, i64 376, !24, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !105, i64 448}
!140 = !{!141, !2, i64 40}
!141 = !{!"gs_glyph_data_s", !142, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!142 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!143 = !{!139, !2, i64 448}
!144 = !{!20, !2, i64 464}
!145 = !{!20, !2, i64 16}
!146 = !{!20, !2, i64 472}
!147 = !{!28, !2, i64 16}
!148 = !{!28, !2, i64 528}
!149 = !{!141, !6, i64 8}
!150 = !{!141, !2, i64 0}
!151 = !{!84, !3, i64 16}
!152 = !{!84, !6, i64 20}
!153 = !{!16, !2, i64 88}
!154 = !{!20, !2, i64 448}
!155 = !{!20, !2, i64 456}
!156 = !{!20, !2, i64 216}
!157 = !{!20, !2, i64 480}
!158 = !{!159, !6, i64 0}
!159 = !{!"gs_type42_mtx_s", !6, i64 0, !10, i64 8, !6, i64 16}
!160 = !{!48, !6, i64 216}
!161 = !{!159, !10, i64 8}
!162 = !{!159, !6, i64 16}
!163 = !{!20, !6, i64 592}
!164 = !{!34, !2, i64 720}
!165 = !{!20, !6, i64 512}
!166 = !{!23, !23, i64 0}
!167 = !{!95, !10, i64 0}
!168 = !{!65, !2, i64 216}
!169 = !{!58, !2, i64 24}
!170 = !{!139, !2, i64 456}
!171 = !{!139, !2, i64 464}
!172 = !{!139, !2, i64 472}
!173 = !{!139, !2, i64 480}
!174 = !{!139, !2, i64 496}
!175 = !{!139, !6, i64 512}
!176 = !{!177, !12, i64 296}
!177 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !178, i64 24, !6, i64 128, !180, i64 132, !6, i64 168, !22, i64 176, !22, i64 192, !6, i64 208, !6, i64 212, !181, i64 216, !3, i64 220, !182, i64 224, !182, i64 228, !183, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !184, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !185, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !186, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !186, i64 1336}
!178 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !11, i64 40, !179, i64 64}
!179 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!180 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!181 = !{!"short", !3, i64 0}
!182 = !{!"gs_transparency_source_s", !12, i64 0}
!183 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!184 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!185 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!186 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!187 = !{!188, !6, i64 9880}
!188 = !{!"gs_type1_state_s", !189, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !6, i64 9880, !6, i64 9884, !2, i64 9888, !191, i64 9896, !12, i64 9944, !192, i64 9948, !194, i64 9972, !184, i64 9980, !3, i64 9988, !6, i64 10180, !3, i64 10184, !6, i64 10976, !6, i64 10980, !6, i64 10984, !6, i64 10988, !6, i64 10992, !6, i64 10996, !184, i64 11000, !184, i64 11008, !6, i64 11016, !6, i64 11020, !184, i64 11024, !184, i64 11032, !6, i64 11040, !184, i64 11044, !6, i64 11052, !6, i64 11056, !184, i64 11060, !6, i64 11068, !6, i64 11072, !184, i64 11076, !3, i64 11084}
!189 = !{!"t1_hinter_s", !190, i64 0, !190, i64 24, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !23, i64 9744, !23, i64 9752, !23, i64 9760, !23, i64 9768, !23, i64 9776, !23, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!190 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!191 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!192 = !{!"point_scale_s", !193, i64 0, !193, i64 12}
!193 = !{!"pixel_scale_s", !6, i64 0, !6, i64 4, !6, i64 8}
!194 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!195 = !{!139, !2, i64 488}
!196 = !{!49, !2, i64 0}
!197 = !{!49, !2, i64 16}
!198 = !{!49, !6, i64 8}
!199 = !{!139, !2, i64 24}
!200 = !{!201, !2, i64 208}
!201 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !202, i64 24, !203, i64 56, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208, !10, i64 216}
!202 = !{!"fm_pair_cache_s", !6, i64 0, !6, i64 4, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!203 = !{!"char_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!204 = !{!139, !2, i64 504}
!205 = !{!48, !2, i64 288}
!206 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 16, i64 8, !1}
!207 = !{!28, !6, i64 524}
!208 = !{!139, !2, i64 184}
!209 = !{!38, !6, i64 20}
!210 = !{!38, !6, i64 24}
!211 = !{!131, !6, i64 0}
!212 = !{!139, !2, i64 224}
!213 = !{!139, !2, i64 232}
!214 = !{!34, !6, i64 696}
!215 = !{!48, !2, i64 232}
!216 = !{!34, !6, i64 712}
!217 = !{!34, !2, i64 744}
!218 = !{!34, !2, i64 16}
!219 = !{!220, !10, i64 0}
!220 = !{!"gs_subst_CID_on_WMode_s", !221, i64 0, !3, i64 24, !3, i64 40}
!221 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!222 = !{!220, !2, i64 8}
!223 = !{!220, !2, i64 16}
!224 = !{!181, !181, i64 0}
!225 = !{!226, !2, i64 0}
!226 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!227 = !{!226, !6, i64 8}
!228 = !{!229, !2, i64 16}
!229 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!230 = !{!201, !2, i64 128}
!231 = !{!232, !2, i64 32}
!232 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!233 = !{!48, !2, i64 240}
!234 = !{!48, !2, i64 256}
!235 = !{!48, !2, i64 264}
!236 = !{!48, !2, i64 280}
!237 = !{!229, !2, i64 0}
!238 = !{!232, !2, i64 40}
!239 = !{!131, !23, i64 56}
!240 = !{!131, !23, i64 64}
!241 = !{!131, !23, i64 72}
!242 = !{!131, !23, i64 80}
!243 = !{!244, !2, i64 456}
!244 = !{!"gs_show_enum_s", !245, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !221, i64 160, !2, i64 184, !2, i64 192, !10, i64 200, !6, i64 208, !194, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !246, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !22, i64 360, !10, i64 376, !6, i64 384, !194, i64 388, !22, i64 400, !247, i64 416, !6, i64 448, !2, i64 456, !6, i64 464, !3, i64 468, !2, i64 472, !6, i64 480, !39, i64 484, !39, i64 500, !6, i64 516, !6, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !184, i64 560, !22, i64 568, !6, i64 584, !184, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!245 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !22, i64 24, !22, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!246 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!247 = !{!"gs_text_returned_s", !10, i64 0, !10, i64 8, !22, i64 16}
!248 = !{!249, !2, i64 1680}
!249 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !178, i64 24, !6, i64 128, !180, i64 132, !6, i64 168, !22, i64 176, !22, i64 192, !6, i64 208, !6, i64 212, !181, i64 216, !3, i64 220, !182, i64 224, !182, i64 228, !183, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !184, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !185, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !186, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !186, i64 1336, !2, i64 1616, !11, i64 1624, !6, i64 1648, !11, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !180, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !250, i64 1888}
!250 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!251 = !{!8, !6, i64 152}
!252 = !{!8, !12, i64 156}
