; ModuleID = './gstext.bc'
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"gs_text_params\00", align 1
@st_gs_text_params = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @text_params_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @text_params_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_text_enum_t\00", align 1
@st_gs_text_enum = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @text_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @text_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @text_params_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %tptr = alloca %struct.gs_text_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_text_params_s*
  store %struct.gs_text_params_s* %2, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.31
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %4, i32 0, i32 0
  %5 = load i32, i32* %operation, align 4, !tbaa !7
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %6, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %7 = load i8*, i8** %bytes, align 8, !tbaa !1
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !11
  %9 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %9, i32 0, i32 2
  %10 = load i32, i32* %size1, align 4, !tbaa !13
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 1
  store i32 %10, i32* %size2, align 4, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %12, i32 0, i32 0
  %13 = load i32, i32* %operation3, align 4, !tbaa !7
  %and4 = and i32 %13, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %14, i32 0, i32 1
  %bytes8 = bitcast %union.sd_* %data7 to i8**
  %15 = load i8*, i8** %bytes8, align 8, !tbaa !1
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %16, i32 0, i32 0
  store i8* %15, i8** %ptr9, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %17 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation11 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %17, i32 0, i32 0
  %18 = load i32, i32* %operation11, align 4, !tbaa !7
  %and12 = and i32 %18, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.10
  %19 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %19, i32 0, i32 1
  %chars = bitcast %union.sd_* %data15 to i64**
  %20 = load i64*, i64** %chars, align 8, !tbaa !1
  %21 = bitcast i64* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr16, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.10
  %23 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation18 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %23, i32 0, i32 0
  %24 = load i32, i32* %operation18, align 4, !tbaa !7
  %and19 = and i32 %24, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.17
  %25 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %25, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data22 to i64**
  %26 = load i64*, i64** %glyphs, align 8, !tbaa !1
  %27 = bitcast i64* %26 to i8*
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr23, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.17
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* null, i8** %ptr25, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.26:                                         ; preds = %entry
  %30 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation27 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %30, i32 0, i32 0
  %31 = load i32, i32* %operation27, align 4, !tbaa !7
  %and28 = and i32 %31, 256
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.26
  %32 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %32, i32 0, i32 6
  %33 = load float*, float** %x_widths, align 8, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float* [ %33, %cond.true ], [ null, %cond.false ]
  %34 = bitcast float* %cond to i8*
  %35 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %35, i32 0, i32 0
  store i8* %34, i8** %ptr30, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.31:                                         ; preds = %entry
  %36 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation32 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %36, i32 0, i32 0
  %37 = load i32, i32* %operation32, align 4, !tbaa !7
  %and33 = and i32 %37, 256
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %sw.bb.31
  %38 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %38, i32 0, i32 7
  %39 = load float*, float** %y_widths, align 8, !tbaa !16
  br label %cond.end.37

cond.false.36:                                    ; preds = %sw.bb.31
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi float* [ %39, %cond.true.35 ], [ null, %cond.false.36 ]
  %40 = bitcast float* %cond38 to i8*
  %41 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %41, i32 0, i32 0
  store i8* %40, i8** %ptr39, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.37, %cond.end, %if.end.24, %if.then.21, %if.then.14, %if.then.6, %if.then, %sw.default
  %42 = bitcast %struct.gs_text_params_s** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %43
}

; Function Attrs: nounwind uwtable
define internal void @text_params_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %tptr = alloca %struct.gs_text_params_s*, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_text_params_s*
  store %struct.gs_text_params_s* %2, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %3 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %3, i32 0, i32 0
  %4 = load i32, i32* %operation, align 4, !tbaa !7
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %6, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %7 = load i8*, i8** %bytes, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %7, i8** %data1, align 8, !tbaa !17
  %8 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %8, i32 0, i32 2
  %9 = load i32, i32* %size2, align 4, !tbaa !13
  %size3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %9, i32* %size3, align 4, !tbaa !19
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 2
  %13 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !20
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %13(%struct.gs_const_string_s* %str, %struct.gc_state_s* %14) #5
  %data4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %15 = load i8*, i8** %data4, align 8, !tbaa !17
  %16 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %16, i32 0, i32 1
  %bytes6 = bitcast %union.sd_* %data5 to i8**
  store i8* %15, i8** %bytes6, align 8, !tbaa !1
  %17 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  br label %if.end.37

if.else:                                          ; preds = %entry
  %18 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation7 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %18, i32 0, i32 0
  %19 = load i32, i32* %operation7, align 4, !tbaa !7
  %and8 = and i32 %19, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gc_state_s* %20 to %struct.gc_procs_common_s**
  %22 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %21, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %22, i32 0, i32 0
  %23 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %24 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %24, i32 0, i32 1
  %bytes12 = bitcast %union.sd_* %data11 to i8**
  %25 = load i8*, i8** %bytes12, align 8, !tbaa !1
  %26 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %23(i8* %25, %struct.gc_state_s* %26) #5
  %27 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %27, i32 0, i32 1
  %bytes14 = bitcast %union.sd_* %data13 to i8**
  store i8* %call, i8** %bytes14, align 8, !tbaa !1
  br label %if.end.36

if.else.15:                                       ; preds = %if.else
  %28 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation16 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %28, i32 0, i32 0
  %29 = load i32, i32* %operation16, align 4, !tbaa !7
  %and17 = and i32 %29, 4
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.else.15
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gc_state_s* %30 to %struct.gc_procs_common_s**
  %32 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %31, align 8, !tbaa !1
  %reloc_struct_ptr20 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %32, i32 0, i32 0
  %33 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr20, align 8, !tbaa !22
  %34 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %34, i32 0, i32 1
  %chars = bitcast %union.sd_* %data21 to i64**
  %35 = load i64*, i64** %chars, align 8, !tbaa !1
  %36 = bitcast i64* %35 to i8*
  %37 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call22 = call i8* %33(i8* %36, %struct.gc_state_s* %37) #5
  %38 = bitcast i8* %call22 to i64*
  %39 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %39, i32 0, i32 1
  %chars24 = bitcast %union.sd_* %data23 to i64**
  store i64* %38, i64** %chars24, align 8, !tbaa !1
  br label %if.end.35

