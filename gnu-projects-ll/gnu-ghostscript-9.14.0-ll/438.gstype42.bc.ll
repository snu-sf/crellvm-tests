; ModuleID = './gstype42.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
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
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TFace = type opaque
%struct._TInstance = type opaque
%struct._TExecution_Context = type opaque
%struct.gx_ttfReader_s = type { %struct.ttfReader_s, i32, i32, i32, %struct.gs_font_type42_s*, %struct.gs_memory_s*, %struct.gs_glyph_data_s }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_fapi_server_s = type opaque
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type opaque
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type opaque
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_type42_font_init_sort_s = type { i64, i32, i32 }
%struct.GSUB_s = type { i32, i16, i16, i16 }
%struct.LookupListTable_s = type { i16, [1 x i16] }
%struct.LookupTable_s = type { i16, i16, i16, [1 x i16] }
%struct.SingleSubstFormat1_s = type { i16, i16, i16 }
%struct.SingleSubstFormat2_s = type { i16, i16, i16, [1 x i16] }
%struct.CoverageFormat1_s = type { i16, i16, [1 x i16] }
%struct.CoverageFormat2_s = type { i16, i16, [1 x %struct.RangeRecord_s] }
%struct.RangeRecord_s = type { i16, i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"gs_font_type42\00", align 1
@font_type42_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @font_type42_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_font_type42 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 656, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* bitcast (%struct.gc_struct_data_s* @font_type42_reloc_ptrs to i8*) }, align 8
@gs_type42_font_init.version1_0 = internal constant [4 x i8] c"\00\01\00\00", align 1
@gs_type42_font_init.version_true = internal constant [4 x i8] c"true", align 1
@gs_type42_font_init.version_ttcf = internal constant [4 x i8] c"ttcf", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unknown TTC header version %08X in the font %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"GSUB\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"gs_type42_font_init(GSUB)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hhea\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"maxp\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vhea\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vmtx\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"OS/2\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"Warning: 'loca' length %d is greater than numGlyphs %d in the font %s.\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"gs_type42_font_init\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"gs_type42_font_init(sort loca)\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"gs_len_glyphs_release\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"gs_gsub_release\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"default_get_outline\00", align 1
@gs_type42_glyph_outline.imat = internal constant %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@gs_type42_glyph_outline.log2_scale = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"gs_type42_glyph_info\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"gs_type42_enumerate_glyph\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"gs_type42_default_get_metrics\00", align 1
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@font_type42_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 456 }, %struct.gc_ptr_element_s { i16 0, i16 616 }, %struct.gc_ptr_element_s { i16 0, i16 624 }, %struct.gc_ptr_element_s { i16 0, i16 640 }], align 16
@.str.24 = private unnamed_addr constant [13 x i8] c"parse_pieces\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_font_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type42_read_data(%struct.gs_font_type42_s* %pfont, i64 %pos, i32 %length, i8* %buf) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %pos.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %string_proc = alloca i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, align 8
  %left = alloca i32, align 4
  %data2 = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !5
  store i32 %length, i32* %length.addr, align 4, !tbaa !7
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %string_proc1 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %2 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc1, align 8, !tbaa !9
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* %2, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %3 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %length.addr, align 4, !tbaa !7
  store i32 %4, i32* %left, align 4, !tbaa !7
  %5 = bitcast i8** %data2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %9 = load i64, i64* %pos.addr, align 8, !tbaa !5
  %10 = load i32, i32* %length.addr, align 4, !tbaa !7
  %conv = zext i32 %10 to i64
  %add = add i64 %9, %conv
  %11 = load i32, i32* %left, align 4, !tbaa !7
  %conv3 = zext i32 %11 to i64
  %sub = sub i64 %add, %conv3
  %12 = load i32, i32* %left, align 4, !tbaa !7
  %call = call i32 %7(%struct.gs_font_type42_s* %8, i64 %sub, i32 %12, i8** %data2) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %13 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %15 = load i32, i32* %code, align 4, !tbaa !7
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load i32, i32* %left, align 4, !tbaa !7
  store i32 %16, i32* %code, align 4, !tbaa !7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %18 = load i32, i32* %length.addr, align 4, !tbaa !7
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %19 = load i32, i32* %left, align 4, !tbaa !7
  %idx.ext9 = zext i32 %19 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %20 = load i8*, i8** %data2, align 8, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !7
  %conv11 = sext i32 %21 to i64
  %call12 = call i8* @memcpy(i8* %add.ptr10, i8* %20, i64 %conv11) #7
  %22 = load i32, i32* %code, align 4, !tbaa !7
  %23 = load i32, i32* %left, align 4, !tbaa !7
  %sub13 = sub i32 %23, %22
  store i32 %sub13, i32* %left, align 4, !tbaa !7
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %24 = load i32, i32* %left, align 4, !tbaa !7
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i8** %data2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_type42_font_init(%struct.gs_font_type42_s* %pfont, i32 %subfontID) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %subfontID.addr = alloca i32, align 4
  %string_proc = alloca i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, align 8
  %OffsetTable = alloca [12 x i8], align 1
  %numTables = alloca i32, align 4
  %TableDirectory = alloca [640 x i8], align 16
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %head_box = alloca [8 x i8], align 1
  %loca_size = alloca i64, align 8
  %glyph_start = alloca i64, align 8
  %glyph_offset = alloca i64, align 8
  %glyph_length = alloca i64, align 8
  %glyph_size = alloca i64, align 8
  %numFonts = alloca i32, align 4
  %version = alloca i32, align 4
  %OffsetTableOffset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %proc_data = alloca i8*, align 8
  %tab = alloca i8*, align 8
  %offset = alloca i64, align 8
  %head = alloca [54 x i8], align 16
  %hhea = alloca [36 x i8], align 16
  %maxp = alloca [30 x i8], align 16
  %vhea = alloca [36 x i8], align 16
  %buf = alloca [49 x i8], align 16
  %l = alloca i32, align 4
  %l425 = alloca i32, align 4
  %last_glyph_offset = alloca i64, align 8
  %num_valid_loca_elm = alloca i64, align 8
  %last_offset = alloca i64, align 8
  %psort = alloca %struct.gs_type42_font_init_sort_s*, align 8
  %psortary = alloca %struct.gs_type42_font_init_sort_s*, align 8
  %old_length = alloca i64, align 8
  %upem = alloca float, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %subfontID, i32* %subfontID.addr, align 4, !tbaa !7
  %0 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %string_proc1 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %2 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc1, align 8, !tbaa !9
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* %2, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %3 = bitcast [12 x i8]* %OffsetTable to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  %4 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast [640 x i8]* %TableDirectory to i8*
  call void @llvm.lifetime.start(i64 640, i8* %5) #2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast [8 x i8]* %head_box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %loca_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i64 0, i64* %loca_size, align 8, !tbaa !5
  %10 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %glyph_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64* %glyph_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i64* %glyph_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store i64 0, i64* %glyph_size, align 8, !tbaa !5
  %14 = bitcast i32* %numFonts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %OffsetTableOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %17, i64 0, i32 12, i8* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %18 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %19 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay2 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call3 = call i32 @memcmp(i8* %arraydecay2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gs_type42_font_init.version_ttcf, i32 0, i32 0), i64 4) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %do.end
  %arraydecay5 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 4
  %call6 = call i64 @get_u32_msb(i8* %add.ptr) #6
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %version, align 4, !tbaa !7
  %20 = load i32, i32* %version, align 4, !tbaa !7
  %cmp7 = icmp ne i32 %20, 65536
  br i1 %cmp7, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.4
  %21 = load i32, i32* %version, align 4, !tbaa !7
  %cmp9 = icmp ne i32 %21, 131072
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true
  %22 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %22, i32 0, i32 2
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %call12 = call i8* @gs_program_name() #6
  %call13 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %23, i8* %call12, i64 %call13) #6
  %24 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %24, i32 0, i32 2
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !21
  %26 = load i32, i32* %version, align 4, !tbaa !7
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %27, i32 0, i32 21
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %call16 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 %26, i8* %arraydecay15) #6
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.17:                                        ; preds = %land.lhs.true, %if.then.4
  %arraydecay18 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 8
  %call20 = call i64 @get_u32_msb(i8* %add.ptr19) #6
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %numFonts, align 4, !tbaa !7
  %28 = load i32, i32* %subfontID.addr, align 4, !tbaa !7
  %cmp22 = icmp slt i32 %28, 0
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %29 = load i32, i32* %subfontID.addr, align 4, !tbaa !7
  %30 = load i32, i32* %numFonts, align 4, !tbaa !7
  %cmp24 = icmp uge i32 %29, %30
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.27:                                        ; preds = %lor.lhs.false
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %31 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %32 = load i32, i32* %subfontID.addr, align 4, !tbaa !7
  %mul = mul nsw i32 %32, 4
  %add = add nsw i32 12, %mul
  %conv29 = sext i32 %add to i64
  %arraydecay30 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call31 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %31, i64 %conv29, i32 4, i8* %arraydecay30) #6
  store i32 %call31, i32* %code, align 4, !tbaa !7
  %33 = load i32, i32* %code, align 4, !tbaa !7
  %cmp32 = icmp slt i32 %33, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.body.28
  %34 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.35:                                        ; preds = %do.body.28
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %arraydecay38 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call39 = call i64 @get_u32_msb(i8* %arraydecay38) #6
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* %OffsetTableOffset, align 4, !tbaa !7
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.37
  %35 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %36 = load i32, i32* %OffsetTableOffset, align 4, !tbaa !7
  %conv42 = zext i32 %36 to i64
  %arraydecay43 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call44 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %35, i64 %conv42, i32 12, i8* %arraydecay43) #6
  store i32 %call44, i32* %code, align 4, !tbaa !7
  %37 = load i32, i32* %code, align 4, !tbaa !7
  %cmp45 = icmp slt i32 %37, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body.41
  %38 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.48:                                        ; preds = %do.body.41
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51

if.else:                                          ; preds = %do.end
  store i32 0, i32* %OffsetTableOffset, align 4, !tbaa !7
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %do.end.50
  %arraydecay52 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call53 = call i32 @memcmp(i8* %arraydecay52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gs_type42_font_init.version1_0, i32 0, i32 0), i64 4) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.60

land.lhs.true.55:                                 ; preds = %if.end.51
  %arraydecay56 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call57 = call i32 @memcmp(i8* %arraydecay56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gs_type42_font_init.version_true, i32 0, i32 0), i64 4) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.60:                                        ; preds = %land.lhs.true.55, %if.end.51
  %arraydecay61 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay61, i64 4
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr62, i64 0
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv63 = zext i8 %39 to i32
  %shl = shl i32 %conv63, 8
  %arraydecay64 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr65 = getelementptr inbounds i8, i8* %arraydecay64, i64 4
  %arrayidx66 = getelementptr inbounds i8, i8* %add.ptr65, i64 1
  %40 = load i8, i8* %arrayidx66, align 1, !tbaa !22
  %conv67 = zext i8 %40 to i32
  %add68 = add i32 %shl, %conv67
  store i32 %add68, i32* %numTables, align 4, !tbaa !7
  %41 = load i32, i32* %numTables, align 4, !tbaa !7
  %cmp69 = icmp ugt i32 %41, 40
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.60
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.72:                                        ; preds = %if.end.60
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  %42 = load i32, i32* %numTables, align 4, !tbaa !7
  %mul74 = mul i32 %42, 16
  %conv75 = zext i32 %mul74 to i64
  %cmp76 = icmp ugt i64 %conv75, 640
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %do.body.73
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.79:                                        ; preds = %do.body.73
  %43 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %44 = load i32, i32* %OffsetTableOffset, align 4, !tbaa !7
  %add80 = add i32 %44, 12
  %conv81 = zext i32 %add80 to i64
  %45 = load i32, i32* %numTables, align 4, !tbaa !7
  %mul82 = mul i32 %45, 16
  %arraydecay83 = getelementptr inbounds [640 x i8], [640 x i8]* %TableDirectory, i32 0, i32 0
  %call84 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %43, i64 %conv81, i32 %mul82, i8* %arraydecay83) #6
  store i32 %call84, i32* %code, align 4, !tbaa !7
  %46 = load i32, i32* %code, align 4, !tbaa !7
  %cmp85 = icmp slt i32 %46, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.79
  %47 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.88:                                        ; preds = %if.end.79
  br label %do.cond.89

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  %48 = bitcast i8** %proc_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data91 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %49, i32 0, i32 29
  %proc_data92 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data91, i32 0, i32 1
  %50 = load i8*, i8** %proc_data92, align 8, !tbaa !23
  store i8* %50, i8** %proc_data, align 8, !tbaa !1
  %51 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data93 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %51, i32 0, i32 29
  %52 = bitcast %struct.gs_type42_data_s* %data93 to i8*
  %call94 = call i8* @memset(i8* %52, i32 0, i64 208) #7
  %53 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %54 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data95 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %54, i32 0, i32 29
  %string_proc96 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data95, i32 0, i32 0
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* %53, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc96, align 8, !tbaa !9
  %55 = load i8*, i8** %proc_data, align 8, !tbaa !1
  %56 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data97 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %56, i32 0, i32 29
  %proc_data98 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data97, i32 0, i32 1
  store i8* %55, i8** %proc_data98, align 8, !tbaa !23
  %57 = bitcast i8** %proc_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.90
  %58 = load i32, i32* %i, align 4, !tbaa !7
  %59 = load i32, i32* %numTables, align 4, !tbaa !7
  %cmp99 = icmp ult i32 %58, %59
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %arraydecay101 = getelementptr inbounds [640 x i8], [640 x i8]* %TableDirectory, i32 0, i32 0
  %61 = load i32, i32* %i, align 4, !tbaa !7
  %mul102 = mul i32 %61, 16
  %idx.ext = zext i32 %mul102 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay101, i64 %idx.ext
  store i8* %add.ptr103, i8** %tab, align 8, !tbaa !1
  %62 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds i8, i8* %63, i64 8
  %call105 = call i64 @get_u32_msb(i8* %add.ptr104) #6
  store i64 %call105, i64* %offset, align 8, !tbaa !5
  %64 = load i8*, i8** %tab, align 8, !tbaa !1
  %call106 = call i32 @memcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #8
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.else.110, label %if.then.108

if.then.108:                                      ; preds = %for.body
  %65 = load i64, i64* %offset, align 8, !tbaa !5
  %66 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data109 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %66, i32 0, i32 29
  %cmap = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data109, i32 0, i32 6
  store i64 %65, i64* %cmap, align 8, !tbaa !24
  br label %if.end.379

if.else.110:                                      ; preds = %for.body
  %67 = load i8*, i8** %tab, align 8, !tbaa !1
  %call111 = call i32 @memcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 4) #8
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.119, label %if.then.113

if.then.113:                                      ; preds = %if.else.110
  %68 = load i64, i64* %offset, align 8, !tbaa !5
  %69 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data114 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %69, i32 0, i32 29
  %glyf = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data114, i32 0, i32 7
  store i64 %68, i64* %glyf, align 8, !tbaa !25
  %70 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr115 = getelementptr inbounds i8, i8* %70, i64 12
  %call116 = call i64 @get_u32_msb(i8* %add.ptr115) #6
  %conv117 = trunc i64 %call116 to i32
  %conv118 = zext i32 %conv117 to i64
  store i64 %conv118, i64* %glyph_size, align 8, !tbaa !5
  br label %if.end.378

if.else.119:                                      ; preds = %if.else.110
  %71 = load i8*, i8** %tab, align 8, !tbaa !1
  %call120 = call i32 @memcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 4) #8
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.else.154, label %if.then.122

if.then.122:                                      ; preds = %if.else.119
  %72 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i8, i8* %72, i64 12
  %call124 = call i64 @get_u32_msb(i8* %add.ptr123) #6
  %73 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data125 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %73, i32 0, i32 29
  %gsub_size = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data125, i32 0, i32 25
  store i64 %call124, i64* %gsub_size, align 8, !tbaa !26
  %74 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %74, i32 0, i32 2
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory126, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %76 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %77 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory127 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %77, i32 0, i32 2
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory127, align 8, !tbaa !21
  %79 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data128 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %79, i32 0, i32 29
  %gsub_size129 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data128, i32 0, i32 25
  %80 = load i64, i64* %gsub_size129, align 8, !tbaa !26
  %conv130 = trunc i64 %80 to i32
  %call131 = call i8* %76(%struct.gs_memory_s* %78, i32 %conv130, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  %81 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data132 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %81, i32 0, i32 29
  %gsub = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data132, i32 0, i32 24
  store i8* %call131, i8** %gsub, align 8, !tbaa !30
  %82 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data133 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %82, i32 0, i32 29
  %gsub134 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data133, i32 0, i32 24
  %83 = load i8*, i8** %gsub134, align 8, !tbaa !30
  %cmp135 = icmp eq i8* %83, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.122
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.138:                                       ; preds = %if.then.122
  %84 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gs_font_type42_s* %84 to %struct.gs_font_s*
  %86 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gs_font_type42_s* %86 to i8*
  %call139 = call i32 @gs_font_notify_register(%struct.gs_font_s* %85, i32 (i8*, i8*)* @gs_gsub_release, i8* %87) #6
  store i32 %call139, i32* %code, align 4, !tbaa !7
  %88 = load i32, i32* %code, align 4, !tbaa !7
  %cmp140 = icmp slt i32 %88, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  %89 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.143:                                       ; preds = %if.end.138
  %90 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %91 = load i64, i64* %offset, align 8, !tbaa !5
  %92 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data144 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %92, i32 0, i32 29
  %gsub_size145 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data144, i32 0, i32 25
  %93 = load i64, i64* %gsub_size145, align 8, !tbaa !26
  %conv146 = trunc i64 %93 to i32
  %94 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data147 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %94, i32 0, i32 29
  %gsub148 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data147, i32 0, i32 24
  %95 = load i8*, i8** %gsub148, align 8, !tbaa !30
  %call149 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %90, i64 %91, i32 %conv146, i8* %95) #6
  store i32 %call149, i32* %code, align 4, !tbaa !7
  %96 = load i32, i32* %code, align 4, !tbaa !7
  %cmp150 = icmp slt i32 %96, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.143
  %97 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.153:                                       ; preds = %if.end.143
  br label %if.end.377

if.else.154:                                      ; preds = %if.else.119
  %98 = load i8*, i8** %tab, align 8, !tbaa !1
  %call155 = call i32 @memcmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #8
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.else.193, label %if.then.157

if.then.157:                                      ; preds = %if.else.154
  %99 = bitcast [54 x i8]* %head to i8*
  call void @llvm.lifetime.start(i64 54, i8* %99) #2
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %100 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %101 = load i64, i64* %offset, align 8, !tbaa !5
  %arraydecay159 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %call160 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %100, i64 %101, i32 54, i8* %arraydecay159) #6
  store i32 %call160, i32* %code, align 4, !tbaa !7
  %102 = load i32, i32* %code, align 4, !tbaa !7
  %cmp161 = icmp slt i32 %102, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %do.body.158
  %103 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.164:                                       ; preds = %do.body.158
  br label %do.cond.165

do.cond.165:                                      ; preds = %if.end.164
  br label %do.end.166

do.end.166:                                       ; preds = %do.cond.165
  %arraydecay167 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %add.ptr168 = getelementptr inbounds i8, i8* %arraydecay167, i64 18
  %arrayidx169 = getelementptr inbounds i8, i8* %add.ptr168, i64 0
  %104 = load i8, i8* %arrayidx169, align 1, !tbaa !22
  %conv170 = zext i8 %104 to i32
  %shl171 = shl i32 %conv170, 8
  %arraydecay172 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %add.ptr173 = getelementptr inbounds i8, i8* %arraydecay172, i64 18
  %arrayidx174 = getelementptr inbounds i8, i8* %add.ptr173, i64 1
  %105 = load i8, i8* %arrayidx174, align 1, !tbaa !22
  %conv175 = zext i8 %105 to i32
  %add176 = add i32 %shl171, %conv175
  %106 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data177 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %106, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data177, i32 0, i32 8
  store i32 %add176, i32* %unitsPerEm, align 4, !tbaa !31
  %arraydecay178 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %arraydecay179 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %add.ptr180 = getelementptr inbounds i8, i8* %arraydecay179, i64 36
  %call181 = call i8* @memcpy(i8* %arraydecay178, i8* %add.ptr180, i64 8) #7
  %arraydecay182 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %add.ptr183 = getelementptr inbounds i8, i8* %arraydecay182, i64 50
  %arrayidx184 = getelementptr inbounds i8, i8* %add.ptr183, i64 0
  %107 = load i8, i8* %arrayidx184, align 1, !tbaa !22
  %conv185 = zext i8 %107 to i32
  %shl186 = shl i32 %conv185, 8
  %arraydecay187 = getelementptr inbounds [54 x i8], [54 x i8]* %head, i32 0, i32 0
  %add.ptr188 = getelementptr inbounds i8, i8* %arraydecay187, i64 50
  %arrayidx189 = getelementptr inbounds i8, i8* %add.ptr188, i64 1
  %108 = load i8, i8* %arrayidx189, align 1, !tbaa !22
  %conv190 = zext i8 %108 to i32
  %add191 = add i32 %shl186, %conv190
  %109 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data192 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %109, i32 0, i32 29
  %indexToLocFormat = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data192, i32 0, i32 9
  store i32 %add191, i32* %indexToLocFormat, align 4, !tbaa !32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.166, %if.then.163
  %110 = bitcast [54 x i8]* %head to i8*
  call void @llvm.lifetime.end(i64 54, i8* %110) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.380 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.376

if.else.193:                                      ; preds = %if.else.154
  %111 = load i8*, i8** %tab, align 8, !tbaa !1
  %call194 = call i32 @memcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #8
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.else.221, label %if.then.196

if.then.196:                                      ; preds = %if.else.193
  %112 = bitcast [36 x i8]* %hhea to i8*
  call void @llvm.lifetime.start(i64 36, i8* %112) #2
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %113 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %114 = load i64, i64* %offset, align 8, !tbaa !5
  %arraydecay198 = getelementptr inbounds [36 x i8], [36 x i8]* %hhea, i32 0, i32 0
  %call199 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %113, i64 %114, i32 36, i8* %arraydecay198) #6
  store i32 %call199, i32* %code, align 4, !tbaa !7
  %115 = load i32, i32* %code, align 4, !tbaa !7
  %cmp200 = icmp slt i32 %115, 0
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %do.body.197
  %116 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.203:                                       ; preds = %do.body.197
  br label %do.cond.204

do.cond.204:                                      ; preds = %if.end.203
  br label %do.end.205

do.end.205:                                       ; preds = %do.cond.204
  %arraydecay206 = getelementptr inbounds [36 x i8], [36 x i8]* %hhea, i32 0, i32 0
  %add.ptr207 = getelementptr inbounds i8, i8* %arraydecay206, i64 34
  %arrayidx208 = getelementptr inbounds i8, i8* %add.ptr207, i64 0
  %117 = load i8, i8* %arrayidx208, align 1, !tbaa !22
  %conv209 = zext i8 %117 to i32
  %shl210 = shl i32 %conv209, 8
  %arraydecay211 = getelementptr inbounds [36 x i8], [36 x i8]* %hhea, i32 0, i32 0
  %add.ptr212 = getelementptr inbounds i8, i8* %arraydecay211, i64 34
  %arrayidx213 = getelementptr inbounds i8, i8* %add.ptr212, i64 1
  %118 = load i8, i8* %arrayidx213, align 1, !tbaa !22
  %conv214 = zext i8 %118 to i32
  %add215 = add i32 %shl210, %conv214
  %119 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data216 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %119, i32 0, i32 29
  %metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data216, i32 0, i32 10
  %arrayidx217 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics, i32 0, i64 0
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx217, i32 0, i32 0
  store i32 %add215, i32* %numMetrics, align 4, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %do.end.205, %if.then.202
  %120 = bitcast [36 x i8]* %hhea to i8*
  call void @llvm.lifetime.end(i64 36, i8* %120) #2
  %cleanup.dest.219 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.219, label %cleanup.380 [
    i32 0, label %cleanup.cont.220
  ]

cleanup.cont.220:                                 ; preds = %cleanup.218
  br label %if.end.375

if.else.221:                                      ; preds = %if.else.193
  %121 = load i8*, i8** %tab, align 8, !tbaa !1
  %call222 = call i32 @memcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #8
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.else.235, label %if.then.224

if.then.224:                                      ; preds = %if.else.221
  %122 = load i64, i64* %offset, align 8, !tbaa !5
  %123 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data225 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %123, i32 0, i32 29
  %metrics226 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data225, i32 0, i32 10
  %arrayidx227 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics226, i32 0, i64 0
  %offset228 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx227, i32 0, i32 1
  store i64 %122, i64* %offset228, align 8, !tbaa !35
  %124 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr229 = getelementptr inbounds i8, i8* %124, i64 12
  %call230 = call i64 @get_u32_msb(i8* %add.ptr229) #6
  %conv231 = trunc i64 %call230 to i32
  %125 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data232 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %125, i32 0, i32 29
  %metrics233 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data232, i32 0, i32 10
  %arrayidx234 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics233, i32 0, i64 0
  %length = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx234, i32 0, i32 2
  store i32 %conv231, i32* %length, align 4, !tbaa !36
  br label %if.end.374

if.else.235:                                      ; preds = %if.else.221
  %126 = load i8*, i8** %tab, align 8, !tbaa !1
  %call236 = call i32 @memcmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 4) #8
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.else.242, label %if.then.238

if.then.238:                                      ; preds = %if.else.235
  %127 = load i64, i64* %offset, align 8, !tbaa !5
  %128 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data239 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %128, i32 0, i32 29
  %loca = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data239, i32 0, i32 11
  store i64 %127, i64* %loca, align 8, !tbaa !37
  %129 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr240 = getelementptr inbounds i8, i8* %129, i64 12
  %call241 = call i64 @get_u32_msb(i8* %add.ptr240) #6
  store i64 %call241, i64* %loca_size, align 8, !tbaa !5
  br label %if.end.373

if.else.242:                                      ; preds = %if.else.235
  %130 = load i8*, i8** %tab, align 8, !tbaa !1
  %call243 = call i32 @memcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 4) #8
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.else.313, label %if.then.245

if.then.245:                                      ; preds = %if.else.242
  %131 = bitcast [30 x i8]* %maxp to i8*
  call void @llvm.lifetime.start(i64 30, i8* %131) #2
  br label %do.body.246

do.body.246:                                      ; preds = %if.then.245
  %132 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %133 = load i64, i64* %offset, align 8, !tbaa !5
  %arraydecay247 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %call248 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %132, i64 %133, i32 30, i8* %arraydecay247) #6
  store i32 %call248, i32* %code, align 4, !tbaa !7
  %134 = load i32, i32* %code, align 4, !tbaa !7
  %cmp249 = icmp slt i32 %134, 0
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %do.body.246
  %135 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end.252:                                       ; preds = %do.body.246
  br label %do.cond.253

do.cond.253:                                      ; preds = %if.end.252
  br label %do.end.254