if.else.25:                                       ; preds = %if.else.15
  %40 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation26 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %40, i32 0, i32 0
  %41 = load i32, i32* %operation26, align 4, !tbaa !7
  %and27 = and i32 %41, 8
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.25
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gc_state_s* %42 to %struct.gc_procs_common_s**
  %44 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %43, align 8, !tbaa !1
  %reloc_struct_ptr30 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %44, i32 0, i32 0
  %45 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr30, align 8, !tbaa !22
  %46 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %46, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data31 to i64**
  %47 = load i64*, i64** %glyphs, align 8, !tbaa !1
  %48 = bitcast i64* %47 to i8*
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call32 = call i8* %45(i8* %48, %struct.gc_state_s* %49) #5
  %50 = bitcast i8* %call32 to i64*
  %51 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %data33 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %51, i32 0, i32 1
  %glyphs34 = bitcast %union.sd_* %data33 to i64**
  store i64* %50, i64** %glyphs34, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then.19
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.10
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then
  %52 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %operation38 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %52, i32 0, i32 0
  %53 = load i32, i32* %operation38, align 4, !tbaa !7
  %and39 = and i32 %53, 256
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %if.end.37
  %54 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gc_state_s* %54 to %struct.gc_procs_common_s**
  %56 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %55, align 8, !tbaa !1
  %reloc_struct_ptr42 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %56, i32 0, i32 0
  %57 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr42, align 8, !tbaa !22
  %58 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %58, i32 0, i32 6
  %59 = load float*, float** %x_widths, align 8, !tbaa !15
  %60 = bitcast float* %59 to i8*
  %61 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call43 = call i8* %57(i8* %60, %struct.gc_state_s* %61) #5
  %62 = bitcast i8* %call43 to float*
  %63 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %x_widths44 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %63, i32 0, i32 6
  store float* %62, float** %x_widths44, align 8, !tbaa !15
  %64 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gc_state_s* %64 to %struct.gc_procs_common_s**
  %66 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %65, align 8, !tbaa !1
  %reloc_struct_ptr45 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %66, i32 0, i32 0
  %67 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr45, align 8, !tbaa !22
  %68 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %68, i32 0, i32 7
  %69 = load float*, float** %y_widths, align 8, !tbaa !16
  %70 = bitcast float* %69 to i8*
  %71 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call46 = call i8* %67(i8* %70, %struct.gc_state_s* %71) #5
  %72 = bitcast i8* %call46 to float*
  %73 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %tptr, align 8, !tbaa !1
  %y_widths47 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %73, i32 0, i32 7
  store float* %72, float** %y_widths47, align 8, !tbaa !16
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.41, %if.end.37
  %74 = bitcast %struct.gs_text_params_s** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @text_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_text_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %2, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.26
    i32 6, label %sw.bb.28
    i32 7, label %sw.bb.30
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 16
  %6 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !23
  %cmp1 = icmp ne %struct.cached_fm_pair_s* %6, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %7, i32 0, i32 16
  %8 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair3, align 8, !tbaa !23
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %9, i32 0, i32 16
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair4, align 8, !tbaa !23
  %index5 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %10, i32 0, i32 12
  %11 = load i32, i32* %index5, align 4, !tbaa !30
  %idx.ext = zext i32 %11 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %8, i64 %idx.neg
  %12 = bitcast %struct.cached_fm_pair_s* %add.ptr to i8*
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* %12, i8** %ptr, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* null, i8** %ptr6, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %15 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 9
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %17, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %18 = load i32, i32* %depth, align 4, !tbaa !34
  %cmp7 = icmp sle i32 %16, %18
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %19 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %fstack9 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !35
  %22 = bitcast %struct.gs_font_s* %21 to i8*
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* %22, i8** %ptr10, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %fstack12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 19
  %depth13 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack12, i32 0, i32 0
  %25 = load i32, i32* %depth13, align 4, !tbaa !34
  %add = add nsw i32 %25, 1
  %26 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %26, %add
  store i32 %sub14, i32* %index.addr, align 4, !tbaa !5
  %27 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_text_params to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !37
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %29, i32 0, i32 0
  %30 = bitcast %struct.gs_text_params_s* %text to i8*
  %31 = load i32, i32* %index.addr, align 4, !tbaa !5
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %27(%struct.gs_memory_s* %28, i8* %30, i32 88, i32 %31, %struct.enum_ptr_s* %32, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_text_params to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %33) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %34 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %34, i32 0, i32 1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !39
  %call15 = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %35) #5
  %36 = bitcast %struct.gx_device_s* %call15 to i8*
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr16, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.17:                                         ; preds = %entry
  %38 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %imaging_dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %38, i32 0, i32 2
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !40
  %call18 = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %39) #5
  %40 = bitcast %struct.gx_device_s* %call18 to i8*
  %41 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr19 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %41, i32 0, i32 0
  store i8* %40, i8** %ptr19, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %entry
  %42 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %43 = bitcast i8* %42 to %struct.gs_text_enum_s*
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %43, i32 0, i32 3
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !41
  %45 = bitcast %struct.gs_imager_state_s* %44 to i8*
  %46 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %46, i32 0, i32 0
  store i8* %45, i8** %ptr21, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %entry
  %47 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %48 = bitcast i8* %47 to %struct.gs_text_enum_s*
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %48, i32 0, i32 4
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !42
  %50 = bitcast %struct.gs_font_s* %49 to i8*
  %51 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %51, i32 0, i32 0
  store i8* %50, i8** %ptr23, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %entry
  %52 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %53 = bitcast i8* %52 to %struct.gs_text_enum_s*
  %path = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %53, i32 0, i32 5
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !43
  %55 = bitcast %struct.gx_path_s* %54 to i8*
  %56 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %56, i32 0, i32 0
  store i8* %55, i8** %ptr25, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.26:                                         ; preds = %entry
  %57 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %58 = bitcast i8* %57 to %struct.gs_text_enum_s*
  %pdcolor = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %58, i32 0, i32 6
  %59 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !44
  %60 = bitcast %struct.gx_device_color_s* %59 to i8*
  %61 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr27 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %61, i32 0, i32 0
  store i8* %60, i8** %ptr27, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.28:                                         ; preds = %entry
  %62 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %63 = bitcast i8* %62 to %struct.gs_text_enum_s*
  %pcpath = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %63, i32 0, i32 7
  %64 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !45
  %65 = bitcast %struct.gx_clip_path_s* %64 to i8*
  %66 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %66, i32 0, i32 0
  store i8* %65, i8** %ptr29, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.30:                                         ; preds = %entry
  %67 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %68 = bitcast i8* %67 to %struct.gs_text_enum_s*
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %68, i32 0, i32 12
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !46
  %70 = bitcast %struct.gs_font_s* %69 to i8*
  %71 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %71, i32 0, i32 0
  store i8* %70, i8** %ptr31, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.17, %sw.bb, %if.end.11, %if.then.8, %if.else, %if.then.2
  %72 = bitcast %struct.gs_text_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %73
}

; Function Attrs: nounwind uwtable
define internal void @text_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_text_enum_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %2, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_text_params to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !47
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 0
  %6 = bitcast %struct.gs_text_params_s* %text to i8*
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %6, i32 88, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_text_params to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %7) #5
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !39
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %9, %struct.gc_state_s* %10) #5
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 1
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev1, align 8, !tbaa !39
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %imaging_dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !40
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %13, %struct.gc_state_s* %14) #5
  %15 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %imaging_dev3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %15, i32 0, i32 2
  store %struct.gx_device_s* %call2, %struct.gx_device_s** %imaging_dev3, align 8, !tbaa !40
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gc_state_s* %16 to %struct.gc_procs_common_s**
  %18 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %17, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %18, i32 0, i32 0
  %19 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_text_enum_s*
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 3
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !41
  %23 = bitcast %struct.gs_imager_state_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call i8* %19(i8* %23, %struct.gc_state_s* %24) #5
  %25 = bitcast i8* %call4 to %struct.gs_imager_state_s*
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_text_enum_s*
  %pis5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %27, i32 0, i32 3
  store %struct.gs_imager_state_s* %25, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !41
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_struct_ptr6 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 0
  %31 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr6, align 8, !tbaa !22
  %32 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to %struct.gs_text_enum_s*
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %33, i32 0, i32 4
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !42
  %35 = bitcast %struct.gs_font_s* %34 to i8*
  %36 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call7 = call i8* %31(i8* %35, %struct.gc_state_s* %36) #5
  %37 = bitcast i8* %call7 to %struct.gs_font_s*
  %38 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %39 = bitcast i8* %38 to %struct.gs_text_enum_s*
  %orig_font8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %39, i32 0, i32 4
  store %struct.gs_font_s* %37, %struct.gs_font_s** %orig_font8, align 8, !tbaa !42
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gc_state_s* %40 to %struct.gc_procs_common_s**
  %42 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %41, align 8, !tbaa !1
  %reloc_struct_ptr9 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %42, i32 0, i32 0
  %43 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr9, align 8, !tbaa !22
  %44 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %45 = bitcast i8* %44 to %struct.gs_text_enum_s*
  %path = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %45, i32 0, i32 5
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !43
  %47 = bitcast %struct.gx_path_s* %46 to i8*
  %48 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call10 = call i8* %43(i8* %47, %struct.gc_state_s* %48) #5
  %49 = bitcast i8* %call10 to %struct.gx_path_s*
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gs_text_enum_s*
  %path11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %51, i32 0, i32 5
  store %struct.gx_path_s* %49, %struct.gx_path_s** %path11, align 8, !tbaa !43
  %52 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gc_state_s* %52 to %struct.gc_procs_common_s**
  %54 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %53, align 8, !tbaa !1
  %reloc_struct_ptr12 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %54, i32 0, i32 0
  %55 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr12, align 8, !tbaa !22
  %56 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to %struct.gs_text_enum_s*
  %pdcolor = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %57, i32 0, i32 6
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !44
  %59 = bitcast %struct.gx_device_color_s* %58 to i8*
  %60 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call13 = call i8* %55(i8* %59, %struct.gc_state_s* %60) #5
  %61 = bitcast i8* %call13 to %struct.gx_device_color_s*
  %62 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %63 = bitcast i8* %62 to %struct.gs_text_enum_s*
  %pdcolor14 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %63, i32 0, i32 6
  store %struct.gx_device_color_s* %61, %struct.gx_device_color_s** %pdcolor14, align 8, !tbaa !44
  %64 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gc_state_s* %64 to %struct.gc_procs_common_s**
  %66 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %65, align 8, !tbaa !1
  %reloc_struct_ptr15 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %66, i32 0, i32 0
  %67 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr15, align 8, !tbaa !22
  %68 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %69 = bitcast i8* %68 to %struct.gs_text_enum_s*
  %pcpath = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %69, i32 0, i32 7
  %70 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !45
  %71 = bitcast %struct.gx_clip_path_s* %70 to i8*
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call16 = call i8* %67(i8* %71, %struct.gc_state_s* %72) #5
  %73 = bitcast i8* %call16 to %struct.gx_clip_path_s*
  %74 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %75 = bitcast i8* %74 to %struct.gs_text_enum_s*
  %pcpath17 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %75, i32 0, i32 7
  store %struct.gx_clip_path_s* %73, %struct.gx_clip_path_s** %pcpath17, align 8, !tbaa !45
  %76 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gc_state_s* %76 to %struct.gc_procs_common_s**
  %78 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %77, align 8, !tbaa !1
  %reloc_struct_ptr18 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %78, i32 0, i32 0
  %79 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr18, align 8, !tbaa !22
  %80 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %81 = bitcast i8* %80 to %struct.gs_text_enum_s*
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %81, i32 0, i32 12
  %82 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !46
  %83 = bitcast %struct.gs_font_s* %82 to i8*
  %84 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call19 = call i8* %79(i8* %83, %struct.gc_state_s* %84) #5
  %85 = bitcast i8* %call19 to %struct.gs_font_s*
  %86 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %87 = bitcast i8* %86 to %struct.gs_text_enum_s*
  %current_font20 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %87, i32 0, i32 12
  store %struct.gs_font_s* %85, %struct.gs_font_s** %current_font20, align 8, !tbaa !46
  %88 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %88, i32 0, i32 16
  %89 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !23
  %cmp = icmp ne %struct.cached_fm_pair_s* %89, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %90 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gc_state_s* %90 to %struct.gc_procs_common_s**
  %92 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %91, align 8, !tbaa !1
  %reloc_struct_ptr21 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %92, i32 0, i32 0
  %93 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr21, align 8, !tbaa !22
  %94 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair22 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %94, i32 0, i32 16
  %95 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair22, align 8, !tbaa !23
  %96 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair23 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %96, i32 0, i32 16
  %97 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair23, align 8, !tbaa !23
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %97, i32 0, i32 12
  %98 = load i32, i32* %index, align 4, !tbaa !30
  %idx.ext = zext i32 %98 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %95, i64 %idx.neg
  %99 = bitcast %struct.cached_fm_pair_s* %add.ptr to i8*
  %100 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %93(i8* %99, %struct.gc_state_s* %100) #5
  %101 = bitcast i8* %call24 to %struct.cached_fm_pair_s*
  %102 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair25 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %102, i32 0, i32 16
  %103 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair25, align 8, !tbaa !23
  %index26 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %103, i32 0, i32 12
  %104 = load i32, i32* %index26, align 4, !tbaa !30
  %idx.ext27 = zext i32 %104 to i64
  %add.ptr28 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %101, i64 %idx.ext27
  %105 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %pair29 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %105, i32 0, i32 16
  store %struct.cached_fm_pair_s* %add.ptr28, %struct.cached_fm_pair_s** %pair29, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %107 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %eptr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %107, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %108 = load i32, i32* %depth, align 4, !tbaa !34
  %cmp30 = icmp sle i32 %106, %108
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gc_state_s* %109 to %struct.gc_procs_common_s**
  %111 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %110, align 8, !tbaa !1
  %reloc_struct_ptr31 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %111, i32 0, i32 0
  %112 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr31, align 8, !tbaa !22
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %113 to i64
  %114 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %115 = bitcast i8* %114 to %struct.gs_text_enum_s*
  %fstack32 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %115, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack32, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %116 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !35
  %117 = bitcast %struct.gs_font_s* %116 to i8*
  %118 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %112(i8* %117, %struct.gc_state_s* %118) #5
  %119 = bitcast i8* %call33 to %struct.gs_font_s*
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %120 to i64
  %121 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %122 = bitcast i8* %121 to %struct.gs_text_enum_s*
  %fstack35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %122, i32 0, i32 19
  %items36 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items36, i32 0, i64 %idxprom34
  %font38 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx37, i32 0, i32 0
  store %struct.gs_font_s* %119, %struct.gs_font_s** %font38, align 8, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_text_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_text_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
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
  %tpath = alloca %struct.gx_path_s*, align 8
  %tcpath = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %0, i32 0, i32 0
  %1 = load i32, i32* %operation, align 4, !tbaa !7
  %and = and i32 %1, 63
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %2, i32 0, i32 0
  %3 = load i32, i32* %operation1, align 4, !tbaa !7
  %and2 = and i32 %3, 65024
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation5 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %4, i32 0, i32 0
  %5 = load i32, i32* %operation5, align 4, !tbaa !7
  %and6 = and i32 %5, 63
  %6 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation7 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %6, i32 0, i32 0
  %7 = load i32, i32* %operation7, align 4, !tbaa !7
  %and8 = and i32 %7, 63
  %sub = sub i32 %and8, 1
  %and9 = and i32 %and6, %sub
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.4
  %8 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation12 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %8, i32 0, i32 0
  %9 = load i32, i32* %operation12, align 4, !tbaa !7
  %and13 = and i32 %9, 65024
  %10 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation14 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %10, i32 0, i32 0
  %11 = load i32, i32* %operation14, align 4, !tbaa !7
  %and15 = and i32 %11, 65024
  %sub16 = sub i32 %and15, 1
  %and17 = and i32 %and13, %sub16
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.11
  %12 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation20 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %12, i32 0, i32 0
  %13 = load i32, i32* %operation20, align 4, !tbaa !7
  %and21 = and i32 %13, 192
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true, label %lor.lhs.false.26

land.lhs.true:                                    ; preds = %lor.lhs.false.19
  %14 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation23 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %14, i32 0, i32 0
  %15 = load i32, i32* %operation23, align 4, !tbaa !7
  %and24 = and i32 %15, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true, %lor.lhs.false.19
  %16 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation27 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %16, i32 0, i32 0
  %17 = load i32, i32* %operation27, align 4, !tbaa !7
  %and28 = and i32 %17, 48
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %lor.lhs.false.26
  %18 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %18, i32 0, i32 2
  %19 = load i32, i32* %size, align 4, !tbaa !13
  %cmp = icmp ne i32 %19, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.30, %land.lhs.true, %lor.lhs.false.11, %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.30, %lor.lhs.false.26
  %20 = bitcast %struct.gx_path_s** %tpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation31 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %21, i32 0, i32 0
  %22 = load i32, i32* %operation31, align 4, !tbaa !7
  %and32 = and i32 %22, 512
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %cond.false

land.lhs.true.34:                                 ; preds = %if.end
  %23 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation35 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %23, i32 0, i32 0
  %24 = load i32, i32* %operation35, align 4, !tbaa !7
  %and36 = and i32 %24, 131072
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.34
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.34, %if.end
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_path_s* [ null, %cond.true ], [ %25, %cond.false ]
  store %struct.gx_path_s* %cond, %struct.gx_path_s** %tpath, align 8, !tbaa !1
  %26 = bitcast %struct.gx_clip_path_s** %tcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation38 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %27, i32 0, i32 0
  %28 = load i32, i32* %operation38, align 4, !tbaa !7
  %and39 = and i32 %28, 1024
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi %struct.gx_clip_path_s* [ %29, %cond.true.41 ], [ null, %cond.false.42 ]
  store %struct.gx_clip_path_s* %cond44, %struct.gx_clip_path_s** %tcpath, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %text_begin = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 42
  %31 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin, align 8, !tbaa !48
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %tpath, align 8, !tbaa !1
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %tcpath, align 8, !tbaa !1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 %31(%struct.gx_device_s* %32, %struct.gs_imager_state_s* %33, %struct.gs_text_params_s* %34, %struct.gs_font_s* %35, %struct.gx_path_s* %36, %struct.gx_device_color_s* %37, %struct.gx_clip_path_s* %38, %struct.gs_memory_s* %39, %struct.gs_text_enum_s** %40) #5
  store i32 %call, i32* %retval
  %41 = bitcast %struct.gx_clip_path_s** %tcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gx_path_s** %tpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %return

return:                                           ; preds = %cond.end.43, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_text_enum_init(%struct.gs_text_enum_s* %pte, %struct.gs_text_enum_procs_s* %procs, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %procs.addr = alloca %struct.gs_text_enum_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_procs_s* %procs, %struct.gs_text_enum_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 0
  %2 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_params_s* %text1 to i8*
  %4 = bitcast %struct.gs_text_params_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 88, i32 8, i1 false), !tbaa.struct !59
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %6, i32 0, i32 1
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev2, align 8, !tbaa !39
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %7, i32 0, i32 2
  store %struct.gx_device_s* null, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !40
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %9, i32 0, i32 3
  store %struct.gs_imager_state_s* %8, %struct.gs_imager_state_s** %pis3, align 8, !tbaa !41
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 4
  store %struct.gs_font_s* %10, %struct.gs_font_s** %orig_font, align 8, !tbaa !42
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %13, i32 0, i32 5
  store %struct.gx_path_s* %12, %struct.gx_path_s** %path4, align 8, !tbaa !43
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pdcolor5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %15, i32 0, i32 6
  store %struct.gx_device_color_s* %14, %struct.gx_device_color_s** %pdcolor5, align 8, !tbaa !44
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pcpath6 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %17, i32 0, i32 7
  store %struct.gx_clip_path_s* %16, %struct.gx_clip_path_s** %pcpath6, align 8, !tbaa !45
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %19, i32 0, i32 8
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %memory, align 8, !tbaa !62
  %20 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs.addr, align 8, !tbaa !1
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 9
  store %struct.gs_text_enum_procs_s* %20, %struct.gs_text_enum_procs_s** %procs7, align 8, !tbaa !63
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text_enum_id = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 24
  store i64 0, i64* %text_enum_id, align 8, !tbaa !64
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 11
  store i8* null, i8** %enum_client_data, align 8, !tbaa !65
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 15
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !66
  %25 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %log2_scale8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %25, i32 0, i32 15
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale8, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !67
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_enum_init_dynamic(%struct.gs_text_enum_s* %26, %struct.gs_font_s* %27) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %29, null
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %31 = load i64, i64* %ref_count, align 8, !tbaa !68
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !68
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %if.end

if.end:                                           ; preds = %do.end.13, %do.body
  br label %do.cond.14