do.end.254:                                       ; preds = %do.cond.253
  %arraydecay255 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr256 = getelementptr inbounds i8, i8* %arraydecay255, i64 4
  %arrayidx257 = getelementptr inbounds i8, i8* %add.ptr256, i64 0
  %136 = load i8, i8* %arrayidx257, align 1, !tbaa !22
  %conv258 = zext i8 %136 to i32
  %shl259 = shl i32 %conv258, 8
  %arraydecay260 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr261 = getelementptr inbounds i8, i8* %arraydecay260, i64 4
  %arrayidx262 = getelementptr inbounds i8, i8* %add.ptr261, i64 1
  %137 = load i8, i8* %arrayidx262, align 1, !tbaa !22
  %conv263 = zext i8 %137 to i32
  %add264 = add i32 %shl259, %conv263
  %138 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data265 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %138, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data265, i32 0, i32 15
  store i32 %add264, i32* %trueNumGlyphs, align 4, !tbaa !38
  %arraydecay266 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr267 = getelementptr inbounds i8, i8* %arraydecay266, i64 6
  %arrayidx268 = getelementptr inbounds i8, i8* %add.ptr267, i64 0
  %139 = load i8, i8* %arrayidx268, align 1, !tbaa !22
  %conv269 = zext i8 %139 to i32
  %shl270 = shl i32 %conv269, 8
  %arraydecay271 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr272 = getelementptr inbounds i8, i8* %arraydecay271, i64 6
  %arrayidx273 = getelementptr inbounds i8, i8* %add.ptr272, i64 1
  %140 = load i8, i8* %arrayidx273, align 1, !tbaa !22
  %conv274 = zext i8 %140 to i32
  %add275 = add i32 %shl270, %conv274
  %141 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data276 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %141, i32 0, i32 29
  %maxPoints = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data276, i32 0, i32 16
  store i32 %add275, i32* %maxPoints, align 4, !tbaa !39
  %arraydecay277 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr278 = getelementptr inbounds i8, i8* %arraydecay277, i64 8
  %arrayidx279 = getelementptr inbounds i8, i8* %add.ptr278, i64 0
  %142 = load i8, i8* %arrayidx279, align 1, !tbaa !22
  %conv280 = zext i8 %142 to i32
  %shl281 = shl i32 %conv280, 8
  %arraydecay282 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr283 = getelementptr inbounds i8, i8* %arraydecay282, i64 8
  %arrayidx284 = getelementptr inbounds i8, i8* %add.ptr283, i64 1
  %143 = load i8, i8* %arrayidx284, align 1, !tbaa !22
  %conv285 = zext i8 %143 to i32
  %add286 = add i32 %shl281, %conv285
  %144 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data287 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %144, i32 0, i32 29
  %maxContours = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data287, i32 0, i32 17
  store i32 %add286, i32* %maxContours, align 4, !tbaa !40
  %arraydecay288 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr289 = getelementptr inbounds i8, i8* %arraydecay288, i64 12
  %arrayidx290 = getelementptr inbounds i8, i8* %add.ptr289, i64 0
  %145 = load i8, i8* %arrayidx290, align 1, !tbaa !22
  %conv291 = zext i8 %145 to i32
  %shl292 = shl i32 %conv291, 8
  %arraydecay293 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr294 = getelementptr inbounds i8, i8* %arraydecay293, i64 12
  %arrayidx295 = getelementptr inbounds i8, i8* %add.ptr294, i64 1
  %146 = load i8, i8* %arrayidx295, align 1, !tbaa !22
  %conv296 = zext i8 %146 to i32
  %add297 = add i32 %shl292, %conv296
  %147 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data298 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %147, i32 0, i32 29
  %maxCPoints = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data298, i32 0, i32 18
  store i32 %add297, i32* %maxCPoints, align 4, !tbaa !41
  %arraydecay299 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr300 = getelementptr inbounds i8, i8* %arraydecay299, i64 16
  %arrayidx301 = getelementptr inbounds i8, i8* %add.ptr300, i64 0
  %148 = load i8, i8* %arrayidx301, align 1, !tbaa !22
  %conv302 = zext i8 %148 to i32
  %shl303 = shl i32 %conv302, 8
  %arraydecay304 = getelementptr inbounds [30 x i8], [30 x i8]* %maxp, i32 0, i32 0
  %add.ptr305 = getelementptr inbounds i8, i8* %arraydecay304, i64 16
  %arrayidx306 = getelementptr inbounds i8, i8* %add.ptr305, i64 1
  %149 = load i8, i8* %arrayidx306, align 1, !tbaa !22
  %conv307 = zext i8 %149 to i32
  %add308 = add i32 %shl303, %conv307
  %150 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data309 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %150, i32 0, i32 29
  %maxCContours = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data309, i32 0, i32 19
  store i32 %add308, i32* %maxCContours, align 4, !tbaa !42
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.310

cleanup.310:                                      ; preds = %do.end.254, %if.then.251
  %151 = bitcast [30 x i8]* %maxp to i8*
  call void @llvm.lifetime.end(i64 30, i8* %151) #2
  %cleanup.dest.311 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.311, label %cleanup.380 [
    i32 0, label %cleanup.cont.312
  ]

cleanup.cont.312:                                 ; preds = %cleanup.310
  br label %if.end.372

if.else.313:                                      ; preds = %if.else.242
  %152 = load i8*, i8** %tab, align 8, !tbaa !1
  %call314 = call i32 @memcmp(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #8
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.else.318, label %if.then.316

if.then.316:                                      ; preds = %if.else.313
  %153 = load i64, i64* %offset, align 8, !tbaa !5
  %154 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data317 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %154, i32 0, i32 29
  %name_offset = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data317, i32 0, i32 12
  store i64 %153, i64* %name_offset, align 8, !tbaa !43
  br label %if.end.371

if.else.318:                                      ; preds = %if.else.313
  %155 = load i8*, i8** %tab, align 8, !tbaa !1
  %call319 = call i32 @memcmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #8
  %tobool320 = icmp ne i32 %call319, 0
  br i1 %tobool320, label %if.else.348, label %if.then.321

if.then.321:                                      ; preds = %if.else.318
  %156 = bitcast [36 x i8]* %vhea to i8*
  call void @llvm.lifetime.start(i64 36, i8* %156) #2
  br label %do.body.322

do.body.322:                                      ; preds = %if.then.321
  %157 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %158 = load i64, i64* %offset, align 8, !tbaa !5
  %arraydecay323 = getelementptr inbounds [36 x i8], [36 x i8]* %vhea, i32 0, i32 0
  %call324 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %157, i64 %158, i32 36, i8* %arraydecay323) #6
  store i32 %call324, i32* %code, align 4, !tbaa !7
  %159 = load i32, i32* %code, align 4, !tbaa !7
  %cmp325 = icmp slt i32 %159, 0
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %do.body.322
  %160 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.345

if.end.328:                                       ; preds = %do.body.322
  br label %do.cond.329

do.cond.329:                                      ; preds = %if.end.328
  br label %do.end.330

do.end.330:                                       ; preds = %do.cond.329
  %arraydecay331 = getelementptr inbounds [36 x i8], [36 x i8]* %vhea, i32 0, i32 0
  %add.ptr332 = getelementptr inbounds i8, i8* %arraydecay331, i64 34
  %arrayidx333 = getelementptr inbounds i8, i8* %add.ptr332, i64 0
  %161 = load i8, i8* %arrayidx333, align 1, !tbaa !22
  %conv334 = zext i8 %161 to i32
  %shl335 = shl i32 %conv334, 8
  %arraydecay336 = getelementptr inbounds [36 x i8], [36 x i8]* %vhea, i32 0, i32 0
  %add.ptr337 = getelementptr inbounds i8, i8* %arraydecay336, i64 34
  %arrayidx338 = getelementptr inbounds i8, i8* %add.ptr337, i64 1
  %162 = load i8, i8* %arrayidx338, align 1, !tbaa !22
  %conv339 = zext i8 %162 to i32
  %add340 = add i32 %shl335, %conv339
  %163 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data341 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %163, i32 0, i32 29
  %metrics342 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data341, i32 0, i32 10
  %arrayidx343 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics342, i32 0, i64 1
  %numMetrics344 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx343, i32 0, i32 0
  store i32 %add340, i32* %numMetrics344, align 4, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.345

cleanup.345:                                      ; preds = %do.end.330, %if.then.327
  %164 = bitcast [36 x i8]* %vhea to i8*
  call void @llvm.lifetime.end(i64 36, i8* %164) #2
  %cleanup.dest.346 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.346, label %cleanup.380 [
    i32 0, label %cleanup.cont.347
  ]

cleanup.cont.347:                                 ; preds = %cleanup.345
  br label %if.end.370

if.else.348:                                      ; preds = %if.else.318
  %165 = load i8*, i8** %tab, align 8, !tbaa !1
  %call349 = call i32 @memcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #8
  %tobool350 = icmp ne i32 %call349, 0
  br i1 %tobool350, label %if.else.363, label %if.then.351

if.then.351:                                      ; preds = %if.else.348
  %166 = load i64, i64* %offset, align 8, !tbaa !5
  %167 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data352 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %167, i32 0, i32 29
  %metrics353 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data352, i32 0, i32 10
  %arrayidx354 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics353, i32 0, i64 1
  %offset355 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx354, i32 0, i32 1
  store i64 %166, i64* %offset355, align 8, !tbaa !35
  %168 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr356 = getelementptr inbounds i8, i8* %168, i64 12
  %call357 = call i64 @get_u32_msb(i8* %add.ptr356) #6
  %conv358 = trunc i64 %call357 to i32
  %169 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data359 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %169, i32 0, i32 29
  %metrics360 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data359, i32 0, i32 10
  %arrayidx361 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics360, i32 0, i64 1
  %length362 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx361, i32 0, i32 2
  store i32 %conv358, i32* %length362, align 4, !tbaa !36
  br label %if.end.369

if.else.363:                                      ; preds = %if.else.348
  %170 = load i8*, i8** %tab, align 8, !tbaa !1
  %call364 = call i32 @memcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #8
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.end.368, label %if.then.366

if.then.366:                                      ; preds = %if.else.363
  %171 = load i64, i64* %offset, align 8, !tbaa !5
  %172 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data367 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %172, i32 0, i32 29
  %os2_offset = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data367, i32 0, i32 13
  store i64 %171, i64* %os2_offset, align 8, !tbaa !44
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.366, %if.else.363
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.then.351
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %cleanup.cont.347
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then.316
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %cleanup.cont.312
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.then.238
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.224
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %cleanup.cont.220
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %cleanup.cont
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.end.153
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.113
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.108
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.379, %cleanup.345, %cleanup.310, %cleanup.218, %cleanup, %if.then.152, %if.then.142, %if.then.137
  %173 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %cleanup.dest.382 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.382, label %cleanup.800 [
    i32 0, label %cleanup.cont.383
  ]

cleanup.cont.383:                                 ; preds = %cleanup.380
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.383
  %175 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add i32 %175, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %176 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data384 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %176, i32 0, i32 29
  %indexToLocFormat385 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data384, i32 0, i32 9
  %177 = load i32, i32* %indexToLocFormat385, align 4, !tbaa !32
  %add386 = add i32 %177, 1
  %178 = load i64, i64* %loca_size, align 8, !tbaa !5
  %sh_prom = zext i32 %add386 to i64
  %shr = lshr i64 %178, %sh_prom
  store i64 %shr, i64* %loca_size, align 8, !tbaa !5
  %179 = load i64, i64* %loca_size, align 8, !tbaa !5
  %cmp387 = icmp eq i64 %179, 0
  br i1 %cmp387, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %180 = load i64, i64* %loca_size, align 8, !tbaa !5
  %sub = sub i64 %180, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  %conv389 = trunc i64 %cond to i32
  %181 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data390 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %181, i32 0, i32 29
  %numGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data390, i32 0, i32 14
  store i32 %conv389, i32* %numGlyphs, align 4, !tbaa !45
  %182 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data391 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %182, i32 0, i32 29
  %numGlyphs392 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data391, i32 0, i32 14
  %183 = load i32, i32* %numGlyphs392, align 4, !tbaa !45
  %184 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data393 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %184, i32 0, i32 29
  %trueNumGlyphs394 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data393, i32 0, i32 15
  %185 = load i32, i32* %trueNumGlyphs394, align 4, !tbaa !38
  %cmp395 = icmp ugt i32 %183, %185
  br i1 %cmp395, label %if.then.397, label %if.end.505

if.then.397:                                      ; preds = %cond.end
  %186 = bitcast [49 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 49, i8* %186) #2
  %187 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %key_name398 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %187, i32 0, i32 21
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name398, i32 0, i32 1
  %188 = load i32, i32* %size, align 4, !tbaa !46
  %tobool399 = icmp ne i32 %188, 0
  br i1 %tobool399, label %if.then.400, label %if.else.421

if.then.400:                                      ; preds = %if.then.397
  %189 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #2
  %190 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %key_name401 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %190, i32 0, i32 21
  %size402 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name401, i32 0, i32 1
  %191 = load i32, i32* %size402, align 4, !tbaa !46
  %conv403 = zext i32 %191 to i64
  %cmp404 = icmp ult i64 48, %conv403
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %if.then.400
  br label %cond.end.411

cond.false.407:                                   ; preds = %if.then.400
  %192 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %key_name408 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %192, i32 0, i32 21
  %size409 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name408, i32 0, i32 1
  %193 = load i32, i32* %size409, align 4, !tbaa !46
  %conv410 = zext i32 %193 to i64
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.false.407, %cond.true.406
  %cond412 = phi i64 [ 48, %cond.true.406 ], [ %conv410, %cond.false.407 ]
  %conv413 = trunc i64 %cond412 to i32
  store i32 %conv413, i32* %l, align 4, !tbaa !7
  %arraydecay414 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i32 0
  %194 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %key_name415 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %194, i32 0, i32 21
  %chars416 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name415, i32 0, i32 0
  %arraydecay417 = getelementptr inbounds [48 x i8], [48 x i8]* %chars416, i32 0, i32 0
  %195 = load i32, i32* %l, align 4, !tbaa !7
  %conv418 = sext i32 %195 to i64
  %call419 = call i8* @memcpy(i8* %arraydecay414, i8* %arraydecay417, i64 %conv418) #7
  %196 = load i32, i32* %l, align 4, !tbaa !7
  %idxprom = sext i32 %196 to i64
  %arrayidx420 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx420, align 1, !tbaa !22
  %197 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  br label %if.end.450

if.else.421:                                      ; preds = %if.then.397
  %198 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %198, i32 0, i32 22
  %size422 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %199 = load i32, i32* %size422, align 4, !tbaa !47
  %tobool423 = icmp ne i32 %199, 0
  br i1 %tobool423, label %if.then.424, label %if.else.447

if.then.424:                                      ; preds = %if.else.421
  %200 = bitcast i32* %l425 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #2
  %201 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %font_name426 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %201, i32 0, i32 22
  %size427 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name426, i32 0, i32 1
  %202 = load i32, i32* %size427, align 4, !tbaa !47
  %conv428 = zext i32 %202 to i64
  %cmp429 = icmp ult i64 48, %conv428
  br i1 %cmp429, label %cond.true.431, label %cond.false.432

cond.true.431:                                    ; preds = %if.then.424
  br label %cond.end.436

cond.false.432:                                   ; preds = %if.then.424
  %203 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %font_name433 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %203, i32 0, i32 22
  %size434 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name433, i32 0, i32 1
  %204 = load i32, i32* %size434, align 4, !tbaa !47
  %conv435 = zext i32 %204 to i64
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.432, %cond.true.431
  %cond437 = phi i64 [ 48, %cond.true.431 ], [ %conv435, %cond.false.432 ]
  %conv438 = trunc i64 %cond437 to i32
  store i32 %conv438, i32* %l425, align 4, !tbaa !7
  %arraydecay439 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i32 0
  %205 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %font_name440 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %205, i32 0, i32 22
  %chars441 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name440, i32 0, i32 0
  %arraydecay442 = getelementptr inbounds [48 x i8], [48 x i8]* %chars441, i32 0, i32 0
  %206 = load i32, i32* %l425, align 4, !tbaa !7
  %conv443 = sext i32 %206 to i64
  %call444 = call i8* @memcpy(i8* %arraydecay439, i8* %arraydecay442, i64 %conv443) #7
  %207 = load i32, i32* %l425, align 4, !tbaa !7
  %idxprom445 = sext i32 %207 to i64
  %arrayidx446 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i64 %idxprom445
  store i8 0, i8* %arrayidx446, align 1, !tbaa !22
  %208 = bitcast i32* %l425 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  br label %if.end.449

if.else.447:                                      ; preds = %if.else.421
  %arrayidx448 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx448, align 1, !tbaa !22
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.447, %cond.end.436
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %cond.end.411
  %209 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory451 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %209, i32 0, i32 2
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory451, align 8, !tbaa !21
  %call452 = call i8* @gs_program_name() #6
  %call453 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %210, i8* %call452, i64 %call453) #6
  %211 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory454 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %211, i32 0, i32 2
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory454, align 8, !tbaa !21
  %213 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data455 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %213, i32 0, i32 29
  %numGlyphs456 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data455, i32 0, i32 14
  %214 = load i32, i32* %numGlyphs456, align 4, !tbaa !45
  %add457 = add i32 %214, 1
  %215 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data458 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %215, i32 0, i32 29
  %trueNumGlyphs459 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data458, i32 0, i32 15
  %216 = load i32, i32* %trueNumGlyphs459, align 4, !tbaa !38
  %arraydecay460 = getelementptr inbounds [49 x i8], [49 x i8]* %buf, i32 0, i32 0
  %call461 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %212, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i32 0, i32 0), i32 %add457, i32 %216, i8* %arraydecay460) #6
  %217 = load i64, i64* %loca_size, align 8, !tbaa !5
  %218 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data462 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %218, i32 0, i32 29
  %trueNumGlyphs463 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data462, i32 0, i32 15
  %219 = load i32, i32* %trueNumGlyphs463, align 4, !tbaa !38
  %add464 = add i32 %219, 1
  %conv465 = zext i32 %add464 to i64
  %cmp466 = icmp ugt i64 %217, %conv465
  br i1 %cmp466, label %if.then.468, label %if.end.496

if.then.468:                                      ; preds = %if.end.450
  %220 = load i64, i64* %loca_size, align 8, !tbaa !5
  %sub469 = sub i64 %220, 1
  %conv470 = trunc i64 %sub469 to i32
  store i32 %conv470, i32* %i, align 4, !tbaa !7
  br label %for.cond.471

for.cond.471:                                     ; preds = %for.inc.482, %if.then.468
  %221 = load i32, i32* %i, align 4, !tbaa !7
  %222 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data472 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %222, i32 0, i32 29
  %trueNumGlyphs473 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data472, i32 0, i32 15
  %223 = load i32, i32* %trueNumGlyphs473, align 4, !tbaa !38
  %cmp474 = icmp ugt i32 %221, %223
  br i1 %cmp474, label %for.body.476, label %for.end.483

for.body.476:                                     ; preds = %for.cond.471
  %224 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %225 = load i32, i32* %i, align 4, !tbaa !7
  %call477 = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %224, i32 %225) #6
  store i64 %call477, i64* %glyph_offset, align 8, !tbaa !5
  %226 = load i64, i64* %glyph_offset, align 8, !tbaa !5
  %227 = load i64, i64* %glyph_size, align 8, !tbaa !5
  %cmp478 = icmp ult i64 %226, %227
  br i1 %cmp478, label %if.then.480, label %if.end.481

if.then.480:                                      ; preds = %for.body.476
  br label %for.end.483

if.end.481:                                       ; preds = %for.body.476
  br label %for.inc.482

for.inc.482:                                      ; preds = %if.end.481
  %228 = load i32, i32* %i, align 4, !tbaa !7
  %dec = add i32 %228, -1
  store i32 %dec, i32* %i, align 4, !tbaa !7
  br label %for.cond.471

for.end.483:                                      ; preds = %if.then.480, %for.cond.471
  %229 = load i32, i32* %i, align 4, !tbaa !7
  %230 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data484 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %230, i32 0, i32 29
  %trueNumGlyphs485 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data484, i32 0, i32 15
  %231 = load i32, i32* %trueNumGlyphs485, align 4, !tbaa !38
  %cmp486 = icmp ugt i32 %229, %231
  br i1 %cmp486, label %if.then.488, label %if.end.495

if.then.488:                                      ; preds = %for.end.483
  %232 = load i64, i64* %loca_size, align 8, !tbaa !5
  %sub489 = sub i64 %232, 1
  %conv490 = trunc i64 %sub489 to i32
  %233 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data491 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %233, i32 0, i32 29
  %trueNumGlyphs492 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data491, i32 0, i32 15
  store i32 %conv490, i32* %trueNumGlyphs492, align 4, !tbaa !38
  %234 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data493 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %234, i32 0, i32 29
  %numGlyphs494 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data493, i32 0, i32 14
  store i32 %conv490, i32* %numGlyphs494, align 4, !tbaa !45
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.488, %for.end.483
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.end.450
  %235 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data497 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %235, i32 0, i32 29
  %trueNumGlyphs498 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data497, i32 0, i32 15
  %236 = load i32, i32* %trueNumGlyphs498, align 4, !tbaa !38
  %237 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data499 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %237, i32 0, i32 29
  %numGlyphs500 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data499, i32 0, i32 14
  store i32 %236, i32* %numGlyphs500, align 4, !tbaa !45
  %238 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data501 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %238, i32 0, i32 29
  %numGlyphs502 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data501, i32 0, i32 14
  %239 = load i32, i32* %numGlyphs502, align 4, !tbaa !45
  %add503 = add i32 %239, 1
  %conv504 = zext i32 %add503 to i64
  store i64 %conv504, i64* %loca_size, align 8, !tbaa !5
  %240 = bitcast [49 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 49, i8* %240) #2
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.496, %cond.end
  %241 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data506 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %241, i32 0, i32 29
  %warning_patented = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data506, i32 0, i32 22
  store i32 0, i32* %warning_patented, align 4, !tbaa !48
  %242 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data507 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %242, i32 0, i32 29
  %warning_bad_instruction = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data507, i32 0, i32 23
  store i32 0, i32* %warning_bad_instruction, align 4, !tbaa !49
  %243 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs508 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %243, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs508, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @gs_type42_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !50
  %244 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs509 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %244, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs509, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type42_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !51
  %245 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs510 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %245, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs510, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @gs_type42_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !52
  %246 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs511 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %246, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs511, i32 0, i32 2
  store i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @gs_type42_font_info, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !53
  %247 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data512 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %247, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data512, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @default_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !54
  %248 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data513 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %248, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data513, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @default_get_outline, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !55
  %249 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data514 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %249, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data514, i32 0, i32 4
  store i32 (%struct.gs_font_type42_s*, i32, i32, float*)* @gs_type42_default_get_metrics, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !56
  %250 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %250, i32 0, i32 11
  %251 = load i32, i32* %FontType, align 4, !tbaa !57
  %cmp515 = icmp eq i32 %251, 11
  br i1 %cmp515, label %land.lhs.true.517, label %if.else.521

land.lhs.true.517:                                ; preds = %if.end.505
  %252 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %252, i32 0, i32 4
  %253 = load i32, i32* %is_resource, align 4, !tbaa !58
  %tobool518 = icmp ne i32 %253, 0
  br i1 %tobool518, label %if.then.519, label %if.else.521

if.then.519:                                      ; preds = %land.lhs.true.517
  %254 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data520 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %254, i32 0, i32 29
  %len_glyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data520, i32 0, i32 20
  store i32* null, i32** %len_glyphs, align 8, !tbaa !59
  br label %if.end.674

if.else.521:                                      ; preds = %land.lhs.true.517, %if.end.505
  %255 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory522 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %255, i32 0, i32 2
  %256 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory522, align 8, !tbaa !21
  %procs523 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %256, i32 0, i32 1
  %alloc_byte_array524 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs523, i32 0, i32 10
  %257 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array524, align 8, !tbaa !27
  %258 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory525 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %258, i32 0, i32 2
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory525, align 8, !tbaa !21
  %260 = load i64, i64* %loca_size, align 8, !tbaa !5
  %conv526 = trunc i64 %260 to i32
  %call527 = call i8* %257(%struct.gs_memory_s* %259, i32 %conv526, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #6
  %261 = bitcast i8* %call527 to i32*
  %262 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data528 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %262, i32 0, i32 29
  %len_glyphs529 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data528, i32 0, i32 20
  store i32* %261, i32** %len_glyphs529, align 8, !tbaa !59
  %263 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data530 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %263, i32 0, i32 29
  %len_glyphs531 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data530, i32 0, i32 20
  %264 = load i32*, i32** %len_glyphs531, align 8, !tbaa !59
  %cmp532 = icmp eq i32* %264, null
  br i1 %cmp532, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %if.else.521
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.535:                                       ; preds = %if.else.521
  %265 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %266 = bitcast %struct.gs_font_type42_s* %265 to %struct.gs_font_s*
  %267 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %268 = bitcast %struct.gs_font_type42_s* %267 to i8*
  %call536 = call i32 @gs_font_notify_register(%struct.gs_font_s* %266, i32 (i8*, i8*)* @gs_len_glyphs_release, i8* %268) #6
  store i32 %call536, i32* %code, align 4, !tbaa !7
  %269 = load i32, i32* %code, align 4, !tbaa !7
  %cmp537 = icmp slt i32 %269, 0
  br i1 %cmp537, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %if.end.535
  %270 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %270, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

if.end.540:                                       ; preds = %if.end.535
  %271 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %call541 = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %271, i32 0) #6
  store i64 %call541, i64* %glyph_start, align 8, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.563, %if.end.540
  %272 = load i32, i32* %i, align 4, !tbaa !7
  %conv543 = zext i32 %272 to i64
  %273 = load i64, i64* %loca_size, align 8, !tbaa !5
  %cmp544 = icmp ult i64 %conv543, %273
  br i1 %cmp544, label %for.body.546, label %for.end.565

for.body.546:                                     ; preds = %for.cond.542
  %274 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %275 = load i32, i32* %i, align 4, !tbaa !7
  %call547 = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %274, i32 %275) #6
  store i64 %call547, i64* %glyph_offset, align 8, !tbaa !5
  %276 = load i64, i64* %glyph_offset, align 8, !tbaa !5
  %277 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %sub548 = sub i64 %276, %277
  store i64 %sub548, i64* %glyph_length, align 8, !tbaa !5
  %278 = load i64, i64* %glyph_length, align 8, !tbaa !5
  %cmp549 = icmp ugt i64 %278, 2147483648
  br i1 %cmp549, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %for.body.546
  br label %for.end.565

if.end.552:                                       ; preds = %for.body.546
  %279 = load i64, i64* %glyph_offset, align 8, !tbaa !5
  %280 = load i64, i64* %glyph_size, align 8, !tbaa !5
  %cmp553 = icmp ugt i64 %279, %280
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %if.end.552
  br label %for.end.565

if.end.556:                                       ; preds = %if.end.552
  %281 = load i64, i64* %glyph_length, align 8, !tbaa !5
  %conv557 = trunc i64 %281 to i32
  %282 = load i32, i32* %i, align 4, !tbaa !7
  %sub558 = sub i32 %282, 1
  %idxprom559 = zext i32 %sub558 to i64
  %283 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data560 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %283, i32 0, i32 29
  %len_glyphs561 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data560, i32 0, i32 20
  %284 = load i32*, i32** %len_glyphs561, align 8, !tbaa !59
  %arrayidx562 = getelementptr inbounds i32, i32* %284, i64 %idxprom559
  store i32 %conv557, i32* %arrayidx562, align 4, !tbaa !7
  %285 = load i64, i64* %glyph_offset, align 8, !tbaa !5
  store i64 %285, i64* %glyph_start, align 8, !tbaa !5
  br label %for.inc.563

for.inc.563:                                      ; preds = %if.end.556
  %286 = load i32, i32* %i, align 4, !tbaa !7
  %inc564 = add i32 %286, 1
  store i32 %inc564, i32* %i, align 4, !tbaa !7
  br label %for.cond.542

for.end.565:                                      ; preds = %if.then.555, %if.then.551, %for.cond.542
  %287 = load i32, i32* %i, align 4, !tbaa !7
  %conv566 = zext i32 %287 to i64
  %288 = load i64, i64* %loca_size, align 8, !tbaa !5
  %cmp567 = icmp ult i64 %conv566, %288
  br i1 %cmp567, label %if.then.569, label %if.end.673

if.then.569:                                      ; preds = %for.end.565
  %289 = bitcast i64* %last_glyph_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #2
  %290 = load i64, i64* %glyph_size, align 8, !tbaa !5
  store i64 %290, i64* %last_glyph_offset, align 8, !tbaa !5
  %291 = bitcast i64* %num_valid_loca_elm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #2
  %292 = load i64, i64* %loca_size, align 8, !tbaa !5
  store i64 %292, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %293 = bitcast i64* %last_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %293) #2
  store i64 0, i64* %last_offset, align 8, !tbaa !5
  %294 = bitcast %struct.gs_type42_font_init_sort_s** %psort to i8*
  call void @llvm.lifetime.start(i64 8, i8* %294) #2
  %295 = bitcast %struct.gs_type42_font_init_sort_s** %psortary to i8*
  call void @llvm.lifetime.start(i64 8, i8* %295) #2
  %296 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory570 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %296, i32 0, i32 2
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory570, align 8, !tbaa !21
  %procs571 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %297, i32 0, i32 1
  %alloc_byte_array572 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs571, i32 0, i32 10
  %298 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array572, align 8, !tbaa !27
  %299 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory573 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %299, i32 0, i32 2
  %300 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory573, align 8, !tbaa !21
  %301 = load i64, i64* %loca_size, align 8, !tbaa !5
  %conv574 = trunc i64 %301 to i32
  %call575 = call i8* %298(%struct.gs_memory_s* %300, i32 %conv574, i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0)) #6
  %302 = bitcast i8* %call575 to %struct.gs_type42_font_init_sort_s*
  store %struct.gs_type42_font_init_sort_s* %302, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %303 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %cmp576 = icmp eq %struct.gs_type42_font_init_sort_s* %303, null
  br i1 %cmp576, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %if.then.569
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.666

if.end.579:                                       ; preds = %if.then.569
  %304 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %glyph_num = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %304, i32 0, i32 1
  store i32 0, i32* %glyph_num, align 4, !tbaa !60
  %305 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %call580 = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %305, i32 0) #6
  %306 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %glyph_offset581 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %306, i32 0, i32 0
  store i64 %call580, i64* %glyph_offset581, align 8, !tbaa !62
  store i32 1, i32* %i, align 4, !tbaa !7
  %307 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %add.ptr582 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %307, i64 1
  store %struct.gs_type42_font_init_sort_s* %add.ptr582, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  br label %for.cond.583

for.cond.583:                                     ; preds = %for.inc.597, %if.end.579
  %308 = load i32, i32* %i, align 4, !tbaa !7
  %conv584 = zext i32 %308 to i64
  %309 = load i64, i64* %loca_size, align 8, !tbaa !5
  %cmp585 = icmp ult i64 %conv584, %309
  br i1 %cmp585, label %for.body.587, label %for.end.599

for.body.587:                                     ; preds = %for.cond.583
  %310 = load i32, i32* %i, align 4, !tbaa !7
  %311 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_num588 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %311, i32 0, i32 1
  store i32 %310, i32* %glyph_num588, align 4, !tbaa !60
  %312 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %313 = load i32, i32* %i, align 4, !tbaa !7
  %call589 = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %312, i32 %313) #6
  %314 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_offset590 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %314, i32 0, i32 0
  store i64 %call589, i64* %glyph_offset590, align 8, !tbaa !62
  %315 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_offset591 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %315, i32 0, i32 0
  %316 = load i64, i64* %glyph_offset591, align 8, !tbaa !62
  %317 = load i64, i64* %last_offset, align 8, !tbaa !5
  %sub592 = sub i64 %316, %317
  %conv593 = trunc i64 %sub592 to i32
  %318 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %318, i64 -1
  %glyph_length595 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %arrayidx594, i32 0, i32 2
  store i32 %conv593, i32* %glyph_length595, align 4, !tbaa !63
  %319 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_offset596 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %319, i32 0, i32 0
  %320 = load i64, i64* %glyph_offset596, align 8, !tbaa !62
  store i64 %320, i64* %last_offset, align 8, !tbaa !5
  br label %for.inc.597

for.inc.597:                                      ; preds = %for.body.587
  %321 = load i32, i32* %i, align 4, !tbaa !7
  %inc598 = add i32 %321, 1
  store i32 %inc598, i32* %i, align 4, !tbaa !7
  %322 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %322, i32 1
  store %struct.gs_type42_font_init_sort_s* %incdec.ptr, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  br label %for.cond.583

for.end.599:                                      ; preds = %for.cond.583
  %323 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %323, i64 -1
  %glyph_length601 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %arrayidx600, i32 0, i32 2
  store i32 0, i32* %glyph_length601, align 4, !tbaa !63
  %324 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %325 = bitcast %struct.gs_type42_font_init_sort_s* %324 to i8*
  %326 = load i64, i64* %loca_size, align 8, !tbaa !5
  call void @qsort(i8* %325, i64 %326, i64 16, i32 (i8*, i8*)* @gs_type42_font_init_compare) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.599
  %327 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %cmp602 = icmp ugt i64 %327, 0
  br i1 %cmp602, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %328 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %sub604 = sub i64 %328, 1
  %329 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %arrayidx605 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %329, i64 %sub604
  %glyph_offset606 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %arrayidx605, i32 0, i32 0
  %330 = load i64, i64* %glyph_offset606, align 8, !tbaa !62
  %331 = load i64, i64* %glyph_size, align 8, !tbaa !5
  %cmp607 = icmp ugt i64 %330, %331
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %332 = phi i1 [ false, %while.cond ], [ %cmp607, %land.rhs ]
  br i1 %332, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %333 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %dec609 = add i64 %333, -1
  store i64 %dec609, i64* %num_valid_loca_elm, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %334 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %cmp610 = icmp eq i64 0, %334
  br i1 %cmp610, label %if.then.612, label %if.end.613

if.then.612:                                      ; preds = %while.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.666

if.end.613:                                       ; preds = %while.end
  %335 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %conv614 = trunc i64 %335 to i32
  store i32 %conv614, i32* %i, align 4, !tbaa !7
  br label %for.cond.615

for.cond.615:                                     ; preds = %if.end.644, %if.end.613
  %336 = load i32, i32* %i, align 4, !tbaa !7
  %dec616 = add i32 %336, -1
  store i32 %dec616, i32* %i, align 4, !tbaa !7
  %tobool617 = icmp ne i32 %336, 0
  br i1 %tobool617, label %for.body.618, label %for.end.646

for.body.618:                                     ; preds = %for.cond.615
  %337 = bitcast i64* %old_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %337) #2
  %338 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %339 = load i32, i32* %i, align 4, !tbaa !7
  %idx.ext619 = zext i32 %339 to i64
  %add.ptr620 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %338, i64 %idx.ext619
  store %struct.gs_type42_font_init_sort_s* %add.ptr620, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %340 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_length621 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %340, i32 0, i32 2
  %341 = load i32, i32* %glyph_length621, align 4, !tbaa !63
  %conv622 = sext i32 %341 to i64
  store i64 %conv622, i64* %old_length, align 8, !tbaa !5
  %342 = load i64, i64* %old_length, align 8, !tbaa !5
  %cmp623 = icmp slt i64 %342, 0
  br i1 %cmp623, label %if.then.628, label %lor.lhs.false.625

lor.lhs.false.625:                                ; preds = %for.body.618
  %343 = load i64, i64* %old_length, align 8, !tbaa !5
  %cmp626 = icmp sgt i64 %343, 2000
  br i1 %cmp626, label %if.then.628, label %if.else.637

if.then.628:                                      ; preds = %lor.lhs.false.625, %for.body.618
  %344 = load i64, i64* %last_glyph_offset, align 8, !tbaa !5
  %345 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_offset629 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %345, i32 0, i32 0
  %346 = load i64, i64* %glyph_offset629, align 8, !tbaa !62
  %sub630 = sub i64 %344, %346
  %conv631 = trunc i64 %sub630 to i32
  %347 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_num632 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %347, i32 0, i32 1
  %348 = load i32, i32* %glyph_num632, align 4, !tbaa !60
  %idxprom633 = sext i32 %348 to i64
  %349 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data634 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %349, i32 0, i32 29
  %len_glyphs635 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data634, i32 0, i32 20
  %350 = load i32*, i32** %len_glyphs635, align 8, !tbaa !59
  %arrayidx636 = getelementptr inbounds i32, i32* %350, i64 %idxprom633
  store i32 %conv631, i32* %arrayidx636, align 4, !tbaa !7
  br label %if.end.644

if.else.637:                                      ; preds = %lor.lhs.false.625
  %351 = load i64, i64* %old_length, align 8, !tbaa !5
  %conv638 = trunc i64 %351 to i32
  %352 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_num639 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %352, i32 0, i32 1
  %353 = load i32, i32* %glyph_num639, align 4, !tbaa !60
  %idxprom640 = sext i32 %353 to i64
  %354 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data641 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %354, i32 0, i32 29
  %len_glyphs642 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data641, i32 0, i32 20
  %355 = load i32*, i32** %len_glyphs642, align 8, !tbaa !59
  %arrayidx643 = getelementptr inbounds i32, i32* %355, i64 %idxprom640
  store i32 %conv638, i32* %arrayidx643, align 4, !tbaa !7
  br label %if.end.644

if.end.644:                                       ; preds = %if.else.637, %if.then.628
  %356 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_offset645 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %356, i32 0, i32 0
  %357 = load i64, i64* %glyph_offset645, align 8, !tbaa !62
  store i64 %357, i64* %last_glyph_offset, align 8, !tbaa !5
  %358 = bitcast i64* %old_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #2
  br label %for.cond.615

for.end.646:                                      ; preds = %for.cond.615
  %359 = load i64, i64* %num_valid_loca_elm, align 8, !tbaa !5
  %conv647 = trunc i64 %359 to i32
  store i32 %conv647, i32* %i, align 4, !tbaa !7
  br label %for.cond.648

for.cond.648:                                     ; preds = %for.inc.660, %for.end.646
  %360 = load i32, i32* %i, align 4, !tbaa !7
  %conv649 = zext i32 %360 to i64
  %361 = load i64, i64* %loca_size, align 8, !tbaa !5
  %cmp650 = icmp ult i64 %conv649, %361
  br i1 %cmp650, label %for.body.652, label %for.end.662

for.body.652:                                     ; preds = %for.cond.648
  %362 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %363 = load i32, i32* %i, align 4, !tbaa !7
  %idx.ext653 = zext i32 %363 to i64
  %add.ptr654 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %362, i64 %idx.ext653
  store %struct.gs_type42_font_init_sort_s* %add.ptr654, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %364 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psort, align 8, !tbaa !1
  %glyph_num655 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %364, i32 0, i32 1
  %365 = load i32, i32* %glyph_num655, align 4, !tbaa !60
  %idxprom656 = sext i32 %365 to i64
  %366 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data657 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %366, i32 0, i32 29
  %len_glyphs658 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data657, i32 0, i32 20
  %367 = load i32*, i32** %len_glyphs658, align 8, !tbaa !59
  %arrayidx659 = getelementptr inbounds i32, i32* %367, i64 %idxprom656
  store i32 0, i32* %arrayidx659, align 4, !tbaa !7
  br label %for.inc.660

for.inc.660:                                      ; preds = %for.body.652
  %368 = load i32, i32* %i, align 4, !tbaa !7
  %inc661 = add i32 %368, 1
  store i32 %inc661, i32* %i, align 4, !tbaa !7
  br label %for.cond.648

for.end.662:                                      ; preds = %for.cond.648
  %369 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory663 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %369, i32 0, i32 2
  %370 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory663, align 8, !tbaa !21
  %procs664 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %370, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs664, i32 0, i32 2
  %371 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %372 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory665 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %372, i32 0, i32 2
  %373 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory665, align 8, !tbaa !21
  %374 = load %struct.gs_type42_font_init_sort_s*, %struct.gs_type42_font_init_sort_s** %psortary, align 8, !tbaa !1
  %375 = bitcast %struct.gs_type42_font_init_sort_s* %374 to i8*
  call void %371(%struct.gs_memory_s* %373, i8* %375, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0)) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.666

cleanup.666:                                      ; preds = %for.end.662, %if.then.612, %if.then.578
  %376 = bitcast %struct.gs_type42_font_init_sort_s** %psortary to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #2
  %377 = bitcast %struct.gs_type42_font_init_sort_s** %psort to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #2
  %378 = bitcast i64* %last_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #2
  %379 = bitcast i64* %num_valid_loca_elm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #2
  %380 = bitcast i64* %last_glyph_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %380) #2
  %cleanup.dest.671 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.671, label %cleanup.800 [
    i32 0, label %cleanup.cont.672
  ]

cleanup.cont.672:                                 ; preds = %cleanup.666
  br label %if.end.673

if.end.673:                                       ; preds = %cleanup.cont.672, %for.end.565
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.then.519
  %381 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %381, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %382 = load double, double* %x, align 8, !tbaa !65
  %383 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox675 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %383, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox675, i32 0, i32 1
  %x676 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %384 = load double, double* %x676, align 8, !tbaa !66
  %cmp677 = fcmp oge double %382, %384
  br i1 %cmp677, label %if.then.711, label %lor.lhs.false.679

lor.lhs.false.679:                                ; preds = %if.end.674
  %385 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox680 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %385, i32 0, i32 23
  %p681 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox680, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p681, i32 0, i32 1
  %386 = load double, double* %y, align 8, !tbaa !67
  %387 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox682 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %387, i32 0, i32 23
  %q683 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox682, i32 0, i32 1
  %y684 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q683, i32 0, i32 1
  %388 = load double, double* %y684, align 8, !tbaa !68
  %cmp685 = fcmp oge double %386, %388
  br i1 %cmp685, label %if.then.711, label %lor.lhs.false.687

lor.lhs.false.687:                                ; preds = %lor.lhs.false.679
  %389 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox688 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %389, i32 0, i32 23
  %p689 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox688, i32 0, i32 0
  %x690 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p689, i32 0, i32 0
  %390 = load double, double* %x690, align 8, !tbaa !65
  %cmp691 = fcmp olt double %390, -5.000000e-01
  br i1 %cmp691, label %if.then.711, label %lor.lhs.false.693

lor.lhs.false.693:                                ; preds = %lor.lhs.false.687
  %391 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox694 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %391, i32 0, i32 23
  %p695 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox694, i32 0, i32 0
  %x696 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p695, i32 0, i32 0
  %392 = load double, double* %x696, align 8, !tbaa !65
  %cmp697 = fcmp ogt double %392, 5.000000e-01
  br i1 %cmp697, label %if.then.711, label %lor.lhs.false.699

lor.lhs.false.699:                                ; preds = %lor.lhs.false.693
  %393 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox700 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %393, i32 0, i32 23
  %p701 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox700, i32 0, i32 0
  %y702 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p701, i32 0, i32 1
  %394 = load double, double* %y702, align 8, !tbaa !67
  %cmp703 = fcmp olt double %394, -5.000000e-01
  br i1 %cmp703, label %if.then.711, label %lor.lhs.false.705

lor.lhs.false.705:                                ; preds = %lor.lhs.false.699
  %395 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox706 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %395, i32 0, i32 23
  %p707 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox706, i32 0, i32 0
  %y708 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p707, i32 0, i32 1
  %396 = load double, double* %y708, align 8, !tbaa !67
  %cmp709 = fcmp ogt double %396, 5.000000e-01
  br i1 %cmp709, label %if.then.711, label %if.end.781

if.then.711:                                      ; preds = %lor.lhs.false.705, %lor.lhs.false.699, %lor.lhs.false.693, %lor.lhs.false.687, %lor.lhs.false.679, %if.end.674
  %397 = bitcast float* %upem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %397) #2
  %398 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data712 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %398, i32 0, i32 29
  %unitsPerEm713 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data712, i32 0, i32 8
  %399 = load i32, i32* %unitsPerEm713, align 4, !tbaa !31
  %conv714 = uitofp i32 %399 to float
  store float %conv714, float* %upem, align 4, !tbaa !69
  %arrayidx715 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i64 0
  %400 = load i8, i8* %arrayidx715, align 1, !tbaa !22
  %conv716 = zext i8 %400 to i32
  %shl717 = shl i32 %conv716, 8
  %arrayidx718 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i64 1
  %401 = load i8, i8* %arrayidx718, align 1, !tbaa !22
  %conv719 = zext i8 %401 to i32
  %add720 = add i32 %shl717, %conv719
  %xor = xor i32 %add720, 32768
  %sub721 = sub i32 %xor, 32768
  %conv722 = sitofp i32 %sub721 to float
  %402 = load float, float* %upem, align 4, !tbaa !69
  %div = fdiv float %conv722, %402
  %conv723 = fpext float %div to double
  %403 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox724 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %403, i32 0, i32 23
  %p725 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox724, i32 0, i32 0
  %x726 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p725, i32 0, i32 0
  store double %conv723, double* %x726, align 8, !tbaa !65
  %arraydecay727 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr728 = getelementptr inbounds i8, i8* %arraydecay727, i64 2
  %arrayidx729 = getelementptr inbounds i8, i8* %add.ptr728, i64 0
  %404 = load i8, i8* %arrayidx729, align 1, !tbaa !22
  %conv730 = zext i8 %404 to i32
  %shl731 = shl i32 %conv730, 8
  %arraydecay732 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr733 = getelementptr inbounds i8, i8* %arraydecay732, i64 2
  %arrayidx734 = getelementptr inbounds i8, i8* %add.ptr733, i64 1
  %405 = load i8, i8* %arrayidx734, align 1, !tbaa !22
  %conv735 = zext i8 %405 to i32
  %add736 = add i32 %shl731, %conv735
  %xor737 = xor i32 %add736, 32768
  %sub738 = sub i32 %xor737, 32768
  %conv739 = sitofp i32 %sub738 to float
  %406 = load float, float* %upem, align 4, !tbaa !69
  %div740 = fdiv float %conv739, %406
  %conv741 = fpext float %div740 to double
  %407 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox742 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %407, i32 0, i32 23
  %p743 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox742, i32 0, i32 0
  %y744 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p743, i32 0, i32 1
  store double %conv741, double* %y744, align 8, !tbaa !67
  %arraydecay745 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr746 = getelementptr inbounds i8, i8* %arraydecay745, i64 4
  %arrayidx747 = getelementptr inbounds i8, i8* %add.ptr746, i64 0
  %408 = load i8, i8* %arrayidx747, align 1, !tbaa !22
  %conv748 = zext i8 %408 to i32
  %shl749 = shl i32 %conv748, 8
  %arraydecay750 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr751 = getelementptr inbounds i8, i8* %arraydecay750, i64 4
  %arrayidx752 = getelementptr inbounds i8, i8* %add.ptr751, i64 1
  %409 = load i8, i8* %arrayidx752, align 1, !tbaa !22
  %conv753 = zext i8 %409 to i32
  %add754 = add i32 %shl749, %conv753
  %xor755 = xor i32 %add754, 32768
  %sub756 = sub i32 %xor755, 32768
  %conv757 = sitofp i32 %sub756 to float
  %410 = load float, float* %upem, align 4, !tbaa !69
  %div758 = fdiv float %conv757, %410
  %conv759 = fpext float %div758 to double
  %411 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox760 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %411, i32 0, i32 23
  %q761 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox760, i32 0, i32 1
  %x762 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q761, i32 0, i32 0
  store double %conv759, double* %x762, align 8, !tbaa !66
  %arraydecay763 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr764 = getelementptr inbounds i8, i8* %arraydecay763, i64 6
  %arrayidx765 = getelementptr inbounds i8, i8* %add.ptr764, i64 0
  %412 = load i8, i8* %arrayidx765, align 1, !tbaa !22
  %conv766 = zext i8 %412 to i32
  %shl767 = shl i32 %conv766, 8
  %arraydecay768 = getelementptr inbounds [8 x i8], [8 x i8]* %head_box, i32 0, i32 0
  %add.ptr769 = getelementptr inbounds i8, i8* %arraydecay768, i64 6
  %arrayidx770 = getelementptr inbounds i8, i8* %add.ptr769, i64 1
  %413 = load i8, i8* %arrayidx770, align 1, !tbaa !22
  %conv771 = zext i8 %413 to i32
  %add772 = add i32 %shl767, %conv771
  %xor773 = xor i32 %add772, 32768
  %sub774 = sub i32 %xor773, 32768
  %conv775 = sitofp i32 %sub774 to float
  %414 = load float, float* %upem, align 4, !tbaa !69
  %div776 = fdiv float %conv775, %414
  %conv777 = fpext float %div776 to double
  %415 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox778 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %415, i32 0, i32 23
  %q779 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox778, i32 0, i32 1
  %y780 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q779, i32 0, i32 1
  store double %conv777, double* %y780, align 8, !tbaa !68
  %416 = bitcast float* %upem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #2
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.711, %lor.lhs.false.705
  %417 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data782 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %417, i32 0, i32 29
  %warning_patented783 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data782, i32 0, i32 22
  store i32 0, i32* %warning_patented783, align 4, !tbaa !48
  %418 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data784 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %418, i32 0, i32 29
  %warning_bad_instruction785 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data784, i32 0, i32 23
  store i32 0, i32* %warning_bad_instruction785, align 4, !tbaa !49
  %419 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data786 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %419, i32 0, i32 29
  %get_glyph_index787 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data786, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @default_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index787, align 8, !tbaa !54
  %420 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data788 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %420, i32 0, i32 29
  %get_outline789 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data788, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @default_get_outline, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline789, align 8, !tbaa !55
  %421 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data790 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %421, i32 0, i32 29
  %get_metrics791 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data790, i32 0, i32 4
  store i32 (%struct.gs_font_type42_s*, i32, i32, float*)* @gs_type42_default_get_metrics, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics791, align 8, !tbaa !56
  %422 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs792 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %422, i32 0, i32 20
  %glyph_outline793 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs792, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @gs_type42_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline793, align 8, !tbaa !50
  %423 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs794 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %423, i32 0, i32 20
  %glyph_info795 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs794, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type42_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info795, align 8, !tbaa !51
  %424 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs796 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %424, i32 0, i32 20
  %enumerate_glyph797 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs796, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @gs_type42_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph797, align 8, !tbaa !52
  %425 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %procs798 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %425, i32 0, i32 20
  %font_info799 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs798, i32 0, i32 2
  store i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @gs_type42_font_info, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info799, align 8, !tbaa !53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.800

cleanup.800:                                      ; preds = %if.end.781, %cleanup.666, %if.then.539, %if.then.534, %cleanup.380, %if.then.87, %if.then.78, %if.then.71, %if.then.59, %if.then.47, %if.then.34, %if.then.26, %if.then.11, %if.then
  %426 = bitcast i32* %OffsetTableOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #2
  %427 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #2
  %428 = bitcast i32* %numFonts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #2
  %429 = bitcast i64* %glyph_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %429) #2
  %430 = bitcast i64* %glyph_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %430) #2
  %431 = bitcast i64* %glyph_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431) #2
  %432 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #2
  %433 = bitcast i64* %loca_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #2
  %434 = bitcast [8 x i8]* %head_box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #2
  %435 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #2
  %436 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #2
  %437 = bitcast [640 x i8]* %TableDirectory to i8*
  call void @llvm.lifetime.end(i64 640, i8* %437) #2
  %438 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #2
  %439 = bitcast [12 x i8]* %OffsetTable to i8*
  call void @llvm.lifetime.end(i64 12, i8* %439) #2
  %440 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #2
  %441 = load i32, i32* %retval
  ret i32 %441
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i64 @get_u32_msb(i8*) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gs_font_notify_register(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_gsub_release(i8* %data, i8* %event) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %event.addr = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %event, i8** %event.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_type42_s* %3 to %struct.gs_font_s*
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i32 @gs_font_notify_unregister(%struct.gs_font_s* %4, i32 (i8*, i8*)* @gs_gsub_release, i8* %5) #6
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !21
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %gsub = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 24
  %12 = load i8*, i8** %gsub, align 8, !tbaa !30
  call void %8(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)) #6
  %13 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @get_glyph_offset(%struct.gs_font_type42_s* %pfont, i32 %glyph_index) #5 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %buf = alloca [4 x i8], align 1
  %code = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  %0 = bitcast i64* %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %3, i32 0, i32 29
  %indexToLocFormat = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 9
  %4 = load i32, i32* %indexToLocFormat, align 4, !tbaa !32
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 29
  %loca = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data1, i32 0, i32 11
  %7 = load i64, i64* %loca, align 8, !tbaa !37
  %8 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %mul = mul i32 %8, 4
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %5, i64 %add, i32 4, i8* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %9 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call4 = call i64 @get_u32_msb(i8* %arraydecay3) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %call4, %cond.false ]
  store i64 %cond, i64* %result, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %loca6 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data5, i32 0, i32 11
  %12 = load i64, i64* %loca6, align 8, !tbaa !37
  %13 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %mul7 = mul i32 %13, 2
  %conv8 = zext i32 %mul7 to i64
  %add9 = add i64 %12, %conv8
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call11 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %10, i64 %add9, i32 2, i8* %arraydecay10) #6
  store i32 %call11, i32* %code, align 4, !tbaa !7
  %14 = load i32, i32* %code, align 4, !tbaa !7
  %cmp12 = icmp slt i32 %14, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.else
  br label %cond.end.22

cond.false.15:                                    ; preds = %if.else
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv16 = zext i8 %15 to i32
  %shl = shl i32 %conv16, 8
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %16 = load i8, i8* %arrayidx17, align 1, !tbaa !22
  %conv18 = zext i8 %16 to i32
  %add19 = add i32 %shl, %conv18
  %conv20 = zext i32 %add19 to i64
  %shl21 = shl i64 %conv20, 1
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.15, %cond.true.14
  %cond23 = phi i64 [ 4294967295, %cond.true.14 ], [ %shl21, %cond.false.15 ]
  store i64 %cond23, i64* %result, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end.22, %cond.end
  %17 = load i64, i64* %result, align 8, !tbaa !5
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i64* %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index = alloca i32, align 4
  %origin = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %info = alloca %struct.gs_glyph_info_s, align 8
  %design_grid = alloca i32, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !7
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_fixed_point_s* %origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %6) #2
  %7 = bitcast i32* %design_grid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 1, i32* %design_grid, align 4, !tbaa !7
  %8 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %9, 3221225472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %sub = sub i64 %10, 3221225472
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end.13

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  %12 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !54
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %14 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call = call i32 %12(%struct.gs_font_type42_s* %13, i64 %14) #6
  store i32 %call, i32* %glyph_index, align 4, !tbaa !7
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %15, i32 0, i32 29
  %gsub_size = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data1, i32 0, i32 25
  %16 = load i64, i64* %gsub_size, align 8, !tbaa !26
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.else
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %17, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data3, i32 0, i32 5
  %18 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !70
  %cmp4 = icmp ne i32 (%struct.gs_font_type42_s*, i32, i32, i64)* %18, null
  br i1 %cmp4, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.then.2
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %19, i32 0, i32 29
  %substitute_glyph_index_vertical8 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data7, i32 0, i32 5
  %20 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical8, align 8, !tbaa !70
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %22 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %23 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %24 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call9 = call i32 %20(%struct.gs_font_type42_s* %21, i32 %22, i32 %23, i64 %24) #6
  store i32 %call9, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end