do.cond.14:                                       ; preds = %if.end
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %entry
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_text_enum_init_dynamic(%struct.gs_text_enum_s* %pte, %struct.gs_font_s* %font) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 12
  store %struct.gs_font_s* %0, %struct.gs_font_s** %current_font, align 8, !tbaa !46
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %2, i32 0, i32 17
  store i32 0, i32* %index, align 4, !tbaa !69
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 18
  store i32 0, i32* %xy_index, align 4, !tbaa !70
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 23
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !71
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics21 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 23
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics21, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !72
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %6, i32 0, i32 16
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !23
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %device_disabled_grid_fitting = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %7, i32 0, i32 25
  store i32 0, i32* %device_disabled_grid_fitting, align 4, !tbaa !73
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %outer_CID = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 13
  store i64 2147483647, i64* %outer_CID, align 8, !tbaa !74
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %single_byte_space = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %9, i32 0, i32 21
  store i32 0, i32* %single_byte_space, align 4, !tbaa !75
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 20
  %init_fstack = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 10
  %11 = load i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)** %init_fstack, align 8, !tbaa !76
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gs_text_enum_s* %12, %struct.gs_font_s* %13) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %pto, %struct.gs_text_enum_s* %pfrom, i32 %for_return) #0 {
entry:
  %pto.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfrom.addr = alloca %struct.gs_text_enum_s*, align 8
  %for_return.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  store %struct.gs_text_enum_s* %pto, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pfrom, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  store i32 %for_return, i32* %for_return.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 19
  %depth1 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %2 = load i32, i32* %depth1, align 4, !tbaa !34
  store i32 %2, i32* %depth, align 4, !tbaa !5
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 12
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !46
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %current_font2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 12
  store %struct.gs_font_s* %4, %struct.gs_font_s** %current_font2, align 8, !tbaa !46
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %6, i32 0, i32 17
  %7 = load i32, i32* %index, align 4, !tbaa !69
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 17
  store i32 %7, i32* %index3, align 4, !tbaa !69
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %xy_index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %9, i32 0, i32 18
  %10 = load i32, i32* %xy_index, align 4, !tbaa !70
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %xy_index4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 18
  store i32 %10, i32* %xy_index4, align 4, !tbaa !70
  %12 = load i32, i32* %depth, align 4, !tbaa !5
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %fstack5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %13, i32 0, i32 19
  %depth6 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack5, i32 0, i32 0
  store i32 %12, i32* %depth6, align 4, !tbaa !34
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 23
  %15 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics27 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %15, i32 0, i32 23
  %16 = bitcast %struct.gs_point_s* %FontBBox_as_Metrics2 to i8*
  %17 = bitcast %struct.gs_point_s* %FontBBox_as_Metrics27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !82
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 16
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !23
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %pair8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 16
  store %struct.cached_fm_pair_s* %19, %struct.cached_fm_pair_s** %pair8, align 8, !tbaa !23
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %device_disabled_grid_fitting = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 25
  %22 = load i32, i32* %device_disabled_grid_fitting, align 4, !tbaa !73
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %device_disabled_grid_fitting9 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 25
  store i32 %22, i32* %device_disabled_grid_fitting9, align 4, !tbaa !73
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %outer_CID = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 13
  %25 = load i64, i64* %outer_CID, align 8, !tbaa !74
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %outer_CID10 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 13
  store i64 %25, i64* %outer_CID10, align 8, !tbaa !74
  %27 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp sge i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %fstack11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %28, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack11, i32 0, i32 1
  %arraydecay = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i32 0
  %29 = bitcast %struct.gx_font_stack_item_s* %arraydecay to i8*
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %fstack12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 19
  %items13 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack12, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items13, i32 0, i32 0
  %31 = bitcast %struct.gx_font_stack_item_s* %arraydecay14 to i8*
  %32 = load i32, i32* %depth, align 4, !tbaa !5
  %add = add nsw i32 %32, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @memcpy(i8* %29, i8* %31, i64 %mul) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load i32, i32* %for_return.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %34 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %cmap_code = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %34, i32 0, i32 20
  %35 = load i32, i32* %cmap_code, align 4, !tbaa !83
  %36 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %cmap_code16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %36, i32 0, i32 20
  store i32 %35, i32* %cmap_code16, align 4, !tbaa !83
  %37 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pto.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %37, i32 0, i32 28
  %38 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %returned17 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %38, i32 0, i32 28
  %39 = bitcast %struct.gs_text_returned_s* %returned to i8*
  %40 = bitcast %struct.gs_text_returned_s* %returned17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false), !tbaa.struct !84
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  %41 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gs_text_begin(%struct.gs_state_s* %pgs, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %2, i32 0, i32 0
  %3 = load i32, i32* %operation, align 4, !tbaa !7
  %and = and i32 %3, 64512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 6
  %5 = load i32, i32* %current_point_valid, align 4, !tbaa !85
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 70
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !96
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 11
  %8 = load i32, i32* %FontType, align 4, !tbaa !97
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 70
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font4, align 8, !tbaa !96
  %FontType5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 11
  %11 = load i32, i32* %FontType5, align 4, !tbaa !97
  %cmp6 = icmp ne i32 %11, 52
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.27

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 70
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font8, align 8, !tbaa !96
  %FontType9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType9, align 4, !tbaa !97
  %cmp10 = icmp ne i32 %14, 53
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.27

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 70
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font12, align 8, !tbaa !96
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %17 = load float, float* %xx, align 4, !tbaa !98
  %cmp13 = fcmp oeq float %17, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.27

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 70
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font15, align 8, !tbaa !96
  %FontMatrix16 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix16, i32 0, i32 1
  %20 = load float, float* %xy, align 4, !tbaa !99
  %cmp17 = fcmp oeq float %20, 0.000000e+00
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.27

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 70
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font19, align 8, !tbaa !96
  %FontMatrix20 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix20, i32 0, i32 2
  %23 = load float, float* %yx, align 4, !tbaa !100
  %cmp21 = fcmp oeq float %23, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 70
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %font23, align 8, !tbaa !96
  %FontMatrix24 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix24, i32 0, i32 3
  %26 = load float, float* %yy, align 4, !tbaa !101
  %cmp25 = fcmp oeq float %26, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.22
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true.22, %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %if.end.3
  %27 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %operation28 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %27, i32 0, i32 0
  %28 = load i32, i32* %operation28, align 4, !tbaa !7
  %and29 = and i32 %28, 1024
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.27
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gx_effective_clip_path(%struct.gs_state_s* %29, %struct.gx_clip_path_s** %pcpath) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %30, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.27
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 78
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %34 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !103
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 78
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %device36, align 8, !tbaa !102
  call void %34(%struct.gx_device_s* %36, i32 1) #5
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !104
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 0
  %39 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %cmp37 = icmp ne %struct.gx_device_color_type_s* %39, @gx_dc_type_data_none
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  br label %cond.end

cond.false:                                       ; preds = %if.end.35
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call38 = call i32 @gx_remap_color(%struct.gs_state_s* %40) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call38, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %41, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %cond.end
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %cond.end
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 69
  %arrayidx43 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color42, i32 0, i64 0
  %dev_color44 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx43, i32 0, i32 2
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color44, align 8, !tbaa !104
  %type45 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 0
  %45 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type45, align 8, !tbaa !106
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %45, i32 0, i32 4
  %46 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !113
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 69
  %arrayidx47 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color46, i32 0, i64 0
  %dev_color48 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx47, i32 0, i32 2
  %48 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color48, align 8, !tbaa !104
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_state_s* %49 to %struct.gs_imager_state_s*
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 78
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %device49, align 8, !tbaa !102
  %call50 = call i32 %46(%struct.gx_device_color_s* %48, %struct.gs_imager_state_s* %50, %struct.gx_device_s* %52, i32 0) #5
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %53, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.41
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.41
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 78
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %device54, align 8, !tbaa !102
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !115
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 78
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %device55, align 8, !tbaa !102
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gs_state_s* %59 to %struct.gs_imager_state_s*
  %61 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 70
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %font56, align 8, !tbaa !96
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 61
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !116
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 69
  %arrayidx58 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color57, i32 0, i64 0
  %dev_color59 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx58, i32 0, i32 2
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color59, align 8, !tbaa !104
  %68 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %70 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call60 = call i32 @gx_device_text_begin(%struct.gx_device_s* %58, %struct.gs_imager_state_s* %60, %struct.gs_text_params_s* %61, %struct.gs_font_s* %63, %struct.gx_path_s* %65, %struct.gx_device_color_s* %67, %struct.gx_clip_path_s* %68, %struct.gs_memory_s* %69, %struct.gs_text_enum_s** %70) #5
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.40, %if.then.33, %if.then.26, %if.then.2
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @gx_effective_clip_path(%struct.gs_state_s*, %struct.gx_clip_path_s**) #3

declare i32 @gx_remap_color(%struct.gs_state_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_text_update_dev_color(%struct.gs_state_s* %pgs, %struct.gs_text_enum_s* %pte) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %2 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !103
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 78
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !102
  call void %2(%struct.gx_device_s* %4, i32 1) #5
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pdcolor = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 6
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !44
  %cmp = icmp ne %struct.gx_device_color_s* %6, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !104
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 0
  %10 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %cmp2 = icmp ne %struct.gx_device_color_type_s* %10, @gx_dc_type_data_none
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gx_remap_color(%struct.gs_state_s* %11) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %15 = load i32, i32* %retval
  ret i32 %15

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_show_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %1) #5
  %or = or i32 1, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size2, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_text_begin(%struct.gs_state_s* %4, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %5, %struct.gs_text_enum_s** %6) #5
  %7 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %7) #1
  ret i32 %call3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @text_do_draw(%struct.gs_state_s* %pgs) #4 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_rendering_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 18
  %1 = load i32, i32* %text_rendering_mode, align 4, !tbaa !117
  %cmp = icmp eq i32 %1, 3
  %cond = select i1 %cmp, i32 262656, i32 1024
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gs_ashow_begin(%struct.gs_state_s* %pgs, double %ax, double %ay, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %ax, double* %ax.addr, align 8, !tbaa !61
  store double %ay, double* %ay.addr, align 8, !tbaa !61
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %1) #5
  %or = or i32 65, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size2, align 4, !tbaa !13
  %4 = load double, double* %ax.addr, align 8, !tbaa !61
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  store double %4, double* %x, align 8, !tbaa !118
  %5 = load double, double* %ay.addr, align 8, !tbaa !61
  %delta_all3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all3, i32 0, i32 1
  store double %5, double* %y, align 8, !tbaa !119
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_text_begin(%struct.gs_state_s* %6, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %7, %struct.gs_text_enum_s** %8) #5
  %9 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %9) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define i32 @gs_widthshow_begin(%struct.gs_state_s* %pgs, double %cx, double %cy, i64 %chr, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %cx, double* %cx.addr, align 8, !tbaa !61
  store double %cy, double* %cy.addr, align 8, !tbaa !61
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !60
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %1) #5
  %or = or i32 129, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size2, align 4, !tbaa !13
  %4 = load double, double* %cx.addr, align 8, !tbaa !61
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  store double %4, double* %x, align 8, !tbaa !120
  %5 = load double, double* %cy.addr, align 8, !tbaa !61
  %delta_space3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space3, i32 0, i32 1
  store double %5, double* %y, align 8, !tbaa !121
  %6 = load i64, i64* %chr.addr, align 8, !tbaa !60
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  store i64 %6, i64* %s_char, align 8, !tbaa !60
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_text_begin(%struct.gs_state_s* %7, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %8, %struct.gs_text_enum_s** %9) #5
  %10 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %10) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define i32 @gs_awidthshow_begin(%struct.gs_state_s* %pgs, double %cx, double %cy, i64 %chr, double %ax, double %ay, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i64, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %cx, double* %cx.addr, align 8, !tbaa !61
  store double %cy, double* %cy.addr, align 8, !tbaa !61
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !60
  store double %ax, double* %ax.addr, align 8, !tbaa !61
  store double %ay, double* %ay.addr, align 8, !tbaa !61
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %1) #5
  %or = or i32 193, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size2, align 4, !tbaa !13
  %4 = load double, double* %cx.addr, align 8, !tbaa !61
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  store double %4, double* %x, align 8, !tbaa !120
  %5 = load double, double* %cy.addr, align 8, !tbaa !61
  %delta_space3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space3, i32 0, i32 1
  store double %5, double* %y, align 8, !tbaa !121
  %6 = load i64, i64* %chr.addr, align 8, !tbaa !60
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  store i64 %6, i64* %s_char, align 8, !tbaa !60
  %7 = load double, double* %ax.addr, align 8, !tbaa !61
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 3
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  store double %7, double* %x4, align 8, !tbaa !118
  %8 = load double, double* %ay.addr, align 8, !tbaa !61
  %delta_all5 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 3
  %y6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all5, i32 0, i32 1
  store double %8, double* %y6, align 8, !tbaa !119
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_text_begin(%struct.gs_state_s* %9, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %10, %struct.gs_text_enum_s** %11) #5
  %12 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %12) #1
  ret i32 %call7
}