if.else.10:                                       ; preds = %if.then.2
  %25 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %26 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %27 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %28 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call11 = call i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s* %25, i32 %26, i32 %27, i64 %28) #6
  store i32 %call11, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %31 = load i32, i32* %design_grid, align 4, !tbaa !7
  %call14 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %29, %struct.gs_matrix_s* %30, %struct.gs_log2_scale_point_s* @gs_type42_glyph_outline.log2_scale, i32 %31, %struct.cached_fm_pair_s** %pair) #6
  store i32 %call14, i32* %code, align 4, !tbaa !7
  %32 = load i32, i32* %code, align 4, !tbaa !7
  %cmp15 = icmp slt i32 %32, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %33 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.gs_matrix_s* %34, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store %struct.gs_matrix_s* @gs_type42_glyph_outline.imat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call23 = call i32 @gx_path_current_point(%struct.gx_path_s* %35, %struct.gs_fixed_point_s* %origin) #6
  store i32 %call23, i32* %code, align 4, !tbaa !7
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %36 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %39 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %40 = load i32, i32* %design_grid, align 4, !tbaa !7
  %call26 = call i32 @append_outline_fitted(i32 %36, %struct.gs_matrix_s* %37, %struct.gx_path_s* %38, %struct.cached_fm_pair_s* %39, %struct.gs_log2_scale_point_s* @gs_type42_glyph_outline.log2_scale, i32 %40) #6
  store i32 %call26, i32* %code, align 4, !tbaa !7
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %42 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !71
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %44 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %46 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %shl = shl i32 1, %46
  %call30 = call i32 %42(%struct.gs_font_s* %43, i64 %44, %struct.gs_matrix_s* %45, i32 %shl, %struct.gs_glyph_info_s* %info) #6
  store i32 %call30, i32* %code, align 4, !tbaa !7
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.end.22
  %47 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %lor.lhs.false.29
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %49 = load i32, i32* %x, align 4, !tbaa !73
  %50 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %idxprom = sext i32 %50 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %51 = load double, double* %x35, align 8, !tbaa !75
  %mul = fmul double %51, 2.560000e+02
  %conv36 = fptosi double %mul to i32
  %add = add nsw i32 %49, %conv36
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 1
  %52 = load i32, i32* %y, align 4, !tbaa !76
  %53 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %idxprom37 = sext i32 %53 to i64
  %width38 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width38, i32 0, i64 %idxprom37
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx39, i32 0, i32 1
  %54 = load double, double* %y40, align 8, !tbaa !77
  %mul41 = fmul double %54, 2.560000e+02
  %conv42 = fptosi double %mul41 to i32
  %add43 = add nsw i32 %52, %conv42
  %call44 = call i32 @gx_path_add_point(%struct.gx_path_s* %48, i32 %add, i32 %add43) #6
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.17
  %55 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %design_grid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %57) #2
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gs_fixed_point_s* %origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %WMode = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !7
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %4, 3221225472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %sub = sub i64 %5, 3221225472
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end.19

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  %7 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !54
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %9 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call = call i32 %7(%struct.gs_font_type42_s* %8, i64 %9) #6
  store i32 %call, i32* %glyph_index, align 4, !tbaa !7
  %10 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %conv1 = zext i32 %10 to i64
  %cmp2 = icmp eq i64 %conv1, 2147483647
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %gsub_size = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data5, i32 0, i32 25
  %12 = load i64, i64* %gsub_size, align 8, !tbaa !26
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  %13 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and = and i32 %14, 130
  %tobool7 = icmp ne i32 %and, 0
  %cond = select i1 %tobool7, i32 1, i32 0
  store i32 %cond, i32* %WMode, align 4, !tbaa !7
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %15, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data8, i32 0, i32 5
  %16 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !70
  %cmp9 = icmp ne i32 (%struct.gs_font_type42_s*, i32, i32, i64)* %16, null
  br i1 %cmp9, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.then.6
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %17, i32 0, i32 29
  %substitute_glyph_index_vertical13 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data12, i32 0, i32 5
  %18 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical13, align 8, !tbaa !70
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %20 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %21 = load i32, i32* %WMode, align 4, !tbaa !7
  %22 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call14 = call i32 %18(%struct.gs_font_type42_s* %19, i32 %20, i32 %21, i64 %22) #6
  store i32 %call14, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.6
  %23 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %24 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %25 = load i32, i32* %WMode, align 4, !tbaa !7
  %26 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call16 = call i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s* %23, i32 %24, i32 %25, i64 %26) #6
  store i32 %call16, i32* %glyph_index, align 4, !tbaa !7
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.11
  %27 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %29 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %31 = load i32, i32* %members.addr, align 4, !tbaa !7
  %32 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %33 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %call20 = call i32 @gs_type42_glyph_info_by_gid(%struct.gs_font_s* %28, i64 %29, %struct.gs_matrix_s* %30, i32 %31, %struct.gs_glyph_info_s* %32, i32 %33) #6
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.4
  %34 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %outline = alloca %struct.gs_glyph_data_s, align 8
  %glyph_index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !22
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %3 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %3, align 4, !tbaa !7
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %5, i32 0, i32 29
  %numGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 14
  %6 = load i32, i32* %numGlyphs, align 4, !tbaa !45
  %cmp = icmp ule i32 %inc, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct.gs_glyph_data_s* %outline to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #2
  %8 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %glyph_index, align 4, !tbaa !7
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %outline, i32 0, i32 3
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory1, align 8, !tbaa !78
  %14 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %14, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 3
  %15 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !55
  %16 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %17 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %call = call i32 %15(%struct.gs_font_type42_s* %16, i32 %17, %struct.gs_glyph_data_s* %outline) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %18 = load i32, i32* %code, align 4, !tbaa !7
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %outline, i32 0, i32 0
  %data4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %20 = load i8*, i8** %data4, align 8, !tbaa !81
  %cmp5 = icmp eq i8* %20, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %21 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %conv = zext i32 %21 to i64
  %add = add i64 %conv, 3221225472
  %22 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add, i64* %22, align 8, !tbaa !5
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %outline, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gs_glyph_data_s* %outline to i8*
  call void @llvm.lifetime.end(i64 48, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.10 [
    i32 2, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %26 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %26, align 4, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

cleanup.10:                                       ; preds = %while.end, %cleanup
  %27 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_font_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !7
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %3 = load i32, i32* %members.addr, align 4, !tbaa !7
  %4 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @gs_default_font_info(%struct.gs_font_s* %1, %struct.gs_point_s* %2, i32 %3, %struct.gs_font_info_s* %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %5 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %9 = load i32, i32* %members.addr, align 4, !tbaa !7
  %10 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_truetype_font_info(%struct.gs_font_s* %7, %struct.gs_point_s* %8, i32 %9, %struct.gs_font_info_s* %10) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @default_get_glyph_index(%struct.gs_font_type42_s* %pfont, i64 %glyph) #1 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  %0 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %0, 2147483648
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %sub = sub i64 %1, 2147483648
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @default_get_outline(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %string_proc = alloca i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, align 8
  %glyph_start = alloca i64, align 8
  %glyph_length = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %data6 = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %string_proc1 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %2 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc1, align 8, !tbaa !9
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* %2, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %3 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %glyph_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 15
  %8 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !38
  %cmp = icmp uge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %10 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %call = call i64 @get_glyph_offset(%struct.gs_font_type42_s* %9, i32 %10) #6
  store i64 %call, i64* %glyph_start, align 8, !tbaa !5
  %11 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %12, i32 0, i32 29
  %len_glyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data3, i32 0, i32 20
  %13 = load i32*, i32** %len_glyphs, align 8, !tbaa !59
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !7
  store i32 %14, i32* %glyph_length, align 4, !tbaa !7
  %15 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %16) #6
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %17 = bitcast i8** %data6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %20 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %21, i32 0, i32 29
  %glyf = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data7, i32 0, i32 7
  %22 = load i64, i64* %glyf, align 8, !tbaa !25
  %23 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %add = add i64 %22, %23
  %24 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %call8 = call i32 %19(%struct.gs_font_type42_s* %20, i64 %add, i32 %24, i8** %data6) #6
  store i32 %call8, i32* %code, align 4, !tbaa !7
  %25 = load i32, i32* %code, align 4, !tbaa !7
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  %26 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.else
  %27 = load i32, i32* %code, align 4, !tbaa !7
  %cmp12 = icmp eq i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  %28 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %data6, align 8, !tbaa !1
  %30 = load i32, i32* %glyph_length, align 4, !tbaa !7
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %28, i8* %29, i32 %30, %struct.gs_font_s* null) #6
  br label %if.end.27

if.else.14:                                       ; preds = %if.end.11
  %31 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !78
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %33 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !82
  %34 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !78
  %36 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %call16 = call i8* %33(%struct.gs_memory_s* %35, i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %call16, i8** %buf, align 8, !tbaa !1
  %37 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %37, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.else.14
  %38 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %buf, align 8, !tbaa !1
  %40 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %41 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_font_type42_s* %41 to %struct.gs_font_s*
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %38, i8* %39, i32 %40, %struct.gs_font_s* %42) #6
  %43 = load i8*, i8** %buf, align 8, !tbaa !1
  %44 = load i8*, i8** %data6, align 8, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !7
  %conv = sext i32 %45 to i64
  %call20 = call i8* @memcpy(i8* %43, i8* %44, i64 %conv) #7
  %46 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %47 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %47, i32 0, i32 29
  %glyf22 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data21, i32 0, i32 7
  %48 = load i64, i64* %glyf22, align 8, !tbaa !25
  %49 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %add23 = add i64 %48, %49
  %50 = load i32, i32* %code, align 4, !tbaa !7
  %conv24 = sext i32 %50 to i64
  %add25 = add i64 %add23, %conv24
  %51 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %52 = load i32, i32* %code, align 4, !tbaa !7
  %sub = sub i32 %51, %52
  %53 = load i8*, i8** %buf, align 8, !tbaa !1
  %54 = load i32, i32* %code, align 4, !tbaa !7
  %idx.ext = sext i32 %54 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  %call26 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %46, i64 %add25, i32 %sub, i8* %add.ptr) #6
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.end.19, %if.then.18, %if.then.10
  %55 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i8** %data6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %cleanup, %if.then
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %glyph_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_default_get_metrics(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %options, float* %sbw) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %sbw.addr = alloca float*, align 8
  %glyph_data = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %result = alloca i32, align 4
  %wmode = alloca i32, align 4
  %sbw_requested = alloca i32, align 4
  %bbox_requested = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %factor = alloca double, align 8
  %flags = alloca i32, align 4
  %gdata = alloca i8*, align 8
  %mat = alloca %struct.gs_matrix_fixed_s, align 4
  %comp_index = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store i32 %options, i32* %options.addr, align 4, !tbaa !22
  store float* %sbw, float** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %result, align 4, !tbaa !7
  %3 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and = and i32 %4, 1
  store i32 %and, i32* %wmode, align 4, !tbaa !7
  %5 = bitcast i32* %sbw_requested to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %options.addr, align 4, !tbaa !22
  %neg = xor i32 %6, -1
  %and1 = and i32 %neg, 2
  store i32 %and1, i32* %sbw_requested, align 4, !tbaa !7
  %7 = bitcast i32* %bbox_requested to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and2 = and i32 %8, 6
  store i32 %and2, i32* %bbox_requested, align 4, !tbaa !7
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %memory3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory3, align 8, !tbaa !78
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 3
  %12 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !55
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %14 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %call = call i32 %12(%struct.gs_font_type42_s* %13, i32 %14, %struct.gs_glyph_data_s* %glyph_data) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %15 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %bbox_requested, align 4, !tbaa !7
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.4, label %if.end.79

if.then.4:                                        ; preds = %if.end
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !83
  %cmp5 = icmp uge i32 %18, 10
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.4
  %19 = load i32, i32* %bbox_requested, align 4, !tbaa !7
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %20 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %21, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data8, i32 0, i32 8
  %22 = load i32, i32* %unitsPerEm, align 4, !tbaa !31
  %conv = uitofp i32 %22 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %factor, align 8, !tbaa !84
  %bits9 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits9, i32 0, i32 0
  %23 = load i8*, i8** %data10, align 8, !tbaa !81
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 2
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv11 = zext i8 %24 to i32
  %shl = shl i32 %conv11, 8
  %bits12 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits12, i32 0, i32 0
  %25 = load i8*, i8** %data13, align 8, !tbaa !81
  %add.ptr14 = getelementptr inbounds i8, i8* %25, i64 2
  %arrayidx15 = getelementptr inbounds i8, i8* %add.ptr14, i64 1
  %26 = load i8, i8* %arrayidx15, align 1, !tbaa !22
  %conv16 = zext i8 %26 to i32
  %add = add i32 %shl, %conv16
  %xor = xor i32 %add, 32768
  %sub = sub i32 %xor, 32768
  %conv17 = sitofp i32 %sub to double
  %27 = load double, double* %factor, align 8, !tbaa !84
  %mul = fmul double %conv17, %27
  %conv18 = fptrunc double %mul to float
  %28 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %28, i64 4
  store float %conv18, float* %arrayidx19, align 4, !tbaa !69
  %bits20 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data21 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits20, i32 0, i32 0
  %29 = load i8*, i8** %data21, align 8, !tbaa !81
  %add.ptr22 = getelementptr inbounds i8, i8* %29, i64 4
  %arrayidx23 = getelementptr inbounds i8, i8* %add.ptr22, i64 0
  %30 = load i8, i8* %arrayidx23, align 1, !tbaa !22
  %conv24 = zext i8 %30 to i32
  %shl25 = shl i32 %conv24, 8
  %bits26 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data27 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits26, i32 0, i32 0
  %31 = load i8*, i8** %data27, align 8, !tbaa !81
  %add.ptr28 = getelementptr inbounds i8, i8* %31, i64 4
  %arrayidx29 = getelementptr inbounds i8, i8* %add.ptr28, i64 1
  %32 = load i8, i8* %arrayidx29, align 1, !tbaa !22
  %conv30 = zext i8 %32 to i32
  %add31 = add i32 %shl25, %conv30
  %xor32 = xor i32 %add31, 32768
  %sub33 = sub i32 %xor32, 32768
  %conv34 = sitofp i32 %sub33 to double
  %33 = load double, double* %factor, align 8, !tbaa !84
  %mul35 = fmul double %conv34, %33
  %conv36 = fptrunc double %mul35 to float
  %34 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds float, float* %34, i64 5
  store float %conv36, float* %arrayidx37, align 4, !tbaa !69
  %bits38 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data39 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits38, i32 0, i32 0
  %35 = load i8*, i8** %data39, align 8, !tbaa !81
  %add.ptr40 = getelementptr inbounds i8, i8* %35, i64 6
  %arrayidx41 = getelementptr inbounds i8, i8* %add.ptr40, i64 0
  %36 = load i8, i8* %arrayidx41, align 1, !tbaa !22
  %conv42 = zext i8 %36 to i32
  %shl43 = shl i32 %conv42, 8
  %bits44 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data45 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits44, i32 0, i32 0
  %37 = load i8*, i8** %data45, align 8, !tbaa !81
  %add.ptr46 = getelementptr inbounds i8, i8* %37, i64 6
  %arrayidx47 = getelementptr inbounds i8, i8* %add.ptr46, i64 1
  %38 = load i8, i8* %arrayidx47, align 1, !tbaa !22
  %conv48 = zext i8 %38 to i32
  %add49 = add i32 %shl43, %conv48
  %xor50 = xor i32 %add49, 32768
  %sub51 = sub i32 %xor50, 32768
  %conv52 = sitofp i32 %sub51 to double
  %39 = load double, double* %factor, align 8, !tbaa !84
  %mul53 = fmul double %conv52, %39
  %conv54 = fptrunc double %mul53 to float
  %40 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds float, float* %40, i64 6
  store float %conv54, float* %arrayidx55, align 4, !tbaa !69
  %bits56 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data57 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits56, i32 0, i32 0
  %41 = load i8*, i8** %data57, align 8, !tbaa !81
  %add.ptr58 = getelementptr inbounds i8, i8* %41, i64 8
  %arrayidx59 = getelementptr inbounds i8, i8* %add.ptr58, i64 0
  %42 = load i8, i8* %arrayidx59, align 1, !tbaa !22
  %conv60 = zext i8 %42 to i32
  %shl61 = shl i32 %conv60, 8
  %bits62 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data63 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits62, i32 0, i32 0
  %43 = load i8*, i8** %data63, align 8, !tbaa !81
  %add.ptr64 = getelementptr inbounds i8, i8* %43, i64 8
  %arrayidx65 = getelementptr inbounds i8, i8* %add.ptr64, i64 1
  %44 = load i8, i8* %arrayidx65, align 1, !tbaa !22
  %conv66 = zext i8 %44 to i32
  %add67 = add i32 %shl61, %conv66
  %xor68 = xor i32 %add67, 32768
  %sub69 = sub i32 %xor68, 32768
  %conv70 = sitofp i32 %sub69 to double
  %45 = load double, double* %factor, align 8, !tbaa !84
  %mul71 = fmul double %conv70, %45
  %conv72 = fptrunc double %mul71 to float
  %46 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds float, float* %46, i64 7
  store float %conv72, float* %arrayidx73, align 4, !tbaa !69
  %47 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %if.then.4
  %48 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds float, float* %48, i64 7
  store float 0.000000e+00, float* %arrayidx74, align 4, !tbaa !69
  %49 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds float, float* %49, i64 6
  store float 0.000000e+00, float* %arrayidx75, align 4, !tbaa !69
  %50 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds float, float* %50, i64 5
  store float 0.000000e+00, float* %arrayidx76, align 4, !tbaa !69
  %51 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %51, i64 4
  store float 0.000000e+00, float* %arrayidx77, align 4, !tbaa !69
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.then.7
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end
  %52 = load i32, i32* %sbw_requested, align 4, !tbaa !7
  %tobool80 = icmp ne i32 %52, 0
  br i1 %tobool80, label %if.then.81, label %if.end.129

if.then.81:                                       ; preds = %if.end.79
  %bits82 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size83 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits82, i32 0, i32 1
  %53 = load i32, i32* %size83, align 4, !tbaa !83
  %cmp84 = icmp ne i32 %53, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.127

land.lhs.true.86:                                 ; preds = %if.then.81
  %bits87 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data88 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits87, i32 0, i32 0
  %54 = load i8*, i8** %data88, align 8, !tbaa !81
  %arrayidx89 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx89, align 1, !tbaa !22
  %conv90 = zext i8 %55 to i32
  %shl91 = shl i32 %conv90, 8
  %bits92 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data93 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits92, i32 0, i32 0
  %56 = load i8*, i8** %data93, align 8, !tbaa !81
  %arrayidx94 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx94, align 1, !tbaa !22
  %conv95 = zext i8 %57 to i32
  %add96 = add i32 %shl91, %conv95
  %xor97 = xor i32 %add96, 32768
  %sub98 = sub i32 %xor97, 32768
  %cmp99 = icmp eq i32 %sub98, -1
  br i1 %cmp99, label %if.then.101, label %if.end.127

if.then.101:                                      ; preds = %land.lhs.true.86
  %58 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %bits102 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data103 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits102, i32 0, i32 0
  %60 = load i8*, i8** %data103, align 8, !tbaa !81
  %add.ptr104 = getelementptr inbounds i8, i8* %60, i64 10
  store i8* %add.ptr104, i8** %gdata, align 8, !tbaa !1
  %61 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %61) #2
  %62 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  %call105 = call i8* @memset(i8* %62, i32 0, i64 36) #7
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.101
  %63 = bitcast i32* %comp_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i8, i8* %64, i64 2
  %arrayidx107 = getelementptr inbounds i8, i8* %add.ptr106, i64 0
  %65 = load i8, i8* %arrayidx107, align 1, !tbaa !22
  %conv108 = zext i8 %65 to i32
  %shl109 = shl i32 %conv108, 8
  %66 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr110 = getelementptr inbounds i8, i8* %66, i64 2
  %arrayidx111 = getelementptr inbounds i8, i8* %add.ptr110, i64 1
  %67 = load i8, i8* %arrayidx111, align 1, !tbaa !22
  %conv112 = zext i8 %67 to i32
  %add113 = add i32 %shl109, %conv112
  store i32 %add113, i32* %comp_index, align 4, !tbaa !7
  %68 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  call void @gs_type42_parse_component(i8** %gdata, i32* %flags, %struct.gs_matrix_fixed_s* %mat, i32* null, %struct.gs_font_type42_s* %68, %struct.gs_matrix_fixed_s* %mat) #6
  %69 = load i32, i32* %flags, align 4, !tbaa !7
  %and114 = and i32 %69, 512
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %do.body
  %70 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data117 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %70, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data117, i32 0, i32 4
  %71 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !56
  %72 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %73 = load i32, i32* %comp_index, align 4, !tbaa !7
  %74 = load i32, i32* %wmode, align 4, !tbaa !7
  %75 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call118 = call i32 %71(%struct.gs_font_type42_s* %72, i32 %73, i32 %74, float* %75) #6
  store i32 %call118, i32* %result, align 4, !tbaa !7
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.119:                                       ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.116, %if.end.119
  %76 = bitcast i32* %comp_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.122 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %77 = load i32, i32* %flags, align 4, !tbaa !7
  %and120 = and i32 %77, 32
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.122

cleanup.122:                                      ; preds = %do.end, %cleanup
  %78 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.end(i64 36, i8* %78) #2
  %79 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %cleanup.dest.125 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.125, label %cleanup.130 [
    i32 0, label %cleanup.cont.126
    i32 4, label %done
  ]

cleanup.cont.126:                                 ; preds = %cleanup.122
  br label %if.end.127

if.end.127:                                       ; preds = %cleanup.cont.126, %land.lhs.true.86, %if.then.81
  %81 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %82 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %83 = load i32, i32* %wmode, align 4, !tbaa !7
  %84 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call128 = call i32 @simple_glyph_metrics(%struct.gs_font_type42_s* %81, i32 %82, i32 %83, float* %84) #6
  store i32 %call128, i32* %result, align 4, !tbaa !7
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.127, %if.end.79
  br label %done

done:                                             ; preds = %if.end.129, %cleanup.122
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0)) #6
  %85 = load i32, i32* %result, align 4, !tbaa !7
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

cleanup.130:                                      ; preds = %done, %cleanup.122, %if.then
  %86 = bitcast i32* %bbox_requested to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %sbw_requested to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.end(i64 48, i8* %91) #2
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @gs_len_glyphs_release(i8* %data, i8* %event) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %event.addr = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %event, i8** %event.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_type42_s* %3 to %struct.gs_font_s*
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i32 @gs_font_notify_unregister(%struct.gs_font_s* %4, i32 (i8*, i8*)* @gs_len_glyphs_release, i8* %5) #6
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !21
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %len_glyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 20
  %12 = load i32*, i32** %len_glyphs, align 8, !tbaa !59
  %13 = bitcast i32* %12 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #6
  %14 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 0
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gs_type42_font_init_compare(i8* %a, i8* %b) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %a_offset = alloca i64, align 8
  %b_offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  %0 = bitcast i64* %a_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_type42_font_init_sort_s*
  %glyph_offset = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %2, i32 0, i32 0
  %3 = load i64, i64* %glyph_offset, align 8, !tbaa !62
  store i64 %3, i64* %a_offset, align 8, !tbaa !5
  %4 = bitcast i64* %b_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_type42_font_init_sort_s*
  %glyph_offset1 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %6, i32 0, i32 0
  %7 = load i64, i64* %glyph_offset1, align 8, !tbaa !62
  store i64 %7, i64* %b_offset, align 8, !tbaa !5
  %8 = load i64, i64* %a_offset, align 8, !tbaa !5
  %9 = load i64, i64* %b_offset, align 8, !tbaa !5
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %10 = load i64, i64* %a_offset, align 8, !tbaa !5
  %11 = load i64, i64* %b_offset, align 8, !tbaa !5
  %cmp2 = icmp ugt i64 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.else
  %12 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to %struct.gs_type42_font_init_sort_s*
  %glyph_num = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %13, i32 0, i32 1
  %14 = load i32, i32* %glyph_num, align 4, !tbaa !60
  %15 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_type42_font_init_sort_s*
  %glyph_num5 = getelementptr inbounds %struct.gs_type42_font_init_sort_s, %struct.gs_type42_font_init_sort_s* %16, i32 0, i32 1
  %17 = load i32, i32* %glyph_num5, align 4, !tbaa !60
  %sub = sub nsw i32 %14, %17
  store i32 %sub, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.4, %if.then.3, %if.then
  %18 = bitcast i64* %b_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast i64* %a_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gs_font_notify_unregister(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #0

; Function Attrs: nounwind uwtable
define void @gs_type42_parse_component(i8** %pdata, i32* %pflags, %struct.gs_matrix_fixed_s* %psmat, i32* %pmp, %struct.gs_font_type42_s* %pfont, %struct.gs_matrix_fixed_s* %pmat) #1 {
entry:
  %pdata.addr = alloca i8**, align 8
  %pflags.addr = alloca i32*, align 8
  %psmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %pmp.addr = alloca i32*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %gdata = alloca i8*, align 8
  %flags = alloca i32, align 4
  %factor = alloca double, align 8
  %mat = alloca %struct.gs_matrix_fixed_s, align 4
  %scale_mat = alloca %struct.gs_matrix_s, align 4
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 4
  store i8** %pdata, i8*** %pdata.addr, align 8, !tbaa !1
  store i32* %pflags, i32** %pflags.addr, align 8, !tbaa !1
  store %struct.gs_matrix_fixed_s* %psmat, %struct.gs_matrix_fixed_s** %psmat.addr, align 8, !tbaa !1
  store i32* %pmp, i32** %pmp.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %pdata.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  store i8* %2, i8** %gdata, align 8, !tbaa !1
  %3 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %5, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 8
  %6 = load i32, i32* %unitsPerEm, align 4, !tbaa !31
  %conv = uitofp i32 %6 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %factor, align 8, !tbaa !84
  %7 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %7) #2
  %8 = bitcast %struct.gs_matrix_s* %scale_mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #2
  %9 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv1 = zext i8 %10 to i32
  %shl = shl i32 %conv1, 8
  %11 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx2, align 1, !tbaa !22
  %conv3 = zext i8 %12 to i32
  %add = add i32 %shl, %conv3
  store i32 %add, i32* %flags, align 4, !tbaa !7
  %13 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %add.ptr, i8** %gdata, align 8, !tbaa !1
  %14 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  %16 = bitcast %struct.gs_matrix_fixed_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 36, i32 4, i1 false), !tbaa.struct !85
  %17 = load i32, i32* %flags, align 4, !tbaa !7
  %and = and i32 %17, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.52

if.then:                                          ; preds = %entry
  %18 = bitcast i32* %arg1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %arg2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load i32, i32* %flags, align 4, !tbaa !7
  %and4 = and i32 %21, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %22 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx7, align 1, !tbaa !22
  %conv8 = zext i8 %23 to i32
  %shl9 = shl i32 %conv8, 8
  %24 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx10, align 1, !tbaa !22
  %conv11 = zext i8 %25 to i32
  %add12 = add i32 %shl9, %conv11
  %xor = xor i32 %add12, 32768
  %sub = sub i32 %xor, 32768
  store i32 %sub, i32* %arg1, align 4, !tbaa !7
  %26 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %26, i64 2
  %arrayidx14 = getelementptr inbounds i8, i8* %add.ptr13, i64 0
  %27 = load i8, i8* %arrayidx14, align 1, !tbaa !22
  %conv15 = zext i8 %27 to i32
  %shl16 = shl i32 %conv15, 8
  %28 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %28, i64 2
  %arrayidx18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  %29 = load i8, i8* %arrayidx18, align 1, !tbaa !22
  %conv19 = zext i8 %29 to i32
  %add20 = add i32 %shl16, %conv19
  %xor21 = xor i32 %add20, 32768
  %sub22 = sub i32 %xor21, 32768
  store i32 %sub22, i32* %arg2, align 4, !tbaa !7
  %30 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %add.ptr23, i8** %gdata, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  %31 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx24, align 1, !tbaa !22
  %conv25 = zext i8 %32 to i32
  %xor26 = xor i32 %conv25, 128
  %sub27 = sub i32 %xor26, 128
  store i32 %sub27, i32* %arg1, align 4, !tbaa !7
  %33 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %33, i64 1
  %arrayidx29 = getelementptr inbounds i8, i8* %add.ptr28, i64 0
  %34 = load i8, i8* %arrayidx29, align 1, !tbaa !22
  %conv30 = zext i8 %34 to i32
  %xor31 = xor i32 %conv30, 128
  %sub32 = sub i32 %xor31, 128
  store i32 %sub32, i32* %arg2, align 4, !tbaa !7
  %35 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr33, i8** %gdata, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %36 = load i32, i32* %flags, align 4, !tbaa !7
  %and34 = and i32 %36, 4
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end
  %37 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %38 = load i32, i32* %arg1, align 4, !tbaa !7
  %conv38 = sitofp i32 %38 to double
  %39 = load double, double* %factor, align 8, !tbaa !84
  %mul = fmul double %conv38, %39
  %40 = load i32, i32* %arg2, align 4, !tbaa !7
  %conv39 = sitofp i32 %40 to double
  %41 = load double, double* %factor, align 8, !tbaa !84
  %mul40 = fmul double %conv39, %41
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %37, double %mul, double %mul40, %struct.gs_fixed_point_s* %pt) #6
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %42 = load i32, i32* %x, align 4, !tbaa !73
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %mat, i32 0, i32 6
  store i32 %42, i32* %tx_fixed, align 4, !tbaa !86
  %conv41 = sitofp i32 %42 to double
  %mul42 = fmul double %conv41, 3.906250e-03
  %conv43 = fptrunc double %mul42 to float
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %mat, i32 0, i32 4
  store float %conv43, float* %tx, align 4, !tbaa !88
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %43 = load i32, i32* %y, align 4, !tbaa !76
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %mat, i32 0, i32 7
  store i32 %43, i32* %ty_fixed, align 4, !tbaa !89
  %conv44 = sitofp i32 %43 to double
  %mul45 = fmul double %conv44, 3.906250e-03
  %conv46 = fptrunc double %mul45 to float
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %mat, i32 0, i32 5
  store float %conv46, float* %ty, align 4, !tbaa !90
  %44 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %tobool47 = icmp ne i32* %44, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.37
  %45 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 -1, i32* %arrayidx49, align 4, !tbaa !7
  %46 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 -1, i32* %arrayidx50, align 4, !tbaa !7
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.37
  %47 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i32* %arg2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %arg1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  br label %if.end.91

if.else.52:                                       ; preds = %entry
  %50 = load i32, i32* %flags, align 4, !tbaa !7
  %and53 = and i32 %50, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.78

if.then.55:                                       ; preds = %if.else.52
  %51 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %tobool56 = icmp ne i32* %51, null
  br i1 %tobool56, label %if.then.57, label %if.end.76

if.then.57:                                       ; preds = %if.then.55
  %52 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx58, align 1, !tbaa !22
  %conv59 = zext i8 %53 to i32
  %shl60 = shl i32 %conv59, 8
  %54 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx61, align 1, !tbaa !22
  %conv62 = zext i8 %55 to i32
  %add63 = add i32 %shl60, %conv62
  %56 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %add63, i32* %arrayidx64, align 4, !tbaa !7
  %57 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds i8, i8* %57, i64 2
  %arrayidx66 = getelementptr inbounds i8, i8* %add.ptr65, i64 0
  %58 = load i8, i8* %arrayidx66, align 1, !tbaa !22
  %conv67 = zext i8 %58 to i32
  %shl68 = shl i32 %conv67, 8
  %59 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i8, i8* %59, i64 2
  %arrayidx70 = getelementptr inbounds i8, i8* %add.ptr69, i64 1
  %60 = load i8, i8* %arrayidx70, align 1, !tbaa !22
  %conv71 = zext i8 %60 to i32
  %add72 = add i32 %shl68, %conv71
  %xor73 = xor i32 %add72, 32768
  %sub74 = sub i32 %xor73, 32768
  %61 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %sub74, i32* %arrayidx75, align 4, !tbaa !7
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.57, %if.then.55
  %62 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %add.ptr77, i8** %gdata, align 8, !tbaa !1
  br label %if.end.90