; Function Attrs: nounwind uwtable
define i32 @gs_kshow_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !122
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 3
  %4 = load float, float* %yy, align 4, !tbaa !123
  %mul = fmul float %2, %4
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %6 = load float, float* %yx, align 4, !tbaa !124
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 1
  %8 = load float, float* %xy, align 4, !tbaa !125
  %mul4 = fmul float %6, %8
  %sub = fsub float %mul, %mul4
  %cmp = fcmp oeq float %sub, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %9) #5
  %or = or i32 1, %call
  %or5 = or i32 %or, 65536
  %or6 = or i32 %or5, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or6, i32* %operation, align 4, !tbaa !7
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %10, i8** %bytes, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size7 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %11, i32* %size7, align 4, !tbaa !13
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_text_begin(%struct.gs_state_s* %12, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %13, %struct.gs_text_enum_s** %14) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define %struct.gs_text_params_s* @gs_get_text_params(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 0
  ret %struct.gs_text_params_s* %text
}

; Function Attrs: nounwind uwtable
define i32 @gs_xyshow_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, float* %x_widths, float* %y_widths, i32 %widths_size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %x_widths.addr = alloca float*, align 8
  %y_widths.addr = alloca float*, align 8
  %widths_size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  %widths_needed = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store float* %x_widths, float** %x_widths.addr, align 8, !tbaa !1
  store float* %y_widths, float** %y_widths.addr, align 8, !tbaa !1
  store i32 %widths_size, i32* %widths_size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %widths_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %3) #5
  %or = or i32 257, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %4, i8** %bytes, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %5, i32* %size2, align 4, !tbaa !13
  %6 = load float*, float** %x_widths.addr, align 8, !tbaa !1
  %x_widths3 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 6
  store float* %6, float** %x_widths3, align 8, !tbaa !15
  %7 = load float*, float** %y_widths.addr, align 8, !tbaa !1
  %y_widths4 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 7
  store float* %7, float** %y_widths4, align 8, !tbaa !16
  %8 = load i32, i32* %widths_size.addr, align 4, !tbaa !5
  %widths_size5 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 8
  store i32 %8, i32* %widths_size5, align 4, !tbaa !126
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_text_count_chars(%struct.gs_state_s* %9, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %10) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %widths_needed, align 4, !tbaa !5
  %14 = load float*, float** %x_widths.addr, align 8, !tbaa !1
  %tobool = icmp ne float* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %15 = load float*, float** %y_widths.addr, align 8, !tbaa !1
  %tobool7 = icmp ne float* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %widths_needed, align 4, !tbaa !5
  %shl = shl i32 %16, 1
  store i32 %shl, i32* %widths_needed, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  %17 = load i32, i32* %widths_size.addr, align 4, !tbaa !5
  %18 = load i32, i32* %widths_needed, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call13 = call i32 @gs_text_begin(%struct.gs_state_s* %19, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %20, %struct.gs_text_enum_s** %21) #5
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %widths_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gs_text_count_chars(%struct.gs_state_s*, %struct.gs_text_params_s*, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_glyphshow_begin(%struct.gs_state_s* %pgs, i64 %glyph, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %glyph.addr = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  %result = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !60
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @text_do_draw(%struct.gs_state_s* %2) #5
  %or = or i32 32, %call
  %or1 = or i32 %or, 131072
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or1, i32* %operation, align 4, !tbaa !7
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data to i64*
  store i64 %3, i64* %d_glyph, align 8, !tbaa !60
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 1, i32* %size, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_text_begin(%struct.gs_state_s* %4, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %5, %struct.gs_text_enum_s** %6) #5
  store i32 %call2, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %8, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 70
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !96
  call void @setup_FontBBox_as_Metrics2(%struct.gs_text_enum_s* %9, %struct.gs_font_s* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %result, align 4, !tbaa !5
  %13 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %14) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @setup_FontBBox_as_Metrics2(%struct.gs_text_enum_s* %pte, %struct.gs_font_s* %pfont) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !97
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType1, align 4, !tbaa !97
  %cmp2 = icmp eq i32 %3, 11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 23
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_base_s*
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %6, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %7 = bitcast %struct.gs_point_s* %FontBBox_as_Metrics2 to i8*
  %8 = bitcast %struct.gs_point_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !tbaa.struct !82
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cshow_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 66049, i32* %operation, align 4, !tbaa !7
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %1, i8** %bytes, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %2, i32* %size1, align 4, !tbaa !13
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %3, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %4, %struct.gs_text_enum_s** %5) #5
  %6 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_stringwidth_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 131585, i32* %operation, align 4, !tbaa !7
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %1, i8** %bytes, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %2, i32* %size1, align 4, !tbaa !13
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %3, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %4, %struct.gs_text_enum_s** %5) #5
  %6 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_charpath_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, i32 %stroke_path, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %stroke_path.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %stroke_path, i32* %stroke_path.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load i32, i32* %stroke_path.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 8192, i32 4096
  %or = or i32 131073, %cond
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size1, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %4, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %5, %struct.gs_text_enum_s** %6) #5
  %7 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_charboxpath_begin(%struct.gs_state_s* %pgs, i8* %str, i32 %size, i32 %stroke_path, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %stroke_path.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %stroke_path, i32* %stroke_path.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load i32, i32* %stroke_path.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 32768, i32 16384
  %or = or i32 131073, %cond
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or, i32* %operation, align 4, !tbaa !7
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 %3, i32* %size1, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %4, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %5, %struct.gs_text_enum_s** %6) #5
  %7 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_glyphpath_begin(%struct.gs_state_s* %pgs, i64 %glyph, i32 %stroke_path, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %glyph.addr = alloca i64, align 8
  %stroke_path.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  %result = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !60
  store i32 %stroke_path, i32* %stroke_path.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %stroke_path.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 8192, i32 4096
  %or = or i32 131104, %cond
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 %or, i32* %operation, align 4, !tbaa !7
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data to i64*
  store i64 %3, i64* %d_glyph, align 8, !tbaa !60
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 1, i32* %size, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %4, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %5, %struct.gs_text_enum_s** %6) #5
  store i32 %call, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %8, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 70
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !96
  call void @setup_FontBBox_as_Metrics2(%struct.gs_text_enum_s* %9, %struct.gs_font_s* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %result, align 4, !tbaa !5
  %13 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %14) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_glyphwidth_begin(%struct.gs_state_s* %pgs, i64 %glyph, %struct.gs_memory_s* %mem, %struct.gs_text_enum_s** %ppte) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %glyph.addr = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppte.addr = alloca %struct.gs_text_enum_s**, align 8
  %text = alloca %struct.gs_text_params_s, align 8
  %result = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !60
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppte, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  store i32 131616, i32* %operation, align 4, !tbaa !7
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data to i64*
  store i64 %2, i64* %d_glyph, align 8, !tbaa !60
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  store i32 1, i32* %size, align 4, !tbaa !13
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_begin(%struct.gs_state_s* %3, %struct.gs_text_params_s* %text, %struct.gs_memory_s* %4, %struct.gs_text_enum_s** %5) #5
  store i32 %call, i32* %result, align 4, !tbaa !5
  %6 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppte.addr, align 8, !tbaa !1
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %7, align 8, !tbaa !1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 70
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !96
  call void @setup_FontBBox_as_Metrics2(%struct.gs_text_enum_s* %8, %struct.gs_font_s* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %result, align 4, !tbaa !5
  %12 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_text_params_s* %text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %13) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_restart(%struct.gs_text_enum_s* %pte, %struct.gs_text_params_s* %text) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %tenum = alloca %struct.gs_text_enum_s, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_enum_s* %tenum to i8*
  call void @llvm.lifetime.start(i64 448, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %tenum to i8*
  %3 = bitcast %struct.gs_text_enum_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 448, i32 8, i1 false), !tbaa.struct !127
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %tenum, i32 0, i32 0
  %4 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_text_params_s* %text1 to i8*
  %6 = bitcast %struct.gs_text_params_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 88, i32 8, i1 false), !tbaa.struct !59
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %7, i32 0, i32 4
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !42
  %call = call i32 @gs_text_enum_init_dynamic(%struct.gs_text_enum_s* %tenum, %struct.gs_font_s* %8) #5
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %10 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %10, i32 0, i32 4
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font2, align 8, !tbaa !42
  call void @setup_FontBBox_as_Metrics2(%struct.gs_text_enum_s* %9, %struct.gs_font_s* %11) #5
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_text_resync(%struct.gs_text_enum_s* %12, %struct.gs_text_enum_s* %tenum) #5
  %13 = bitcast %struct.gs_text_enum_s* %tenum to i8*
  call void @llvm.lifetime.end(i64 448, i8* %13) #1
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_resync(%struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s* %pfrom) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfrom.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pfrom, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %resync = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 0
  %2 = load i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)** %resync, align 8, !tbaa !129
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pfrom.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3, %struct.gs_text_enum_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_process(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %process = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)** %process, align 8, !tbaa !131
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 12
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !46
  ret %struct.gs_font_s* %1
}