if.else.78:                                       ; preds = %if.else.52
  %63 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %tobool79 = icmp ne i32* %63, null
  br i1 %tobool79, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %if.else.78
  %64 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx81, align 1, !tbaa !22
  %conv82 = zext i8 %65 to i32
  %66 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %conv82, i32* %arrayidx83, align 4, !tbaa !7
  %67 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr84 = getelementptr inbounds i8, i8* %67, i64 1
  %arrayidx85 = getelementptr inbounds i8, i8* %add.ptr84, i64 0
  %68 = load i8, i8* %arrayidx85, align 1, !tbaa !22
  %conv86 = zext i8 %68 to i32
  %69 = load i32*, i32** %pmp.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %conv86, i32* %arrayidx87, align 4, !tbaa !7
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %if.else.78
  %70 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %add.ptr89, i8** %gdata, align 8, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.88, %if.end.76
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.51
  %71 = load i32, i32* %flags, align 4, !tbaa !7
  %and92 = and i32 %71, 8
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.107

if.then.94:                                       ; preds = %if.end.91
  %72 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx95, align 1, !tbaa !22
  %conv96 = zext i8 %73 to i32
  %shl97 = shl i32 %conv96, 8
  %74 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx98, align 1, !tbaa !22
  %conv99 = zext i8 %75 to i32
  %add100 = add i32 %shl97, %conv99
  %xor101 = xor i32 %add100, 32768
  %sub102 = sub i32 %xor101, 32768
  %conv103 = sitofp i32 %sub102 to double
  %div104 = fdiv double %conv103, 1.638400e+04
  %conv105 = fptrunc double %div104 to float
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 3
  store float %conv105, float* %yy, align 4, !tbaa !91
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 0
  store float %conv105, float* %xx, align 4, !tbaa !92
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !93
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !94
  %76 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %add.ptr106, i8** %gdata, align 8, !tbaa !1
  br label %if.end.202

if.else.107:                                      ; preds = %if.end.91
  %77 = load i32, i32* %flags, align 4, !tbaa !7
  %and108 = and i32 %77, 64
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.else.140

if.then.110:                                      ; preds = %if.else.107
  %78 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx111, align 1, !tbaa !22
  %conv112 = zext i8 %79 to i32
  %shl113 = shl i32 %conv112, 8
  %80 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx114, align 1, !tbaa !22
  %conv115 = zext i8 %81 to i32
  %add116 = add i32 %shl113, %conv115
  %xor117 = xor i32 %add116, 32768
  %sub118 = sub i32 %xor117, 32768
  %conv119 = sitofp i32 %sub118 to double
  %div120 = fdiv double %conv119, 1.638400e+04
  %conv121 = fptrunc double %div120 to float
  %xx122 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 0
  store float %conv121, float* %xx122, align 4, !tbaa !92
  %82 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i8, i8* %82, i64 2
  %arrayidx124 = getelementptr inbounds i8, i8* %add.ptr123, i64 0
  %83 = load i8, i8* %arrayidx124, align 1, !tbaa !22
  %conv125 = zext i8 %83 to i32
  %shl126 = shl i32 %conv125, 8
  %84 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %84, i64 2
  %arrayidx128 = getelementptr inbounds i8, i8* %add.ptr127, i64 1
  %85 = load i8, i8* %arrayidx128, align 1, !tbaa !22
  %conv129 = zext i8 %85 to i32
  %add130 = add i32 %shl126, %conv129
  %xor131 = xor i32 %add130, 32768
  %sub132 = sub i32 %xor131, 32768
  %conv133 = sitofp i32 %sub132 to double
  %div134 = fdiv double %conv133, 1.638400e+04
  %conv135 = fptrunc double %div134 to float
  %yy136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 3
  store float %conv135, float* %yy136, align 4, !tbaa !91
  %yx137 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 2
  store float 0.000000e+00, float* %yx137, align 4, !tbaa !93
  %xy138 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 1
  store float 0.000000e+00, float* %xy138, align 4, !tbaa !94
  %86 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr139 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %add.ptr139, i8** %gdata, align 8, !tbaa !1
  br label %if.end.201

if.else.140:                                      ; preds = %if.else.107
  %87 = load i32, i32* %flags, align 4, !tbaa !7
  %and141 = and i32 %87, 128
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.else.199

if.then.143:                                      ; preds = %if.else.140
  %88 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %88, i64 0
  %89 = load i8, i8* %arrayidx144, align 1, !tbaa !22
  %conv145 = zext i8 %89 to i32
  %shl146 = shl i32 %conv145, 8
  %90 = load i8*, i8** %gdata, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx147, align 1, !tbaa !22
  %conv148 = zext i8 %91 to i32
  %add149 = add i32 %shl146, %conv148
  %xor150 = xor i32 %add149, 32768
  %sub151 = sub i32 %xor150, 32768
  %conv152 = sitofp i32 %sub151 to double
  %div153 = fdiv double %conv152, 1.638400e+04
  %conv154 = fptrunc double %div153 to float
  %xx155 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 0
  store float %conv154, float* %xx155, align 4, !tbaa !92
  %92 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i8, i8* %92, i64 2
  %arrayidx157 = getelementptr inbounds i8, i8* %add.ptr156, i64 0
  %93 = load i8, i8* %arrayidx157, align 1, !tbaa !22
  %conv158 = zext i8 %93 to i32
  %shl159 = shl i32 %conv158, 8
  %94 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr160 = getelementptr inbounds i8, i8* %94, i64 2
  %arrayidx161 = getelementptr inbounds i8, i8* %add.ptr160, i64 1
  %95 = load i8, i8* %arrayidx161, align 1, !tbaa !22
  %conv162 = zext i8 %95 to i32
  %add163 = add i32 %shl159, %conv162
  %xor164 = xor i32 %add163, 32768
  %sub165 = sub i32 %xor164, 32768
  %conv166 = sitofp i32 %sub165 to double
  %div167 = fdiv double %conv166, 1.638400e+04
  %conv168 = fptrunc double %div167 to float
  %xy169 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 1
  store float %conv168, float* %xy169, align 4, !tbaa !94
  %96 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr170 = getelementptr inbounds i8, i8* %96, i64 4
  %arrayidx171 = getelementptr inbounds i8, i8* %add.ptr170, i64 0
  %97 = load i8, i8* %arrayidx171, align 1, !tbaa !22
  %conv172 = zext i8 %97 to i32
  %shl173 = shl i32 %conv172, 8
  %98 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr174 = getelementptr inbounds i8, i8* %98, i64 4
  %arrayidx175 = getelementptr inbounds i8, i8* %add.ptr174, i64 1
  %99 = load i8, i8* %arrayidx175, align 1, !tbaa !22
  %conv176 = zext i8 %99 to i32
  %add177 = add i32 %shl173, %conv176
  %xor178 = xor i32 %add177, 32768
  %sub179 = sub i32 %xor178, 32768
  %conv180 = sitofp i32 %sub179 to double
  %div181 = fdiv double %conv180, 1.638400e+04
  %conv182 = fptrunc double %div181 to float
  %yx183 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 2
  store float %conv182, float* %yx183, align 4, !tbaa !93
  %100 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr184 = getelementptr inbounds i8, i8* %100, i64 6
  %arrayidx185 = getelementptr inbounds i8, i8* %add.ptr184, i64 0
  %101 = load i8, i8* %arrayidx185, align 1, !tbaa !22
  %conv186 = zext i8 %101 to i32
  %shl187 = shl i32 %conv186, 8
  %102 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr188 = getelementptr inbounds i8, i8* %102, i64 6
  %arrayidx189 = getelementptr inbounds i8, i8* %add.ptr188, i64 1
  %103 = load i8, i8* %arrayidx189, align 1, !tbaa !22
  %conv190 = zext i8 %103 to i32
  %add191 = add i32 %shl187, %conv190
  %xor192 = xor i32 %add191, 32768
  %sub193 = sub i32 %xor192, 32768
  %conv194 = sitofp i32 %sub193 to double
  %div195 = fdiv double %conv194, 1.638400e+04
  %conv196 = fptrunc double %div195 to float
  %yy197 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 3
  store float %conv196, float* %yy197, align 4, !tbaa !91
  %104 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr198 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %add.ptr198, i8** %gdata, align 8, !tbaa !1
  br label %if.end.200

if.else.199:                                      ; preds = %if.else.140
  br label %no_scale

if.end.200:                                       ; preds = %if.then.143
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.110
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.94
  %tx203 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 4
  store float 0.000000e+00, float* %tx203, align 4, !tbaa !95
  %ty204 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 5
  store float 0.000000e+00, float* %ty204, align 4, !tbaa !96
  %105 = bitcast %struct.gs_matrix_fixed_s* %mat to %struct.gs_matrix_s*
  %106 = bitcast %struct.gs_matrix_fixed_s* %mat to %struct.gs_matrix_s*
  %call205 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %scale_mat, %struct.gs_matrix_s* %105, %struct.gs_matrix_s* %106) #6
  br label %no_scale

no_scale:                                         ; preds = %if.end.202, %if.else.199
  %107 = load i8*, i8** %gdata, align 8, !tbaa !1
  %108 = load i8**, i8*** %pdata.addr, align 8, !tbaa !1
  store i8* %107, i8** %108, align 8, !tbaa !1
  %109 = load i32, i32* %flags, align 4, !tbaa !7
  %110 = load i32*, i32** %pflags.addr, align 8, !tbaa !1
  store i32 %109, i32* %110, align 4, !tbaa !7
  %111 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %psmat.addr, align 8, !tbaa !1
  %112 = bitcast %struct.gs_matrix_fixed_s* %111 to i8*
  %113 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 36, i32 4, i1 false), !tbaa.struct !85
  %114 = bitcast %struct.gs_matrix_s* %scale_mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %114) #2
  %115 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.end(i64 36, i8* %115) #2
  %116 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #0

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type42_get_outline_from_TT_file(%struct.gs_font_type42_s* %pfont, %struct.stream_s* %s, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %lbuf = alloca [8 x i8], align 1
  %glyph_start = alloca i64, align 8
  %glyph_length = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %buf = alloca i8*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %glyph_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %4, i32 0, i32 29
  %indexToLocFormat = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 9
  %5 = load i32, i32* %indexToLocFormat, align 4, !tbaa !32
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 29
  %loca = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data1, i32 0, i32 11
  %8 = load i64, i64* %loca, align 8, !tbaa !37
  %9 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %mul = mul i32 %9, 4
  %conv = zext i32 %mul to i64
  %add = add i64 %8, %conv
  %call = call i32 @spseek(%struct.stream_s* %6, i64 %add) #6
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %call2 = call i32 @sgets(%struct.stream_s* %10, i8* %arraydecay, i32 8, i32* %count) #6
  %11 = load i32, i32* %count, align 4, !tbaa !7
  %cmp = icmp ult i32 %11, 8
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end:                                           ; preds = %if.then
  %arraydecay5 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %call6 = call i64 @get_u32_msb(i8* %arraydecay5) #6
  store i64 %call6, i64* %glyph_start, align 8, !tbaa !5
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %call8 = call i64 @get_u32_msb(i8* %add.ptr) #6
  %12 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %sub = sub i64 %call8, %12
  %conv9 = trunc i64 %sub to i32
  store i32 %conv9, i32* %glyph_length, align 4, !tbaa !7
  br label %if.end.42

if.else:                                          ; preds = %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %14, i32 0, i32 29
  %loca11 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data10, i32 0, i32 11
  %15 = load i64, i64* %loca11, align 8, !tbaa !37
  %16 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %mul12 = mul i32 %16, 2
  %conv13 = zext i32 %mul12 to i64
  %add14 = add i64 %15, %conv13
  %call15 = call i32 @spseek(%struct.stream_s* %13, i64 %add14) #6
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %call17 = call i32 @sgets(%struct.stream_s* %17, i8* %arraydecay16, i32 4, i32* %count) #6
  %18 = load i32, i32* %count, align 4, !tbaa !7
  %cmp18 = icmp ult i32 %18, 4
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.21:                                        ; preds = %if.else
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv22 = zext i8 %19 to i32
  %shl = shl i32 %conv22, 8
  %arrayidx23 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i64 1
  %20 = load i8, i8* %arrayidx23, align 1, !tbaa !22
  %conv24 = zext i8 %20 to i32
  %add25 = add i32 %shl, %conv24
  %conv26 = zext i32 %add25 to i64
  %shl27 = shl i64 %conv26, 1
  store i64 %shl27, i64* %glyph_start, align 8, !tbaa !5
  %arraydecay28 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %add.ptr29 = getelementptr inbounds i8, i8* %arraydecay28, i64 2
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 0
  %21 = load i8, i8* %arrayidx30, align 1, !tbaa !22
  %conv31 = zext i8 %21 to i32
  %shl32 = shl i32 %conv31, 8
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %lbuf, i32 0, i32 0
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay33, i64 2
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr34, i64 1
  %22 = load i8, i8* %arrayidx35, align 1, !tbaa !22
  %conv36 = zext i8 %22 to i32
  %add37 = add i32 %shl32, %conv36
  %conv38 = zext i32 %add37 to i64
  %shl39 = shl i64 %conv38, 1
  %23 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %sub40 = sub i64 %shl39, %23
  %conv41 = trunc i64 %sub40 to i32
  store i32 %conv41, i32* %glyph_length, align 4, !tbaa !7
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.21, %if.end
  %24 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %cmp43 = icmp eq i32 %24, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42
  %25 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %25) #6
  br label %if.end.61

if.else.46:                                       ; preds = %if.end.42
  %26 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %28 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %28, i32 0, i32 29
  %glyf = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data47, i32 0, i32 7
  %29 = load i64, i64* %glyf, align 8, !tbaa !25
  %30 = load i64, i64* %glyph_start, align 8, !tbaa !5
  %add48 = add i64 %29, %30
  %call49 = call i32 @spseek(%struct.stream_s* %27, i64 %add48) #6
  %31 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !78
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %33 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !82
  %34 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !78
  %36 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %call51 = call i8* %33(%struct.gs_memory_s* %35, i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %call51, i8** %buf, align 8, !tbaa !1
  %37 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %37, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.46
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.else.46
  %38 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %buf, align 8, !tbaa !1
  %40 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %41 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_font_type42_s* %41 to %struct.gs_font_s*
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %38, i8* %39, i32 %40, %struct.gs_font_s* %42) #6
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %buf, align 8, !tbaa !1
  %45 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %call56 = call i32 @sgets(%struct.stream_s* %43, i8* %44, i32 %45, i32* %count) #6
  %46 = load i32, i32* %count, align 4, !tbaa !7
  %47 = load i32, i32* %glyph_length, align 4, !tbaa !7
  %cmp57 = icmp ult i32 %46, %47
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.59, %if.then.54
  %48 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.61

if.end.61:                                        ; preds = %cleanup.cont, %if.then.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %cleanup, %if.then.20, %if.then.4
  %49 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %glyph_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i64* %glyph_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast [8 x i8]* %lbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @spseek(%struct.stream_s*, i64) #0

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #0

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #0

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %WMode, i64 %cid) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %WMode.addr = alloca i32, align 4
  %cid.addr = alloca i64, align 8
  %gsub_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gsub1 = alloca %struct.GSUB_s, align 4
  %lookup_list_table = alloca %struct.LookupListTable_s, align 2
  %lookup_list_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %lookup_table_offset_ptr = alloca i8*, align 8
  %lookup_table_ptr = alloca i8*, align 8
  %lookup_table = alloca %struct.LookupTable_s, align 2
  %subtable_offset_ptr = alloca i8*, align 8
  %subtable_ptr = alloca i8*, align 8
  %format = alloca i16, align 2
  %subst = alloca %struct.SingleSubstFormat1_s, align 2
  %subst135 = alloca %struct.SingleSubstFormat2_s, align 2
  %coverage_ptr = alloca i8*, align 8
  %coverage_format = alloca i16, align 2
  %cov = alloca %struct.CoverageFormat1_s, align 2
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k = alloca i32, align 4
  %glyph = alloca i16, align 2
  %new_glyph = alloca i16, align 2
  %cov254 = alloca %struct.CoverageFormat2_s, align 2
  %k0265 = alloca i32, align 4
  %k1266 = alloca i32, align 4
  %k270 = alloca i32, align 4
  %rr = alloca %struct.RangeRecord_s, align 2
  %subst_index = alloca i16, align 2
  %new_glyph346 = alloca i16, align 2
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !7
  store i64 %cid, i64* %cid.addr, align 8, !tbaa !5
  %0 = bitcast i8** %gsub_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %gsub = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 24
  %2 = load i8*, i8** %gsub, align 8, !tbaa !30
  store i8* %2, i8** %gsub_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.GSUB_s* %gsub1 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #2
  %6 = bitcast %struct.LookupListTable_s* %lookup_list_table to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %lookup_list_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %WMode.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.420

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 0
  %call = call i64 @get_u32_msb(i8* %add.ptr) #6
  %conv = trunc i64 %call to i32
  %Version = getelementptr inbounds %struct.GSUB_s, %struct.GSUB_s* %gsub1, i32 0, i32 0
  store i32 %conv, i32* %Version, align 4, !tbaa !97
  %11 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 1) to i32) to i64)
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr2, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv3 = zext i8 %12 to i32
  %shl = shl i32 %conv3, 8
  %13 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 1) to i32) to i64)
  %arrayidx5 = getelementptr inbounds i8, i8* %add.ptr4, i64 1
  %14 = load i8, i8* %arrayidx5, align 1, !tbaa !22
  %conv6 = zext i8 %14 to i32
  %add = add i32 %shl, %conv6
  %conv7 = trunc i32 %add to i16
  %ScriptList = getelementptr inbounds %struct.GSUB_s, %struct.GSUB_s* %gsub1, i32 0, i32 1
  store i16 %conv7, i16* %ScriptList, align 2, !tbaa !100
  %15 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 2) to i32) to i64)
  %arrayidx9 = getelementptr inbounds i8, i8* %add.ptr8, i64 0
  %16 = load i8, i8* %arrayidx9, align 1, !tbaa !22
  %conv10 = zext i8 %16 to i32
  %shl11 = shl i32 %conv10, 8
  %17 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 2) to i32) to i64)
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %18 = load i8, i8* %arrayidx13, align 1, !tbaa !22
  %conv14 = zext i8 %18 to i32
  %add15 = add i32 %shl11, %conv14
  %conv16 = trunc i32 %add15 to i16
  %FeatureList = getelementptr inbounds %struct.GSUB_s, %struct.GSUB_s* %gsub1, i32 0, i32 2
  store i16 %conv16, i16* %FeatureList, align 2, !tbaa !101
  %19 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %19, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 3) to i32) to i64)
  %arrayidx18 = getelementptr inbounds i8, i8* %add.ptr17, i64 0
  %20 = load i8, i8* %arrayidx18, align 1, !tbaa !22
  %conv19 = zext i8 %20 to i32
  %shl20 = shl i32 %conv19, 8
  %21 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %21, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.GSUB_s, %struct.GSUB_s* null, i32 0, i32 3) to i32) to i64)
  %arrayidx22 = getelementptr inbounds i8, i8* %add.ptr21, i64 1
  %22 = load i8, i8* %arrayidx22, align 1, !tbaa !22
  %conv23 = zext i8 %22 to i32
  %add24 = add i32 %shl20, %conv23
  %conv25 = trunc i32 %add24 to i16
  %LookupList = getelementptr inbounds %struct.GSUB_s, %struct.GSUB_s* %gsub1, i32 0, i32 3
  store i16 %conv25, i16* %LookupList, align 2, !tbaa !102
  %23 = load i8*, i8** %gsub_ptr, align 8, !tbaa !1
  %LookupList26 = getelementptr inbounds %struct.GSUB_s, %struct.GSUB_s* %gsub1, i32 0, i32 3
  %24 = load i16, i16* %LookupList26, align 2, !tbaa !102
  %conv27 = zext i16 %24 to i32
  %idx.ext = sext i32 %conv27 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr28, i8** %lookup_list_ptr, align 8, !tbaa !1
  %25 = load i8*, i8** %lookup_list_ptr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %25, i64 0
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 0
  %26 = load i8, i8* %arrayidx30, align 1, !tbaa !22
  %conv31 = zext i8 %26 to i32
  %shl32 = shl i32 %conv31, 8
  %27 = load i8*, i8** %lookup_list_ptr, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %27, i64 0
  %arrayidx34 = getelementptr inbounds i8, i8* %add.ptr33, i64 1
  %28 = load i8, i8* %arrayidx34, align 1, !tbaa !22
  %conv35 = zext i8 %28 to i32
  %add36 = add i32 %shl32, %conv35
  %conv37 = trunc i32 %add36 to i16
  %LookupCount = getelementptr inbounds %struct.LookupListTable_s, %struct.LookupListTable_s* %lookup_list_table, i32 0, i32 0
  store i16 %conv37, i16* %LookupCount, align 2, !tbaa !103
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.417, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !7
  %LookupCount38 = getelementptr inbounds %struct.LookupListTable_s, %struct.LookupListTable_s* %lookup_list_table, i32 0, i32 0
  %30 = load i16, i16* %LookupCount38, align 2, !tbaa !103
  %conv39 = zext i16 %30 to i32
  %cmp40 = icmp slt i32 %29, %conv39
  br i1 %cmp40, label %for.body, label %for.end.419

for.body:                                         ; preds = %for.cond
  %31 = bitcast i8** %lookup_table_offset_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load i8*, i8** %lookup_list_ptr, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %32, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %33 = load i32, i32* %i, align 4, !tbaa !7
  %conv43 = sext i32 %33 to i64
  %mul = mul i64 %conv43, 2
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr42, i64 %mul
  store i8* %add.ptr44, i8** %lookup_table_offset_ptr, align 8, !tbaa !1
  %34 = bitcast i8** %lookup_table_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load i8*, i8** %lookup_list_ptr, align 8, !tbaa !1
  %36 = load i8*, i8** %lookup_table_offset_ptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx45, align 1, !tbaa !22
  %conv46 = zext i8 %37 to i32
  %shl47 = shl i32 %conv46, 8
  %38 = load i8*, i8** %lookup_table_offset_ptr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx48, align 1, !tbaa !22
  %conv49 = zext i8 %39 to i32
  %add50 = add i32 %shl47, %conv49
  %idx.ext51 = zext i32 %add50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %35, i64 %idx.ext51
  store i8* %add.ptr52, i8** %lookup_table_ptr, align 8, !tbaa !1
  %40 = bitcast %struct.LookupTable_s* %lookup_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %41, i64 0
  %arrayidx54 = getelementptr inbounds i8, i8* %add.ptr53, i64 0
  %42 = load i8, i8* %arrayidx54, align 1, !tbaa !22
  %conv55 = zext i8 %42 to i32
  %shl56 = shl i32 %conv55, 8
  %43 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %43, i64 0
  %arrayidx58 = getelementptr inbounds i8, i8* %add.ptr57, i64 1
  %44 = load i8, i8* %arrayidx58, align 1, !tbaa !22
  %conv59 = zext i8 %44 to i32
  %add60 = add i32 %shl56, %conv59
  %conv61 = trunc i32 %add60 to i16
  %LookupType = getelementptr inbounds %struct.LookupTable_s, %struct.LookupTable_s* %lookup_table, i32 0, i32 0
  store i16 %conv61, i16* %LookupType, align 2, !tbaa !105
  %45 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i8, i8* %45, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx63 = getelementptr inbounds i8, i8* %add.ptr62, i64 0
  %46 = load i8, i8* %arrayidx63, align 1, !tbaa !22
  %conv64 = zext i8 %46 to i32
  %shl65 = shl i32 %conv64, 8
  %47 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds i8, i8* %47, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx67 = getelementptr inbounds i8, i8* %add.ptr66, i64 1
  %48 = load i8, i8* %arrayidx67, align 1, !tbaa !22
  %conv68 = zext i8 %48 to i32
  %add69 = add i32 %shl65, %conv68
  %conv70 = trunc i32 %add69 to i16
  %LookupFlag = getelementptr inbounds %struct.LookupTable_s, %struct.LookupTable_s* %lookup_table, i32 0, i32 1
  store i16 %conv70, i16* %LookupFlag, align 2, !tbaa !107
  %49 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i8, i8* %49, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx72 = getelementptr inbounds i8, i8* %add.ptr71, i64 0
  %50 = load i8, i8* %arrayidx72, align 1, !tbaa !22
  %conv73 = zext i8 %50 to i32
  %shl74 = shl i32 %conv73, 8
  %51 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds i8, i8* %51, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx76 = getelementptr inbounds i8, i8* %add.ptr75, i64 1
  %52 = load i8, i8* %arrayidx76, align 1, !tbaa !22
  %conv77 = zext i8 %52 to i32
  %add78 = add i32 %shl74, %conv77
  %conv79 = trunc i32 %add78 to i16
  %SubTableCount = getelementptr inbounds %struct.LookupTable_s, %struct.LookupTable_s* %lookup_table, i32 0, i32 2
  store i16 %conv79, i16* %SubTableCount, align 2, !tbaa !108
  %LookupType80 = getelementptr inbounds %struct.LookupTable_s, %struct.LookupTable_s* %lookup_table, i32 0, i32 0
  %53 = load i16, i16* %LookupType80, align 2, !tbaa !105
  %conv81 = zext i16 %53 to i32
  %cmp82 = icmp eq i32 %conv81, 1
  br i1 %cmp82, label %if.then.84, label %if.end.411

if.then.84:                                       ; preds = %for.body
  %54 = bitcast i8** %subtable_offset_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %add.ptr85 = getelementptr inbounds i8, i8* %55, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 3) to i32) to i64)
  store i8* %add.ptr85, i8** %subtable_offset_ptr, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !7
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc, %if.then.84
  %56 = load i32, i32* %j, align 4, !tbaa !7
  %SubTableCount87 = getelementptr inbounds %struct.LookupTable_s, %struct.LookupTable_s* %lookup_table, i32 0, i32 2
  %57 = load i16, i16* %SubTableCount87, align 2, !tbaa !108
  %conv88 = zext i16 %57 to i32
  %cmp89 = icmp slt i32 %56, %conv88
  br i1 %cmp89, label %for.body.91, label %for.end.407

for.body.91:                                      ; preds = %for.cond.86
  %58 = bitcast i8** %subtable_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i8*, i8** %lookup_table_ptr, align 8, !tbaa !1
  %60 = load i8*, i8** %subtable_offset_ptr, align 8, !tbaa !1
  %61 = load i32, i32* %j, align 4, !tbaa !7
  %conv92 = sext i32 %61 to i64
  %mul93 = mul i64 %conv92, 2
  %add.ptr94 = getelementptr inbounds i8, i8* %60, i64 %mul93
  %arrayidx95 = getelementptr inbounds i8, i8* %add.ptr94, i64 0
  %62 = load i8, i8* %arrayidx95, align 1, !tbaa !22
  %conv96 = zext i8 %62 to i32
  %shl97 = shl i32 %conv96, 8
  %63 = load i8*, i8** %subtable_offset_ptr, align 8, !tbaa !1
  %64 = load i32, i32* %j, align 4, !tbaa !7
  %conv98 = sext i32 %64 to i64
  %mul99 = mul i64 %conv98, 2
  %add.ptr100 = getelementptr inbounds i8, i8* %63, i64 %mul99
  %arrayidx101 = getelementptr inbounds i8, i8* %add.ptr100, i64 1
  %65 = load i8, i8* %arrayidx101, align 1, !tbaa !22
  %conv102 = zext i8 %65 to i32
  %add103 = add i32 %shl97, %conv102
  %idx.ext104 = zext i32 %add103 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %59, i64 %idx.ext104
  store i8* %add.ptr105, i8** %subtable_ptr, align 8, !tbaa !1
  %66 = bitcast i16* %format to i8*
  call void @llvm.lifetime.start(i64 2, i8* %66) #2
  %67 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx106, align 1, !tbaa !22
  %conv107 = zext i8 %68 to i32
  %shl108 = shl i32 %conv107, 8
  %69 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx109, align 1, !tbaa !22
  %conv110 = zext i8 %70 to i32
  %add111 = add i32 %shl108, %conv110
  %conv112 = trunc i32 %add111 to i16
  store i16 %conv112, i16* %format, align 2, !tbaa !109
  %71 = load i16, i16* %format, align 2, !tbaa !109
  %conv113 = zext i16 %71 to i32
  %cmp114 = icmp eq i32 %conv113, 1
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %for.body.91
  %72 = bitcast %struct.SingleSubstFormat1_s* %subst to i8*
  call void @llvm.lifetime.start(i64 6, i8* %72) #2
  %73 = load i16, i16* %format, align 2, !tbaa !109
  %SubstFormat = getelementptr inbounds %struct.SingleSubstFormat1_s, %struct.SingleSubstFormat1_s* %subst, i32 0, i32 0
  store i16 %73, i16* %SubstFormat, align 2, !tbaa !110
  %74 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds i8, i8* %74, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx118 = getelementptr inbounds i8, i8* %add.ptr117, i64 0
  %75 = load i8, i8* %arrayidx118, align 1, !tbaa !22
  %conv119 = zext i8 %75 to i32
  %shl120 = shl i32 %conv119, 8
  %76 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr121 = getelementptr inbounds i8, i8* %76, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx122 = getelementptr inbounds i8, i8* %add.ptr121, i64 1
  %77 = load i8, i8* %arrayidx122, align 1, !tbaa !22
  %conv123 = zext i8 %77 to i32
  %add124 = add i32 %shl120, %conv123
  %conv125 = trunc i32 %add124 to i16
  %Coverage = getelementptr inbounds %struct.SingleSubstFormat1_s, %struct.SingleSubstFormat1_s* %subst, i32 0, i32 1
  store i16 %conv125, i16* %Coverage, align 2, !tbaa !112
  %78 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds i8, i8* %78, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx127 = getelementptr inbounds i8, i8* %add.ptr126, i64 0
  %79 = load i8, i8* %arrayidx127, align 1, !tbaa !22
  %conv128 = zext i8 %79 to i32
  %shl129 = shl i32 %conv128, 8
  %80 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i8, i8* %80, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx131 = getelementptr inbounds i8, i8* %add.ptr130, i64 1
  %81 = load i8, i8* %arrayidx131, align 1, !tbaa !22
  %conv132 = zext i8 %81 to i32
  %add133 = add i32 %shl129, %conv132
  %conv134 = trunc i32 %add133 to i16
  %DeltaGlyphId = getelementptr inbounds %struct.SingleSubstFormat1_s, %struct.SingleSubstFormat1_s* %subst, i32 0, i32 2
  store i16 %conv134, i16* %DeltaGlyphId, align 2, !tbaa !113
  %82 = bitcast %struct.SingleSubstFormat1_s* %subst to i8*
  call void @llvm.lifetime.end(i64 6, i8* %82) #2
  br label %if.end.402