; Function Attrs: nounwind uwtable
define i64 @gs_text_current_char(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 28
  %current_char = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 0
  %1 = load i64, i64* %current_char, align 8, !tbaa !132
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @gs_text_next_char(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %retval = alloca i64, align 8
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %operation = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 0
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %2 = load i32, i32* %operation1, align 4, !tbaa !133
  store i32 %2, i32* %operation, align 4, !tbaa !5
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 17
  %4 = load i32, i32* %index, align 4, !tbaa !69
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text2, i32 0, i32 2
  %6 = load i32, i32* %size, align 4, !tbaa !134
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %operation, align 4, !tbaa !5
  %and = and i32 %7, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 17
  %9 = load i32, i32* %index4, align 4, !tbaa !69
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %10, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text5, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %11 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !128
  %conv = zext i8 %12 to i64
  store i64 %conv, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %operation, align 4, !tbaa !5
  %and7 = and i32 %13, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.6
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index10 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 17
  %15 = load i32, i32* %index10, align 4, !tbaa !69
  %idxprom11 = zext i32 %15 to i64
  %16 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %16, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text12, i32 0, i32 1
  %chars = bitcast %union.sd_* %data13 to i64**
  %17 = load i64*, i64** %chars, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %17, i64 %idxprom11
  %18 = load i64, i64* %arrayidx14, align 8, !tbaa !60
  store i64 %18, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.6
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.9, %if.then.3, %if.then
  %19 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @gs_text_current_glyph(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %1 = load i64, i64* %current_glyph, align 8, !tbaa !135
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_total_width(%struct.gs_text_enum_s* %pte, %struct.gs_point_s* %pwidth) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pwidth.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pwidth, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %2 = bitcast %struct.gs_point_s* %0 to i8*
  %3 = bitcast %struct.gs_point_s* %total_width to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !82
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_replaced_width(%struct.gs_text_params_s* %text, i32 %index, %struct.gs_point_s* %pwidth) #0 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %index.addr = alloca i32, align 4
  %pwidth.addr = alloca %struct.gs_point_s*, align 8
  %x_widths = alloca float*, align 8
  %y_widths = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.gs_point_s* %pwidth, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %0 = bitcast float** %x_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %x_widths1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %1, i32 0, i32 6
  %2 = load float*, float** %x_widths1, align 8, !tbaa !15
  store float* %2, float** %x_widths, align 8, !tbaa !1
  %3 = bitcast float** %y_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %y_widths2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %4, i32 0, i32 7
  %5 = load float*, float** %y_widths2, align 8, !tbaa !16
  store float* %5, float** %y_widths, align 8, !tbaa !1
  %6 = load float*, float** %x_widths, align 8, !tbaa !1
  %7 = load float*, float** %y_widths, align 8, !tbaa !1
  %cmp = icmp eq float* %6, %7
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %8 = load float*, float** %x_widths, align 8, !tbaa !1
  %tobool = icmp ne float* %8, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %mul = mul i32 %9, 2
  store i32 %mul, i32* %index.addr, align 4, !tbaa !5
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %add = add i32 %10, 1
  %11 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %widths_size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %11, i32 0, i32 8
  %12 = load i32, i32* %widths_size, align 4, !tbaa !126
  %cmp4 = icmp uge i32 %add, %12
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load float*, float** %x_widths, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx, align 4, !tbaa !136
  %conv = fpext float %15 to double
  %16 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %16, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !137
  %17 = load i32, i32* %index.addr, align 4, !tbaa !5
  %add6 = add i32 %17, 1
  %idxprom7 = zext i32 %add6 to i64
  %18 = load float*, float** %x_widths, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %18, i64 %idxprom7
  %19 = load float, float* %arrayidx8, align 4, !tbaa !136
  %conv9 = fpext float %19 to double
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 1
  store double %conv9, double* %y, align 8, !tbaa !138
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %21 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i32 0, i32 1
  store double 0.000000e+00, double* %y10, align 8, !tbaa !138
  %22 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i32 0, i32 0
  store double 0.000000e+00, double* %x11, align 8, !tbaa !137
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end
  br label %if.end.33

if.else.13:                                       ; preds = %entry
  %23 = load i32, i32* %index.addr, align 4, !tbaa !5
  %24 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %widths_size14 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %24, i32 0, i32 8
  %25 = load i32, i32* %widths_size14, align 4, !tbaa !126
  %cmp15 = icmp uge i32 %23, %25
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else.13
  %26 = load float*, float** %x_widths, align 8, !tbaa !1
  %tobool19 = icmp ne float* %26, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %27 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom20 = zext i32 %27 to i64
  %28 = load float*, float** %x_widths, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %28, i64 %idxprom20
  %29 = load float, float* %arrayidx21, align 4, !tbaa !136
  %conv22 = fpext float %29 to double
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv22, %cond.true ], [ 0.000000e+00, %cond.false ]
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %30, i32 0, i32 0
  store double %cond, double* %x23, align 8, !tbaa !137
  %31 = load float*, float** %y_widths, align 8, !tbaa !1
  %tobool24 = icmp ne float* %31, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.end
  %32 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom26 = zext i32 %32 to i64
  %33 = load float*, float** %y_widths, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %33, i64 %idxprom26
  %34 = load float, float* %arrayidx27, align 4, !tbaa !136
  %conv28 = fpext float %34 to double
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.25
  %cond31 = phi double [ %conv28, %cond.true.25 ], [ 0.000000e+00, %cond.false.29 ]
  %35 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %y32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %35, i32 0, i32 1
  store double %cond31, double* %y32, align 8, !tbaa !138
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.30, %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.17, %if.then.5
  %36 = bitcast float** %y_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast float** %x_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_is_width_only(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %is_width_only = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 2
  %2 = load i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)** %is_width_only, align 8, !tbaa !139
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_current_width(%struct.gs_text_enum_s* %pte, %struct.gs_point_s* %pwidth) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pwidth.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pwidth, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %current_width = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 3
  %2 = load i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)** %current_width, align 8, !tbaa !140
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pwidth.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3, %struct.gs_point_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_set_cache(%struct.gs_text_enum_s* %pte, double* %values, i32 %control) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %values.addr = alloca double*, align 8
  %control.addr = alloca i32, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %values, double** %values.addr, align 8, !tbaa !1
  store i32 %control, i32* %control.addr, align 4, !tbaa !128
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %set_cache = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*, double*, i32)** %set_cache, align 8, !tbaa !141
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load double*, double** %values.addr, align 8, !tbaa !1
  %5 = load i32, i32* %control.addr, align 4, !tbaa !128
  %call = call i32 %2(%struct.gs_text_enum_s* %3, double* %4, i32 %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_setcharwidth(%struct.gs_text_enum_s* %pte, double* %wxy) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %wxy.addr = alloca double*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %wxy, double** %wxy.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %set_cache = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*, double*, i32)** %set_cache, align 8, !tbaa !141
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load double*, double** %wxy.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3, double* %4, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_setcachedevice(%struct.gs_text_enum_s* %pte, double* %wbox) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %wbox.addr = alloca double*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %wbox, double** %wbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %set_cache = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*, double*, i32)** %set_cache, align 8, !tbaa !141
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load double*, double** %wbox.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3, double* %4, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s* %pte, double* %wbox2) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %wbox2.addr = alloca double*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store double* %wbox2, double** %wbox2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %set_cache = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*, double*, i32)** %set_cache, align 8, !tbaa !141
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = load double*, double** %wbox2.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3, double* %4, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_text_retry(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 9
  %1 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %retry = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %1, i32 0, i32 5
  %2 = load i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)** %retry, align 8, !tbaa !142
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_text_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gx_default_text_release(%struct.gs_text_enum_s* %pte, i8* %cname) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !39
  %tobool = icmp ne %struct.gx_device_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %2, i32 0, i32 1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev3, align 8, !tbaa !39
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !68
  %add = add nsw i64 %4, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !68
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev5, align 8, !tbaa !39
  %rc6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 7
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %7 = load i64, i64* %ref_count7, align 8, !tbaa !68
  %tobool8 = icmp ne i64 %7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.4
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev13 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev13, align 8, !tbaa !39
  %rc14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !143
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev15 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev15, align 8, !tbaa !39
  %rc16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !144
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev17 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev17, align 8, !tbaa !39
  %16 = bitcast %struct.gx_device_s* %15 to i8*
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %10(%struct.gs_memory_s* %13, i8* %16, i8* %17) #5
  br label %do.end.18

do.end.18:                                        ; preds = %do.end.12
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %if.end

if.else:                                          ; preds = %do.end.4
  br label %do.body.21

do.body.21:                                       ; preds = %if.else
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  br label %if.end

if.end:                                           ; preds = %do.end.22, %do.end.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev, align 8, !tbaa !40
  %tobool26 = icmp ne %struct.gx_device_s* %19, null
  br i1 %tobool26, label %if.then.27, label %if.end.58

if.then.27:                                       ; preds = %do.body.25
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.29
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev31 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev31, align 8, !tbaa !40
  %rc32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 7
  %ref_count33 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 0
  %22 = load i64, i64* %ref_count33, align 8, !tbaa !68
  %add34 = add nsw i64 %22, -1
  store i64 %add34, i64* %ref_count33, align 8, !tbaa !68
  br label %do.end.35

do.end.35:                                        ; preds = %do.end.30
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev36 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 2
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev36, align 8, !tbaa !40
  %rc37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 7
  %ref_count38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 0
  %25 = load i64, i64* %ref_count38, align 8, !tbaa !68
  %tobool39 = icmp ne i64 %25, 0
  br i1 %tobool39, label %if.else.54, label %if.then.40

if.then.40:                                       ; preds = %do.end.35
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev44 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev44, align 8, !tbaa !40
  %rc45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 7
  %free46 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc45, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free46, align 8, !tbaa !143
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev47 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %29, i32 0, i32 2
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev47, align 8, !tbaa !40
  %rc48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 7
  %memory49 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc48, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !144
  %32 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %imaging_dev50 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %32, i32 0, i32 2
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %imaging_dev50, align 8, !tbaa !40
  %34 = bitcast %struct.gx_device_s* %33 to i8*
  %35 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %28(%struct.gs_memory_s* %31, i8* %34, i8* %35) #5
  br label %do.end.51

do.end.51:                                        ; preds = %do.end.43
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.52
  br label %if.end.57

if.else.54:                                       ; preds = %do.end.35
  br label %do.body.55

do.body.55:                                       ; preds = %if.else.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.body.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.end.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.25
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_free_text_enum(%struct.gs_memory_s* %mem, i8* %obj, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %pte = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_enum_s** %pte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %2, %struct.gs_text_enum_s** %pte, align 8, !tbaa !1
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 9
  %4 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !63
  %release = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %4, i32 0, i32 6
  %5 = load void (%struct.gs_text_enum_s*, i8*)*, void (%struct.gs_text_enum_s*, i8*)** %release, align 8, !tbaa !145
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %5(%struct.gs_text_enum_s* %6, i8* %7) #5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @rc_free_struct_only(%struct.gs_memory_s* %8, i8* %9, i8* %10) #5
  %11 = bitcast %struct.gs_text_enum_s** %pte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gs_text_release(%struct.gs_text_enum_s* %pte, i8* %cname) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_text_enum_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 10
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %2 = load i64, i64* %ref_count, align 8, !tbaa !146
  %add = add nsw i64 %2, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !146
  br label %do.end.3

do.end.3:                                         ; preds = %do.end
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %3, i32 0, i32 10
  %ref_count5 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 0
  %4 = load i64, i64* %ref_count5, align 8, !tbaa !146
  %tobool6 = icmp ne i64 %4, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.end.3
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 10
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !147
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %rc12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %7, i32 0, i32 10
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !148
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_text_enum_s* %9 to i8*
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %6(%struct.gs_memory_s* %8, i8* %10, i8* %11) #5
  br label %do.end.13

do.end.13:                                        ; preds = %do.end.10
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  br label %if.end

if.else:                                          ; preds = %do.end.3
  br label %do.body.16

do.body.16:                                       ; preds = %if.else
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  br label %if.end

if.end:                                           ; preds = %do.end.17, %do.end.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_default_init_fstack(%struct.gs_text_enum_s* %pte, %struct.gs_font_s* %pfont) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  store i32 -1, i32* %depth, align 4, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s* %pte, i64* %pchr, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 17
  %1 = load i32, i32* %index, align 4, !tbaa !69
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %2, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 2
  %3 = load i32, i32* %size, align 4, !tbaa !134
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 0
  %5 = load i32, i32* %operation, align 4, !tbaa !133
  %and = and i32 %5, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.else.10

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %6, i32 0, i32 17
  %7 = load i32, i32* %index3, align 4, !tbaa !69
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text4, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %9 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !128
  %conv = zext i8 %10 to i64
  %11 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %conv, i64* %11, align 8, !tbaa !60
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %outer_CID = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %12, i32 0, i32 13
  %13 = load i64, i64* %outer_CID, align 8, !tbaa !74
  %cmp5 = icmp ne i64 %13, 2147483647
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.2
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %outer_CID8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 13
  %15 = load i64, i64* %outer_CID8, align 8, !tbaa !74
  %16 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %15, i64* %16, align 8, !tbaa !60
  br label %if.end.9

if.else:                                          ; preds = %if.then.2
  %17 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %17, align 8, !tbaa !60
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %if.end.53

if.else.10:                                       ; preds = %if.end
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 0
  %operation12 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text11, i32 0, i32 0
  %19 = load i32, i32* %operation12, align 4, !tbaa !133
  %and13 = and i32 %19, 32
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else.10
  %20 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 -1, i64* %20, align 8, !tbaa !60
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 0
  %data17 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text16, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data17 to i64*
  %22 = load i64, i64* %d_glyph, align 8, !tbaa !60
  %23 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %22, i64* %23, align 8, !tbaa !60
  br label %if.end.52

if.else.18:                                       ; preds = %if.else.10
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text19 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 0
  %operation20 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text19, i32 0, i32 0
  %25 = load i32, i32* %operation20, align 4, !tbaa !133
  %and21 = and i32 %25, 8
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.29

if.then.23:                                       ; preds = %if.else.18
  %26 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 -1, i64* %26, align 8, !tbaa !60
  %27 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index24 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %27, i32 0, i32 17
  %28 = load i32, i32* %index24, align 4, !tbaa !69
  %idxprom25 = zext i32 %28 to i64
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text26 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %29, i32 0, i32 0
  %data27 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data27 to i64**
  %30 = load i64*, i64** %glyphs, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i64, i64* %30, i64 %idxprom25
  %31 = load i64, i64* %arrayidx28, align 8, !tbaa !60
  %32 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %31, i64* %32, align 8, !tbaa !60
  br label %if.end.51

if.else.29:                                       ; preds = %if.else.18
  %33 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text30 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %33, i32 0, i32 0
  %operation31 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text30, i32 0, i32 0
  %34 = load i32, i32* %operation31, align 4, !tbaa !133
  %and32 = and i32 %34, 16
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else.29
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %35, i32 0, i32 0
  %data36 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text35, i32 0, i32 1
  %d_char = bitcast %union.sd_* %data36 to i64*
  %36 = load i64, i64* %d_char, align 8, !tbaa !60
  %37 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %36, i64* %37, align 8, !tbaa !60
  %38 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %38, align 8, !tbaa !60
  br label %if.end.50

if.else.37:                                       ; preds = %if.else.29
  %39 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text38 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %39, i32 0, i32 0
  %operation39 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text38, i32 0, i32 0
  %40 = load i32, i32* %operation39, align 4, !tbaa !133
  %and40 = and i32 %40, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.48

if.then.42:                                       ; preds = %if.else.37
  %41 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index43 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %41, i32 0, i32 17
  %42 = load i32, i32* %index43, align 4, !tbaa !69
  %idxprom44 = zext i32 %42 to i64
  %43 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text45 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %43, i32 0, i32 0
  %data46 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text45, i32 0, i32 1
  %chars = bitcast %union.sd_* %data46 to i64**
  %44 = load i64*, i64** %chars, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i64, i64* %44, i64 %idxprom44
  %45 = load i64, i64* %arrayidx47, align 8, !tbaa !60
  %46 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %45, i64* %46, align 8, !tbaa !60
  %47 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %47, align 8, !tbaa !60
  br label %if.end.49

if.else.48:                                       ; preds = %if.else.37
  store i32 -15, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.34
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.23
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.15
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.9
  %48 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index54 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %48, i32 0, i32 17
  %49 = load i32, i32* %index54, align 4, !tbaa !69
  %inc = add i32 %49, 1
  store i32 %inc, i32* %index54, align 4, !tbaa !69
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.else.48, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_build_char(%struct.gs_show_enum_s* %pte, %struct.gs_state_s* %pgs, %struct.gs_font_s* %pfont, i64 %chr, i64 %glyph) #0 {
entry:
  %pte.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  store %struct.gs_show_enum_s* %pte, %struct.gs_show_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !60
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !60
  ret i32 1
}