if.else:                                          ; preds = %for.body.91
  %83 = bitcast %struct.SingleSubstFormat2_s* %subst135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = bitcast i8** %coverage_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = bitcast i16* %coverage_format to i8*
  call void @llvm.lifetime.start(i64 2, i8* %85) #2
  %86 = load i16, i16* %format, align 2, !tbaa !109
  %SubstFormat136 = getelementptr inbounds %struct.SingleSubstFormat2_s, %struct.SingleSubstFormat2_s* %subst135, i32 0, i32 0
  store i16 %86, i16* %SubstFormat136, align 2, !tbaa !114
  %87 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr137 = getelementptr inbounds i8, i8* %87, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx138 = getelementptr inbounds i8, i8* %add.ptr137, i64 0
  %88 = load i8, i8* %arrayidx138, align 1, !tbaa !22
  %conv139 = zext i8 %88 to i32
  %shl140 = shl i32 %conv139, 8
  %89 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr141 = getelementptr inbounds i8, i8* %89, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx142 = getelementptr inbounds i8, i8* %add.ptr141, i64 1
  %90 = load i8, i8* %arrayidx142, align 1, !tbaa !22
  %conv143 = zext i8 %90 to i32
  %add144 = add i32 %shl140, %conv143
  %conv145 = trunc i32 %add144 to i16
  %Coverage146 = getelementptr inbounds %struct.SingleSubstFormat2_s, %struct.SingleSubstFormat2_s* %subst135, i32 0, i32 1
  store i16 %conv145, i16* %Coverage146, align 2, !tbaa !116
  %91 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr147 = getelementptr inbounds i8, i8* %91, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx148 = getelementptr inbounds i8, i8* %add.ptr147, i64 0
  %92 = load i8, i8* %arrayidx148, align 1, !tbaa !22
  %conv149 = zext i8 %92 to i32
  %shl150 = shl i32 %conv149, 8
  %93 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds i8, i8* %93, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx152 = getelementptr inbounds i8, i8* %add.ptr151, i64 1
  %94 = load i8, i8* %arrayidx152, align 1, !tbaa !22
  %conv153 = zext i8 %94 to i32
  %add154 = add i32 %shl150, %conv153
  %conv155 = trunc i32 %add154 to i16
  %GlyphCount = getelementptr inbounds %struct.SingleSubstFormat2_s, %struct.SingleSubstFormat2_s* %subst135, i32 0, i32 2
  store i16 %conv155, i16* %GlyphCount, align 2, !tbaa !117
  %95 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %Coverage156 = getelementptr inbounds %struct.SingleSubstFormat2_s, %struct.SingleSubstFormat2_s* %subst135, i32 0, i32 1
  %96 = load i16, i16* %Coverage156, align 2, !tbaa !116
  %conv157 = zext i16 %96 to i32
  %idx.ext158 = sext i32 %conv157 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %95, i64 %idx.ext158
  store i8* %add.ptr159, i8** %coverage_ptr, align 8, !tbaa !1
  %97 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx160, align 1, !tbaa !22
  %conv161 = zext i8 %98 to i32
  %shl162 = shl i32 %conv161, 8
  %99 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx163, align 1, !tbaa !22
  %conv164 = zext i8 %100 to i32
  %add165 = add i32 %shl162, %conv164
  %conv166 = trunc i32 %add165 to i16
  store i16 %conv166, i16* %coverage_format, align 2, !tbaa !109
  %101 = load i16, i16* %coverage_format, align 2, !tbaa !109
  %conv167 = zext i16 %101 to i32
  %cmp168 = icmp eq i32 %conv167, 1
  br i1 %cmp168, label %if.then.170, label %if.else.249

if.then.170:                                      ; preds = %if.else
  %102 = bitcast %struct.CoverageFormat1_s* %cov to i8*
  call void @llvm.lifetime.start(i64 6, i8* %102) #2
  %103 = load i16, i16* %coverage_format, align 2, !tbaa !109
  %CoverageFormat = getelementptr inbounds %struct.CoverageFormat1_s, %struct.CoverageFormat1_s* %cov, i32 0, i32 0
  store i16 %103, i16* %CoverageFormat, align 2, !tbaa !118
  %104 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr171 = getelementptr inbounds i8, i8* %104, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx172 = getelementptr inbounds i8, i8* %add.ptr171, i64 0
  %105 = load i8, i8* %arrayidx172, align 1, !tbaa !22
  %conv173 = zext i8 %105 to i32
  %shl174 = shl i32 %conv173, 8
  %106 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr175 = getelementptr inbounds i8, i8* %106, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx176 = getelementptr inbounds i8, i8* %add.ptr175, i64 1
  %107 = load i8, i8* %arrayidx176, align 1, !tbaa !22
  %conv177 = zext i8 %107 to i32
  %add178 = add i32 %shl174, %conv177
  %conv179 = trunc i32 %add178 to i16
  %GlyphCount180 = getelementptr inbounds %struct.CoverageFormat1_s, %struct.CoverageFormat1_s* %cov, i32 0, i32 1
  store i16 %conv179, i16* %GlyphCount180, align 2, !tbaa !120
  %108 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #2
  store i32 0, i32* %k0, align 4, !tbaa !7
  %109 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #2
  %GlyphCount181 = getelementptr inbounds %struct.CoverageFormat1_s, %struct.CoverageFormat1_s* %cov, i32 0, i32 1
  %110 = load i16, i16* %GlyphCount181, align 2, !tbaa !120
  %conv182 = zext i16 %110 to i32
  store i32 %conv182, i32* %k1, align 4, !tbaa !7
  br label %for.cond.183

for.cond.183:                                     ; preds = %cleanup.cont, %if.then.170
  %111 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #2
  %112 = load i32, i32* %k0, align 4, !tbaa !7
  %113 = load i32, i32* %k1, align 4, !tbaa !7
  %add184 = add nsw i32 %112, %113
  %div = sdiv i32 %add184, 2
  store i32 %div, i32* %k, align 4, !tbaa !7
  %114 = bitcast i16* %glyph to i8*
  call void @llvm.lifetime.start(i64 2, i8* %114) #2
  %115 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i8, i8* %115, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %116 = load i32, i32* %k, align 4, !tbaa !7
  %conv186 = sext i32 %116 to i64
  %mul187 = mul i64 2, %conv186
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr185, i64 %mul187
  %arrayidx189 = getelementptr inbounds i8, i8* %add.ptr188, i64 0
  %117 = load i8, i8* %arrayidx189, align 1, !tbaa !22
  %conv190 = zext i8 %117 to i32
  %shl191 = shl i32 %conv190, 8
  %118 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr192 = getelementptr inbounds i8, i8* %118, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %119 = load i32, i32* %k, align 4, !tbaa !7
  %conv193 = sext i32 %119 to i64
  %mul194 = mul i64 2, %conv193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr192, i64 %mul194
  %arrayidx196 = getelementptr inbounds i8, i8* %add.ptr195, i64 1
  %120 = load i8, i8* %arrayidx196, align 1, !tbaa !22
  %conv197 = zext i8 %120 to i32
  %add198 = add i32 %shl191, %conv197
  %conv199 = trunc i32 %add198 to i16
  store i16 %conv199, i16* %glyph, align 2, !tbaa !109
  %121 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %122 = load i16, i16* %glyph, align 2, !tbaa !109
  %conv200 = zext i16 %122 to i32
  %cmp201 = icmp eq i32 %121, %conv200
  br i1 %cmp201, label %if.then.203, label %if.else.226

if.then.203:                                      ; preds = %for.cond.183
  %123 = load i32, i32* %k, align 4, !tbaa !7
  %GlyphCount204 = getelementptr inbounds %struct.CoverageFormat1_s, %struct.CoverageFormat1_s* %cov, i32 0, i32 1
  %124 = load i16, i16* %GlyphCount204, align 2, !tbaa !120
  %conv205 = zext i16 %124 to i32
  %cmp206 = icmp sge i32 %123, %conv205
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %if.then.203
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.else.209:                                      ; preds = %if.then.203
  %125 = bitcast i16* %new_glyph to i8*
  call void @llvm.lifetime.start(i64 2, i8* %125) #2
  %126 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i8, i8* %126, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 3) to i32) to i64)
  %127 = load i32, i32* %k, align 4, !tbaa !7
  %conv211 = sext i32 %127 to i64
  %mul212 = mul i64 2, %conv211
  %add.ptr213 = getelementptr inbounds i8, i8* %add.ptr210, i64 %mul212
  %arrayidx214 = getelementptr inbounds i8, i8* %add.ptr213, i64 0
  %128 = load i8, i8* %arrayidx214, align 1, !tbaa !22
  %conv215 = zext i8 %128 to i32
  %shl216 = shl i32 %conv215, 8
  %129 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr217 = getelementptr inbounds i8, i8* %129, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 3) to i32) to i64)
  %130 = load i32, i32* %k, align 4, !tbaa !7
  %conv218 = sext i32 %130 to i64
  %mul219 = mul i64 2, %conv218
  %add.ptr220 = getelementptr inbounds i8, i8* %add.ptr217, i64 %mul219
  %arrayidx221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %131 = load i8, i8* %arrayidx221, align 1, !tbaa !22
  %conv222 = zext i8 %131 to i32
  %add223 = add i32 %shl216, %conv222
  %conv224 = trunc i32 %add223 to i16
  store i16 %conv224, i16* %new_glyph, align 2, !tbaa !109
  %132 = load i16, i16* %new_glyph, align 2, !tbaa !109
  %conv225 = zext i16 %132 to i32
  store i32 %conv225, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %133 = bitcast i16* %new_glyph to i8*
  call void @llvm.lifetime.end(i64 2, i8* %133) #2
  br label %cleanup

if.else.226:                                      ; preds = %for.cond.183
  %134 = load i32, i32* %k0, align 4, !tbaa !7
  %135 = load i32, i32* %k1, align 4, !tbaa !7
  %sub = sub nsw i32 %135, 1
  %cmp227 = icmp sge i32 %134, %sub
  br i1 %cmp227, label %if.then.229, label %if.else.231

if.then.229:                                      ; preds = %if.else.226
  %136 = load i32, i32* %k, align 4, !tbaa !7
  %add230 = add nsw i32 %136, 0
  store i32 %add230, i32* %k, align 4, !tbaa !7
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.else.231:                                      ; preds = %if.else.226
  %137 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %138 = load i16, i16* %glyph, align 2, !tbaa !109
  %conv232 = zext i16 %138 to i32
  %cmp233 = icmp ult i32 %137, %conv232
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %if.else.231
  %139 = load i32, i32* %k, align 4, !tbaa !7
  store i32 %139, i32* %k1, align 4, !tbaa !7
  br label %if.end.238

if.else.236:                                      ; preds = %if.else.231
  %140 = load i32, i32* %k, align 4, !tbaa !7
  %add237 = add nsw i32 %140, 1
  store i32 %add237, i32* %k0, align 4, !tbaa !7
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.236, %if.then.235
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.240, %if.then.229, %if.else.209, %if.then.208
  %141 = bitcast i16* %glyph to i8*
  call void @llvm.lifetime.end(i64 2, i8* %141) #2
  %142 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.242 [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.183

for.end:                                          ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.242

cleanup.242:                                      ; preds = %for.end, %cleanup
  %143 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %cleanup.dest.244 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.244, label %cleanup.246 [
    i32 0, label %cleanup.cont.245
  ]

cleanup.cont.245:                                 ; preds = %cleanup.242
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %cleanup.cont.245, %cleanup.242
  %145 = bitcast %struct.CoverageFormat1_s* %cov to i8*
  call void @llvm.lifetime.end(i64 6, i8* %145) #2
  %cleanup.dest.247 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.247, label %cleanup.397 [
    i32 0, label %cleanup.cont.248
  ]

cleanup.cont.248:                                 ; preds = %cleanup.246
  br label %if.end.396

if.else.249:                                      ; preds = %if.else
  %146 = load i16, i16* %coverage_format, align 2, !tbaa !109
  %conv250 = zext i16 %146 to i32
  %cmp251 = icmp eq i32 %conv250, 2
  br i1 %cmp251, label %if.then.253, label %if.else.394

if.then.253:                                      ; preds = %if.else.249
  %147 = bitcast %struct.CoverageFormat2_s* %cov254 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %147) #2
  %148 = load i16, i16* %coverage_format, align 2, !tbaa !109
  %CoverageFormat255 = getelementptr inbounds %struct.CoverageFormat2_s, %struct.CoverageFormat2_s* %cov254, i32 0, i32 0
  store i16 %148, i16* %CoverageFormat255, align 2, !tbaa !121
  %149 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %149, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 1) to i32) to i64)
  %arrayidx257 = getelementptr inbounds i8, i8* %add.ptr256, i64 0
  %150 = load i8, i8* %arrayidx257, align 1, !tbaa !22
  %conv258 = zext i8 %150 to i32
  %shl259 = shl i32 %conv258, 8
  %151 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr260 = getelementptr inbounds i8, i8* %151, i64 sext (i32 ptrtoint (i16* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 1) to i32) to i64)
  %arrayidx261 = getelementptr inbounds i8, i8* %add.ptr260, i64 1
  %152 = load i8, i8* %arrayidx261, align 1, !tbaa !22
  %conv262 = zext i8 %152 to i32
  %add263 = add i32 %shl259, %conv262
  %conv264 = trunc i32 %add263 to i16
  %RangeCount = getelementptr inbounds %struct.CoverageFormat2_s, %struct.CoverageFormat2_s* %cov254, i32 0, i32 1
  store i16 %conv264, i16* %RangeCount, align 2, !tbaa !123
  %153 = bitcast i32* %k0265 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #2
  store i32 0, i32* %k0265, align 4, !tbaa !7
  %154 = bitcast i32* %k1266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #2
  %RangeCount267 = getelementptr inbounds %struct.CoverageFormat2_s, %struct.CoverageFormat2_s* %cov254, i32 0, i32 1
  %155 = load i16, i16* %RangeCount267, align 2, !tbaa !123
  %conv268 = zext i16 %155 to i32
  store i32 %conv268, i32* %k1266, align 4, !tbaa !7
  br label %for.cond.269

for.cond.269:                                     ; preds = %cleanup.cont.385, %if.then.253
  %156 = bitcast i32* %k270 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #2
  %157 = load i32, i32* %k0265, align 4, !tbaa !7
  %158 = load i32, i32* %k1266, align 4, !tbaa !7
  %add271 = add nsw i32 %157, %158
  %div272 = sdiv i32 %add271, 2
  store i32 %div272, i32* %k270, align 4, !tbaa !7
  %159 = bitcast %struct.RangeRecord_s* %rr to i8*
  call void @llvm.lifetime.start(i64 6, i8* %159) #2
  %160 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr273 = getelementptr inbounds i8, i8* %160, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %161 = load i32, i32* %k270, align 4, !tbaa !7
  %conv274 = sext i32 %161 to i64
  %mul275 = mul i64 6, %conv274
  %add.ptr276 = getelementptr inbounds i8, i8* %add.ptr273, i64 %mul275
  %add.ptr277 = getelementptr inbounds i8, i8* %add.ptr276, i64 0
  %arrayidx278 = getelementptr inbounds i8, i8* %add.ptr277, i64 0
  %162 = load i8, i8* %arrayidx278, align 1, !tbaa !22
  %conv279 = zext i8 %162 to i32
  %shl280 = shl i32 %conv279, 8
  %163 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr281 = getelementptr inbounds i8, i8* %163, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %164 = load i32, i32* %k270, align 4, !tbaa !7
  %conv282 = sext i32 %164 to i64
  %mul283 = mul i64 6, %conv282
  %add.ptr284 = getelementptr inbounds i8, i8* %add.ptr281, i64 %mul283
  %add.ptr285 = getelementptr inbounds i8, i8* %add.ptr284, i64 0
  %arrayidx286 = getelementptr inbounds i8, i8* %add.ptr285, i64 1
  %165 = load i8, i8* %arrayidx286, align 1, !tbaa !22
  %conv287 = zext i8 %165 to i32
  %add288 = add i32 %shl280, %conv287
  %conv289 = trunc i32 %add288 to i16
  %Start = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 0
  store i16 %conv289, i16* %Start, align 2, !tbaa !124
  %166 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr290 = getelementptr inbounds i8, i8* %166, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %167 = load i32, i32* %k270, align 4, !tbaa !7
  %conv291 = sext i32 %167 to i64
  %mul292 = mul i64 6, %conv291
  %add.ptr293 = getelementptr inbounds i8, i8* %add.ptr290, i64 %mul292
  %add.ptr294 = getelementptr inbounds i8, i8* %add.ptr293, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx295 = getelementptr inbounds i8, i8* %add.ptr294, i64 0
  %168 = load i8, i8* %arrayidx295, align 1, !tbaa !22
  %conv296 = zext i8 %168 to i32
  %shl297 = shl i32 %conv296, 8
  %169 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr298 = getelementptr inbounds i8, i8* %169, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %170 = load i32, i32* %k270, align 4, !tbaa !7
  %conv299 = sext i32 %170 to i64
  %mul300 = mul i64 6, %conv299
  %add.ptr301 = getelementptr inbounds i8, i8* %add.ptr298, i64 %mul300
  %add.ptr302 = getelementptr inbounds i8, i8* %add.ptr301, i64 sext (i32 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i32) to i64)
  %arrayidx303 = getelementptr inbounds i8, i8* %add.ptr302, i64 1
  %171 = load i8, i8* %arrayidx303, align 1, !tbaa !22
  %conv304 = zext i8 %171 to i32
  %add305 = add i32 %shl297, %conv304
  %conv306 = trunc i32 %add305 to i16
  %End = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 1
  store i16 %conv306, i16* %End, align 2, !tbaa !126
  %172 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr307 = getelementptr inbounds i8, i8* %172, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %173 = load i32, i32* %k270, align 4, !tbaa !7
  %conv308 = sext i32 %173 to i64
  %mul309 = mul i64 6, %conv308
  %add.ptr310 = getelementptr inbounds i8, i8* %add.ptr307, i64 %mul309
  %add.ptr311 = getelementptr inbounds i8, i8* %add.ptr310, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx312 = getelementptr inbounds i8, i8* %add.ptr311, i64 0
  %174 = load i8, i8* %arrayidx312, align 1, !tbaa !22
  %conv313 = zext i8 %174 to i32
  %shl314 = shl i32 %conv313, 8
  %175 = load i8*, i8** %coverage_ptr, align 8, !tbaa !1
  %add.ptr315 = getelementptr inbounds i8, i8* %175, i64 sext (i32 ptrtoint ([1 x %struct.RangeRecord_s]* getelementptr inbounds (%struct.CoverageFormat2_s, %struct.CoverageFormat2_s* null, i32 0, i32 2) to i32) to i64)
  %176 = load i32, i32* %k270, align 4, !tbaa !7
  %conv316 = sext i32 %176 to i64
  %mul317 = mul i64 6, %conv316
  %add.ptr318 = getelementptr inbounds i8, i8* %add.ptr315, i64 %mul317
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr318, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 2) to i32) to i64)
  %arrayidx320 = getelementptr inbounds i8, i8* %add.ptr319, i64 1
  %177 = load i8, i8* %arrayidx320, align 1, !tbaa !22
  %conv321 = zext i8 %177 to i32
  %add322 = add i32 %shl314, %conv321
  %conv323 = trunc i32 %add322 to i16
  %StartCoverageIndex = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 2
  store i16 %conv323, i16* %StartCoverageIndex, align 2, !tbaa !127
  %Start324 = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 0
  %178 = load i16, i16* %Start324, align 2, !tbaa !124
  %conv325 = zext i16 %178 to i32
  %179 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %cmp326 = icmp ule i32 %conv325, %179
  br i1 %cmp326, label %land.lhs.true, label %if.else.365

land.lhs.true:                                    ; preds = %for.cond.269
  %180 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %End328 = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 1
  %181 = load i16, i16* %End328, align 2, !tbaa !126
  %conv329 = zext i16 %181 to i32
  %cmp330 = icmp ule i32 %180, %conv329
  br i1 %cmp330, label %if.then.332, label %if.else.365

if.then.332:                                      ; preds = %land.lhs.true
  %182 = load i32, i32* %k270, align 4, !tbaa !7
  %RangeCount333 = getelementptr inbounds %struct.CoverageFormat2_s, %struct.CoverageFormat2_s* %cov254, i32 0, i32 1
  %183 = load i16, i16* %RangeCount333, align 2, !tbaa !123
  %conv334 = zext i16 %183 to i32
  %cmp335 = icmp sge i32 %182, %conv334
  br i1 %cmp335, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %if.then.332
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.382

if.else.338:                                      ; preds = %if.then.332
  %184 = bitcast i16* %subst_index to i8*
  call void @llvm.lifetime.start(i64 2, i8* %184) #2
  %StartCoverageIndex339 = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 2
  %185 = load i16, i16* %StartCoverageIndex339, align 2, !tbaa !127
  %conv340 = zext i16 %185 to i32
  %186 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %Start341 = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 0
  %187 = load i16, i16* %Start341, align 2, !tbaa !124
  %conv342 = zext i16 %187 to i32
  %sub343 = sub i32 %186, %conv342
  %add344 = add i32 %conv340, %sub343
  %conv345 = trunc i32 %add344 to i16
  store i16 %conv345, i16* %subst_index, align 2, !tbaa !109
  %188 = bitcast i16* %new_glyph346 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %188) #2
  %189 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr347 = getelementptr inbounds i8, i8* %189, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 3) to i32) to i64)
  %190 = load i16, i16* %subst_index, align 2, !tbaa !109
  %conv348 = zext i16 %190 to i64
  %mul349 = mul i64 2, %conv348
  %add.ptr350 = getelementptr inbounds i8, i8* %add.ptr347, i64 %mul349
  %arrayidx351 = getelementptr inbounds i8, i8* %add.ptr350, i64 0
  %191 = load i8, i8* %arrayidx351, align 1, !tbaa !22
  %conv352 = zext i8 %191 to i32
  %shl353 = shl i32 %conv352, 8
  %192 = load i8*, i8** %subtable_ptr, align 8, !tbaa !1
  %add.ptr354 = getelementptr inbounds i8, i8* %192, i64 sext (i32 trunc (i64 mul nuw (i64 ptrtoint (i16* getelementptr (i16, i16* null, i32 1) to i64), i64 3) to i32) to i64)
  %193 = load i16, i16* %subst_index, align 2, !tbaa !109
  %conv355 = zext i16 %193 to i64
  %mul356 = mul i64 2, %conv355
  %add.ptr357 = getelementptr inbounds i8, i8* %add.ptr354, i64 %mul356
  %arrayidx358 = getelementptr inbounds i8, i8* %add.ptr357, i64 1
  %194 = load i8, i8* %arrayidx358, align 1, !tbaa !22
  %conv359 = zext i8 %194 to i32
  %add360 = add i32 %shl353, %conv359
  %conv361 = trunc i32 %add360 to i16
  store i16 %conv361, i16* %new_glyph346, align 2, !tbaa !109
  %195 = load i16, i16* %new_glyph346, align 2, !tbaa !109
  %conv362 = zext i16 %195 to i32
  store i32 %conv362, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %196 = bitcast i16* %new_glyph346 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %196) #2
  %197 = bitcast i16* %subst_index to i8*
  call void @llvm.lifetime.end(i64 2, i8* %197) #2
  br label %cleanup.382

if.else.365:                                      ; preds = %land.lhs.true, %for.cond.269
  %198 = load i32, i32* %k0265, align 4, !tbaa !7
  %199 = load i32, i32* %k1266, align 4, !tbaa !7
  %sub366 = sub nsw i32 %199, 1
  %cmp367 = icmp sge i32 %198, %sub366
  br i1 %cmp367, label %if.then.369, label %if.else.371

if.then.369:                                      ; preds = %if.else.365
  %200 = load i32, i32* %k270, align 4, !tbaa !7
  %add370 = add nsw i32 %200, 0
  store i32 %add370, i32* %k270, align 4, !tbaa !7
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.382

if.else.371:                                      ; preds = %if.else.365
  %201 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %Start372 = getelementptr inbounds %struct.RangeRecord_s, %struct.RangeRecord_s* %rr, i32 0, i32 0
  %202 = load i16, i16* %Start372, align 2, !tbaa !124
  %conv373 = zext i16 %202 to i32
  %cmp374 = icmp ult i32 %201, %conv373
  br i1 %cmp374, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %if.else.371
  %203 = load i32, i32* %k270, align 4, !tbaa !7
  store i32 %203, i32* %k1266, align 4, !tbaa !7
  br label %if.end.379

if.else.377:                                      ; preds = %if.else.371
  %204 = load i32, i32* %k270, align 4, !tbaa !7
  %add378 = add nsw i32 %204, 1
  store i32 %add378, i32* %k0265, align 4, !tbaa !7
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.377, %if.then.376
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.382

cleanup.382:                                      ; preds = %if.end.381, %if.then.369, %if.else.338, %if.then.337
  %205 = bitcast %struct.RangeRecord_s* %rr to i8*
  call void @llvm.lifetime.end(i64 6, i8* %205) #2
  %206 = bitcast i32* %k270 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %cleanup.dest.384 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.384, label %cleanup.387 [
    i32 0, label %cleanup.cont.385
    i32 10, label %for.end.386
  ]

cleanup.cont.385:                                 ; preds = %cleanup.382
  br label %for.cond.269

for.end.386:                                      ; preds = %cleanup.382
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.387

cleanup.387:                                      ; preds = %for.end.386, %cleanup.382
  %207 = bitcast i32* %k1266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #2
  %208 = bitcast i32* %k0265 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %cleanup.dest.389 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.389, label %cleanup.391 [
    i32 0, label %cleanup.cont.390
  ]

cleanup.cont.390:                                 ; preds = %cleanup.387
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.391

cleanup.391:                                      ; preds = %cleanup.cont.390, %cleanup.387
  %209 = bitcast %struct.CoverageFormat2_s* %cov254 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %209) #2
  %cleanup.dest.392 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.392, label %cleanup.397 [
    i32 0, label %cleanup.cont.393
  ]

cleanup.cont.393:                                 ; preds = %cleanup.391
  br label %if.end.395

if.else.394:                                      ; preds = %if.else.249
  br label %if.end.395

if.end.395:                                       ; preds = %if.else.394, %cleanup.cont.393
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %cleanup.cont.248
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.397

cleanup.397:                                      ; preds = %if.end.396, %cleanup.391, %cleanup.246
  %210 = bitcast i16* %coverage_format to i8*
  call void @llvm.lifetime.end(i64 2, i8* %210) #2
  %211 = bitcast i8** %coverage_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #2
  %212 = bitcast %struct.SingleSubstFormat2_s* %subst135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #2
  %cleanup.dest.400 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.400, label %cleanup.403 [
    i32 0, label %cleanup.cont.401
  ]

cleanup.cont.401:                                 ; preds = %cleanup.397
  br label %if.end.402

if.end.402:                                       ; preds = %cleanup.cont.401, %if.then.116
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.403

cleanup.403:                                      ; preds = %if.end.402, %cleanup.397
  %213 = bitcast i16* %format to i8*
  call void @llvm.lifetime.end(i64 2, i8* %213) #2
  %214 = bitcast i8** %subtable_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #2
  %cleanup.dest.405 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.405, label %cleanup.408 [
    i32 0, label %cleanup.cont.406
  ]

cleanup.cont.406:                                 ; preds = %cleanup.403
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.406
  %215 = load i32, i32* %j, align 4, !tbaa !7
  %inc = add nsw i32 %215, 1
  store i32 %inc, i32* %j, align 4, !tbaa !7
  br label %for.cond.86

for.end.407:                                      ; preds = %for.cond.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.408

cleanup.408:                                      ; preds = %for.end.407, %cleanup.403
  %216 = bitcast i8** %subtable_offset_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  %cleanup.dest.409 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.409, label %cleanup.412 [
    i32 0, label %cleanup.cont.410
  ]

cleanup.cont.410:                                 ; preds = %cleanup.408
  br label %if.end.411

if.end.411:                                       ; preds = %cleanup.cont.410, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.412

cleanup.412:                                      ; preds = %if.end.411, %cleanup.408
  %217 = bitcast %struct.LookupTable_s* %lookup_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = bitcast i8** %lookup_table_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %219 = bitcast i8** %lookup_table_offset_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %cleanup.dest.415 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.415, label %cleanup.420 [
    i32 0, label %cleanup.cont.416
  ]

cleanup.cont.416:                                 ; preds = %cleanup.412
  br label %for.inc.417

for.inc.417:                                      ; preds = %cleanup.cont.416
  %220 = load i32, i32* %i, align 4, !tbaa !7
  %inc418 = add nsw i32 %220, 1
  store i32 %inc418, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end.419:                                      ; preds = %for.cond
  %221 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  store i32 %221, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.420

cleanup.420:                                      ; preds = %for.end.419, %cleanup.412, %if.then
  %222 = bitcast i8** %lookup_list_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast %struct.LookupListTable_s* %lookup_list_table to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast %struct.GSUB_s* %gsub1 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %224) #2
  %225 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  %226 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i8** %gsub_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = load i32, i32* %retval
  ret i32 %228
}

declare i32 @gx_lookup_fm_pair(%struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32, %struct.cached_fm_pair_s**) #0

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @append_outline_fitted(i32 %glyph_index, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, %struct.cached_fm_pair_s* %pair, %struct.gs_log2_scale_point_s* %pscale, i32 %design_grid) #1 {
entry:
  %glyph_index.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !7
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %1, i32 0, i32 0
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !128
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %3, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %5, i32 0, i32 14
  %6 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr, align 8, !tbaa !130
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  call void @gx_ttfReader__set_font(%struct.gx_ttfReader_s* %6, %struct.gs_font_type42_s* %7) #6
  %8 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %8, i32 0, i32 13
  %9 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !131
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr1 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %10, i32 0, i32 14
  %11 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr1, align 8, !tbaa !130
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %13 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %15 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %17 = load i32, i32* %design_grid.addr, align 4, !tbaa !7
  %call = call i32 @gx_ttf_outline(%struct.ttfFont_s* %9, %struct.gx_ttfReader_s* %11, %struct.gs_font_type42_s* %12, i32 %13, %struct.gs_matrix_s* %14, %struct.gs_log2_scale_point_s* %15, %struct.gx_path_s* %16, i32 %17) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr2 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %18, i32 0, i32 14
  %19 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr2, align 8, !tbaa !130
  call void @gx_ttfReader__set_font(%struct.gx_ttfReader_s* %19, %struct.gs_font_type42_s* null) #6
  %20 = load i32, i32* %code, align 4, !tbaa !7
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %20
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type42_glyph_info_by_gid(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info, i32 %glyph_index) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %default_members = alloca i32, align 4
  %outline = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %sbw = alloca [4 x float], align 16
  %pieces = alloca i64*, align 8
  %code73 = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !7
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and = and i32 %4, -252
  store i32 %and, i32* %default_members, align 4, !tbaa !7
  %5 = bitcast %struct.gs_glyph_data_s* %outline to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %code, align 4, !tbaa !7
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %outline, i32 0, i32 3
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory1, align 8, !tbaa !78
  %9 = load i32, i32* %default_members, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %13 = load i32, i32* %default_members, align 4, !tbaa !7
  %14 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @gs_default_glyph_info(%struct.gs_font_s* %10, i64 %11, %struct.gs_matrix_s* %12, i32 %13, %struct.gs_glyph_info_s* %14) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %15 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %17, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 3
  %18 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !55
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %20 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %call3 = call i32 %18(%struct.gs_font_type42_s* %19, i32 %20, %struct.gs_glyph_data_s* %outline) #6
  store i32 %call3, i32* %code, align 4, !tbaa !7
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %21 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.else.6:                                        ; preds = %if.else
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %outline, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0)) #6
  %22 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members7 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %22, i32 0, i32 0
  store i32 0, i32* %members7, align 4, !tbaa !132
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %23 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and10 = and i32 %23, 3
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.66

if.then.12:                                       ; preds = %if.end.9
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %cmp13 = icmp slt i32 %25, 2
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %members.addr, align 4, !tbaa !7
  %27 = load i32, i32* %i, align 4, !tbaa !7
  %shl = shl i32 1, %27
  %and14 = and i32 %26, %shl
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.62

if.then.16:                                       ; preds = %for.body
  %28 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #2
  %29 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data17 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %29, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data17, i32 0, i32 4
  %30 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !56
  %31 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %32 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %33 = load i32, i32* %i, align 4, !tbaa !7
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call18 = call i32 %30(%struct.gs_font_type42_s* %31, i32 %32, i32 %33, float* %arraydecay) #6
  store i32 %call18, i32* %code, align 4, !tbaa !7
  %34 = load i32, i32* %code, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %34, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  store i32 0, i32* %code, align 4, !tbaa !7
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool22 = icmp ne %struct.gs_matrix_s* %35, null
  br i1 %tobool22, label %if.then.23, label %if.else.37

if.then.23:                                       ; preds = %if.end.21
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 2
  %36 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fpext float %36 to double
  %arrayidx24 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 3
  %37 = load float, float* %arrayidx24, align 4, !tbaa !69
  %conv25 = fpext float %37 to double
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %40, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %call27 = call i32 @gs_point_transform(double %conv, double %conv25, %struct.gs_matrix_s* %38, %struct.gs_point_s* %arrayidx26) #6
  store i32 %call27, i32* %code, align 4, !tbaa !7
  %41 = load i32, i32* %code, align 4, !tbaa !7
  %cmp28 = icmp slt i32 %41, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.23
  %42 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.23
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 0
  %43 = load float, float* %arrayidx32, align 4, !tbaa !69
  %conv33 = fpext float %43 to double
  %arrayidx34 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 1
  %44 = load float, float* %arrayidx34, align 4, !tbaa !69
  %conv35 = fpext float %44 to double
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %46 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %46, i32 0, i32 2
  %call36 = call i32 @gs_point_transform(double %conv33, double %conv35, %struct.gs_matrix_s* %45, %struct.gs_point_s* %v) #6
  store i32 %call36, i32* %code, align 4, !tbaa !7
  br label %if.end.56

if.else.37:                                       ; preds = %if.end.21
  %arrayidx38 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 2
  %47 = load float, float* %arrayidx38, align 4, !tbaa !69
  %conv39 = fpext float %47 to double
  %48 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom40 = sext i32 %48 to i64
  %49 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width41 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %49, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width41, i32 0, i64 %idxprom40
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx42, i32 0, i32 0
  store double %conv39, double* %x, align 8, !tbaa !75
  %arrayidx43 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 3
  %50 = load float, float* %arrayidx43, align 4, !tbaa !69
  %conv44 = fpext float %50 to double
  %51 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom45 = sext i32 %51 to i64
  %52 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width46 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %52, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width46, i32 0, i64 %idxprom45
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx47, i32 0, i32 1
  store double %conv44, double* %y, align 8, !tbaa !77
  %arrayidx48 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 0
  %53 = load float, float* %arrayidx48, align 4, !tbaa !69
  %conv49 = fpext float %53 to double
  %54 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v50 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %54, i32 0, i32 2
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v50, i32 0, i32 0
  store double %conv49, double* %x51, align 8, !tbaa !134
  %arrayidx52 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 1
  %55 = load float, float* %arrayidx52, align 4, !tbaa !69
  %conv53 = fpext float %55 to double
  %56 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v54 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %56, i32 0, i32 2
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v54, i32 0, i32 1
  store double %conv53, double* %y55, align 8, !tbaa !135
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.37, %if.end.31
  %57 = load i32, i32* %i, align 4, !tbaa !7
  %shl57 = shl i32 64, %57
  %58 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members58 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %58, i32 0, i32 0
  %59 = load i32, i32* %members58, align 4, !tbaa !132
  %or = or i32 %59, %shl57
  store i32 %or, i32* %members58, align 4, !tbaa !132
  %60 = load i32, i32* %i, align 4, !tbaa !7
  %shl59 = shl i32 1, %60
  %61 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members60 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %61, i32 0, i32 0
  %62 = load i32, i32* %members60, align 4, !tbaa !132
  %or61 = or i32 %62, %shl59
  store i32 %or61, i32* %members60, align 4, !tbaa !132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.30, %if.then.20
  %63 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.62

if.end.62:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62, %cleanup
  %64 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %for.end, %cleanup
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %cleanup.dest.64 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.64, label %cleanup.87 [
    i32 0, label %cleanup.cont.65
  ]

cleanup.cont.65:                                  ; preds = %cleanup.63
  br label %if.end.66

if.end.66:                                        ; preds = %cleanup.cont.65, %if.end.9
  %66 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and67 = and i32 %66, 24
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %if.end.66
  %67 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and70 = and i32 %68, 16
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.69
  %69 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %pieces72 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %69, i32 0, i32 5
  %70 = load i64*, i64** %pieces72, align 8, !tbaa !136
  br label %cond.end

cond.false:                                       ; preds = %if.then.69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %70, %cond.true ], [ null, %cond.false ]
  store i64* %cond, i64** %pieces, align 8, !tbaa !1
  %71 = bitcast i32* %code73 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %73 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %74 = load i64*, i64** %pieces, align 8, !tbaa !1
  %75 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %75, i32 0, i32 4
  %call74 = call i32 @parse_pieces(%struct.gs_font_type42_s* %72, i64 %73, i64* %74, i32* %num_pieces) #6
  store i32 %call74, i32* %code73, align 4, !tbaa !7
  %76 = load i32, i32* %code73, align 4, !tbaa !7
  %cmp75 = icmp slt i32 %76, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %cond.end
  %77 = load i32, i32* %code73, align 4, !tbaa !7
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.78:                                        ; preds = %cond.end
  %78 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and79 = and i32 %78, 24
  %79 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members80 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %79, i32 0, i32 0
  %80 = load i32, i32* %members80, align 4, !tbaa !132
  %or81 = or i32 %80, %and79
  store i32 %or81, i32* %members80, align 4, !tbaa !132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.78, %if.then.77
  %81 = bitcast i32* %code73 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.87 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.82
  br label %if.end.86

if.end.86:                                        ; preds = %cleanup.cont.85, %if.end.66
  %83 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %cleanup.82, %cleanup.63, %if.then.5, %if.then.2
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct.gs_glyph_data_s* %outline to i8*
  call void @llvm.lifetime.end(i64 48, i8* %85) #2
  %86 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare i32 @gs_default_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #0

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #0

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @parse_pieces(%struct.gs_font_type42_s* %pfont, i64 %glyph, i64* %pieces, i32* %pnum_pieces) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pieces.addr = alloca i64*, align 8
  %pnum_pieces.addr = alloca i32*, align 8
  %glyph_index = alloca i32, align 4
  %glyph_data = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %flags = alloca i32, align 4
  %gdata = alloca i8*, align 8
  %mat = alloca %struct.gs_matrix_fixed_s, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store i64* %pieces, i64** %pieces.addr, align 8, !tbaa !1
  store i32* %pnum_pieces, i32** %pnum_pieces.addr, align 8, !tbaa !1
  %0 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %1, 3221225472
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %sub = sub i64 %2, 3221225472
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %3, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  %4 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !54
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %call = call i32 %4(%struct.gs_font_type42_s* %5, i64 %6) #6
  %conv = zext i32 %call to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %conv, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  store i32 %conv1, i32* %glyph_index, align 4, !tbaa !7
  %7 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %memory2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory2, align 8, !tbaa !78
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data3, i32 0, i32 3
  %12 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !55
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %14 = load i32, i32* %glyph_index, align 4, !tbaa !7
  %call4 = call i32 %12(%struct.gs_font_type42_s* %13, i32 %14, %struct.gs_glyph_data_s* %glyph_data) #6
  store i32 %call4, i32* %code, align 4, !tbaa !7
  %15 = load i32, i32* %code, align 4, !tbaa !7
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !83
  %cmp7 = icmp ne i32 %17, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %bits9 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits9, i32 0, i32 0
  %18 = load i8*, i8** %data10, align 8, !tbaa !81
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv11 = zext i8 %19 to i32
  %shl = shl i32 %conv11, 8
  %bits12 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits12, i32 0, i32 0
  %20 = load i8*, i8** %data13, align 8, !tbaa !81
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx14, align 1, !tbaa !22
  %conv15 = zext i8 %21 to i32
  %add = add i32 %shl, %conv15
  %xor = xor i32 %add, 32768
  %sub16 = sub i32 %xor, 32768
  %cmp17 = icmp eq i32 %sub16, -1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  %23 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 32, i32* %flags, align 4, !tbaa !7
  %24 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %bits20 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data21 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits20, i32 0, i32 0
  %25 = load i8*, i8** %data21, align 8, !tbaa !81
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 10
  store i8* %add.ptr, i8** %gdata, align 8, !tbaa !1
  %26 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %26) #2
  %27 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  %call22 = call i8* @memset(i8* %27, i32 0, i64 36) #7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %28 = load i32, i32* %flags, align 4, !tbaa !7
  %and = and i32 %28, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64*, i64** %pieces.addr, align 8, !tbaa !1
  %tobool23 = icmp ne i64* %29, null
  br i1 %tobool23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %for.body
  %30 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %30, i64 2
  %arrayidx26 = getelementptr inbounds i8, i8* %add.ptr25, i64 0
  %31 = load i8, i8* %arrayidx26, align 1, !tbaa !22
  %conv27 = zext i8 %31 to i32
  %shl28 = shl i32 %conv27, 8
  %32 = load i8*, i8** %gdata, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %32, i64 2
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 1
  %33 = load i8, i8* %arrayidx30, align 1, !tbaa !22
  %conv31 = zext i8 %33 to i32
  %add32 = add i32 %shl28, %conv31
  %conv33 = zext i32 %add32 to i64
  %add34 = add i64 %conv33, 3221225472
  %34 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %34 to i64
  %35 = load i64*, i64** %pieces.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i64, i64* %35, i64 %idxprom
  store i64 %add34, i64* %arrayidx35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.24, %for.body
  %36 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  call void @gs_type42_parse_component(i8** %gdata, i32* %flags, %struct.gs_matrix_fixed_s* %mat, i32* null, %struct.gs_font_type42_s* %36, %struct.gs_matrix_fixed_s* %mat) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %i, align 4, !tbaa !7
  %39 = load i32*, i32** %pnum_pieces.addr, align 8, !tbaa !1
  store i32 %38, i32* %39, align 4, !tbaa !7
  %40 = bitcast %struct.gs_matrix_fixed_s* %mat to i8*
  call void @llvm.lifetime.end(i64 36, i8* %40) #2
  %41 = bitcast i8** %gdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %if.end
  %44 = load i32*, i32** %pnum_pieces.addr, align 8, !tbaa !1
  store i32 0, i32* %44, align 4, !tbaa !7
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %for.end
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.end(i64 48, i8* %46) #2
  %47 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_glyph_metrics(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %wmode, float* %sbw) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %wmode.addr = alloca i32, align 4
  %sbw.addr = alloca float*, align 8
  %factor = alloca double, align 8
  %width = alloca i32, align 4
  %lsb = alloca i32, align 4
  %code = alloca i32, align 4
  %pmtx = alloca %struct.gs_type42_mtx_s*, align 8
  %num_metrics = alloca i32, align 4
  %pmetrics = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %offset25 = alloca i32, align 4
  %glyph_offset = alloca i32, align 4
  %plsb = alloca [2 x i8], align 1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !7
  store float* %sbw, float** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 8
  %2 = load i32, i32* %unitsPerEm, align 4, !tbaa !31
  %conv = uitofp i32 %2 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %factor, align 8, !tbaa !84
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %lsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.gs_type42_mtx_s** %pmtx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %wmode.addr, align 4, !tbaa !7
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %8, i32 0, i32 29
  %metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data1, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %metrics, i32 0, i64 %idxprom
  store %struct.gs_type42_mtx_s* %arrayidx, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %9 = bitcast i32* %num_metrics to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %10, i32 0, i32 0
  %11 = load i32, i32* %numMetrics, align 4, !tbaa !33
  store i32 %11, i32* %num_metrics, align 4, !tbaa !7
  %12 = bitcast [4 x i8]* %pmetrics to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %13, i32 0, i32 2
  %14 = load i32, i32* %length, align 4, !tbaa !36
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %16 = load i32, i32* %num_metrics, align 4, !tbaa !7
  %cmp3 = icmp ult i32 %15, %16
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %18 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %18, i32 0, i32 1
  %19 = load i64, i64* %offset, align 8, !tbaa !35
  %20 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %mul = mul i32 %20, 4
  %conv6 = zext i32 %mul to i64
  %add = add i64 %19, %conv6
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %17, i64 %add, i32 4, i8* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %21 = load i32, i32* %code, align 4, !tbaa !7
  %cmp7 = icmp slt i32 %21, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %22 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.10:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i64 0
  %23 = load i8, i8* %arrayidx11, align 1, !tbaa !22
  %conv12 = zext i8 %23 to i32
  %shl = shl i32 %conv12, 8
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i64 1
  %24 = load i8, i8* %arrayidx13, align 1, !tbaa !22
  %conv14 = zext i8 %24 to i32
  %add15 = add i32 %shl, %conv14
  store i32 %add15, i32* %width, align 4, !tbaa !7
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %25 = load i8, i8* %arrayidx17, align 1, !tbaa !22
  %conv18 = zext i8 %25 to i32
  %shl19 = shl i32 %conv18, 8
  %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i32 0
  %add.ptr21 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %arrayidx22 = getelementptr inbounds i8, i8* %add.ptr21, i64 1
  %26 = load i8, i8* %arrayidx22, align 1, !tbaa !22
  %conv23 = zext i8 %26 to i32
  %add24 = add i32 %shl19, %conv23
  %xor = xor i32 %add24, 32768
  %sub = sub i32 %xor, 32768
  store i32 %sub, i32* %lsb, align 4, !tbaa !7
  br label %if.end.78

if.else:                                          ; preds = %if.end
  %27 = bitcast i32* %offset25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %offset26 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %28, i32 0, i32 1
  %29 = load i64, i64* %offset26, align 8, !tbaa !35
  %30 = load i32, i32* %num_metrics, align 4, !tbaa !7
  %mul27 = mul i32 %30, 4
  %conv28 = zext i32 %mul27 to i64
  %add29 = add i64 %29, %conv28
  %conv30 = trunc i64 %add29 to i32
  store i32 %conv30, i32* %offset25, align 4, !tbaa !7
  %31 = bitcast i32* %glyph_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %33 = load i32, i32* %num_metrics, align 4, !tbaa !7
  %sub31 = sub i32 %32, %33
  %mul32 = mul i32 %sub31, 2
  store i32 %mul32, i32* %glyph_offset, align 4, !tbaa !7
  %34 = bitcast [2 x i8]* %plsb to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #2
  br label %do.body.33

do.body.33:                                       ; preds = %if.else
  %35 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %36 = load i32, i32* %offset25, align 4, !tbaa !7
  %sub34 = sub i32 %36, 4
  %conv35 = zext i32 %sub34 to i64
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i32 0
  %call37 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %35, i64 %conv35, i32 4, i8* %arraydecay36) #6
  store i32 %call37, i32* %code, align 4, !tbaa !7
  %37 = load i32, i32* %code, align 4, !tbaa !7
  %cmp38 = icmp slt i32 %37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %do.body.33
  %38 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %do.body.33
  br label %do.cond.42

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i64 0
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !22
  %conv45 = zext i8 %39 to i32
  %shl46 = shl i32 %conv45, 8
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %pmetrics, i32 0, i64 1
  %40 = load i8, i8* %arrayidx47, align 1, !tbaa !22
  %conv48 = zext i8 %40 to i32
  %add49 = add i32 %shl46, %conv48
  store i32 %add49, i32* %width, align 4, !tbaa !7
  %41 = load i32, i32* %glyph_offset, align 4, !tbaa !7
  %42 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %length50 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %42, i32 0, i32 2
  %43 = load i32, i32* %length50, align 4, !tbaa !36
  %cmp51 = icmp uge i32 %41, %43
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %do.end.43
  %44 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx, align 8, !tbaa !1
  %length54 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %44, i32 0, i32 2
  %45 = load i32, i32* %length54, align 4, !tbaa !36
  %sub55 = sub i32 %45, 2
  store i32 %sub55, i32* %glyph_offset, align 4, !tbaa !7
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %do.end.43
  br label %do.body.57

do.body.57:                                       ; preds = %if.end.56
  %46 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %47 = load i32, i32* %offset25, align 4, !tbaa !7
  %48 = load i32, i32* %glyph_offset, align 4, !tbaa !7
  %add58 = add i32 %47, %48
  %conv59 = zext i32 %add58 to i64
  %arraydecay60 = getelementptr inbounds [2 x i8], [2 x i8]* %plsb, i32 0, i32 0
  %call61 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %46, i64 %conv59, i32 2, i8* %arraydecay60) #6
  store i32 %call61, i32* %code, align 4, !tbaa !7
  %49 = load i32, i32* %code, align 4, !tbaa !7
  %cmp62 = icmp slt i32 %49, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.body.57
  %50 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %do.body.57
  br label %do.cond.66

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %arrayidx68 = getelementptr inbounds [2 x i8], [2 x i8]* %plsb, i32 0, i64 0
  %51 = load i8, i8* %arrayidx68, align 1, !tbaa !22
  %conv69 = zext i8 %51 to i32
  %shl70 = shl i32 %conv69, 8
  %arrayidx71 = getelementptr inbounds [2 x i8], [2 x i8]* %plsb, i32 0, i64 1
  %52 = load i8, i8* %arrayidx71, align 1, !tbaa !22
  %conv72 = zext i8 %52 to i32
  %add73 = add i32 %shl70, %conv72
  %xor74 = xor i32 %add73, 32768
  %sub75 = sub i32 %xor74, 32768
  store i32 %sub75, i32* %lsb, align 4, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.67, %if.then.64, %if.then.40
  %53 = bitcast [2 x i8]* %plsb to i8*
  call void @llvm.lifetime.end(i64 2, i8* %53) #2
  %54 = bitcast i32* %glyph_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %offset25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.78

if.end.78:                                        ; preds = %cleanup.cont, %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.78, %cleanup, %if.then.9, %if.then
  %56 = bitcast [4 x i8]* %pmetrics to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %num_metrics to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct.gs_type42_mtx_s** %pmtx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %cleanup.dest.82 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.82, label %cleanup.108 [
    i32 0, label %cleanup.cont.83
  ]

cleanup.cont.83:                                  ; preds = %cleanup.79
  %59 = load i32, i32* %wmode.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.84, label %if.else.96

if.then.84:                                       ; preds = %cleanup.cont.83
  %60 = load double, double* %factor, align 8, !tbaa !84
  %sub85 = fsub double -0.000000e+00, %60
  store double %sub85, double* %factor, align 8, !tbaa !84
  %61 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds float, float* %61, i64 0
  store float 0.000000e+00, float* %arrayidx86, align 4, !tbaa !69
  %62 = load i32, i32* %lsb, align 4, !tbaa !7
  %conv87 = sitofp i32 %62 to double
  %63 = load double, double* %factor, align 8, !tbaa !84
  %mul88 = fmul double %conv87, %63
  %conv89 = fptrunc double %mul88 to float
  %64 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds float, float* %64, i64 1
  store float %conv89, float* %arrayidx90, align 4, !tbaa !69
  %65 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds float, float* %65, i64 2
  store float 0.000000e+00, float* %arrayidx91, align 4, !tbaa !69
  %66 = load i32, i32* %width, align 4, !tbaa !7
  %conv92 = uitofp i32 %66 to double
  %67 = load double, double* %factor, align 8, !tbaa !84
  %mul93 = fmul double %conv92, %67
  %conv94 = fptrunc double %mul93 to float
  %68 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds float, float* %68, i64 3
  store float %conv94, float* %arrayidx95, align 4, !tbaa !69
  br label %if.end.107

if.else.96:                                       ; preds = %cleanup.cont.83
  %69 = load i32, i32* %lsb, align 4, !tbaa !7
  %conv97 = sitofp i32 %69 to double
  %70 = load double, double* %factor, align 8, !tbaa !84
  %mul98 = fmul double %conv97, %70
  %conv99 = fptrunc double %mul98 to float
  %71 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds float, float* %71, i64 0
  store float %conv99, float* %arrayidx100, align 4, !tbaa !69
  %72 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds float, float* %72, i64 1
  store float 0.000000e+00, float* %arrayidx101, align 4, !tbaa !69
  %73 = load i32, i32* %width, align 4, !tbaa !7
  %conv102 = uitofp i32 %73 to double
  %74 = load double, double* %factor, align 8, !tbaa !84
  %mul103 = fmul double %conv102, %74
  %conv104 = fptrunc double %mul103 to float
  %75 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds float, float* %75, i64 2
  store float %conv104, float* %arrayidx105, align 4, !tbaa !69
  %76 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds float, float* %76, i64 3
  store float 0.000000e+00, float* %arrayidx106, align 4, !tbaa !69
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.96, %if.then.84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.107, %cleanup.79
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %lsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_get_metrics(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, float* %sbw) #1 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %sbw.addr = alloca float*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store float* %sbw, float** %sbw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %0, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 4
  %1 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !56
  %2 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %3 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %4 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %4, i32 0, i32 16
  %5 = load i32, i32* %WMode, align 4, !tbaa !137
  %6 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gs_font_type42_s* %2, i32 %3, i32 %5, float* %6) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_type42_append(i32 %glyph_index, %struct.gs_state_s* %pgs, %struct.gx_path_s* %ppath, %struct.gs_text_enum_s* %penum, %struct.gs_font_s* %pfont, i32 %charpath_flag) #1 {
entry:
  %retval = alloca i32, align 4
  %glyph_index.addr = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %charpath_flag.addr = alloca i32, align 4
  %pscale = alloca %struct.gs_log2_scale_point_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %code = alloca i32, align 4
  %penum_s = alloca %struct.gs_show_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !7
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 %charpath_flag, i32* %charpath_flag.addr, align 4, !tbaa !7
  %0 = bitcast %struct.gs_log2_scale_point_s** %pscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 15
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %pscale, align 8, !tbaa !1
  %2 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pair1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 16
  %4 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair1, align 8, !tbaa !138
  store %struct.cached_fm_pair_s* %4, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %glyph_index.addr, align 4, !tbaa !7
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 5
  %8 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %11 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale, align 8, !tbaa !1
  %12 = load i32, i32* %charpath_flag.addr, align 4, !tbaa !7
  %call = call i32 @append_outline_fitted(i32 %6, %struct.gs_matrix_s* %8, %struct.gx_path_s* %9, %struct.cached_fm_pair_s* %10, %struct.gs_log2_scale_point_s* %11, i32 %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %13 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 74
  %15 = load i32, i32* %in_cachedevice, align 4, !tbaa !145
  %cmp2 = icmp eq i32 %15, 3
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.then
  %16 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_text_enum_s* %17 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %18, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 47
  %20 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !154
  %cmp4 = icmp ne %struct.cached_char_s* %20, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 3
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !158
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %23, i32 0, i32 47
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %cc6, align 8, !tbaa !154
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %22, %struct.cached_char_s* %24) #6
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc7 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 47
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc7, align 8, !tbaa !154
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %26 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %27 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %entry
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gs_state_s* %28 to %struct.gs_imager_state_s*
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call10 = call i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s* %29, %struct.gx_path_s* %30) #6
  store i32 %call10, i32* %code, align 4, !tbaa !7
  %31 = load i32, i32* %code, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %31, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %32 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gs_state_s* %33 to %struct.gs_imager_state_s*
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_state_s* %35 to %struct.gs_imager_state_s*
  %call14 = call double @gs_char_flatness(%struct.gs_imager_state_s* %36, double 1.000000e+00) #6
  %call15 = call i32 @gs_imager_setflat(%struct.gs_imager_state_s* %34, double %call14) #6
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.end.8
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gs_log2_scale_point_s** %pscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare void @gx_free_cached_char(%struct.gs_font_dir_s*, %struct.cached_char_s*) #0