declare %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s*) #3

declare %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s*, %struct.gc_state_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !9, i64 24, !9, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!9 = !{!"gs_point_s", !10, i64 0, !10, i64 8}
!10 = !{!"double", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!8, !6, i64 16}
!14 = !{!12, !6, i64 8}
!15 = !{!8, !2, i64 64}
!16 = !{!8, !2, i64 72}
!17 = !{!18, !2, i64 0}
!18 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!19 = !{!18, !6, i64 8}
!20 = !{!21, !2, i64 16}
!21 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!21, !2, i64 0}
!23 = !{!24, !2, i64 224}
!24 = !{!"gs_text_enum_s", !8, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !25, i64 160, !2, i64 184, !2, i64 192, !26, i64 200, !6, i64 208, !27, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !28, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !9, i64 360, !26, i64 376, !6, i64 384, !27, i64 388, !9, i64 400, !29, i64 416}
!25 = !{!"rc_header_s", !26, i64 0, !2, i64 8, !2, i64 16}
!26 = !{!"long", !3, i64 0}
!27 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!28 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!29 = !{!"gs_text_returned_s", !26, i64 0, !26, i64 8, !9, i64 16}
!30 = !{!31, !6, i64 72}
!31 = !{!"cached_fm_pair_s", !2, i64 0, !32, i64 8, !3, i64 24, !6, i64 28, !33, i64 32, !33, i64 36, !33, i64 40, !33, i64 44, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !6, i64 104}
!32 = !{!"gs_uid_s", !26, i64 0, !2, i64 8}
!33 = !{!"float", !3, i64 0}
!34 = !{!24, !6, i64 240}
!35 = !{!36, !2, i64 0}
!36 = !{!"gx_font_stack_item_s", !2, i64 0, !6, i64 8}
!37 = !{!38, !2, i64 32}
!38 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!39 = !{!24, !2, i64 88}
!40 = !{!24, !2, i64 96}
!41 = !{!24, !2, i64 104}
!42 = !{!24, !2, i64 112}
!43 = !{!24, !2, i64 120}
!44 = !{!24, !2, i64 128}
!45 = !{!24, !2, i64 136}
!46 = !{!24, !2, i64 192}
!47 = !{!38, !2, i64 40}
!48 = !{!49, !2, i64 1480}
!49 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !25, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !50, i64 96, !53, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !26, i64 928, !26, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !26, i64 968, !26, i64 976, !54, i64 984, !6, i64 1052, !6, i64 1056, !55, i64 1064, !2, i64 1104, !3, i64 1112, !57, i64 1120, !58, i64 1144}
!50 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !51, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !52, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !26, i64 704, !6, i64 712}
!51 = !{!"short", !3, i64 0}
!52 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!53 = !{!"gx_device_cached_colors_s", !26, i64 0, !26, i64 8}
!54 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!55 = !{!"gdev_space_params_s", !26, i64 0, !26, i64 8, !56, i64 16, !6, i64 32, !3, i64 36}
!56 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !26, i64 8}
!57 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!58 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!59 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 4, !5, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 8, !60, i64 56, i64 8, !60, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5}
!60 = !{!26, !26, i64 0}
!61 = !{!10, !10, i64 0}
!62 = !{!24, !2, i64 144}
!63 = !{!24, !2, i64 152}
!64 = !{!24, !26, i64 376}
!65 = !{!24, !2, i64 184}
!66 = !{!24, !6, i64 216}
!67 = !{!24, !6, i64 212}
!68 = !{!49, !26, i64 56}
!69 = !{!24, !6, i64 232}
!70 = !{!24, !6, i64 236}
!71 = !{!24, !10, i64 368}
!72 = !{!24, !10, i64 360}
!73 = !{!24, !6, i64 384}
!74 = !{!24, !26, i64 200}
!75 = !{!24, !6, i64 348}
!76 = !{!77, !2, i64 248}
!77 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !78, i64 40, !26, i64 56, !2, i64 64, !2, i64 72, !79, i64 80, !79, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !33, i64 156, !6, i64 160, !80, i64 168, !81, i64 272, !81, i64 324}
!78 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!79 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!80 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!81 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!82 = !{i64 0, i64 8, !61, i64 8, i64 8, !61}
!83 = !{!24, !6, i64 344}
!84 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !61, i64 24, i64 8, !61}
!85 = !{!86, !6, i64 168}
!86 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !87, i64 24, !6, i64 128, !89, i64 132, !6, i64 168, !9, i64 176, !9, i64 192, !6, i64 208, !6, i64 212, !51, i64 216, !3, i64 220, !90, i64 224, !90, i64 228, !91, i64 232, !26, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !33, i64 296, !92, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !33, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !93, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !94, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !94, i64 1336, !2, i64 1616, !79, i64 1624, !6, i64 1648, !79, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !26, i64 1712, !26, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !89, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !95, i64 1888}
!87 = !{!"gx_line_params_s", !33, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !6, i64 36, !79, i64 40, !88, i64 64}
!88 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !33, i64 12, !6, i64 16, !33, i64 20, !6, i64 24, !6, i64 28, !33, i64 32}
!89 = !{!"gs_matrix_fixed_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!90 = !{!"gs_transparency_source_s", !33, i64 0}
!91 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!92 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!93 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!94 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !26, i64 16, !3, i64 24}
!95 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!96 = !{!86, !2, i64 1792}
!97 = !{!77, !3, i64 128}
!98 = !{!77, !33, i64 80}
!99 = !{!77, !33, i64 84}
!100 = !{!77, !33, i64 88}
!101 = !{!77, !33, i64 92}
!102 = !{!86, !2, i64 1872}
!103 = !{!49, !2, i64 1688}
!104 = !{!105, !2, i64 16}
!105 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!106 = !{!107, !2, i64 0}
!107 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !108, i64 352, !6, i64 360, !109, i64 368, !111, i64 632}
!108 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!109 = !{!"gs_client_color_s", !2, i64 0, !110, i64 8}
!110 = !{!"gs_paint_color_s", !3, i64 0}
!111 = !{!"_mask", !112, i64 0, !26, i64 8, !2, i64 16}
!112 = !{!"mp_", !6, i64 0, !6, i64 4}
!113 = !{!114, !2, i64 32}
!114 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!115 = !{!49, !6, i64 984}
!116 = !{!86, !2, i64 1680}
!117 = !{!86, !6, i64 252}
!118 = !{!8, !10, i64 24}
!119 = !{!8, !10, i64 32}
!120 = !{!8, !10, i64 40}
!121 = !{!8, !10, i64 48}
!122 = !{!86, !33, i64 132}
!123 = !{!86, !33, i64 144}
!124 = !{!86, !33, i64 140}
!125 = !{!86, !33, i64 136}
!126 = !{!8, !6, i64 80}
!127 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 4, !5, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 8, !60, i64 56, i64 8, !60, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !60, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !60, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 4, !5, i64 224, i64 8, !1, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 4, !5, i64 248, i64 96, !128, i64 344, i64 4, !5, i64 348, i64 4, !5, i64 352, i64 4, !5, i64 360, i64 8, !61, i64 368, i64 8, !61, i64 376, i64 8, !60, i64 384, i64 4, !5, i64 388, i64 4, !5, i64 392, i64 4, !5, i64 400, i64 8, !61, i64 408, i64 8, !61, i64 416, i64 8, !60, i64 424, i64 8, !60, i64 432, i64 8, !61, i64 440, i64 8, !61}
!128 = !{!3, !3, i64 0}
!129 = !{!130, !2, i64 0}
!130 = !{!"gs_text_enum_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!131 = !{!130, !2, i64 8}
!132 = !{!24, !26, i64 416}
!133 = !{!24, !6, i64 0}
!134 = !{!24, !6, i64 16}
!135 = !{!24, !26, i64 424}
!136 = !{!33, !33, i64 0}
!137 = !{!9, !10, i64 0}
!138 = !{!9, !10, i64 8}
!139 = !{!130, !2, i64 16}
!140 = !{!130, !2, i64 24}
!141 = !{!130, !2, i64 32}
!142 = !{!130, !2, i64 40}
!143 = !{!49, !2, i64 72}
!144 = !{!49, !2, i64 64}
!145 = !{!130, !2, i64 48}
!146 = !{!24, !26, i64 160}
!147 = !{!24, !2, i64 176}
!148 = !{!24, !2, i64 168}