declare i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s*, %struct.gx_path_s*) #0

declare i32 @gs_imager_setflat(%struct.gs_imager_state_s*, double) #0

declare double @gs_char_flatness(%struct.gs_imager_state_s*, double) #0

; Function Attrs: nounwind uwtable
define i32 @gs_truetype_font_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  %fstype = alloca [2 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !7
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %2, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members1 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %4, i32 0, i32 0
  %5 = load i32, i32* %members1, align 4, !tbaa !159
  %and = and i32 %5, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and2 = and i32 %6, 16384
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 29
  %os2_offset = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 13
  %8 = load i64, i64* %os2_offset, align 8, !tbaa !44
  %cmp = icmp ne i64 %8, 0
  br i1 %cmp, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.then
  %9 = bitcast [2 x i8]* %fstype to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %os2_offset6 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data5, i32 0, i32 13
  %12 = load i64, i64* %os2_offset6, align 8, !tbaa !44
  %add = add i64 %12, 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %fstype, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %10, i64 %add, i32 2, i8* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %13 = load i32, i32* %code, align 4, !tbaa !7
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %do.body
  %14 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %fstype, i32 0, i64 0
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %15 to i32
  %shl = shl i32 %conv, 8
  %arrayidx9 = getelementptr inbounds [2 x i8], [2 x i8]* %fstype, i32 0, i64 1
  %16 = load i8, i8* %arrayidx9, align 1, !tbaa !22
  %conv10 = zext i8 %16 to i32
  %add11 = add i32 %shl, %conv10
  %17 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %EmbeddingRights = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %17, i32 0, i32 22
  store i32 %add11, i32* %EmbeddingRights, align 4, !tbaa !162
  %18 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members12 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %18, i32 0, i32 0
  %19 = load i32, i32* %members12, align 4, !tbaa !159
  %or = or i32 %19, 16384
  store i32 %or, i32* %members12, align 4, !tbaa !159
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.8
  %20 = bitcast [2 x i8]* %fstype to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.end.13:                                        ; preds = %cleanup.cont, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %entry
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %21, i32 0, i32 29
  %name_offset = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data15, i32 0, i32 12
  %22 = load i64, i64* %name_offset, align 8, !tbaa !43
  %cmp16 = icmp eq i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.19:                                        ; preds = %if.end.14
  %23 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members20 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %23, i32 0, i32 0
  %24 = load i32, i32* %members20, align 4, !tbaa !159
  %and21 = and i32 %24, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end.32, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end.19
  %25 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and24 = and i32 %25, 64
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %land.lhs.true.23
  %26 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %27 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %28 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %28, i32 0, i32 18
  %call27 = call i32 @get_from_names_table(%struct.gs_font_type42_s* %26, %struct.gs_font_info_s* %27, %struct.gs_const_string_s* %Copyright, i32 64, i32 0) #6
  store i32 %call27, i32* %code, align 4, !tbaa !7
  %29 = load i32, i32* %code, align 4, !tbaa !7
  %cmp28 = icmp slt i32 %29, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %30 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.31:                                        ; preds = %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true.23, %if.end.19
  %31 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members33 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %31, i32 0, i32 0
  %32 = load i32, i32* %members33, align 4, !tbaa !159
  %and34 = and i32 %32, 4096
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.45, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %if.end.32
  %33 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and37 = and i32 %33, 4096
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true.36
  %34 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %35 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %36 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %36, i32 0, i32 20
  %call40 = call i32 @get_from_names_table(%struct.gs_font_type42_s* %34, %struct.gs_font_info_s* %35, %struct.gs_const_string_s* %FamilyName, i32 4096, i32 1) #6
  store i32 %call40, i32* %code, align 4, !tbaa !7
  %37 = load i32, i32* %code, align 4, !tbaa !7
  %cmp41 = icmp slt i32 %37, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  %38 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.44:                                        ; preds = %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.36, %if.end.32
  %39 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members46 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %39, i32 0, i32 0
  %40 = load i32, i32* %members46, align 4, !tbaa !159
  %and47 = and i32 %40, 8192
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end.58, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end.45
  %41 = load i32, i32* %members.addr, align 4, !tbaa !7
  %and50 = and i32 %41, 8192
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %land.lhs.true.49
  %42 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %43 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %44 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %44, i32 0, i32 21
  %call53 = call i32 @get_from_names_table(%struct.gs_font_type42_s* %42, %struct.gs_font_info_s* %43, %struct.gs_const_string_s* %FullName, i32 8192, i32 4) #6
  store i32 %call53, i32* %code, align 4, !tbaa !7
  %45 = load i32, i32* %code, align 4, !tbaa !7
  %cmp54 = icmp slt i32 %45, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.52
  %46 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.57:                                        ; preds = %if.then.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.49, %if.end.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.58, %if.then.56, %if.then.43, %if.then.30, %if.then.18, %cleanup
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @get_from_names_table(%struct.gs_font_type42_s* %pfont, %struct.gs_font_info_s* %info, %struct.gs_const_string_s* %pmember, i32 %member, i32 %name_id) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %pmember.addr = alloca %struct.gs_const_string_s*, align 8
  %member.addr = alloca i32, align 4
  %name_id.addr = alloca i32, align 4
  %string_proc = alloca i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, align 8
  %t = alloca [12 x i8], align 1
  %num_records = alloca i16, align 2
  %strings_offset = alloca i16, align 2
  %i = alloca i16, align 2
  %language_id = alloca i16, align 2
  %length0 = alloca i16, align 2
  %offset0 = alloca i16, align 2
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %platformID = alloca i16, align 2
  %specificID = alloca i16, align 2
  %languageID = alloca i16, align 2
  %nameID = alloca i16, align 2
  %length = alloca i16, align 2
  %offset = alloca i16, align 2
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pmember, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  store i32 %member, i32* %member.addr, align 4, !tbaa !7
  store i32 %name_id, i32* %name_id.addr, align 4, !tbaa !7
  %0 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %string_proc1 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %2 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc1, align 8, !tbaa !9
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* %2, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %3 = bitcast [12 x i8]* %t to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  %4 = bitcast i16* %num_records to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16* %strings_offset to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %language_id to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  store i16 -1, i16* %language_id, align 2, !tbaa !109
  %8 = bitcast i16* %length0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  store i16 0, i16* %length0, align 2, !tbaa !109
  %9 = bitcast i16* %offset0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  store i16 0, i16* %offset0, align 2, !tbaa !109
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %12, i32 0, i32 29
  %name_offset = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 12
  %13 = load i64, i64* %name_offset, align 8, !tbaa !43
  %add = add i64 %13, 2
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %11, i64 %add, i32 4, i8* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !7
  %14 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %15 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i64 1
  %17 = load i8, i8* %arrayidx3, align 1, !tbaa !22
  %conv4 = zext i8 %17 to i32
  %add5 = add i32 %shl, %conv4
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %num_records, align 2, !tbaa !109
  %arraydecay7 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %arrayidx8 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %18 = load i8, i8* %arrayidx8, align 1, !tbaa !22
  %conv9 = zext i8 %18 to i32
  %shl10 = shl i32 %conv9, 8
  %arraydecay11 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %19 = load i8, i8* %arrayidx13, align 1, !tbaa !22
  %conv14 = zext i8 %19 to i32
  %add15 = add i32 %shl10, %conv14
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, i16* %strings_offset, align 2, !tbaa !109
  store i16 0, i16* %i, align 2, !tbaa !109
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %20 = load i16, i16* %i, align 2, !tbaa !109
  %conv17 = zext i16 %20 to i32
  %21 = load i16, i16* %num_records, align 2, !tbaa !109
  %conv18 = zext i16 %21 to i32
  %cmp19 = icmp slt i32 %conv17, %conv18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast i16* %platformID to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #2
  %23 = bitcast i16* %specificID to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #2
  %24 = bitcast i16* %languageID to i8*
  call void @llvm.lifetime.start(i64 2, i8* %24) #2
  %25 = bitcast i16* %nameID to i8*
  call void @llvm.lifetime.start(i64 2, i8* %25) #2
  %26 = bitcast i16* %length to i8*
  call void @llvm.lifetime.start(i64 2, i8* %26) #2
  %27 = bitcast i16* %offset to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #2
  br label %do.body.21

do.body.21:                                       ; preds = %for.body
  %28 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %29 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %29, i32 0, i32 29
  %name_offset23 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data22, i32 0, i32 12
  %30 = load i64, i64* %name_offset23, align 8, !tbaa !43
  %add24 = add i64 %30, 6
  %31 = load i16, i16* %i, align 2, !tbaa !109
  %conv25 = zext i16 %31 to i32
  %mul = mul nsw i32 %conv25, 12
  %conv26 = sext i32 %mul to i64
  %add27 = add i64 %add24, %conv26
  %arraydecay28 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %call29 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %28, i64 %add27, i32 12, i8* %arraydecay28) #6
  store i32 %call29, i32* %code, align 4, !tbaa !7
  %32 = load i32, i32* %code, align 4, !tbaa !7
  %cmp30 = icmp slt i32 %32, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.21
  %33 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %do.body.21
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %arraydecay36 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay36, i64 0
  %arrayidx38 = getelementptr inbounds i8, i8* %add.ptr37, i64 0
  %34 = load i8, i8* %arrayidx38, align 1, !tbaa !22
  %conv39 = zext i8 %34 to i32
  %shl40 = shl i32 %conv39, 8
  %arraydecay41 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 0
  %arrayidx43 = getelementptr inbounds i8, i8* %add.ptr42, i64 1
  %35 = load i8, i8* %arrayidx43, align 1, !tbaa !22
  %conv44 = zext i8 %35 to i32
  %add45 = add i32 %shl40, %conv44
  %conv46 = trunc i32 %add45 to i16
  store i16 %conv46, i16* %platformID, align 2, !tbaa !109
  %arraydecay47 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay47, i64 2
  %arrayidx49 = getelementptr inbounds i8, i8* %add.ptr48, i64 0
  %36 = load i8, i8* %arrayidx49, align 1, !tbaa !22
  %conv50 = zext i8 %36 to i32
  %shl51 = shl i32 %conv50, 8
  %arraydecay52 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr53 = getelementptr inbounds i8, i8* %arraydecay52, i64 2
  %arrayidx54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %37 = load i8, i8* %arrayidx54, align 1, !tbaa !22
  %conv55 = zext i8 %37 to i32
  %add56 = add i32 %shl51, %conv55
  %conv57 = trunc i32 %add56 to i16
  store i16 %conv57, i16* %specificID, align 2, !tbaa !109
  %arraydecay58 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr59 = getelementptr inbounds i8, i8* %arraydecay58, i64 4
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 0
  %38 = load i8, i8* %arrayidx60, align 1, !tbaa !22
  %conv61 = zext i8 %38 to i32
  %shl62 = shl i32 %conv61, 8
  %arraydecay63 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr64 = getelementptr inbounds i8, i8* %arraydecay63, i64 4
  %arrayidx65 = getelementptr inbounds i8, i8* %add.ptr64, i64 1
  %39 = load i8, i8* %arrayidx65, align 1, !tbaa !22
  %conv66 = zext i8 %39 to i32
  %add67 = add i32 %shl62, %conv66
  %conv68 = trunc i32 %add67 to i16
  store i16 %conv68, i16* %languageID, align 2, !tbaa !109
  %arraydecay69 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr70 = getelementptr inbounds i8, i8* %arraydecay69, i64 6
  %arrayidx71 = getelementptr inbounds i8, i8* %add.ptr70, i64 0
  %40 = load i8, i8* %arrayidx71, align 1, !tbaa !22
  %conv72 = zext i8 %40 to i32
  %shl73 = shl i32 %conv72, 8
  %arraydecay74 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr75 = getelementptr inbounds i8, i8* %arraydecay74, i64 6
  %arrayidx76 = getelementptr inbounds i8, i8* %add.ptr75, i64 1
  %41 = load i8, i8* %arrayidx76, align 1, !tbaa !22
  %conv77 = zext i8 %41 to i32
  %add78 = add i32 %shl73, %conv77
  %conv79 = trunc i32 %add78 to i16
  store i16 %conv79, i16* %nameID, align 2, !tbaa !109
  %arraydecay80 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr81 = getelementptr inbounds i8, i8* %arraydecay80, i64 8
  %arrayidx82 = getelementptr inbounds i8, i8* %add.ptr81, i64 0
  %42 = load i8, i8* %arrayidx82, align 1, !tbaa !22
  %conv83 = zext i8 %42 to i32
  %shl84 = shl i32 %conv83, 8
  %arraydecay85 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr86 = getelementptr inbounds i8, i8* %arraydecay85, i64 8
  %arrayidx87 = getelementptr inbounds i8, i8* %add.ptr86, i64 1
  %43 = load i8, i8* %arrayidx87, align 1, !tbaa !22
  %conv88 = zext i8 %43 to i32
  %add89 = add i32 %shl84, %conv88
  %conv90 = trunc i32 %add89 to i16
  store i16 %conv90, i16* %length, align 2, !tbaa !109
  %arraydecay91 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr92 = getelementptr inbounds i8, i8* %arraydecay91, i64 10
  %arrayidx93 = getelementptr inbounds i8, i8* %add.ptr92, i64 0
  %44 = load i8, i8* %arrayidx93, align 1, !tbaa !22
  %conv94 = zext i8 %44 to i32
  %shl95 = shl i32 %conv94, 8
  %arraydecay96 = getelementptr inbounds [12 x i8], [12 x i8]* %t, i32 0, i32 0
  %add.ptr97 = getelementptr inbounds i8, i8* %arraydecay96, i64 10
  %arrayidx98 = getelementptr inbounds i8, i8* %add.ptr97, i64 1
  %45 = load i8, i8* %arrayidx98, align 1, !tbaa !22
  %conv99 = zext i8 %45 to i32
  %add100 = add i32 %shl95, %conv99
  %conv101 = trunc i32 %add100 to i16
  store i16 %conv101, i16* %offset, align 2, !tbaa !109
  %46 = load i16, i16* %nameID, align 2, !tbaa !109
  %conv102 = zext i16 %46 to i32
  %47 = load i32, i32* %name_id.addr, align 4, !tbaa !7
  %cmp103 = icmp eq i32 %conv102, %47
  br i1 %cmp103, label %if.then.105, label %if.end.112

if.then.105:                                      ; preds = %do.end.35
  %48 = load i16, i16* %platformID, align 2, !tbaa !109
  %49 = load i16, i16* %specificID, align 2, !tbaa !109
  %50 = load i16, i16* %language_id, align 2, !tbaa !109
  %conv106 = zext i16 %50 to i32
  %51 = load i16, i16* %languageID, align 2, !tbaa !109
  %conv107 = zext i16 %51 to i32
  %cmp108 = icmp sgt i32 %conv106, %conv107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.105
  %52 = load i16, i16* %languageID, align 2, !tbaa !109
  store i16 %52, i16* %language_id, align 2, !tbaa !109
  %53 = load i16, i16* %length, align 2, !tbaa !109
  store i16 %53, i16* %length0, align 2, !tbaa !109
  %54 = load i16, i16* %offset, align 2, !tbaa !109
  store i16 %54, i16* %offset0, align 2, !tbaa !109
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.then.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %do.end.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.112, %if.then.32
  %55 = bitcast i16* %offset to i8*
  call void @llvm.lifetime.end(i64 2, i8* %55) #2
  %56 = bitcast i16* %length to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #2
  %57 = bitcast i16* %nameID to i8*
  call void @llvm.lifetime.end(i64 2, i8* %57) #2
  %58 = bitcast i16* %languageID to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #2
  %59 = bitcast i16* %specificID to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59) #2
  %60 = bitcast i16* %platformID to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.137 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %61 = load i16, i16* %i, align 2, !tbaa !109
  %inc = add i16 %61, 1
  store i16 %inc, i16* %i, align 2, !tbaa !109
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i16, i16* %language_id, align 2, !tbaa !109
  %conv118 = zext i16 %62 to i32
  %cmp119 = icmp eq i32 %conv118, 65535
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.122:                                       ; preds = %for.end
  %63 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !1
  %64 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %65 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data123 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %65, i32 0, i32 29
  %name_offset124 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data123, i32 0, i32 12
  %66 = load i64, i64* %name_offset124, align 8, !tbaa !43
  %67 = load i16, i16* %strings_offset, align 2, !tbaa !109
  %conv125 = zext i16 %67 to i64
  %add126 = add i64 %66, %conv125
  %68 = load i16, i16* %offset0, align 2, !tbaa !109
  %conv127 = zext i16 %68 to i64
  %add128 = add i64 %add126, %conv127
  %69 = load i16, i16* %length0, align 2, !tbaa !109
  %conv129 = zext i16 %69 to i32
  %70 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  %data130 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %70, i32 0, i32 0
  %call131 = call i32 %63(%struct.gs_font_type42_s* %64, i64 %add128, i32 %conv129, i8** %data130) #6
  %cmp132 = icmp ne i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.122
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.135:                                       ; preds = %if.end.122
  %71 = load i16, i16* %length0, align 2, !tbaa !109
  %conv136 = zext i16 %71 to i32
  %72 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %72, i32 0, i32 1
  store i32 %conv136, i32* %size, align 4, !tbaa !163
  %73 = load i32, i32* %member.addr, align 4, !tbaa !7
  %74 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %74, i32 0, i32 0
  %75 = load i32, i32* %members, align 4, !tbaa !159
  %or = or i32 %75, %73
  store i32 %or, i32* %members, align 4, !tbaa !159
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.135, %if.then.134, %if.then.121, %cleanup, %if.then
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i16* %offset0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %77) #2
  %78 = bitcast i16* %length0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %78) #2
  %79 = bitcast i16* %language_id to i8*
  call void @llvm.lifetime.end(i64 2, i8* %79) #2
  %80 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %80) #2
  %81 = bitcast i16* %strings_offset to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #2
  %82 = bitcast i16* %num_records to i8*
  call void @llvm.lifetime.end(i64 2, i8* %82) #2
  %83 = bitcast [12 x i8]* %t to i8*
  call void @llvm.lifetime.end(i64 12, i8* %83) #2
  %84 = bitcast i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare i32 @gs_default_font_info(%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*) #0

declare void @gx_ttfReader__set_font(%struct.gx_ttfReader_s*, %struct.gs_font_type42_s*) #0

declare i32 @gx_ttf_outline(%struct.ttfFont_s*, %struct.gx_ttfReader_s*, %struct.gs_font_type42_s*, i32, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, %struct.gx_path_s*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !2, i64 448}
!10 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !11, i64 40, !6, i64 56, !2, i64 64, !2, i64 72, !12, i64 80, !12, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !13, i64 156, !8, i64 160, !14, i64 168, !15, i64 272, !15, i64 324, !16, i64 376, !19, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !20, i64 448}
!11 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !3, i64 0}
!14 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!15 = !{!"gs_font_name_s", !3, i64 0, !8, i64 48}
!16 = !{!"gs_rect_s", !17, i64 0, !17, i64 16}
!17 = !{!"gs_point_s", !18, i64 0, !18, i64 8}
!18 = !{!"double", !3, i64 0}
!19 = !{!"gs_uid_s", !6, i64 0, !2, i64 8}
!20 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 56, !8, i64 64, !8, i64 68, !3, i64 72, !6, i64 120, !6, i64 128, !6, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !2, i64 168, !2, i64 176, !8, i64 184, !8, i64 188, !2, i64 192, !6, i64 200}
!21 = !{!10, !2, i64 16}
!22 = !{!3, !3, i64 0}
!23 = !{!10, !2, i64 456}
!24 = !{!10, !6, i64 496}
!25 = !{!10, !6, i64 504}
!26 = !{!10, !6, i64 648}
!27 = !{!28, !2, i64 88}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!10, !2, i64 640}
!31 = !{!10, !8, i64 512}
!32 = !{!10, !8, i64 516}
!33 = !{!34, !8, i64 0}
!34 = !{!"gs_type42_mtx_s", !8, i64 0, !6, i64 8, !8, i64 16}
!35 = !{!34, !6, i64 8}
!36 = !{!34, !8, i64 16}
!37 = !{!10, !6, i64 568}
!38 = !{!10, !8, i64 596}
!39 = !{!10, !8, i64 600}
!40 = !{!10, !8, i64 604}
!41 = !{!10, !8, i64 608}
!42 = !{!10, !8, i64 612}
!43 = !{!10, !6, i64 576}
!44 = !{!10, !6, i64 584}
!45 = !{!10, !8, i64 592}
!46 = !{!10, !8, i64 320}
!47 = !{!10, !8, i64 372}
!48 = !{!10, !8, i64 632}
!49 = !{!10, !8, i64 636}
!50 = !{!10, !2, i64 232}
!51 = !{!10, !2, i64 224}
!52 = !{!10, !2, i64 216}
!53 = !{!10, !2, i64 184}
!54 = !{!10, !2, i64 464}
!55 = !{!10, !2, i64 472}
!56 = !{!10, !2, i64 480}
!57 = !{!10, !3, i64 128}
!58 = !{!10, !8, i64 32}
!59 = !{!10, !2, i64 616}
!60 = !{!61, !8, i64 8}
!61 = !{!"gs_type42_font_init_sort_s", !6, i64 0, !8, i64 8, !8, i64 12}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !8, i64 12}
!64 = !{!28, !2, i64 24}
!65 = !{!10, !18, i64 376}
!66 = !{!10, !18, i64 392}
!67 = !{!10, !18, i64 384}
!68 = !{!10, !18, i64 400}
!69 = !{!13, !13, i64 0}
!70 = !{!10, !2, i64 488}
!71 = !{!72, !2, i64 224}
!72 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !11, i64 40, !6, i64 56, !2, i64 64, !2, i64 72, !12, i64 80, !12, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !13, i64 156, !8, i64 160, !14, i64 168, !15, i64 272, !15, i64 324}
!73 = !{!74, !8, i64 0}
!74 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!75 = !{!17, !18, i64 0}
!76 = !{!74, !8, i64 4}
!77 = !{!17, !18, i64 8}
!78 = !{!79, !2, i64 40}
!79 = !{!"gs_glyph_data_s", !80, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!80 = !{!"gs_const_bytestring_s", !2, i64 0, !8, i64 8, !2, i64 16}
!81 = !{!79, !2, i64 0}
!82 = !{!28, !2, i64 136}
!83 = !{!79, !8, i64 8}
!84 = !{!18, !18, i64 0}
!85 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7}
!86 = !{!87, !8, i64 24}
!87 = !{!"gs_matrix_fixed_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!88 = !{!87, !13, i64 16}
!89 = !{!87, !8, i64 28}
!90 = !{!87, !13, i64 20}
!91 = !{!12, !13, i64 12}
!92 = !{!12, !13, i64 0}
!93 = !{!12, !13, i64 8}
!94 = !{!12, !13, i64 4}
!95 = !{!12, !13, i64 16}
!96 = !{!12, !13, i64 20}
!97 = !{!98, !8, i64 0}
!98 = !{!"GSUB_s", !8, i64 0, !99, i64 4, !99, i64 6, !99, i64 8}
!99 = !{!"short", !3, i64 0}
!100 = !{!98, !99, i64 4}
!101 = !{!98, !99, i64 6}
!102 = !{!98, !99, i64 8}
!103 = !{!104, !99, i64 0}
!104 = !{!"LookupListTable_s", !99, i64 0, !3, i64 2}
!105 = !{!106, !99, i64 0}
!106 = !{!"LookupTable_s", !99, i64 0, !99, i64 2, !99, i64 4, !3, i64 6}
!107 = !{!106, !99, i64 2}
!108 = !{!106, !99, i64 4}
!109 = !{!99, !99, i64 0}
!110 = !{!111, !99, i64 0}
!111 = !{!"SingleSubstFormat1_s", !99, i64 0, !99, i64 2, !99, i64 4}
!112 = !{!111, !99, i64 2}
!113 = !{!111, !99, i64 4}
!114 = !{!115, !99, i64 0}
!115 = !{!"SingleSubstFormat2_s", !99, i64 0, !99, i64 2, !99, i64 4, !3, i64 6}
!116 = !{!115, !99, i64 2}
!117 = !{!115, !99, i64 4}
!118 = !{!119, !99, i64 0}
!119 = !{!"CoverageFormat1_s", !99, i64 0, !99, i64 2, !3, i64 4}
!120 = !{!119, !99, i64 2}
!121 = !{!122, !99, i64 0}
!122 = !{!"CoverageFormat2_s", !99, i64 0, !99, i64 2, !3, i64 4}
!123 = !{!122, !99, i64 2}
!124 = !{!125, !99, i64 0}
!125 = !{!"RangeRecord_s", !99, i64 0, !99, i64 2, !99, i64 4}
!126 = !{!125, !99, i64 2}
!127 = !{!125, !99, i64 4}
!128 = !{!129, !2, i64 0}
!129 = !{!"cached_fm_pair_s", !2, i64 0, !19, i64 8, !3, i64 24, !8, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !8, i64 48, !8, i64 52, !2, i64 56, !2, i64 64, !8, i64 72, !2, i64 80, !2, i64 88, !8, i64 96, !8, i64 100, !8, i64 104}
!130 = !{!129, !2, i64 88}
!131 = !{!129, !2, i64 80}
!132 = !{!133, !8, i64 0}
!133 = !{!"gs_glyph_info_s", !8, i64 0, !3, i64 8, !17, i64 40, !16, i64 56, !8, i64 88, !2, i64 96}
!134 = !{!133, !18, i64 40}
!135 = !{!133, !18, i64 48}
!136 = !{!133, !2, i64 96}
!137 = !{!10, !8, i64 148}
!138 = !{!139, !2, i64 224}
!139 = !{!"gs_text_enum_s", !140, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !141, i64 160, !2, i64 184, !2, i64 192, !6, i64 200, !8, i64 208, !142, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !143, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !17, i64 360, !6, i64 376, !8, i64 384, !142, i64 388, !17, i64 400, !144, i64 416}
!140 = !{!"gs_text_params_s", !8, i64 0, !3, i64 8, !8, i64 16, !17, i64 24, !17, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !8, i64 80}
!141 = !{!"rc_header_s", !6, i64 0, !2, i64 8, !2, i64 16}
!142 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!143 = !{!"gx_font_stack_s", !8, i64 0, !3, i64 8}
!144 = !{!"gs_text_returned_s", !6, i64 0, !6, i64 8, !17, i64 16}
!145 = !{!146, !3, i64 1848}
!146 = !{!"gs_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !147, i64 24, !8, i64 128, !87, i64 132, !8, i64 168, !17, i64 176, !17, i64 192, !8, i64 208, !8, i64 212, !99, i64 216, !3, i64 220, !149, i64 224, !149, i64 228, !150, i64 232, !6, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !13, i64 296, !74, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !13, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !151, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !152, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !152, i64 1336, !2, i64 1616, !12, i64 1624, !8, i64 1648, !12, i64 1652, !8, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !6, i64 1712, !6, i64 1720, !2, i64 1728, !8, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !87, i64 1808, !8, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !8, i64 1864, !2, i64 1872, !2, i64 1880, !153, i64 1888}
!147 = !{!"gx_line_params_s", !13, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !8, i64 36, !12, i64 40, !148, i64 64}
!148 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !13, i64 12, !8, i64 16, !13, i64 20, !8, i64 24, !8, i64 28, !13, i64 32}
!149 = !{!"gs_transparency_source_s", !13, i64 0}
!150 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!151 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!152 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !6, i64 16, !3, i64 24}
!153 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!154 = !{!155, !2, i64 600}
!155 = !{!"gs_show_enum_s", !140, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !141, i64 160, !2, i64 184, !2, i64 192, !6, i64 200, !8, i64 208, !142, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !143, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !17, i64 360, !6, i64 376, !8, i64 384, !142, i64 388, !17, i64 400, !144, i64 416, !8, i64 448, !2, i64 456, !8, i64 464, !3, i64 468, !2, i64 472, !8, i64 480, !156, i64 484, !156, i64 500, !8, i64 516, !8, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !74, i64 560, !17, i64 568, !8, i64 584, !74, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!156 = !{!"gs_int_rect_s", !157, i64 0, !157, i64 8}
!157 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!158 = !{!72, !2, i64 24}
!159 = !{!160, !8, i64 0}
!160 = !{!"gs_font_info_s", !8, i64 0, !8, i64 4, !8, i64 8, !156, i64 12, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !13, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !161, i64 88, !161, i64 104, !161, i64 120, !161, i64 136, !8, i64 152}
!161 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!162 = !{!160, !8, i64 152}
!163 = !{!161, !8, i64 8}
