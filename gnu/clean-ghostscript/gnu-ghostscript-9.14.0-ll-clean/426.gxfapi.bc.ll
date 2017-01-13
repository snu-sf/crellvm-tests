; ModuleID = './gxfapi.bc'
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
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type opaque
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
%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.1, float, i32, %struct.anon.2, %struct.anon.3, i32, %struct.anon.4, i32, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_type1_state_s = type opaque
%struct.anon.1 = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [14 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [10 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [1 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [12 x float] }
%struct.anon.9 = type { i32, [16 x float] }
%struct.gs_fapi_outline_handler_s = type { %struct.gx_path_s*, i32, i32, i32, i32 }
%struct.gs_image_enum_s = type opaque

@.str = private unnamed_addr constant [57 x i8] c"Ignoring gs_notify_register() failure for FAPI font.....\00", align 1
@st_gs_state = external constant %struct.gs_memory_struct_type_s, align 8
@st_gs_show_enum = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Requested FAPI plugin: %s \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"not found. Falling back to normal plugin search\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gs_fapi_passfont server params\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Requested FAPI plugin %s failed, searching for alternative plugin\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"gs_fapi_find_server server params\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gs_fapi_find_server: server_param\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"gs_fapi_init\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"gs_fapi_finit: mem->gs_lib_ctx->fapi_servers\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Error: Font Renderer Plugin ( %s ) return code = %d\0A\00", align 1
@path_interface_stub = internal global %struct.gs_fapi_path_s { i8* null, i32 0, i32 0, i32 (%struct.gs_fapi_path_s*, i64, i64)* @add_move, i32 (%struct.gs_fapi_path_s*, i64, i64)* @add_line, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)* @add_curve, i32 (%struct.gs_fapi_path_s*)* @add_closepath }, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"fapi_copy_mono\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"fapi_finish_render_aux\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"image_char(image_enum)\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"fapi_image_uncached_glyph(bold_line)\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"fapi_image_uncached_glyph(bold_lines)\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"fapi_image_uncached_glyph(line)\00", align 1
@byte_count_bits = external constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s* %ff) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %0, i32 0, i32 7
  %1 = load i32, i32* %is_type1, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %2, i32 0, i32 8
  %3 = load i32, i32* %is_cid, align 4, !tbaa !9
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 15
  %6 = load i8*, i8** %client_font_data, align 8, !tbaa !10
  %7 = bitcast i8* %6 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %7, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %8 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %8, i32 0, i32 30
  %MetricsCount = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 1
  %9 = load i32, i32* %MetricsCount, align 4, !tbaa !11
  store i32 %9, i32* %retval
  %10 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_prepare_font(%struct.gs_font_s* %pfont, %struct.gs_fapi_server_s* %I, i32 %subfont, i8* %font_file_path, %struct.gs_string_s* %full_font_buf, i8* %xlatmap, i8** %decodingID) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %subfont.addr = alloca i32, align 4
  %font_file_path.addr = alloca i8*, align 8
  %full_font_buf.addr = alloca %struct.gs_string_s*, align 8
  %xlatmap.addr = alloca i8*, align 8
  %decodingID.addr = alloca i8**, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %bbox_set = alloca i32, align 4
  %BBox = alloca [4 x i32], align 16
  %scale = alloca i32, align 4
  %units = alloca [2 x i32], align 4
  %size = alloca double, align 8
  %font_scale = alloca %struct.gs_fapi_font_scale_s, align 4
  %cleanup.dest.slot = alloca i32
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  %FDArray = alloca %struct.gs_font_type1_s**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %pbfont1 = alloca %struct.gs_font_type1_s*, align 8
  %BBox_temp = alloca [4 x i32], align 16
  %units_temp = alloca [2 x i32], align 4
  %pbfont1242 = alloca %struct.gs_font_type1_s*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i32 %subfont, i32* %subfont.addr, align 4, !tbaa !28
  store i8* %font_file_path, i8** %font_file_path.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %full_font_buf, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  store i8* %xlatmap, i8** %xlatmap.addr, align 8, !tbaa !1
  store i8** %decodingID, i8*** %decodingID.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %bbox_set to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %bbox_set, align 4, !tbaa !28
  %8 = bitcast [4 x i32]* %BBox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast [2 x i32]* %units to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.lifetime.start(i64 44, i8* %12) #1
  %13 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 44, i32 4, i1 false)
  %14 = bitcast i8* %13 to %struct.gs_fapi_font_scale_s*
  %15 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %14, i32 0, i32 0
  %16 = getelementptr [6 x i32], [6 x i32]* %15, i32 0, i32 0
  store i32 1, i32* %16
  %17 = getelementptr [6 x i32], [6 x i32]* %15, i32 0, i32 3
  store i32 1, i32* %17
  %18 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %14, i32 0, i32 2
  %19 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 1, i32* %19
  %20 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 1
  store i32 1, i32* %20
  %21 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %14, i32 0, i32 3
  store i32 1, i32* %21
  %22 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %frac_shift = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %22, i32 0, i32 2
  %23 = load i32, i32* %frac_shift, align 4, !tbaa !31
  %shl = shl i32 1, %23
  store i32 %shl, i32* %scale, align 4, !tbaa !28
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %25 = load float, float* %xx, align 4, !tbaa !36
  %conv = fpext float %25 to double
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontMatrix1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 9
  %xx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix1, i32 0, i32 0
  %27 = load float, float* %xx2, align 4, !tbaa !36
  %conv3 = fpext float %27 to double
  %mul = fmul double %conv, %conv3
  %28 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontMatrix4 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %28, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix4, i32 0, i32 1
  %29 = load float, float* %xy, align 4, !tbaa !38
  %conv5 = fpext float %29 to double
  %30 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontMatrix6 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %30, i32 0, i32 9
  %xy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix6, i32 0, i32 1
  %31 = load float, float* %xy7, align 4, !tbaa !38
  %conv8 = fpext float %31 to double
  %mul9 = fmul double %conv5, %conv8
  %add = fadd double %mul, %mul9
  %call = call double @sqrt(double %add) #6
  %div = fdiv double 1.000000e+00, %call
  store double %div, double* %size, align 8, !tbaa !39
  %32 = load double, double* %size, align 8, !tbaa !39
  %cmp = fcmp olt double %32, 1.000000e+03
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+03, double* %size, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load double, double* %size, align 8, !tbaa !39
  %34 = load i32, i32* %scale, align 4, !tbaa !28
  %conv11 = sitofp i32 %34 to double
  %mul12 = fmul double %33, %conv11
  %add13 = fadd double %mul12, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  %matrix = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %matrix, i32 0, i64 3
  store i32 %conv14, i32* %arrayidx, align 4, !tbaa !28
  %matrix15 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix15, i32 0, i64 0
  store i32 %conv14, i32* %arrayidx16, align 4, !tbaa !28
  %35 = load i32, i32* %scale, align 4, !tbaa !28
  %mul17 = mul nsw i32 72, %35
  %HWResolution = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution, i32 0, i64 0
  store i32 %mul17, i32* %arrayidx18, align 4, !tbaa !28
  %36 = load i32, i32* %scale, align 4, !tbaa !28
  %mul19 = mul nsw i32 72, %36
  %HWResolution20 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution20, i32 0, i64 1
  store i32 %mul19, i32* %arrayidx21, align 4, !tbaa !28
  %37 = load i32, i32* %subfont.addr, align 4, !tbaa !28
  %38 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %38, i32 0, i32 4
  %subfont22 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff, i32 0, i32 6
  store i32 %37, i32* %subfont22, align 4, !tbaa !40
  %39 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %40 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff23 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %40, i32 0, i32 4
  %font_file_path24 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff23, i32 0, i32 3
  store i8* %39, i8** %font_file_path24, align 8, !tbaa !41
  %41 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %41, i32 0, i32 11
  %42 = load i32, i32* %FontType, align 4, !tbaa !42
  %cmp25 = icmp eq i32 %42, 1
  br i1 %cmp25, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %43 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType27 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %43, i32 0, i32 11
  %44 = load i32, i32* %FontType27, align 4, !tbaa !42
  %cmp28 = icmp eq i32 %44, 2
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType30 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %45, i32 0, i32 11
  %46 = load i32, i32* %FontType30, align 4, !tbaa !42
  %cmp31 = icmp eq i32 %46, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %47 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp31, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  %48 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff33 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %48, i32 0, i32 4
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff33, i32 0, i32 7
  store i32 %lor.ext, i32* %is_type1, align 4, !tbaa !43
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %49, i32 0, i32 16
  %50 = load i32, i32* %WMode, align 4, !tbaa !44
  %cmp34 = icmp ne i32 %50, 0
  %conv35 = zext i1 %cmp34 to i32
  %51 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff36 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %51, i32 0, i32 4
  %is_vertical = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff36, i32 0, i32 11
  store i32 %conv35, i32* %is_vertical, align 4, !tbaa !45
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff37 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %53, i32 0, i32 4
  %memory38 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff37, i32 0, i32 2
  store %struct.gs_memory_s* %52, %struct.gs_memory_s** %memory38, align 8, !tbaa !46
  %54 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %54, i32 0, i32 1
  %55 = load i8*, i8** %client_ctx_p, align 8, !tbaa !47
  %56 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff39 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %56, i32 0, i32 4
  %client_ctx_p40 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff39, i32 0, i32 14
  store i8* %55, i8** %client_ctx_p40, align 8, !tbaa !48
  %57 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_base_s* %57 to i8*
  %59 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff41 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %59, i32 0, i32 4
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff41, i32 0, i32 15
  store i8* %58, i8** %client_font_data, align 8, !tbaa !49
  %60 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %61 = bitcast %struct.gs_font_base_s* %60 to i8*
  %62 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff42 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %62, i32 0, i32 4
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff42, i32 0, i32 16
  store i8* %61, i8** %client_font_data2, align 8, !tbaa !50
  %63 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %63, i32 0, i32 26
  %64 = load i8*, i8** %FAPI_font_data, align 8, !tbaa !51
  %65 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff43 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %65, i32 0, i32 4
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff43, i32 0, i32 0
  store i8* %64, i8** %server_font_data, align 8, !tbaa !52
  %66 = load %struct.gs_string_s*, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_string_s* %66, null
  br i1 %tobool, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.end
  %67 = load %struct.gs_string_s*, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %67, i32 0, i32 0
  %68 = load i8*, i8** %data, align 8, !tbaa !53
  %69 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff45 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %69, i32 0, i32 4
  %full_font_buf46 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff45, i32 0, i32 4
  store i8* %68, i8** %full_font_buf46, align 8, !tbaa !55
  %70 = load %struct.gs_string_s*, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  %size47 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %70, i32 0, i32 1
  %71 = load i32, i32* %size47, align 4, !tbaa !56
  %72 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff48 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %72, i32 0, i32 4
  %full_font_buf_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff48, i32 0, i32 5
  store i32 %71, i32* %full_font_buf_len, align 4, !tbaa !57
  br label %if.end.53

if.else:                                          ; preds = %lor.end
  %73 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff49 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %73, i32 0, i32 4
  %full_font_buf50 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff49, i32 0, i32 4
  store i8* null, i8** %full_font_buf50, align 8, !tbaa !55
  %74 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff51 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %74, i32 0, i32 4
  %full_font_buf_len52 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff51, i32 0, i32 5
  store i32 0, i32* %full_font_buf_len52, align 4, !tbaa !57
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.44
  %75 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType54 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %75, i32 0, i32 11
  %76 = load i32, i32* %FontType54, align 4, !tbaa !42
  %cmp55 = icmp eq i32 %76, 9
  br i1 %cmp55, label %lor.end.65, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.53
  %77 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType58 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %77, i32 0, i32 11
  %78 = load i32, i32* %FontType58, align 4, !tbaa !42
  %cmp59 = icmp eq i32 %78, 10
  br i1 %cmp59, label %lor.end.65, label %lor.rhs.61

lor.rhs.61:                                       ; preds = %lor.lhs.false.57
  %79 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType62 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %79, i32 0, i32 11
  %80 = load i32, i32* %FontType62, align 4, !tbaa !42
  %cmp63 = icmp eq i32 %80, 11
  br label %lor.end.65

lor.end.65:                                       ; preds = %lor.rhs.61, %lor.lhs.false.57, %if.end.53
  %81 = phi i1 [ true, %lor.lhs.false.57 ], [ true, %if.end.53 ], [ %cmp63, %lor.rhs.61 ]
  %lor.ext66 = zext i1 %81 to i32
  %82 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff67 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %82, i32 0, i32 4
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff67, i32 0, i32 8
  store i32 %lor.ext66, i32* %is_cid, align 4, !tbaa !58
  %83 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %83, i32 0, i32 17
  %84 = load i32, i32* %PaintType, align 4, !tbaa !59
  %cmp68 = icmp ne i32 %84, 0
  %conv69 = zext i1 %cmp68 to i32
  %85 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff70 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %85, i32 0, i32 4
  %is_outline_font = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff70, i32 0, i32 9
  store i32 %conv69, i32* %is_outline_font, align 4, !tbaa !60
  %86 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff71 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %86, i32 0, i32 4
  %is_mtx_skipped = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff71, i32 0, i32 10
  %87 = load i32, i32* %is_mtx_skipped, align 4, !tbaa !61
  %tobool72 = icmp ne i32 %87, 0
  br i1 %tobool72, label %if.end.80, label %if.then.73

if.then.73:                                       ; preds = %lor.end.65
  %88 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff74 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %88, i32 0, i32 4
  %call75 = call i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s* %ff74) #7
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %89 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff78 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %89, i32 0, i32 4
  %is_mtx_skipped79 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff78, i32 0, i32 10
  store i32 %conv77, i32* %is_mtx_skipped79, align 4, !tbaa !61
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.73, %lor.end.65
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %91 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %92 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_scaled_font = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %92, i32 0, i32 10
  %93 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)** %get_scaled_font, align 8, !tbaa !62
  %94 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %95 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff81 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %95, i32 0, i32 4
  %96 = load i8*, i8** %xlatmap.addr, align 8, !tbaa !1
  %call82 = call i32 %93(%struct.gs_fapi_server_s* %94, %struct.gs_fapi_font_s* %ff81, %struct.gs_fapi_font_scale_s* %font_scale, i8* %96, i32 -3) #7
  %call83 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %90, %struct.gs_fapi_server_s* %91, i32 %call82) #7
  store i32 %call83, i32* %code, align 4, !tbaa !28
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.80
  %97 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.87:                                        ; preds = %if.end.80
  %98 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff88 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %98, i32 0, i32 4
  %server_font_data89 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff88, i32 0, i32 0
  %99 = load i8*, i8** %server_font_data89, align 8, !tbaa !52
  %100 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data90 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %100, i32 0, i32 26
  store i8* %99, i8** %FAPI_font_data90, align 8, !tbaa !51
  %101 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff91 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %101, i32 0, i32 4
  %server_font_data92 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff91, i32 0, i32 0
  %102 = load i8*, i8** %server_font_data92, align 8, !tbaa !52
  %cmp93 = icmp ne i8* %102, null
  br i1 %cmp93, label %if.then.95, label %if.end.132

if.then.95:                                       ; preds = %if.end.87
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %104 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %105 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_font_bbox = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %105, i32 0, i32 12
  %106 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)** %get_font_bbox, align 8, !tbaa !63
  %107 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %108 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff96 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %108, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %BBox, i32 0, i32 0
  %arraydecay97 = getelementptr inbounds [2 x i32], [2 x i32]* %units, i32 0, i32 0
  %call98 = call i32 %106(%struct.gs_fapi_server_s* %107, %struct.gs_fapi_font_s* %ff96, i32* %arraydecay, i32* %arraydecay97) #7
  %call99 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %103, %struct.gs_fapi_server_s* %104, i32 %call98) #7
  store i32 %call99, i32* %code, align 4, !tbaa !28
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.95
  %109 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %110 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data103 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %110, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %109, i8** %FAPI_font_data103) #7
  %111 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.104:                                       ; preds = %if.then.95
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %BBox, i32 0, i64 0
  %112 = load i32, i32* %arrayidx105, align 4, !tbaa !28
  %conv106 = sitofp i32 %112 to double
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %units, i32 0, i64 0
  %113 = load i32, i32* %arrayidx107, align 4, !tbaa !28
  %conv108 = sitofp i32 %113 to double
  %div109 = fdiv double %conv106, %conv108
  %114 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %114, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %div109, double* %x, align 8, !tbaa !64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %BBox, i32 0, i64 1
  %115 = load i32, i32* %arrayidx110, align 4, !tbaa !28
  %conv111 = sitofp i32 %115 to double
  %arrayidx112 = getelementptr inbounds [2 x i32], [2 x i32]* %units, i32 0, i64 1
  %116 = load i32, i32* %arrayidx112, align 4, !tbaa !28
  %conv113 = sitofp i32 %116 to double
  %div114 = fdiv double %conv111, %conv113
  %117 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox115 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %117, i32 0, i32 23
  %p116 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox115, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p116, i32 0, i32 1
  store double %div114, double* %y, align 8, !tbaa !65
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %BBox, i32 0, i64 2
  %118 = load i32, i32* %arrayidx117, align 4, !tbaa !28
  %conv118 = sitofp i32 %118 to double
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %units, i32 0, i64 0
  %119 = load i32, i32* %arrayidx119, align 4, !tbaa !28
  %conv120 = sitofp i32 %119 to double
  %div121 = fdiv double %conv118, %conv120
  %120 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox122 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %120, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox122, i32 0, i32 1
  %x123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %div121, double* %x123, align 8, !tbaa !66
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %BBox, i32 0, i64 3
  %121 = load i32, i32* %arrayidx124, align 4, !tbaa !28
  %conv125 = sitofp i32 %121 to double
  %arrayidx126 = getelementptr inbounds [2 x i32], [2 x i32]* %units, i32 0, i64 1
  %122 = load i32, i32* %arrayidx126, align 4, !tbaa !28
  %conv127 = sitofp i32 %122 to double
  %div128 = fdiv double %conv125, %conv127
  %123 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox129 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %123, i32 0, i32 23
  %q130 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox129, i32 0, i32 1
  %y131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q130, i32 0, i32 1
  store double %div128, double* %y131, align 8, !tbaa !67
  store i32 1, i32* %bbox_set, align 4, !tbaa !28
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.104, %if.end.87
  %124 = load i8*, i8** %xlatmap.addr, align 8, !tbaa !1
  %cmp133 = icmp ne i8* %124, null
  br i1 %cmp133, label %land.lhs.true, label %if.end.147

land.lhs.true:                                    ; preds = %if.end.132
  %125 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data135 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %125, i32 0, i32 26
  %126 = load i8*, i8** %FAPI_font_data135, align 8, !tbaa !51
  %cmp136 = icmp ne i8* %126, null
  br i1 %cmp136, label %if.then.138, label %if.end.147

if.then.138:                                      ; preds = %land.lhs.true
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %128 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %129 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_decodingID = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %129, i32 0, i32 11
  %130 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)** %get_decodingID, align 8, !tbaa !68
  %131 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %132 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff139 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %132, i32 0, i32 4
  %133 = load i8**, i8*** %decodingID.addr, align 8, !tbaa !1
  %call140 = call i32 %130(%struct.gs_fapi_server_s* %131, %struct.gs_fapi_font_s* %ff139, i8** %133) #7
  %call141 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %127, %struct.gs_fapi_server_s* %128, i32 %call140) #7
  store i32 %call141, i32* %code, align 4, !tbaa !28
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.then.138
  %134 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %135 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data145 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %135, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %134, i8** %FAPI_font_data145) #7
  %136 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.146:                                       ; preds = %if.then.138
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true, %if.end.132
  %137 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %cmp148 = icmp eq i8* %137, null
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.264

land.lhs.true.150:                                ; preds = %if.end.147
  %138 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff151 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %138, i32 0, i32 4
  %is_type1152 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff151, i32 0, i32 7
  %139 = load i32, i32* %is_type1152, align 4, !tbaa !43
  %tobool153 = icmp ne i32 %139, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.264

land.lhs.true.154:                                ; preds = %land.lhs.true.150
  %140 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff155 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %140, i32 0, i32 4
  %is_cid156 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff155, i32 0, i32 8
  %141 = load i32, i32* %is_cid156, align 4, !tbaa !58
  %tobool157 = icmp ne i32 %141, 0
  br i1 %tobool157, label %if.then.158, label %if.end.264

if.then.158:                                      ; preds = %land.lhs.true.154
  %142 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %144 = bitcast %struct.gs_font_base_s* %143 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %144, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %145 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  %146 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %146, i32 0, i32 29
  %FDArray159 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 2
  %147 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray159, align 8, !tbaa !69
  store %struct.gs_font_type1_s** %147, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %148 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  %150 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata160 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %150, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata160, i32 0, i32 3
  %151 = load i32, i32* %FDArray_size, align 4, !tbaa !72
  store i32 %151, i32* %n, align 4, !tbaa !28
  %152 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff161 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %152, i32 0, i32 4
  %is_type1162 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff161, i32 0, i32 7
  store i32 1, i32* %is_type1162, align 4, !tbaa !43
  %153 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff163 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %153, i32 0, i32 4
  %is_vertical164 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff163, i32 0, i32 11
  store i32 0, i32* %is_vertical164, align 4, !tbaa !45
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %155 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff165 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %155, i32 0, i32 4
  %memory166 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff165, i32 0, i32 2
  store %struct.gs_memory_s* %154, %struct.gs_memory_s** %memory166, align 8, !tbaa !46
  %156 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %client_ctx_p167 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %156, i32 0, i32 1
  %157 = load i8*, i8** %client_ctx_p167, align 8, !tbaa !47
  %158 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff168 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %158, i32 0, i32 4
  %client_ctx_p169 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff168, i32 0, i32 14
  store i8* %157, i8** %client_ctx_p169, align 8, !tbaa !48
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.158
  %159 = load i32, i32* %i, align 4, !tbaa !28
  %160 = load i32, i32* %n, align 4, !tbaa !28
  %cmp170 = icmp slt i32 %159, %160
  br i1 %cmp170, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %161 = bitcast %struct.gs_font_type1_s** %pbfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  %162 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %162 to i64
  %163 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %163, i64 %idxprom
  %164 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx172, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %164, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %165 = bitcast [4 x i32]* %BBox_temp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %165) #1
  %166 = bitcast [2 x i32]* %units_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  %167 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %FontBBox173 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %167, i32 0, i32 23
  %168 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox174 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %168, i32 0, i32 23
  %169 = bitcast %struct.gs_rect_s* %FontBBox173 to i8*
  %170 = bitcast %struct.gs_rect_s* %FontBBox174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false), !tbaa.struct !73
  %171 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %172 = bitcast %struct.gs_font_type1_s* %171 to i8*
  %173 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff175 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %173, i32 0, i32 4
  %client_font_data176 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff175, i32 0, i32 15
  store i8* %172, i8** %client_font_data176, align 8, !tbaa !49
  %174 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %174, i32 0, i32 25
  %175 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  %176 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %FAPI177 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %176, i32 0, i32 25
  store %struct.gs_fapi_server_s* %175, %struct.gs_fapi_server_s** %FAPI177, align 8, !tbaa !75
  %177 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %178 = bitcast %struct.gs_font_type1_s* %177 to i8*
  %179 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff178 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %179, i32 0, i32 4
  %client_font_data2179 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff178, i32 0, i32 16
  store i8* %178, i8** %client_font_data2179, align 8, !tbaa !50
  %180 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %FAPI_font_data180 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %180, i32 0, i32 26
  %181 = load i8*, i8** %FAPI_font_data180, align 8, !tbaa !80
  %182 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff181 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %182, i32 0, i32 4
  %server_font_data182 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff181, i32 0, i32 0
  store i8* %181, i8** %server_font_data182, align 8, !tbaa !52
  %183 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff183 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %183, i32 0, i32 4
  %is_cid184 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff183, i32 0, i32 8
  store i32 1, i32* %is_cid184, align 4, !tbaa !58
  %184 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %PaintType185 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %184, i32 0, i32 17
  %185 = load i32, i32* %PaintType185, align 4, !tbaa !81
  %cmp186 = icmp ne i32 %185, 0
  %conv187 = zext i1 %cmp186 to i32
  %186 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff188 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %186, i32 0, i32 4
  %is_outline_font189 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff188, i32 0, i32 9
  store i32 %conv187, i32* %is_outline_font189, align 4, !tbaa !60
  %187 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff190 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %187, i32 0, i32 4
  %is_mtx_skipped191 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff190, i32 0, i32 10
  %188 = load i32, i32* %is_mtx_skipped191, align 4, !tbaa !61
  %tobool192 = icmp ne i32 %188, 0
  br i1 %tobool192, label %if.end.200, label %if.then.193

if.then.193:                                      ; preds = %for.body
  %189 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff194 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %189, i32 0, i32 4
  %call195 = call i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s* %ff194) #7
  %cmp196 = icmp ne i32 %call195, 0
  %conv197 = zext i1 %cmp196 to i32
  %190 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff198 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %190, i32 0, i32 4
  %is_mtx_skipped199 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff198, i32 0, i32 10
  store i32 %conv197, i32* %is_mtx_skipped199, align 4, !tbaa !61
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.193, %for.body
  %191 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff201 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %191, i32 0, i32 4
  %subfont202 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff201, i32 0, i32 6
  store i32 0, i32* %subfont202, align 4, !tbaa !40
  %192 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %193 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %194 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_scaled_font203 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %194, i32 0, i32 10
  %195 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)** %get_scaled_font203, align 8, !tbaa !62
  %196 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %197 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff204 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %197, i32 0, i32 4
  %198 = load i32, i32* %i, align 4, !tbaa !28
  %call205 = call i32 %195(%struct.gs_fapi_server_s* %196, %struct.gs_fapi_font_s* %ff204, %struct.gs_fapi_font_scale_s* %font_scale, i8* null, i32 %198) #7
  %call206 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %192, %struct.gs_fapi_server_s* %193, i32 %call205) #7
  store i32 %call206, i32* %code, align 4, !tbaa !28
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.200
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.210:                                       ; preds = %if.end.200
  %199 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff211 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %199, i32 0, i32 4
  %server_font_data212 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff211, i32 0, i32 0
  %200 = load i8*, i8** %server_font_data212, align 8, !tbaa !52
  %201 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1, align 8, !tbaa !1
  %FAPI_font_data213 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %201, i32 0, i32 26
  store i8* %200, i8** %FAPI_font_data213, align 8, !tbaa !80
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %203 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %204 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_font_bbox214 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %204, i32 0, i32 12
  %205 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)** %get_font_bbox214, align 8, !tbaa !63
  %206 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %207 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff215 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %207, i32 0, i32 4
  %arraydecay216 = getelementptr inbounds [4 x i32], [4 x i32]* %BBox_temp, i32 0, i32 0
  %arraydecay217 = getelementptr inbounds [2 x i32], [2 x i32]* %units_temp, i32 0, i32 0
  %call218 = call i32 %205(%struct.gs_fapi_server_s* %206, %struct.gs_fapi_font_s* %ff215, i32* %arraydecay216, i32* %arraydecay217) #7
  %call219 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %202, %struct.gs_fapi_server_s* %203, i32 %call218) #7
  store i32 %call219, i32* %code, align 4, !tbaa !28
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.210
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.223:                                       ; preds = %if.end.210
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.223, %if.then.222, %if.then.209
  %208 = bitcast [2 x i32]* %units_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast [4 x i32]* %BBox_temp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %209) #1
  %210 = bitcast %struct.gs_font_type1_s** %pbfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %211 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %211, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %212 = load i32, i32* %i, align 4, !tbaa !28
  %213 = load i32, i32* %n, align 4, !tbaa !28
  %cmp226 = icmp eq i32 %212, %213
  br i1 %cmp226, label %if.then.228, label %if.end.237

if.then.228:                                      ; preds = %for.end
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %215 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %216 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_scaled_font229 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %216, i32 0, i32 10
  %217 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)** %get_scaled_font229, align 8, !tbaa !62
  %218 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %219 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff230 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %219, i32 0, i32 4
  %call231 = call i32 %217(%struct.gs_fapi_server_s* %218, %struct.gs_fapi_font_s* %ff230, %struct.gs_fapi_font_scale_s* %font_scale, i8* null, i32 -4) #7
  %call232 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %214, %struct.gs_fapi_server_s* %215, i32 %call231) #7
  store i32 %call232, i32* %code, align 4, !tbaa !28
  %220 = load i32, i32* %code, align 4, !tbaa !28
  %cmp233 = icmp sge i32 %220, 0
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.then.228
  %221 = load i32, i32* %bbox_set, align 4, !tbaa !28
  store i32 %221, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.end.236:                                       ; preds = %if.then.228
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %for.end
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.251, %if.end.237
  %222 = load i32, i32* %i, align 4, !tbaa !28
  %223 = load i32, i32* %n, align 4, !tbaa !28
  %cmp239 = icmp slt i32 %222, %223
  br i1 %cmp239, label %for.body.241, label %for.end.253

for.body.241:                                     ; preds = %for.cond.238
  %224 = bitcast %struct.gs_font_type1_s** %pbfont1242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  %225 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom243 = sext i32 %225 to i64
  %226 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %226, i64 %idxprom243
  %227 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx244, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %227, %struct.gs_font_type1_s** %pbfont1242, align 8, !tbaa !1
  %228 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1242, align 8, !tbaa !1
  %FAPI_font_data245 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %228, i32 0, i32 26
  %229 = load i8*, i8** %FAPI_font_data245, align 8, !tbaa !80
  %cmp246 = icmp ne i8* %229, null
  br i1 %cmp246, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %for.body.241
  %230 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %231 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pbfont1242, align 8, !tbaa !1
  %FAPI_font_data249 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %231, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %230, i8** %FAPI_font_data249) #7
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %for.body.241
  %232 = bitcast %struct.gs_font_type1_s** %pbfont1242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %233 = load i32, i32* %i, align 4, !tbaa !28
  %inc252 = add nsw i32 %233, 1
  store i32 %inc252, i32* %i, align 4, !tbaa !28
  br label %for.cond.238

for.end.253:                                      ; preds = %for.cond.238
  %234 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data254 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %234, i32 0, i32 26
  %235 = load i8*, i8** %FAPI_font_data254, align 8, !tbaa !51
  %cmp255 = icmp ne i8* %235, null
  br i1 %cmp255, label %if.then.257, label %if.end.259

if.then.257:                                      ; preds = %for.end.253
  %236 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %237 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data258 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %237, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %236, i8** %FAPI_font_data258) #7
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.257, %for.end.253
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

cleanup.260:                                      ; preds = %if.end.259, %if.then.235
  %238 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  %241 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  br label %cleanup.282

if.end.264:                                       ; preds = %land.lhs.true.154, %land.lhs.true.150, %if.end.147
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %243 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %244 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_scaled_font265 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %244, i32 0, i32 10
  %245 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)** %get_scaled_font265, align 8, !tbaa !62
  %246 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %247 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff266 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %247, i32 0, i32 4
  %248 = load i8*, i8** %xlatmap.addr, align 8, !tbaa !1
  %call267 = call i32 %245(%struct.gs_fapi_server_s* %246, %struct.gs_fapi_font_s* %ff266, %struct.gs_fapi_font_scale_s* %font_scale, i8* %248, i32 -4) #7
  %call268 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %242, %struct.gs_fapi_server_s* %243, i32 %call267) #7
  store i32 %call268, i32* %code, align 4, !tbaa !28
  %249 = load i32, i32* %code, align 4, !tbaa !28
  %cmp269 = icmp slt i32 %249, 0
  br i1 %cmp269, label %if.then.271, label %if.end.273

if.then.271:                                      ; preds = %if.end.264
  %250 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %251 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data272 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %251, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %250, i8** %FAPI_font_data272) #7
  %252 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.273:                                       ; preds = %if.end.264
  %253 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %253, i32 0, i32 5
  %254 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %255 = bitcast %struct.gs_font_base_s* %254 to i8*
  %call274 = call i32 @gs_notify_register(%struct.gs_notify_list_s* %notify_list, i32 (i8*, i8*)* @notify_remove_font, i8* %255) #7
  store i32 %call274, i32* %code, align 4, !tbaa !28
  %256 = load i32, i32* %code, align 4, !tbaa !28
  %cmp275 = icmp slt i32 %256, 0
  br i1 %cmp275, label %if.then.277, label %if.end.281

if.then.277:                                      ; preds = %if.end.273
  %257 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call278 = call i8* @gs_program_name() #7
  %call279 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %257, i8* %call278, i64 %call279) #7
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call280 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %258, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0)) #7
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.277, %if.end.273
  %259 = load i32, i32* %bbox_set, align 4, !tbaa !28
  store i32 %259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

cleanup.282:                                      ; preds = %if.end.281, %if.then.271, %cleanup.260, %if.then.144, %if.then.102, %if.then.86
  %260 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.lifetime.end(i64 44, i8* %260) #1
  %261 = bitcast double* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast [2 x i32]* %units to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast [4 x i32]* %BBox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %264) #1
  %265 = bitcast i32* %bbox_set to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = load i32, i32* %retval
  ret i32 %269

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %mem, %struct.gs_fapi_server_s* %I, i32 %rc) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %rc.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i32 %rc, i32* %rc.addr, align 4, !tbaa !28
  %0 = load i32, i32* %rc.addr, align 4, !tbaa !28
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @gs_debug_c(i32 49) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i8* @gs_program_name() #7
  %call3 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %1, i8* %call2, i64 %call3) #7
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ig = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %3, i32 0, i32 0
  %d = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig, i32 0, i32 0
  %4 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d, align 8, !tbaa !82
  %subtype = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %subtype, align 8, !tbaa !83
  %6 = load i32, i32* %rc.addr, align 4, !tbaa !28
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0), i8* %5, i32 %6) #7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.1, %if.end
  %7 = load i32, i32* %rc.addr, align 4, !tbaa !28
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %8 = load i32, i32* %rc.addr, align 4, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -10, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %I, i8** %server_font_data) #3 {
entry:
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %server_font_data.addr = alloca i8**, align 8
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i8** %server_font_data, i8*** %server_font_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %release_typeface = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %0, i32 0, i32 24
  %1 = load i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i8*)** %release_typeface, align 8, !tbaa !85
  %2 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %server_font_data.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %3, align 8, !tbaa !1
  %call = call i32 %1(%struct.gs_fapi_server_s* %2, i8* %4) #7
  %5 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %face = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %5, i32 0, i32 3
  %font_id = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face, i32 0, i32 0
  store i64 0, i64* %font_id, align 8, !tbaa !86
  %6 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %6, i32 0, i32 4
  %server_font_data1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff, i32 0, i32 0
  %7 = load i8*, i8** %server_font_data1, align 8, !tbaa !52
  %8 = load i8**, i8*** %server_font_data.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %8, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ff2 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %10, i32 0, i32 4
  %server_font_data3 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff2, i32 0, i32 0
  store i8* null, i8** %server_font_data3, align 8, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8**, i8*** %server_font_data.addr, align 8, !tbaa !1
  store i8* null, i8** %11, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_notify_register(%struct.gs_notify_list_s*, i32 (i8*, i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @notify_remove_font(i8* %proc_data, i8* %event_data) #0 {
entry:
  %proc_data.addr = alloca i8*, align 8
  %event_data.addr = alloca i8*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store i8* %event_data, i8** %event_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %event_data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %3, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %4 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 25
  %6 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  store %struct.gs_fapi_server_s* %6, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 26
  %8 = load i8*, i8** %FAPI_font_data, align 8, !tbaa !51
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %10, i32 0, i32 26
  call void @gs_fapi_release_typeface(%struct.gs_fapi_server_s* %9, i8** %FAPI_font_data3) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret i32 0
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #4

declare i8* @gs_program_name() #4

declare i64 @gs_revision_number() #4

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_finish_render(%struct.gs_font_s* %pfont, %struct.gs_state_s* %pgs, %struct.gs_text_enum_s* %penum, %struct.gs_fapi_server_s* %I) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %penum_s = alloca %struct.gs_show_enum_s*, align 8
  %penum_pgs = alloca %struct.gs_state_s*, align 8
  %dev1 = alloca %struct.gx_device_s*, align 8
  %import_shift_v = alloca i32, align 4
  %rast = alloca %struct.gs_fapi_raster, align 8
  %code = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code32 = alloca i32, align 4
  %pis42 = alloca %struct.gs_imager_state_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %lw = alloca float, align 4
  %in_cachedevice = alloca i32, align 4
  %rast_orig_x = alloca i32, align 4
  %rast_orig_y = alloca i32, align 4
  %shift_rd = alloca i32, align 4
  %rounding = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %penum_pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_device_s** %dev1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %import_shift_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -24, i32* %import_shift_v, align 4, !tbaa !28
  %6 = bitcast %struct.gs_fapi_raster* %rast to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_s* %12 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %13, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_text_enum_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.243

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %15, i32 0, i32 8
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !87
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %17 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !93
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 8
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !87
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 3
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !96
  %22 = bitcast %struct.gs_imager_state_s* %21 to i8*
  %call = call %struct.gs_memory_struct_type_s* %17(%struct.gs_memory_s* %19, i8* %22) #7
  %cmp3 = icmp ne %struct.gs_memory_struct_type_s* %call, @st_gs_state
  br i1 %cmp3, label %if.then.4, label %if.else.14

if.then.4:                                        ; preds = %if.end
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 8
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !87
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %object_type7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 15
  %25 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type7, align 8, !tbaa !93
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 8
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !87
  %28 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gs_text_enum_s* %28 to i8*
  %call9 = call %struct.gs_memory_struct_type_s* %25(%struct.gs_memory_s* %27, i8* %29) #7
  %cmp10 = icmp eq %struct.gs_memory_struct_type_s* %call9, @st_gs_show_enum
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.4
  %30 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %pgs12 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %30, i32 0, i32 30
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs12, align 8, !tbaa !97
  store %struct.gs_state_s* %31, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  br label %if.end.13

if.else:                                          ; preds = %if.then.4
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.243

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.16

if.else.14:                                       ; preds = %if.end
  %32 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis15 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %32, i32 0, i32 3
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis15, align 8, !tbaa !96
  %34 = bitcast %struct.gs_imager_state_s* %33 to %struct.gs_state_s*
  store %struct.gs_state_s* %34, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.end.13
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 78
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  store %struct.gx_device_s* %36, %struct.gx_device_s** %dev1, align 8, !tbaa !1
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 75
  %38 = load i32, i32* %in_charpath, align 4, !tbaa !113
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %if.end.16
  %39 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %39, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %40 = load i32, i32* %operation, align 4, !tbaa !114
  %and = and i32 %40, 512
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.else.31, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %42 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %43 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 61
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !115
  %46 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %46, i32 0, i32 17
  %47 = load i32, i32* %PaintType, align 4, !tbaa !59
  %tobool19 = icmp ne i32 %47, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  %call20 = call i32 @outline_char(%struct.gs_memory_s* %41, %struct.gs_fapi_server_s* %42, i32 -24, %struct.gs_show_enum_s* %43, %struct.gx_path_s* %45, i32 %lnot.ext) #7
  store i32 %call20, i32* %code, align 4, !tbaa !28
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %48 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.243

if.end.23:                                        ; preds = %if.then.18
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 76
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !116
  %path24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 61
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %path24, align 8, !tbaa !115
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %path25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 61
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %path25, align 8, !tbaa !115
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %in_charpath26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 75
  %55 = load i32, i32* %in_charpath26, align 4, !tbaa !113
  %call27 = call i32 @gx_path_add_char_path(%struct.gx_path_s* %51, %struct.gx_path_s* %53, i32 %55) #7
  store i32 %call27, i32* %code, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  %56 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.243

if.end.30:                                        ; preds = %if.end.23
  br label %if.end.242

if.else.31:                                       ; preds = %land.lhs.true, %if.end.16
  %57 = bitcast i32* %code32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast %struct.gs_fapi_raster* %rast to i8*
  %call33 = call i8* @memset(i8* %58, i32 0, i64 48) #6
  %59 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_char_raster = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %59, i32 0, i32 20
  %60 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)** %get_char_raster, align 8, !tbaa !117
  %61 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %call34 = call i32 %60(%struct.gs_fapi_server_s* %61, %struct.gs_fapi_raster* %rast) #7
  store i32 %call34, i32* %code32, align 4, !tbaa !28
  %62 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %62, i32 0, i32 0
  %operation36 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text35, i32 0, i32 0
  %63 = load i32, i32* %operation36, align 4, !tbaa !114
  %and37 = and i32 %63, 512
  %cmp38 = icmp ne i32 %and37, 0
  br i1 %cmp38, label %if.else.99, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %if.else.31
  %64 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %use_outline = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %64, i32 0, i32 6
  %65 = load i32, i32* %use_outline, align 4, !tbaa !118
  %tobool40 = icmp ne i32 %65, 0
  br i1 %tobool40, label %if.then.41, label %if.else.99

if.then.41:                                       ; preds = %land.lhs.true.39
  %66 = bitcast %struct.gs_imager_state_s** %pis42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %show_gstate43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 76
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate43, align 8, !tbaa !116
  %69 = bitcast %struct.gs_state_s* %68 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %69, %struct.gs_imager_state_s** %pis42, align 8, !tbaa !1
  %70 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %70) #1
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call44 = call i32 @gs_currentpoint(%struct.gs_state_s* %71, %struct.gs_point_s* %pt) #7
  store i32 %call44, i32* %code32, align 4, !tbaa !28
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.41
  %72 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.47:                                        ; preds = %if.then.41
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %74 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %75 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %path48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 61
  %77 = load %struct.gx_path_s*, %struct.gx_path_s** %path48, align 8, !tbaa !115
  %78 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType49 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %78, i32 0, i32 17
  %79 = load i32, i32* %PaintType49, align 4, !tbaa !59
  %tobool50 = icmp ne i32 %79, 0
  %lnot51 = xor i1 %tobool50, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %call53 = call i32 @outline_char(%struct.gs_memory_s* %73, %struct.gs_fapi_server_s* %74, i32 -24, %struct.gs_show_enum_s* %75, %struct.gx_path_s* %77, i32 %lnot.ext52) #7
  store i32 %call53, i32* %code32, align 4, !tbaa !28
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.47
  %80 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.56:                                        ; preds = %if.end.47
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %82 = bitcast %struct.gs_state_s* %81 to %struct.gs_imager_state_s*
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis42, align 8, !tbaa !1
  %call57 = call double @gs_char_flatness(%struct.gs_imager_state_s* %83, double 1.000000e+00) #7
  %call58 = call i32 @gs_imager_setflat(%struct.gs_imager_state_s* %82, double %call57) #7
  store i32 %call58, i32* %code32, align 4, !tbaa !28
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %84 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.61:                                        ; preds = %if.end.56
  %85 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType62 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %85, i32 0, i32 17
  %86 = load i32, i32* %PaintType62, align 4, !tbaa !59
  %tobool63 = icmp ne i32 %86, 0
  br i1 %tobool63, label %if.then.64, label %if.else.74

if.then.64:                                       ; preds = %if.end.61
  %87 = bitcast float* %lw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call65 = call float @gs_currentlinewidth(%struct.gs_state_s* %88) #7
  store float %call65, float* %lw, align 4, !tbaa !119
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %90 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %90, i32 0, i32 18
  %91 = load float, float* %StrokeWidth, align 4, !tbaa !120
  %conv = fpext float %91 to double
  %call66 = call i32 @gs_setlinewidth(%struct.gs_state_s* %89, double %conv) #7
  %92 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call67 = call i32 @gs_stroke(%struct.gs_state_s* %92) #7
  store i32 %call67, i32* %code32, align 4, !tbaa !28
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %94 = load float, float* %lw, align 4, !tbaa !119
  %conv68 = fpext float %94 to double
  %call69 = call i32 @gs_setlinewidth(%struct.gs_state_s* %93, double %conv68) #7
  %95 = load i32, i32* %code32, align 4, !tbaa !28
  %cmp70 = icmp slt i32 %95, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.64
  %96 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72
  %97 = bitcast float* %lw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.95 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.87

if.else.74:                                       ; preds = %if.end.61
  %98 = bitcast i32* %in_cachedevice to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %in_cachedevice75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %99, i32 0, i32 74
  %100 = load i32, i32* %in_cachedevice75, align 4, !tbaa !121
  store i32 %100, i32* %in_cachedevice, align 4, !tbaa !122
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %in_cachedevice76 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 74
  store i32 1, i32* %in_cachedevice76, align 4, !tbaa !121
  %102 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %102, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !123
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %fill_adjust77 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust77, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !124
  %104 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call78 = call i32 @gs_fill(%struct.gs_state_s* %104) #7
  store i32 %call78, i32* %code32, align 4, !tbaa !28
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.74
  %105 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.82:                                        ; preds = %if.else.74
  %106 = load i32, i32* %in_cachedevice, align 4, !tbaa !122
  %107 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %in_cachedevice83 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %107, i32 0, i32 74
  store i32 %106, i32* %in_cachedevice83, align 4, !tbaa !121
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.82, %if.then.81
  %108 = bitcast i32* %in_cachedevice to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %cleanup.dest.85 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.85, label %cleanup.95 [
    i32 0, label %cleanup.cont.86
  ]

cleanup.cont.86:                                  ; preds = %cleanup.84
  br label %if.end.87

if.end.87:                                        ; preds = %cleanup.cont.86, %cleanup.cont
  %109 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %110 = load double, double* %x88, align 8, !tbaa !125
  %y89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %111 = load double, double* %y89, align 8, !tbaa !126
  %call90 = call i32 @gs_moveto(%struct.gs_state_s* %109, double %110, double %111) #7
  store i32 %call90, i32* %code32, align 4, !tbaa !28
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.87
  %112 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.94:                                        ; preds = %if.end.87
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %if.then.93, %cleanup.84, %cleanup, %if.then.60, %if.then.55, %if.then.46
  %113 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #1
  %114 = bitcast %struct.gs_imager_state_s** %pis42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %cleanup.dest.97 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.97, label %cleanup.239 [
    i32 0, label %cleanup.cont.98
  ]

cleanup.cont.98:                                  ; preds = %cleanup.95
  br label %if.end.238

if.else.99:                                       ; preds = %land.lhs.true.39, %if.else.31
  %115 = bitcast i32* %rast_orig_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %orig_x = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 4
  %116 = load i32, i32* %orig_x, align 4, !tbaa !127
  store i32 %116, i32* %rast_orig_x, align 4, !tbaa !28
  %117 = bitcast i32* %rast_orig_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %orig_y = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 5
  %118 = load i32, i32* %orig_y, align 4, !tbaa !129
  %sub = sub nsw i32 0, %118
  store i32 %sub, i32* %rast_orig_y, align 4, !tbaa !28
  %119 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %in_cachedevice100 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %119, i32 0, i32 74
  %120 = load i32, i32* %in_cachedevice100, align 4, !tbaa !121
  %cmp101 = icmp eq i32 %120, 3
  br i1 %cmp101, label %if.then.103, label %if.else.220

if.then.103:                                      ; preds = %if.else.99
  %width = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 1
  %121 = load i32, i32* %width, align 4, !tbaa !130
  %cmp104 = icmp ne i32 %121, 0
  br i1 %cmp104, label %if.then.106, label %if.end.219

if.then.106:                                      ; preds = %if.then.103
  %122 = bitcast i32* %shift_rd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 4, i32* %shift_rd, align 4, !tbaa !28
  %123 = bitcast i32* %rounding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  store i32 8, i32* %rounding, align 4, !tbaa !28
  %124 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %125, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 6
  %126 = load i32, i32* %tx_fixed, align 4, !tbaa !131
  %127 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr = ashr i32 %126, %127
  %128 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %add = add nsw i32 %shr, %128
  %129 = load i32, i32* %rounding, align 4, !tbaa !28
  %add107 = add nsw i32 %add, %129
  %cmp108 = icmp slt i32 %add107, 0
  br i1 %cmp108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.106
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm110 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %130, i32 0, i32 5
  %tx_fixed111 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm110, i32 0, i32 6
  %131 = load i32, i32* %tx_fixed111, align 4, !tbaa !131
  %132 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr112 = ashr i32 %131, %132
  %133 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %add113 = add nsw i32 %shr112, %133
  %134 = load i32, i32* %rounding, align 4, !tbaa !28
  %add114 = add nsw i32 %add113, %134
  %neg = xor i32 %add114, -1
  %shr115 = ashr i32 %neg, 4
  %neg116 = xor i32 %shr115, -1
  br label %cond.end

cond.false:                                       ; preds = %if.then.106
  %135 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm117 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %135, i32 0, i32 5
  %tx_fixed118 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm117, i32 0, i32 6
  %136 = load i32, i32* %tx_fixed118, align 4, !tbaa !131
  %137 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr119 = ashr i32 %136, %137
  %138 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %add120 = add nsw i32 %shr119, %138
  %139 = load i32, i32* %rounding, align 4, !tbaa !28
  %add121 = add nsw i32 %add120, %139
  %shr122 = ashr i32 %add121, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg116, %cond.true ], [ %shr122, %cond.false ]
  store i32 %cond, i32* %dx, align 4, !tbaa !28
  %140 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm123 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %141, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm123, i32 0, i32 7
  %142 = load i32, i32* %ty_fixed, align 4, !tbaa !132
  %143 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr124 = ashr i32 %142, %143
  %144 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %add125 = add nsw i32 %shr124, %144
  %145 = load i32, i32* %rounding, align 4, !tbaa !28
  %add126 = add nsw i32 %add125, %145
  %cmp127 = icmp slt i32 %add126, 0
  br i1 %cmp127, label %cond.true.129, label %cond.false.138

cond.true.129:                                    ; preds = %cond.end
  %146 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm130 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %146, i32 0, i32 5
  %ty_fixed131 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm130, i32 0, i32 7
  %147 = load i32, i32* %ty_fixed131, align 4, !tbaa !132
  %148 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr132 = ashr i32 %147, %148
  %149 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %add133 = add nsw i32 %shr132, %149
  %150 = load i32, i32* %rounding, align 4, !tbaa !28
  %add134 = add nsw i32 %add133, %150
  %neg135 = xor i32 %add134, -1
  %shr136 = ashr i32 %neg135, 4
  %neg137 = xor i32 %shr136, -1
  br label %cond.end.145

cond.false.138:                                   ; preds = %cond.end
  %151 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm139 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %151, i32 0, i32 5
  %ty_fixed140 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm139, i32 0, i32 7
  %152 = load i32, i32* %ty_fixed140, align 4, !tbaa !132
  %153 = load i32, i32* %shift_rd, align 4, !tbaa !28
  %shr141 = ashr i32 %152, %153
  %154 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %add142 = add nsw i32 %shr141, %154
  %155 = load i32, i32* %rounding, align 4, !tbaa !28
  %add143 = add nsw i32 %add142, %155
  %shr144 = ashr i32 %add143, 4
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.138, %cond.true.129
  %cond146 = phi i32 [ %neg137, %cond.true.129 ], [ %shr144, %cond.false.138 ]
  store i32 %cond146, i32* %dy, align 4, !tbaa !28
  %156 = load i32, i32* %dx, align 4, !tbaa !28
  %left_indent = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 6
  %157 = load i32, i32* %left_indent, align 4, !tbaa !133
  %add147 = add nsw i32 %156, %157
  %cmp148 = icmp slt i32 %add147, 0
  br i1 %cmp148, label %if.then.156, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.145
  %158 = load i32, i32* %dx, align 4, !tbaa !28
  %left_indent150 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 6
  %159 = load i32, i32* %left_indent150, align 4, !tbaa !133
  %add151 = add nsw i32 %158, %159
  %black_width = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 8
  %160 = load i32, i32* %black_width, align 4, !tbaa !134
  %add152 = add nsw i32 %add151, %160
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !1
  %width153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %161, i32 0, i32 13
  %162 = load i32, i32* %width153, align 4, !tbaa !135
  %cmp154 = icmp sgt i32 %add152, %162
  br i1 %cmp154, label %if.then.156, label %if.end.166

if.then.156:                                      ; preds = %lor.lhs.false, %cond.end.145
  %163 = load i32, i32* %dx, align 4, !tbaa !28
  %left_indent157 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 6
  %164 = load i32, i32* %left_indent157, align 4, !tbaa !133
  %add158 = add nsw i32 %163, %164
  %cmp159 = icmp slt i32 %add158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %if.then.156
  %165 = load i32, i32* %dx, align 4, !tbaa !28
  %left_indent162 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 6
  %166 = load i32, i32* %left_indent162, align 4, !tbaa !133
  %add163 = add nsw i32 %165, %166
  %167 = load i32, i32* %dx, align 4, !tbaa !28
  %sub164 = sub nsw i32 %167, %add163
  store i32 %sub164, i32* %dx, align 4, !tbaa !28
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %if.then.156
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %lor.lhs.false
  %168 = load i32, i32* %dy, align 4, !tbaa !28
  %top_indent = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 7
  %169 = load i32, i32* %top_indent, align 4, !tbaa !145
  %add167 = add nsw i32 %168, %169
  %cmp168 = icmp slt i32 %add167, 0
  br i1 %cmp168, label %if.then.176, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.end.166
  %170 = load i32, i32* %dy, align 4, !tbaa !28
  %top_indent171 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 7
  %171 = load i32, i32* %top_indent171, align 4, !tbaa !145
  %add172 = add nsw i32 %170, %171
  %black_height = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 9
  %172 = load i32, i32* %black_height, align 4, !tbaa !146
  %add173 = add nsw i32 %add172, %172
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %173, i32 0, i32 14
  %174 = load i32, i32* %height, align 4, !tbaa !147
  %cmp174 = icmp sgt i32 %add173, %174
  br i1 %cmp174, label %if.then.176, label %if.end.186

if.then.176:                                      ; preds = %lor.lhs.false.170, %if.end.166
  %175 = load i32, i32* %dy, align 4, !tbaa !28
  %top_indent177 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 7
  %176 = load i32, i32* %top_indent177, align 4, !tbaa !145
  %add178 = add nsw i32 %175, %176
  %cmp179 = icmp slt i32 %add178, 0
  br i1 %cmp179, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %if.then.176
  %177 = load i32, i32* %dy, align 4, !tbaa !28
  %top_indent182 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %rast, i32 0, i32 7
  %178 = load i32, i32* %top_indent182, align 4, !tbaa !145
  %add183 = add nsw i32 %177, %178
  %179 = load i32, i32* %dy, align 4, !tbaa !28
  %sub184 = sub nsw i32 %179, %add183
  store i32 %sub184, i32* %dy, align 4, !tbaa !28
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %if.then.176
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %lor.lhs.false.170
  %180 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !1
  %181 = load i32, i32* %dx, align 4, !tbaa !28
  %182 = load i32, i32* %dy, align 4, !tbaa !28
  %call187 = call i32 @fapi_copy_mono(%struct.gx_device_s* %180, %struct.gs_fapi_raster* %rast, i32 %181, i32 %182) #7
  store i32 %call187, i32* %code32, align 4, !tbaa !28
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.186
  %183 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %183, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.213

if.end.191:                                       ; preds = %if.end.186
  %184 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory192 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %184, i32 0, i32 8
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory192, align 8, !tbaa !87
  %procs193 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %185, i32 0, i32 1
  %object_type194 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs193, i32 0, i32 15
  %186 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type194, align 8, !tbaa !93
  %187 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %memory195 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %187, i32 0, i32 8
  %188 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory195, align 8, !tbaa !87
  %189 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %190 = bitcast %struct.gs_text_enum_s* %189 to i8*
  %call196 = call %struct.gs_memory_struct_type_s* %186(%struct.gs_memory_s* %188, i8* %190) #7
  %cmp197 = icmp eq %struct.gs_memory_struct_type_s* %call196, @st_gs_show_enum
  br i1 %cmp197, label %if.then.199, label %if.end.212

if.then.199:                                      ; preds = %if.end.191
  %191 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %191, i32 0, i32 27
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift, i32 0, i32 0
  %192 = load double, double* %x200, align 8, !tbaa !148
  %mul = fmul double %192, 2.560000e+02
  %conv201 = fptosi double %mul to i32
  %193 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %193, i32 0, i32 47
  %194 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !149
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %194, i32 0, i32 16
  %x202 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %195 = load i32, i32* %x202, align 4, !tbaa !150
  %add203 = add nsw i32 %195, %conv201
  store i32 %add203, i32* %x202, align 4, !tbaa !150
  %196 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift204 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %196, i32 0, i32 27
  %y205 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift204, i32 0, i32 1
  %197 = load double, double* %y205, align 8, !tbaa !153
  %mul206 = fmul double %197, 2.560000e+02
  %conv207 = fptosi double %mul206 to i32
  %198 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc208 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %198, i32 0, i32 47
  %199 = load %struct.cached_char_s*, %struct.cached_char_s** %cc208, align 8, !tbaa !149
  %offset209 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %199, i32 0, i32 16
  %y210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset209, i32 0, i32 1
  %200 = load i32, i32* %y210, align 4, !tbaa !154
  %add211 = add nsw i32 %200, %conv207
  store i32 %add211, i32* %y210, align 4, !tbaa !154
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.199, %if.end.191
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.213

cleanup.213:                                      ; preds = %if.end.212, %if.then.190
  %201 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %rounding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %shift_rd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %cleanup.dest.217 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.217, label %cleanup.234 [
    i32 0, label %cleanup.cont.218
  ]

cleanup.cont.218:                                 ; preds = %cleanup.213
  br label %if.end.219

if.end.219:                                       ; preds = %cleanup.cont.218, %if.then.103
  br label %if.end.233

if.else.220:                                      ; preds = %if.else.99
  %205 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text221 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %205, i32 0, i32 0
  %operation222 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text221, i32 0, i32 0
  %206 = load i32, i32* %operation222, align 4, !tbaa !114
  %and223 = and i32 %206, 512
  %cmp224 = icmp ne i32 %and223, 0
  br i1 %cmp224, label %if.end.232, label %if.then.226

if.then.226:                                      ; preds = %if.else.220
  %207 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %208 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %209 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %call227 = call i32 @fapi_image_uncached_glyph(%struct.gs_font_s* %207, %struct.gs_state_s* %208, %struct.gs_show_enum_s* %209, %struct.gs_fapi_raster* %rast, i32 -24) #7
  store i32 %call227, i32* %code32, align 4, !tbaa !28
  %cmp228 = icmp slt i32 %call227, 0
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.then.226
  %210 = load i32, i32* %code32, align 4, !tbaa !28
  store i32 %210, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.231:                                       ; preds = %if.then.226
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.else.220
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.end.219
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.234

cleanup.234:                                      ; preds = %if.end.233, %if.then.230, %cleanup.213
  %211 = bitcast i32* %rast_orig_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %rast_orig_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %cleanup.dest.236 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.236, label %cleanup.239 [
    i32 0, label %cleanup.cont.237
  ]

cleanup.cont.237:                                 ; preds = %cleanup.234
  br label %if.end.238

if.end.238:                                       ; preds = %cleanup.cont.237, %cleanup.cont.98
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.239

cleanup.239:                                      ; preds = %if.end.238, %cleanup.234, %cleanup.95
  %213 = bitcast i32* %code32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %cleanup.dest.240 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.240, label %cleanup.243 [
    i32 0, label %cleanup.cont.241
  ]

cleanup.cont.241:                                 ; preds = %cleanup.239
  br label %if.end.242

if.end.242:                                       ; preds = %cleanup.cont.241, %if.end.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.243

cleanup.243:                                      ; preds = %if.end.242, %cleanup.239, %if.then.29, %if.then.22, %if.else, %if.then
  %214 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast %struct.gs_fapi_raster* %rast to i8*
  call void @llvm.lifetime.end(i64 48, i8* %217) #1
  %218 = bitcast i32* %import_shift_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast %struct.gx_device_s** %dev1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast %struct.gs_state_s** %penum_pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define internal i32 @outline_char(%struct.gs_memory_s* %mem, %struct.gs_fapi_server_s* %I, i32 %import_shift_v, %struct.gs_show_enum_s* %penum_s, %struct.gx_path_s* %path, i32 %close_path) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %import_shift_v.addr = alloca i32, align 4
  %penum_s.addr = alloca %struct.gs_show_enum_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %close_path.addr = alloca i32, align 4
  %path_interface = alloca %struct.gs_fapi_path_s, align 8
  %olh = alloca %struct.gs_fapi_outline_handler_s, align 8
  %code = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i32 %import_shift_v, i32* %import_shift_v.addr, align 4, !tbaa !28
  store %struct.gs_show_enum_s* %penum_s, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store i32 %close_path, i32* %close_path.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gs_fapi_path_s* %path_interface to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_fapi_path_s* %path_interface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_fapi_path_s* @path_interface_stub to i8*), i64 48, i32 8, i1 false), !tbaa.struct !155
  %2 = bitcast %struct.gs_fapi_outline_handler_s* %olh to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !156
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %7 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !93
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 8
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !156
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_show_enum_s* %10 to i8*
  %call = call %struct.gs_memory_struct_type_s* %7(%struct.gs_memory_s* %9, i8* %11) #7
  %cmp = icmp eq %struct.gs_memory_struct_type_s* %call, @st_gs_show_enum
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 30
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !97
  store %struct.gs_state_s* %13, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  br label %if.end.12

if.else:                                          ; preds = %entry
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 8
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !156
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %object_type5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 15
  %16 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type5, align 8, !tbaa !93
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 8
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !156
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 3
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !157
  %21 = bitcast %struct.gs_imager_state_s* %20 to i8*
  %call7 = call %struct.gs_memory_struct_type_s* %16(%struct.gs_memory_s* %18, i8* %21) #7
  %cmp8 = icmp eq %struct.gs_memory_struct_type_s* %call7, @st_gs_state
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %22 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %pis10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %22, i32 0, i32 3
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis10, align 8, !tbaa !157
  %24 = bitcast %struct.gs_imager_state_s* %23 to %struct.gs_state_s*
  store %struct.gs_state_s* %24, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  br label %if.end

if.else.11:                                       ; preds = %if.else
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %path13 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 0
  store %struct.gx_path_s* %25, %struct.gx_path_s** %path13, align 8, !tbaa !158
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 6
  %27 = load i32, i32* %tx_fixed, align 4, !tbaa !131
  %x0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 1
  store i32 %27, i32* %x0, align 4, !tbaa !160
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm14, i32 0, i32 7
  %29 = load i32, i32* %ty_fixed, align 4, !tbaa !132
  %y0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 2
  store i32 %29, i32* %y0, align 4, !tbaa !161
  %30 = load i32, i32* %close_path.addr, align 4, !tbaa !28
  %close_path15 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 3
  store i32 %30, i32* %close_path15, align 4, !tbaa !162
  %need_close = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 4
  store i32 0, i32* %need_close, align 4, !tbaa !163
  %31 = bitcast %struct.gs_fapi_outline_handler_s* %olh to i8*
  %olh16 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %path_interface, i32 0, i32 0
  store i8* %31, i8** %olh16, align 8, !tbaa !164
  %32 = load i32, i32* %import_shift_v.addr, align 4, !tbaa !28
  %shift = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %path_interface, i32 0, i32 1
  store i32 %32, i32* %shift, align 4, !tbaa !166
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %34 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %35 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %get_char_outline = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %35, i32 0, i32 22
  %36 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)** %get_char_outline, align 8, !tbaa !167
  %37 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %call17 = call i32 %36(%struct.gs_fapi_server_s* %37, %struct.gs_fapi_path_s* %path_interface) #7
  %call18 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %33, %struct.gs_fapi_server_s* %34, i32 %call17) #7
  store i32 %call18, i32* %code, align 4, !tbaa !28
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %path_interface, i32 0, i32 2
  %38 = load i32, i32* %gs_error, align 4, !tbaa !168
  %cmp20 = icmp ne i32 %38, 0
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.12
  %gs_error22 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %path_interface, i32 0, i32 2
  %39 = load i32, i32* %gs_error22, align 4, !tbaa !168
  %cmp23 = icmp ne i32 %39, 0
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.21
  %gs_error25 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %path_interface, i32 0, i32 2
  %40 = load i32, i32* %gs_error25, align 4, !tbaa !168
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %if.then.21
  %41 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false
  %need_close28 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 4
  %42 = load i32, i32* %need_close28, align 4, !tbaa !163
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.27
  %close_path29 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %olh, i32 0, i32 3
  %43 = load i32, i32* %close_path29, align 4, !tbaa !162
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %land.lhs.true
  %call32 = call i32 @add_closepath(%struct.gs_fapi_path_s* %path_interface) #7
  store i32 %call32, i32* %code, align 4, !tbaa !28
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  %44 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.34, %if.else.26, %if.then.24, %if.else.11
  %45 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.gs_fapi_outline_handler_s* %olh to i8*
  call void @llvm.lifetime.end(i64 24, i8* %47) #1
  %48 = bitcast %struct.gs_fapi_path_s* %path_interface to i8*
  call void @llvm.lifetime.end(i64 48, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @gx_path_add_char_path(%struct.gx_path_s*, %struct.gx_path_s*, i32) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #4

declare i32 @gs_imager_setflat(%struct.gs_imager_state_s*, double) #4

declare double @gs_char_flatness(%struct.gs_imager_state_s*, double) #4

declare float @gs_currentlinewidth(%struct.gs_state_s*) #4

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #4

declare i32 @gs_stroke(%struct.gs_state_s*) #4

declare i32 @gs_fill(%struct.gs_state_s*) #4

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #4

; Function Attrs: nounwind uwtable
define internal i32 @fapi_copy_mono(%struct.gx_device_s* %dev1, %struct.gs_fapi_raster* %rast, i32 %dx, i32 %dy) #0 {
entry:
  %retval = alloca i32, align 4
  %dev1.addr = alloca %struct.gx_device_s*, align 8
  %rast.addr = alloca %struct.gs_fapi_raster*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %line_step = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p4 = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %pe = alloca i8*, align 8
  store %struct.gx_device_s* %dev1, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  store %struct.gs_fapi_raster* %rast, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !28
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !28
  %0 = bitcast i32* %line_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4, !tbaa !130
  %add = add nsw i32 %2, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %line_step, align 4, !tbaa !28
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step1 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %4, i32 0, i32 3
  %5 = load i32, i32* %line_step1, align 4, !tbaa !169
  %6 = load i32, i32* %line_step, align 4, !tbaa !28
  %cmp = icmp sge i32 %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !170
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %10 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %10, i32 0, i32 0
  %11 = load i8*, i8** %p, align 8, !tbaa !171
  %12 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step2 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %12, i32 0, i32 3
  %13 = load i32, i32* %line_step2, align 4, !tbaa !169
  %14 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %15 = load i32, i32* %dy.addr, align 4, !tbaa !28
  %16 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %16, i32 0, i32 1
  %17 = load i32, i32* %width3, align 4, !tbaa !130
  %18 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %18, i32 0, i32 2
  %19 = load i32, i32* %height, align 4, !tbaa !172
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %11, i32 0, i32 %13, i64 0, i32 %14, i32 %15, i32 %17, i32 %19, i64 0, i64 1) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.else:                                          ; preds = %entry
  %20 = bitcast i8** %p4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !173
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !174
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !173
  %26 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %26, i32 0, i32 2
  %27 = load i32, i32* %height7, align 4, !tbaa !172
  %28 = load i32, i32* %line_step, align 4, !tbaa !28
  %call8 = call i8* %23(%struct.gs_memory_s* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #7
  store i8* %call8, i8** %p4, align 8, !tbaa !1
  %29 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i8*, i8** %p4, align 8, !tbaa !1
  store i8* %30, i8** %q, align 8, !tbaa !1
  %31 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %p9 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %32, i32 0, i32 0
  %33 = load i8*, i8** %p9, align 8, !tbaa !171
  store i8* %33, i8** %r, align 8, !tbaa !1
  %34 = bitcast i8** %pe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i8*, i8** %p4, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %35, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %36 = load i8*, i8** %p4, align 8, !tbaa !1
  %37 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height12 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %37, i32 0, i32 2
  %38 = load i32, i32* %height12, align 4, !tbaa !172
  %39 = load i32, i32* %line_step, align 4, !tbaa !28
  %mul = mul nsw i32 %38, %39
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %pe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %41 = load i8*, i8** %pe, align 8, !tbaa !1
  %cmp13 = icmp ult i8* %40, %41
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %43 = load i8*, i8** %r, align 8, !tbaa !1
  %44 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step14 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %44, i32 0, i32 3
  %45 = load i32, i32* %line_step14, align 4, !tbaa !169
  %conv = sext i32 %45 to i64
  %call15 = call i8* @memcpy(i8* %42, i8* %43, i64 %conv) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %line_step, align 4, !tbaa !28
  %47 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext16 = sext i32 %46 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %47, i64 %idx.ext16
  store i8* %add.ptr17, i8** %q, align 8, !tbaa !1
  %48 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step18 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %48, i32 0, i32 3
  %49 = load i32, i32* %line_step18, align 4, !tbaa !169
  %50 = load i8*, i8** %r, align 8, !tbaa !1
  %idx.ext19 = sext i32 %49 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %50, i64 %idx.ext19
  store i8* %add.ptr20, i8** %r, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 42
  %copy_mono22 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 9
  %52 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono22, align 8, !tbaa !170
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %p4, align 8, !tbaa !1
  %55 = load i32, i32* %line_step, align 4, !tbaa !28
  %56 = load i32, i32* %dx.addr, align 4, !tbaa !28
  %57 = load i32, i32* %dy.addr, align 4, !tbaa !28
  %58 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %58, i32 0, i32 1
  %59 = load i32, i32* %width23, align 4, !tbaa !130
  %60 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %60, i32 0, i32 2
  %61 = load i32, i32* %height24, align 4, !tbaa !172
  %call25 = call i32 %52(%struct.gx_device_s* %53, i8* %54, i32 0, i32 %55, i64 0, i32 %56, i32 %57, i32 %59, i32 %61, i64 0, i64 1) #7
  store i32 %call25, i32* %code, align 4, !tbaa !28
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !173
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !175
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !173
  %67 = load i8*, i8** %p4, align 8, !tbaa !1
  call void %64(%struct.gs_memory_s* %66, i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #7
  %68 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11
  %69 = bitcast i8** %pe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %p4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %cleanup.32

cleanup.32:                                       ; preds = %cleanup, %if.then
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %line_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @fapi_image_uncached_glyph(%struct.gs_font_s* %pfont, %struct.gs_state_s* %pgs, %struct.gs_show_enum_s* %penum, %struct.gs_fapi_raster* %rast, i32 %import_shift_v) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %rast.addr = alloca %struct.gs_fapi_raster*, align 8
  %import_shift_v.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %penum_pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %pdcolor = alloca %struct.gx_device_color_s*, align 8
  %rast_orig_x = alloca i32, align 4
  %rast_orig_y = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %r = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %h = alloca i32, align 4
  %padbytes = alloca i32, align 4
  %cpbytes = alloca i32, align 4
  %dstr = alloca i32, align 4
  %sstr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_memory_s*, align 8
  %pie = alloca %struct.gs_image_enum_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %iy = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %used = alloca i32, align 4
  %code1 = alloca i32, align 4
  %x100 = alloca i32, align 4
  %y101 = alloca i32, align 4
  %w = alloca i32, align 4
  %h102 = alloca i32, align 4
  %bold = alloca i32, align 4
  %bold_lines = alloca i8*, align 8
  %line = alloca i8*, align 8
  %ascent = alloca i32, align 4
  %dest_raster = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %n1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %kmask = alloca i32, align 4
  %first = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_fapi_raster* %rast, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  store i32 %import_shift_v, i32* %import_shift_v.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !176
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %penum_pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 3
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !157
  %6 = bitcast %struct.gs_imager_state_s* %5 to %struct.gs_state_s*
  store %struct.gs_state_s* %6, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 62
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !177
  store %struct.gx_clip_path_s* %10, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_color_s** %pdcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pdcolor2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 6
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor2, align 8, !tbaa !178
  store %struct.gx_device_color_s* %13, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !1
  %14 = bitcast i32* %rast_orig_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %orig_x = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %15, i32 0, i32 4
  %16 = load i32, i32* %orig_x, align 4, !tbaa !127
  store i32 %16, i32* %rast_orig_x, align 4, !tbaa !28
  %17 = bitcast i32* %rast_orig_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %orig_y = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %18, i32 0, i32 5
  %19 = load i32, i32* %orig_y, align 4, !tbaa !129
  %sub = sub nsw i32 0, %19
  store i32 %sub, i32* %rast_orig_y, align 4, !tbaa !28
  %20 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_font_s* %21 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %22, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %23 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 25
  %25 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  store %struct.gs_fapi_server_s* %25, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %26 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %27, i32 0, i32 0
  %28 = load i8*, i8** %p, align 8, !tbaa !171
  store i8* %28, i8** %r, align 8, !tbaa !1
  %29 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %padbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %cpbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %dstr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %35, i32 0, i32 1
  %36 = load i32, i32* %width, align 4, !tbaa !130
  %add = add nsw i32 %36, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %dstr, align 4, !tbaa !28
  %37 = bitcast i32* %sstr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %38, i32 0, i32 3
  %39 = load i32, i32* %line_step, align 4, !tbaa !169
  store i32 %39, i32* %sstr, align 4, !tbaa !28
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !179
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 0
  %42 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !181
  %cmp = icmp eq %struct.gx_device_color_type_s* %42, @gx_dc_type_data_pure
  br i1 %cmp, label %land.lhs.true, label %if.else.98

land.lhs.true:                                    ; preds = %entry
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 10
  %44 = load i32, i32* %log_op, align 4, !tbaa !187
  %and = and i32 %44, 563
  %cmp3 = icmp eq i32 %and, 48
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.98

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %45 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %45, i32 0, i32 4
  %embolden = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff, i32 0, i32 19
  %46 = load float, float* %embolden, align 4, !tbaa !188
  %conv = fpext float %46 to double
  %cmp5 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.else.98

if.then:                                          ; preds = %land.lhs.true.4
  %47 = load i32, i32* %dstr, align 4, !tbaa !28
  %48 = load i32, i32* %sstr, align 4, !tbaa !28
  %cmp7 = icmp ne i32 %47, %48
  br i1 %cmp7, label %if.then.9, label %if.end.43

if.then.9:                                        ; preds = %if.then
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 8
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !156
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %51 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !189
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %52, i32 0, i32 8
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !156
  %54 = load i32, i32* %dstr, align 4, !tbaa !28
  %55 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %55, i32 0, i32 2
  %56 = load i32, i32* %height, align 4, !tbaa !172
  %mul = mul nsw i32 %54, %56
  %call = call i8* %51(%struct.gs_memory_s* %53, i32 %mul, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #7
  store i8* %call, i8** %r, align 8, !tbaa !1
  %57 = load i8*, i8** %r, align 8, !tbaa !1
  %tobool = icmp ne i8* %57, null
  br i1 %tobool, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end:                                           ; preds = %if.then.9
  %58 = load i32, i32* %sstr, align 4, !tbaa !28
  %59 = load i32, i32* %dstr, align 4, !tbaa !28
  %cmp12 = icmp slt i32 %58, %59
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %60 = load i32, i32* %sstr, align 4, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %61 = load i32, i32* %dstr, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %60, %cond.true ], [ %61, %cond.false ]
  store i32 %cond, i32* %cpbytes, align 4, !tbaa !28
  %62 = load i32, i32* %dstr, align 4, !tbaa !28
  %63 = load i32, i32* %cpbytes, align 4, !tbaa !28
  %sub14 = sub nsw i32 %62, %63
  store i32 %sub14, i32* %padbytes, align 4, !tbaa !28
  %64 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %64, i32 0, i32 2
  %65 = load i32, i32* %height15, align 4, !tbaa !172
  store i32 %65, i32* %h, align 4, !tbaa !28
  %66 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %66, i32 0, i32 0
  %67 = load i8*, i8** %p16, align 8, !tbaa !171
  store i8* %67, i8** %src, align 8, !tbaa !1
  %68 = load i8*, i8** %r, align 8, !tbaa !1
  store i8* %68, i8** %dst, align 8, !tbaa !1
  %69 = load i32, i32* %padbytes, align 4, !tbaa !28
  %cmp17 = icmp sgt i32 %69, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %70 = load i32, i32* %h, align 4, !tbaa !28
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %h, align 4, !tbaa !28
  %cmp20 = icmp sgt i32 %70, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i8*, i8** %dst, align 8, !tbaa !1
  %72 = load i8*, i8** %src, align 8, !tbaa !1
  %73 = load i32, i32* %cpbytes, align 4, !tbaa !28
  %conv22 = sext i32 %73 to i64
  %call23 = call i8* @memcpy(i8* %71, i8* %72, i64 %conv22) #6
  %74 = load i8*, i8** %dst, align 8, !tbaa !1
  %75 = load i32, i32* %cpbytes, align 4, !tbaa !28
  %idx.ext = sext i32 %75 to i64
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 %idx.ext
  %76 = load i32, i32* %padbytes, align 4, !tbaa !28
  %conv24 = sext i32 %76 to i64
  %call25 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv24) #6
  %77 = load i32, i32* %sstr, align 4, !tbaa !28
  %78 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext26 = sext i32 %77 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %78, i64 %idx.ext26
  store i8* %add.ptr27, i8** %src, align 8, !tbaa !1
  %79 = load i32, i32* %dstr, align 4, !tbaa !28
  %80 = load i8*, i8** %dst, align 8, !tbaa !1
  %idx.ext28 = sext i32 %79 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %80, i64 %idx.ext28
  store i8* %add.ptr29, i8** %dst, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.42

if.else:                                          ; preds = %cond.end
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.34, %if.else
  %81 = load i32, i32* %h, align 4, !tbaa !28
  %dec31 = add nsw i32 %81, -1
  store i32 %dec31, i32* %h, align 4, !tbaa !28
  %cmp32 = icmp sgt i32 %81, 0
  br i1 %cmp32, label %while.body.34, label %while.end.41

while.body.34:                                    ; preds = %while.cond.30
  %82 = load i8*, i8** %dst, align 8, !tbaa !1
  %83 = load i8*, i8** %src, align 8, !tbaa !1
  %84 = load i32, i32* %cpbytes, align 4, !tbaa !28
  %conv35 = sext i32 %84 to i64
  %call36 = call i8* @memcpy(i8* %82, i8* %83, i64 %conv35) #6
  %85 = load i32, i32* %sstr, align 4, !tbaa !28
  %86 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext37 = sext i32 %85 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %86, i64 %idx.ext37
  store i8* %add.ptr38, i8** %src, align 8, !tbaa !1
  %87 = load i32, i32* %dstr, align 4, !tbaa !28
  %88 = load i8*, i8** %dst, align 8, !tbaa !1
  %idx.ext39 = sext i32 %87 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %88, i64 %idx.ext39
  store i8* %add.ptr40, i8** %dst, align 8, !tbaa !1
  br label %while.cond.30

while.end.41:                                     ; preds = %while.cond.30
  br label %if.end.42

if.end.42:                                        ; preds = %while.end.41, %while.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then
  %89 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %89, i32 0, i32 8
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !156
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 15
  %91 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !93
  %92 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %92, i32 0, i32 8
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !156
  %94 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %95 = bitcast %struct.gs_show_enum_s* %94 to i8*
  %call47 = call %struct.gs_memory_struct_type_s* %91(%struct.gs_memory_s* %93, i8* %95) #7
  %cmp48 = icmp eq %struct.gs_memory_struct_type_s* %call47, @st_gs_show_enum
  br i1 %cmp48, label %if.then.50, label %if.else.69

if.then.50:                                       ; preds = %if.end.43
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %97 = load i8*, i8** %r, align 8, !tbaa !1
  %98 = load i32, i32* %dstr, align 4, !tbaa !28
  %99 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %99, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %100 = load float, float* %tx, align 4, !tbaa !190
  %conv51 = fpext float %100 to double
  %101 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %conv52 = sitofp i32 %101 to double
  %div = fdiv double %conv52, 1.600000e+01
  %add53 = fadd double %conv51, %div
  %102 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fapi_glyph_shift = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %102, i32 0, i32 27
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift, i32 0, i32 0
  %103 = load double, double* %x, align 8, !tbaa !148
  %add54 = fadd double %add53, %103
  %add55 = fadd double %add54, 5.000000e-01
  %conv56 = fptosi double %add55 to i32
  %104 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %104, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm57, i32 0, i32 5
  %105 = load float, float* %ty, align 4, !tbaa !191
  %conv58 = fpext float %105 to double
  %106 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %conv59 = sitofp i32 %106 to double
  %div60 = fdiv double %conv59, 1.600000e+01
  %add61 = fadd double %conv58, %div60
  %107 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %fapi_glyph_shift62 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %107, i32 0, i32 27
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift62, i32 0, i32 1
  %108 = load double, double* %y, align 8, !tbaa !153
  %add63 = fadd double %add61, %108
  %add64 = fadd double %add63, 5.000000e-01
  %conv65 = fptosi double %add64 to i32
  %109 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width66 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %109, i32 0, i32 1
  %110 = load i32, i32* %width66, align 4, !tbaa !130
  %111 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height67 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %111, i32 0, i32 2
  %112 = load i32, i32* %height67, align 4, !tbaa !172
  %113 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !1
  %114 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call68 = call i32 @gx_image_fill_masked(%struct.gx_device_s* %96, i8* %97, i32 0, i32 %98, i64 0, i32 %conv56, i32 %conv65, i32 %110, i32 %112, %struct.gx_device_color_s* %113, i32 1, i32 252, %struct.gx_clip_path_s* %114) #7
  store i32 %call68, i32* %code, align 4, !tbaa !28
  br label %if.end.89

if.else.69:                                       ; preds = %if.end.43
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %116 = load i8*, i8** %r, align 8, !tbaa !1
  %117 = load i32, i32* %dstr, align 4, !tbaa !28
  %118 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %118, i32 0, i32 5
  %tx71 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm70, i32 0, i32 4
  %119 = load float, float* %tx71, align 4, !tbaa !190
  %conv72 = fpext float %119 to double
  %120 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %conv73 = sitofp i32 %120 to double
  %div74 = fdiv double %conv73, 1.600000e+01
  %add75 = fadd double %conv72, %div74
  %add76 = fadd double %add75, 5.000000e-01
  %conv77 = fptosi double %add76 to i32
  %121 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm78 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %121, i32 0, i32 5
  %ty79 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm78, i32 0, i32 5
  %122 = load float, float* %ty79, align 4, !tbaa !191
  %conv80 = fpext float %122 to double
  %123 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %conv81 = sitofp i32 %123 to double
  %div82 = fdiv double %conv81, 1.600000e+01
  %add83 = fadd double %conv80, %div82
  %add84 = fadd double %add83, 5.000000e-01
  %conv85 = fptosi double %add84 to i32
  %124 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width86 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %124, i32 0, i32 1
  %125 = load i32, i32* %width86, align 4, !tbaa !130
  %126 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height87 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %126, i32 0, i32 2
  %127 = load i32, i32* %height87, align 4, !tbaa !172
  %128 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !1
  %129 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call88 = call i32 @gx_image_fill_masked(%struct.gx_device_s* %115, i8* %116, i32 0, i32 %117, i64 0, i32 %conv77, i32 %conv85, i32 %125, i32 %127, %struct.gx_device_color_s* %128, i32 1, i32 252, %struct.gx_clip_path_s* %129) #7
  store i32 %call88, i32* %code, align 4, !tbaa !28
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.69, %if.then.50
  %130 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %p90 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %130, i32 0, i32 0
  %131 = load i8*, i8** %p90, align 8, !tbaa !171
  %132 = load i8*, i8** %r, align 8, !tbaa !1
  %cmp91 = icmp ne i8* %131, %132
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %if.end.89
  %133 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory94 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %133, i32 0, i32 8
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !156
  %procs95 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs95, i32 0, i32 2
  %135 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !175
  %136 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %136, i32 0, i32 8
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !156
  %138 = load i8*, i8** %r, align 8, !tbaa !1
  call void %135(%struct.gs_memory_s* %137, i8* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %if.end.89
  br label %if.end.352

if.else.98:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %139 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  %140 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %140, i32 0, i32 8
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !156
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !192
  store %struct.gs_memory_s* %142, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %143 = bitcast %struct.gs_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %144) #1
  %145 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = bitcast i32* %x100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  %150 = bitcast i32* %y101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %151 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = bitcast i32* %h102 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = bitcast i32* %bold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  store i32 0, i32* %bold, align 4, !tbaa !28
  %154 = bitcast i8** %bold_lines to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  store i8* null, i8** %bold_lines, align 8, !tbaa !1
  %155 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  store i8* null, i8** %line, align 8, !tbaa !1
  %156 = bitcast i32* %ascent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  store i32 0, i32* %ascent, align 4, !tbaa !28
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call103 = call %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #7
  store %struct.gs_image_enum_s* %call103, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %158 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %tobool104 = icmp ne %struct.gs_image_enum_s* %158, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.98
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.else.98
  %159 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %159, i32 0, i32 5
  %tx108 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm107, i32 0, i32 4
  %160 = load float, float* %tx108, align 4, !tbaa !190
  %conv109 = fpext float %160 to double
  %161 = load i32, i32* %rast_orig_x, align 4, !tbaa !28
  %conv110 = sitofp i32 %161 to double
  %div111 = fdiv double %conv110, 1.600000e+01
  %add112 = fadd double %conv109, %div111
  %add113 = fadd double %add112, 5.000000e-01
  %conv114 = fptosi double %add113 to i32
  store i32 %conv114, i32* %x100, align 4, !tbaa !28
  %162 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm115 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %162, i32 0, i32 5
  %ty116 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm115, i32 0, i32 5
  %163 = load float, float* %ty116, align 4, !tbaa !191
  %conv117 = fpext float %163 to double
  %164 = load i32, i32* %rast_orig_y, align 4, !tbaa !28
  %conv118 = sitofp i32 %164 to double
  %div119 = fdiv double %conv118, 1.600000e+01
  %add120 = fadd double %conv117, %div119
  %add121 = fadd double %add120, 5.000000e-01
  %conv122 = fptosi double %add121 to i32
  store i32 %conv122, i32* %y101, align 4, !tbaa !28
  %165 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width123 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %165, i32 0, i32 1
  %166 = load i32, i32* %width123, align 4, !tbaa !130
  store i32 %166, i32* %w, align 4, !tbaa !28
  %167 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height124 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %167, i32 0, i32 2
  %168 = load i32, i32* %height124, align 4, !tbaa !172
  store i32 %168, i32* %h102, align 4, !tbaa !28
  %169 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff125 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %169, i32 0, i32 4
  %embolden126 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff125, i32 0, i32 19
  %170 = load float, float* %embolden126, align 4, !tbaa !188
  %conv127 = fpext float %170 to double
  %cmp128 = fcmp une double %conv127, 0.000000e+00
  br i1 %cmp128, label %if.then.130, label %if.end.163

if.then.130:                                      ; preds = %if.end.106
  %171 = load i32, i32* %h102, align 4, !tbaa !28
  %mul131 = mul nsw i32 2, %171
  %conv132 = sitofp i32 %mul131 to float
  %172 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff133 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %172, i32 0, i32 4
  %embolden134 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff133, i32 0, i32 19
  %173 = load float, float* %embolden134, align 4, !tbaa !188
  %mul135 = fmul float %conv132, %173
  %conv136 = fpext float %mul135 to double
  %add137 = fadd double %conv136, 5.000000e-01
  %conv138 = fptoui double %add137 to i32
  store i32 %conv138, i32* %bold, align 4, !tbaa !28
  %174 = load i32, i32* %bold, align 4, !tbaa !28
  %175 = load i32, i32* %ascent, align 4, !tbaa !28
  %add139 = add i32 %175, %174
  store i32 %add139, i32* %ascent, align 4, !tbaa !28
  %176 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %176, i32 0, i32 1
  %177 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8, !tbaa !193
  %178 = load i32, i32* %w, align 4, !tbaa !28
  %179 = load i32, i32* %bold, align 4, !tbaa !28
  %call141 = call i8* @alloc_bold_lines(%struct.gs_memory_s* %177, i32 %178, i32 %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0)) #7
  store i8* %call141, i8** %bold_lines, align 8, !tbaa !1
  %180 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %cmp142 = icmp eq i8* %180, null
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.then.130
  store i32 -25, i32* %code, align 4, !tbaa !28
  %181 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %181, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %if.then.130
  %182 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %182, i32 0, i32 1
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !193
  %procs147 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %183, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs147, i32 0, i32 10
  %184 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !174
  %185 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %185, i32 0, i32 1
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !193
  %187 = load i32, i32* %w, align 4, !tbaa !28
  %188 = load i32, i32* %bold, align 4, !tbaa !28
  %add149 = add i32 %187, %188
  %add150 = add i32 %add149, 63
  %shr151 = lshr i32 %add150, 6
  %shl152 = shl i32 %shr151, 3
  %add153 = add i32 %shl152, 1
  %call154 = call i8* %184(%struct.gs_memory_s* %186, i32 1, i32 %add153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #7
  store i8* %call154, i8** %line, align 8, !tbaa !1
  %189 = load i8*, i8** %line, align 8, !tbaa !1
  %cmp155 = icmp eq i8* %189, null
  br i1 %cmp155, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %if.end.145
  %190 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory158 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %190, i32 0, i32 1
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory158, align 8, !tbaa !193
  %procs159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %191, i32 0, i32 1
  %free_object160 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs159, i32 0, i32 2
  %192 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object160, align 8, !tbaa !175
  %193 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %193, i32 0, i32 1
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !193
  %195 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  call void %192(%struct.gs_memory_s* %194, i8* %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)) #7
  store i32 -25, i32* %code, align 4, !tbaa !28
  %196 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.end.145
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.106
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 1, i32 1) #7
  %197 = load i32, i32* %x100, align 4, !tbaa !28
  %sub164 = sub nsw i32 0, %197
  %conv165 = sitofp i32 %sub164 to double
  %198 = load i32, i32* %y101, align 4, !tbaa !28
  %sub166 = sub nsw i32 0, %198
  %199 = load i32, i32* %ascent, align 4, !tbaa !28
  %add167 = add nsw i32 %sub166, %199
  %conv168 = sitofp i32 %add167 to double
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %call169 = call i32 @gs_make_translation(double %conv165, double %conv168, %struct.gs_matrix_s* %ImageMatrix) #7
  %200 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %ctm170 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %200, i32 0, i32 5
  %201 = bitcast %struct.gs_matrix_fixed_s* %ctm170 to %struct.gs_matrix_s*
  %ImageMatrix171 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %ImageMatrix172 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %call173 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %201, %struct.gs_matrix_s* %ImageMatrix171, %struct.gs_matrix_s* %ImageMatrix172) #7
  %202 = load i32, i32* %w, align 4, !tbaa !28
  %203 = load i32, i32* %bold, align 4, !tbaa !28
  %add174 = add i32 %202, %203
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  store i32 %add174, i32* %Width, align 4, !tbaa !194
  %204 = load i32, i32* %h102, align 4, !tbaa !28
  %205 = load i32, i32* %bold, align 4, !tbaa !28
  %add175 = add i32 %204, %205
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  store i32 %add175, i32* %Height, align 4, !tbaa !196
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 11
  store i32 0, i32* %adjust, align 4, !tbaa !197
  %206 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %207 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call176 = call i32 @gs_image_init(%struct.gs_image_enum_s* %206, %struct.gs_image1_s* %image, i32 0, %struct.gs_state_s* %207) #7
  store i32 %call176, i32* %code, align 4, !tbaa !28
  %208 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width177 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %208, i32 0, i32 1
  %209 = load i32, i32* %width177, align 4, !tbaa !130
  %add178 = add nsw i32 %209, 7
  %shr179 = ashr i32 %add178, 3
  store i32 %shr179, i32* %nbytes, align 4, !tbaa !28
  %210 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %210, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.180
  ]

sw.bb:                                            ; preds = %if.end.163
  store i32 0, i32* %code, align 4, !tbaa !28
  br label %sw.default

sw.default:                                       ; preds = %if.end.163, %sw.bb
  br label %sw.epilog

sw.bb.180:                                        ; preds = %if.end.163
  %211 = load i32, i32* %bold, align 4, !tbaa !28
  %cmp181 = icmp eq i32 %211, 0
  br i1 %cmp181, label %if.then.183, label %if.else.191

if.then.183:                                      ; preds = %sw.bb.180
  store i32 0, i32* %iy, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.183
  %212 = load i32, i32* %iy, align 4, !tbaa !28
  %213 = load i32, i32* %h102, align 4, !tbaa !28
  %cmp184 = icmp slt i32 %212, %213
  br i1 %cmp184, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %214 = load i32, i32* %code, align 4, !tbaa !28
  %cmp186 = icmp sge i32 %214, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %215 = phi i1 [ false, %for.cond ], [ %cmp186, %land.rhs ]
  br i1 %215, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %216 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %217 = load i8*, i8** %r, align 8, !tbaa !1
  %218 = load i32, i32* %nbytes, align 4, !tbaa !28
  %call188 = call i32 @gs_image_next(%struct.gs_image_enum_s* %216, i8* %217, i32 %218, i32* %used) #7
  store i32 %call188, i32* %code, align 4, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %219 = load i32, i32* %iy, align 4, !tbaa !28
  %inc = add nsw i32 %219, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !28
  %220 = load i32, i32* %sstr, align 4, !tbaa !28
  %221 = load i8*, i8** %r, align 8, !tbaa !1
  %idx.ext189 = sext i32 %220 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %221, i64 %idx.ext189
  store i8* %add.ptr190, i8** %r, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.315

if.else.191:                                      ; preds = %sw.bb.180
  %222 = bitcast i32* %dest_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  %Width192 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %223 = load i32, i32* %Width192, align 4, !tbaa !194
  %add193 = add nsw i32 %223, 63
  %shr194 = ashr i32 %add193, 6
  %shl195 = shl i32 %shr194, 3
  store i32 %shl195, i32* %dest_raster, align 4, !tbaa !28
  %224 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %Width196 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %225 = load i32, i32* %Width196, align 4, !tbaa !194
  %add197 = add nsw i32 %225, 7
  %shr198 = ashr i32 %add197, 3
  store i32 %shr198, i32* %dest_bytes, align 4, !tbaa !28
  %226 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #1
  %227 = load i32, i32* %bold, align 4, !tbaa !28
  %add199 = add i32 %227, 1
  store i32 %add199, i32* %n1, align 4, !tbaa !28
  store i32 0, i32* %y101, align 4, !tbaa !28
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.312, %if.else.191
  %228 = load i32, i32* %y101, align 4, !tbaa !28
  %Height201 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  %229 = load i32, i32* %Height201, align 4, !tbaa !196
  %cmp202 = icmp slt i32 %228, %229
  br i1 %cmp202, label %for.body.204, label %for.end.314

for.body.204:                                     ; preds = %for.cond.200
  %230 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #1
  %231 = load i32, i32* %y101, align 4, !tbaa !28
  %232 = load i32, i32* %bold, align 4, !tbaa !28
  %cmp205 = icmp ult i32 %231, %232
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %for.body.204
  br label %cond.end.210

cond.false.208:                                   ; preds = %for.body.204
  %233 = load i32, i32* %y101, align 4, !tbaa !28
  %234 = load i32, i32* %bold, align 4, !tbaa !28
  %sub209 = sub i32 %233, %234
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.207
  %cond211 = phi i32 [ 0, %cond.true.207 ], [ %sub209, %cond.false.208 ]
  store i32 %cond211, i32* %y0, align 4, !tbaa !28
  %235 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %236 = load i32, i32* %y101, align 4, !tbaa !28
  %add212 = add nsw i32 %236, 1
  %237 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height213 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %237, i32 0, i32 2
  %238 = load i32, i32* %height213, align 4, !tbaa !172
  %cmp214 = icmp slt i32 %add212, %238
  br i1 %cmp214, label %cond.true.216, label %cond.false.218

cond.true.216:                                    ; preds = %cond.end.210
  %239 = load i32, i32* %y101, align 4, !tbaa !28
  %add217 = add nsw i32 %239, 1
  br label %cond.end.220

cond.false.218:                                   ; preds = %cond.end.210
  %240 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height219 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %240, i32 0, i32 2
  %241 = load i32, i32* %height219, align 4, !tbaa !172
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.218, %cond.true.216
  %cond221 = phi i32 [ %add217, %cond.true.216 ], [ %241, %cond.false.218 ]
  store i32 %cond221, i32* %y1, align 4, !tbaa !28
  %242 = bitcast i32* %kmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #1
  store i32 1, i32* %first, align 4, !tbaa !28
  %244 = load i32, i32* %y101, align 4, !tbaa !28
  %245 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %height222 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %245, i32 0, i32 2
  %246 = load i32, i32* %height222, align 4, !tbaa !172
  %cmp223 = icmp slt i32 %244, %246
  br i1 %cmp223, label %if.then.225, label %if.end.273

if.then.225:                                      ; preds = %cond.end.220
  %247 = load i8*, i8** %line, align 8, !tbaa !1
  %248 = load i8*, i8** %r, align 8, !tbaa !1
  %249 = load i32, i32* %y101, align 4, !tbaa !28
  %250 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step226 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %250, i32 0, i32 3
  %251 = load i32, i32* %line_step226, align 4, !tbaa !169
  %mul227 = mul nsw i32 %249, %251
  %idx.ext228 = sext i32 %mul227 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %248, i64 %idx.ext228
  %252 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step230 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %252, i32 0, i32 3
  %253 = load i32, i32* %line_step230, align 4, !tbaa !169
  %conv231 = sext i32 %253 to i64
  %call232 = call i8* @memcpy(i8* %247, i8* %add.ptr229, i64 %conv231) #6
  %254 = load i8*, i8** %line, align 8, !tbaa !1
  %255 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step233 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %255, i32 0, i32 3
  %256 = load i32, i32* %line_step233, align 4, !tbaa !169
  %idx.ext234 = sext i32 %256 to i64
  %add.ptr235 = getelementptr inbounds i8, i8* %254, i64 %idx.ext234
  %257 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %add236 = add i32 %257, 1
  %258 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %line_step237 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %258, i32 0, i32 3
  %259 = load i32, i32* %line_step237, align 4, !tbaa !169
  %sub238 = sub i32 %add236, %259
  %conv239 = zext i32 %sub238 to i64
  %call240 = call i8* @memset(i8* %add.ptr235, i32 0, i64 %conv239) #6
  %260 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %261 = load i32, i32* %y101, align 4, !tbaa !28
  %262 = load i32, i32* %n1, align 4, !tbaa !28
  %rem = srem i32 %261, %262
  %add241 = add nsw i32 %rem, 1
  %263 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %mul242 = mul i32 %add241, %263
  %idx.ext243 = zext i32 %mul242 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %260, i64 %idx.ext243
  %264 = load i8*, i8** %line, align 8, !tbaa !1
  %265 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %rast.addr, align 8, !tbaa !1
  %width245 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %265, i32 0, i32 1
  %266 = load i32, i32* %width245, align 4, !tbaa !130
  %267 = load i32, i32* %bold, align 4, !tbaa !28
  call void @bits_smear_horizontally(i8* %add.ptr244, i8* %264, i32 %266, i32 %267) #7
  store i32 1, i32* %kmask, align 4, !tbaa !28
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.269, %if.then.225
  %268 = load i32, i32* %y101, align 4, !tbaa !28
  %269 = load i32, i32* %kmask, align 4, !tbaa !28
  %and247 = and i32 %268, %269
  %270 = load i32, i32* %kmask, align 4, !tbaa !28
  %cmp248 = icmp eq i32 %and247, %270
  br i1 %cmp248, label %land.rhs.250, label %land.end.254

land.rhs.250:                                     ; preds = %for.cond.246
  %271 = load i32, i32* %y101, align 4, !tbaa !28
  %272 = load i32, i32* %kmask, align 4, !tbaa !28
  %sub251 = sub nsw i32 %271, %272
  %273 = load i32, i32* %y0, align 4, !tbaa !28
  %cmp252 = icmp sge i32 %sub251, %273
  br label %land.end.254

land.end.254:                                     ; preds = %land.rhs.250, %for.cond.246
  %274 = phi i1 [ false, %for.cond.246 ], [ %cmp252, %land.rhs.250 ]
  br i1 %274, label %for.body.255, label %for.end.272

for.body.255:                                     ; preds = %land.end.254
  %275 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %276 = load i32, i32* %y101, align 4, !tbaa !28
  %277 = load i32, i32* %kmask, align 4, !tbaa !28
  %sub256 = sub nsw i32 %276, %277
  %278 = load i32, i32* %n1, align 4, !tbaa !28
  %rem257 = srem i32 %sub256, %278
  %add258 = add nsw i32 %rem257, 1
  %279 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %mul259 = mul i32 %add258, %279
  %idx.ext260 = zext i32 %mul259 to i64
  %add.ptr261 = getelementptr inbounds i8, i8* %275, i64 %idx.ext260
  %280 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %281 = load i32, i32* %y101, align 4, !tbaa !28
  %282 = load i32, i32* %kmask, align 4, !tbaa !28
  %shr262 = ashr i32 %282, 1
  %sub263 = sub nsw i32 %281, %shr262
  %283 = load i32, i32* %n1, align 4, !tbaa !28
  %rem264 = srem i32 %sub263, %283
  %add265 = add nsw i32 %rem264, 1
  %284 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %mul266 = mul i32 %add265, %284
  %idx.ext267 = zext i32 %mul266 to i64
  %add.ptr268 = getelementptr inbounds i8, i8* %280, i64 %idx.ext267
  %285 = load i32, i32* %dest_bytes, align 4, !tbaa !28
  call void @bits_merge(i8* %add.ptr261, i8* %add.ptr268, i32 %285) #7
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.255
  %286 = load i32, i32* %kmask, align 4, !tbaa !28
  %shl270 = shl i32 %286, 1
  %add271 = add nsw i32 %shl270, 1
  store i32 %add271, i32* %kmask, align 4, !tbaa !28
  br label %for.cond.246

for.end.272:                                      ; preds = %land.end.254
  br label %if.end.273

if.end.273:                                       ; preds = %for.end.272, %cond.end.220
  store i32 1, i32* %first, align 4, !tbaa !28
  %287 = load i32, i32* %y1, align 4, !tbaa !28
  %sub274 = sub nsw i32 %287, 1
  store i32 %sub274, i32* %iy, align 4, !tbaa !28
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.308, %if.end.273
  %288 = load i32, i32* %iy, align 4, !tbaa !28
  %289 = load i32, i32* %y0, align 4, !tbaa !28
  %cmp276 = icmp sge i32 %288, %289
  br i1 %cmp276, label %for.body.278, label %for.end.310

for.body.278:                                     ; preds = %for.cond.275
  store i32 1, i32* %kmask, align 4, !tbaa !28
  br label %while.cond.279

while.cond.279:                                   ; preds = %while.body.288, %for.body.278
  %290 = load i32, i32* %iy, align 4, !tbaa !28
  %291 = load i32, i32* %kmask, align 4, !tbaa !28
  %and280 = and i32 %290, %291
  %292 = load i32, i32* %kmask, align 4, !tbaa !28
  %cmp281 = icmp eq i32 %and280, %292
  br i1 %cmp281, label %land.rhs.283, label %land.end.287

land.rhs.283:                                     ; preds = %while.cond.279
  %293 = load i32, i32* %iy, align 4, !tbaa !28
  %294 = load i32, i32* %kmask, align 4, !tbaa !28
  %sub284 = sub nsw i32 %293, %294
  %295 = load i32, i32* %y0, align 4, !tbaa !28
  %cmp285 = icmp sge i32 %sub284, %295
  br label %land.end.287

land.end.287:                                     ; preds = %land.rhs.283, %while.cond.279
  %296 = phi i1 [ false, %while.cond.279 ], [ %cmp285, %land.rhs.283 ]
  br i1 %296, label %while.body.288, label %while.end.291

while.body.288:                                   ; preds = %land.end.287
  %297 = load i32, i32* %kmask, align 4, !tbaa !28
  %298 = load i32, i32* %iy, align 4, !tbaa !28
  %sub289 = sub nsw i32 %298, %297
  store i32 %sub289, i32* %iy, align 4, !tbaa !28
  %299 = load i32, i32* %kmask, align 4, !tbaa !28
  %shl290 = shl i32 %299, 1
  store i32 %shl290, i32* %kmask, align 4, !tbaa !28
  br label %while.cond.279

while.end.291:                                    ; preds = %land.end.287
  %300 = load i32, i32* %first, align 4, !tbaa !28
  %tobool292 = icmp ne i32 %300, 0
  br i1 %tobool292, label %if.then.293, label %if.else.301

if.then.293:                                      ; preds = %while.end.291
  %301 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %302 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %303 = load i32, i32* %iy, align 4, !tbaa !28
  %304 = load i32, i32* %n1, align 4, !tbaa !28
  %rem294 = srem i32 %303, %304
  %add295 = add nsw i32 %rem294, 1
  %305 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %mul296 = mul i32 %add295, %305
  %idx.ext297 = zext i32 %mul296 to i64
  %add.ptr298 = getelementptr inbounds i8, i8* %302, i64 %idx.ext297
  %306 = load i32, i32* %dest_bytes, align 4, !tbaa !28
  %conv299 = zext i32 %306 to i64
  %call300 = call i8* @memcpy(i8* %301, i8* %add.ptr298, i64 %conv299) #6
  store i32 0, i32* %first, align 4, !tbaa !28
  br label %if.end.307

if.else.301:                                      ; preds = %while.end.291
  %307 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %308 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %309 = load i32, i32* %iy, align 4, !tbaa !28
  %310 = load i32, i32* %n1, align 4, !tbaa !28
  %rem302 = srem i32 %309, %310
  %add303 = add nsw i32 %rem302, 1
  %311 = load i32, i32* %dest_raster, align 4, !tbaa !28
  %mul304 = mul i32 %add303, %311
  %idx.ext305 = zext i32 %mul304 to i64
  %add.ptr306 = getelementptr inbounds i8, i8* %308, i64 %idx.ext305
  %312 = load i32, i32* %dest_bytes, align 4, !tbaa !28
  call void @bits_merge(i8* %307, i8* %add.ptr306, i32 %312) #7
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.301, %if.then.293
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %313 = load i32, i32* %iy, align 4, !tbaa !28
  %dec309 = add nsw i32 %313, -1
  store i32 %dec309, i32* %iy, align 4, !tbaa !28
  br label %for.cond.275

for.end.310:                                      ; preds = %for.cond.275
  %314 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %315 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %316 = load i32, i32* %dest_bytes, align 4, !tbaa !28
  %call311 = call i32 @gs_image_next(%struct.gs_image_enum_s* %314, i8* %315, i32 %316, i32* %used) #7
  store i32 %call311, i32* %code, align 4, !tbaa !28
  %317 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %kmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.end.310
  %321 = load i32, i32* %y101, align 4, !tbaa !28
  %inc313 = add nsw i32 %321, 1
  store i32 %inc313, i32* %y101, align 4, !tbaa !28
  br label %for.cond.200

for.end.314:                                      ; preds = %for.cond.200
  %322 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %dest_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  br label %if.end.315

if.end.315:                                       ; preds = %for.end.314, %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.315, %sw.default
  %325 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  %tobool316 = icmp ne i8* %325, null
  br i1 %tobool316, label %if.then.317, label %if.end.322

if.then.317:                                      ; preds = %sw.epilog
  %326 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory318 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %326, i32 0, i32 1
  %327 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory318, align 8, !tbaa !193
  %procs319 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %327, i32 0, i32 1
  %free_object320 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs319, i32 0, i32 2
  %328 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object320, align 8, !tbaa !175
  %329 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory321 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %329, i32 0, i32 1
  %330 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory321, align 8, !tbaa !193
  %331 = load i8*, i8** %bold_lines, align 8, !tbaa !1
  call void %328(%struct.gs_memory_s* %330, i8* %331, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.317, %sw.epilog
  %332 = load i8*, i8** %line, align 8, !tbaa !1
  %tobool323 = icmp ne i8* %332, null
  br i1 %tobool323, label %if.then.324, label %if.end.329

if.then.324:                                      ; preds = %if.end.322
  %333 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory325 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %333, i32 0, i32 1
  %334 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory325, align 8, !tbaa !193
  %procs326 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %334, i32 0, i32 1
  %free_object327 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs326, i32 0, i32 2
  %335 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object327, align 8, !tbaa !175
  %336 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory328 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %336, i32 0, i32 1
  %337 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory328, align 8, !tbaa !193
  %338 = load i8*, i8** %line, align 8, !tbaa !1
  call void %335(%struct.gs_memory_s* %337, i8* %338, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.324, %if.end.322
  %339 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %pie, align 8, !tbaa !1
  %340 = load %struct.gs_state_s*, %struct.gs_state_s** %penum_pgs, align 8, !tbaa !1
  %call330 = call i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %339, %struct.gs_state_s* %340) #7
  store i32 %call330, i32* %code1, align 4, !tbaa !28
  %341 = load i32, i32* %code, align 4, !tbaa !28
  %cmp331 = icmp sge i32 %341, 0
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.337

land.lhs.true.333:                                ; preds = %if.end.329
  %342 = load i32, i32* %code1, align 4, !tbaa !28
  %cmp334 = icmp slt i32 %342, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %land.lhs.true.333
  %343 = load i32, i32* %code1, align 4, !tbaa !28
  store i32 %343, i32* %code, align 4, !tbaa !28
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %land.lhs.true.333, %if.end.329
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.337, %if.then.157, %if.then.144, %if.then.105
  %344 = bitcast i32* %ascent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i8** %bold_lines to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i32* %bold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i32* %h102 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %349 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %350 = bitcast i32* %y101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %x100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %356) #1
  %357 = bitcast %struct.gs_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.353 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.352

if.end.352:                                       ; preds = %cleanup.cont, %if.end.97
  %359 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %359, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

cleanup.353:                                      ; preds = %if.end.352, %cleanup, %if.then.11
  %360 = bitcast i32* %sstr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %dstr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i32* %cpbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast i32* %padbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %368 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast i32* %rast_orig_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  %371 = bitcast i32* %rast_orig_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast %struct.gx_device_color_s** %pdcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #1
  %375 = bitcast %struct.gs_state_s** %penum_pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = load i32, i32* %retval
  ret i32 %377
}

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_do_char(%struct.gs_font_s* %pfont, %struct.gs_state_s* %pgs, %struct.gs_text_enum_s* %penum, i8* %font_file_path, i32 %bBuildGlyph, %struct.gs_string_s* %charstring, %struct.gs_string_s* %glyphname, i64 %chr, i64 %index, i32 %subfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %font_file_path.addr = alloca i8*, align 8
  %bBuildGlyph.addr = alloca i32, align 4
  %charstring.addr = alloca %struct.gs_string_s*, align 8
  %glyphname.addr = alloca %struct.gs_string_s*, align 8
  %chr.addr = alloca i64, align 8
  %index.addr = alloca i64, align 8
  %subfont.addr = alloca i32, align 4
  %penum_s = alloca %struct.gs_show_enum_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cr = alloca %struct.gs_fapi_char_ref, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %ctm = alloca %struct.gs_matrix_s*, align 8
  %scale = alloca i32, align 4
  %metrics = alloca %struct.gs_fapi_metrics_s, align 4
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %enc_char_name_string = alloca %struct.gs_string_s, align 8
  %bCID = alloca i32, align 4
  %bIsType1GlyphData = alloca i32, align 4
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %alpha_bits = alloca i32, align 4
  %FontMatrix_div = alloca double, align 8
  %bVertical = alloca i32, align 4
  %bVertical0 = alloca i32, align 4
  %sbwp = alloca double*, align 8
  %sbw = alloca [4 x double], align 16
  %em_scale_x = alloca double, align 8
  %em_scale_y = alloca double, align 8
  %char_bbox = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %imagenow = alloca i32, align 4
  %align_to_pixels = alloca i32, align 4
  %fdc = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %sbw_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %font_scale = alloca %struct.gs_fapi_font_scale_s, align 4
  %scale_mat = alloca %struct.gs_matrix_s, align 4
  %scale_ctm = alloca %struct.gs_matrix_s, align 4
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %MetricsCount = alloca i32, align 4
  %data_ptr = alloca i8*, align 8
  %l = alloca i32, align 4
  %pwv = alloca [4 x double], align 16
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %w = alloca float, align 4
  %can_replace_metrics = alloca i32, align 4
  %pfont1839 = alloca %struct.gs_font_type1_s*, align 8
  %can_replace_metrics883 = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %font_file_path, i8** %font_file_path.addr, align 8, !tbaa !1
  store i32 %bBuildGlyph, i32* %bBuildGlyph.addr, align 4, !tbaa !28
  store %struct.gs_string_s* %charstring, %struct.gs_string_s** %charstring.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %glyphname, %struct.gs_string_s** %glyphname.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !198
  store i64 %index, i64* %index.addr, align 8, !tbaa !198
  store i32 %subfont, i32* %subfont.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_fapi_char_ref* %cr to i8*
  call void @llvm.lifetime.start(i64 88, i8* %6) #1
  %7 = bitcast %struct.gs_fapi_char_ref* %cr to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 88, i32 8, i1 false)
  %8 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %10, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %11 = bitcast %struct.gs_matrix_s** %ctm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 5
  %13 = bitcast %struct.gs_matrix_fixed_s* %ctm1 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %13, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %14 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_fapi_metrics_s* %metrics to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %17, i32 0, i32 25
  %18 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  store %struct.gs_fapi_server_s* %18, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %19 = bitcast %struct.gs_string_s* %enc_char_name_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast i32* %bCID to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType, align 4, !tbaa !42
  %cmp = icmp eq i32 %22, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 11
  %24 = load i32, i32* %FontType2, align 4, !tbaa !42
  %cmp3 = icmp eq i32 %24, 10
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %25, i32 0, i32 11
  %26 = load i32, i32* %FontType5, align 4, !tbaa !42
  %cmp6 = icmp eq i32 %26, 11
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %27 = load %struct.gs_string_s*, %struct.gs_string_s** %charstring.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gs_string_s* %27, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %entry
  %28 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  store i32 %lor.ext, i32* %bCID, align 4, !tbaa !28
  %29 = bitcast i32* %bIsType1GlyphData to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType8 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %30, i32 0, i32 11
  %31 = load i32, i32* %FontType8, align 4, !tbaa !42
  %cmp9 = icmp eq i32 %31, 1
  br i1 %cmp9, label %lor.end.16, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.end
  %32 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType11 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %32, i32 0, i32 11
  %33 = load i32, i32* %FontType11, align 4, !tbaa !42
  %cmp12 = icmp eq i32 %33, 2
  br i1 %cmp12, label %lor.end.16, label %lor.rhs.13

lor.rhs.13:                                       ; preds = %lor.lhs.false.10
  %34 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType14 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %34, i32 0, i32 11
  %35 = load i32, i32* %FontType14, align 4, !tbaa !42
  %cmp15 = icmp eq i32 %35, 9
  br label %lor.end.16

lor.end.16:                                       ; preds = %lor.rhs.13, %lor.lhs.false.10, %lor.end
  %36 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.end ], [ %cmp15, %lor.rhs.13 ]
  %lor.ext17 = zext i1 %36 to i32
  store i32 %lor.ext17, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %37 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 8, i32 4, i1 false)
  %39 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %41 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !199
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %41(%struct.gx_device_s* %42, i32 0) #7
  store i32 %call, i32* %alpha_bits, align 4, !tbaa !28
  %43 = bitcast double* %FontMatrix_div to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store double 1.000000e+00, double* %FontMatrix_div, align 8, !tbaa !39
  %44 = bitcast i32* %bVertical to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call18 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %45) #7
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call18, i32 0, i32 16
  %46 = load i32, i32* %WMode, align 4, !tbaa !200
  %cmp19 = icmp ne i32 %46, 0
  %conv = zext i1 %cmp19 to i32
  store i32 %conv, i32* %bVertical, align 4, !tbaa !28
  %47 = bitcast i32* %bVertical0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %bVertical, align 4, !tbaa !28
  store i32 %48, i32* %bVertical0, align 4, !tbaa !28
  %49 = bitcast double** %sbwp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %50) #1
  %51 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 32, i32 16, i1 false)
  %52 = bitcast double* %em_scale_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast double* %em_scale_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_rect_s* %char_bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %54) #1
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %imagenow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 0, i32* %imagenow, align 4, !tbaa !28
  %57 = bitcast i32* %align_to_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %58, i32 0, i32 3
  %59 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !201
  %call20 = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %59) #7
  store i32 %call20, i32* %align_to_pixels, align 4, !tbaa !28
  %60 = bitcast i32* %fdc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %62, i32 0, i32 2
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  store %struct.gs_memory_s* %63, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %64 = bitcast i32* %sbw_state to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  store i32 1, i32* %sbw_state, align 4, !tbaa !122
  %65 = load i64, i64* %index.addr, align 8, !tbaa !198
  %cmp21 = icmp eq i64 %65, 2147483647
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end:                                           ; preds = %lor.end.16
  %66 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %66, i32 0, i32 6
  store i32 0, i32* %use_outline, align 4, !tbaa !118
  %67 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gs_text_enum_s* %67, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.26:                                        ; preds = %if.end
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %69 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %70 = load i32, i32* %alpha_bits, align 4, !tbaa !28
  %call27 = call i32 @produce_outline_char(%struct.gs_show_enum_s* %68, %struct.gs_font_base_s* %69, i32 %70, %struct.gs_log2_scale_point_s* %log2_scale) #7
  %71 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline28 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %71, i32 0, i32 6
  store i32 %call27, i32* %use_outline28, align 4, !tbaa !118
  %72 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline29 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %72, i32 0, i32 6
  %73 = load i32, i32* %use_outline29, align 4, !tbaa !118
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  %74 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %max_bitmap = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %74, i32 0, i32 5
  store i32 0, i32* %max_bitmap, align 4, !tbaa !202
  br label %if.end.46

if.else:                                          ; preds = %if.end.26
  %75 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir31 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %75, i32 0, i32 3
  %76 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir31, align 8, !tbaa !201
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %76, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 12
  %77 = load i32, i32* %upper, align 4, !tbaa !203
  %78 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir32 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %78, i32 0, i32 3
  %79 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir32, align 8, !tbaa !201
  %ccache33 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %79, i32 0, i32 5
  %upper34 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache33, i32 0, i32 12
  %80 = load i32, i32* %upper34, align 4, !tbaa !203
  %shr = lshr i32 %80, 1
  %add = add i32 %77, %shr
  %cmp35 = icmp ult i32 %add, 80000
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %81 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %81, i32 0, i32 3
  %82 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir37, align 8, !tbaa !201
  %ccache38 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %82, i32 0, i32 5
  %upper39 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache38, i32 0, i32 12
  %83 = load i32, i32* %upper39, align 4, !tbaa !203
  %84 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir40 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %84, i32 0, i32 3
  %85 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir40, align 8, !tbaa !201
  %ccache41 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %85, i32 0, i32 5
  %upper42 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache41, i32 0, i32 12
  %86 = load i32, i32* %upper42, align 4, !tbaa !203
  %shr43 = lshr i32 %86, 1
  %add44 = add i32 %83, %shr43
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add44, %cond.true ], [ 80000, %cond.false ]
  %87 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %max_bitmap45 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %87, i32 0, i32 5
  store i32 %cond, i32* %max_bitmap45, align 4, !tbaa !202
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end, %if.then.30
  %88 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %dir47 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %88, i32 0, i32 3
  %89 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir47, align 8, !tbaa !201
  %grid_fit_tt = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %89, i32 0, i32 14
  %90 = load i32, i32* %grid_fit_tt, align 4, !tbaa !207
  %91 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %grid_fit = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %91, i32 0, i32 7
  store i32 %90, i32* %grid_fit, align 4, !tbaa !208
  %92 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %92, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %93 = load i32, i32* %operation, align 4, !tbaa !114
  %and = and i32 %93, 512
  %cmp48 = icmp ne i32 %and, 0
  br i1 %cmp48, label %if.else.54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.46
  %94 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline50 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %94, i32 0, i32 6
  %95 = load i32, i32* %use_outline50, align 4, !tbaa !118
  %tobool51 = icmp ne i32 %95, 0
  br i1 %tobool51, label %if.else.54, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call53 = call i32 @gs_currentcharmatrix(%struct.gs_state_s* %96, %struct.gs_matrix_s* null, i32 1) #7
  %97 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_log2_scale = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %97, i32 0, i32 26
  %98 = bitcast %struct.gs_log2_scale_point_s* %fapi_log2_scale to i8*
  %99 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 8, i32 4, i1 false), !tbaa.struct !209
  br label %if.end.55

if.else.54:                                       ; preds = %land.lhs.true, %if.end.46
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !210
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !211
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.52
  %100 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %100, i32 0, i32 2
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !212
  %102 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %102, i32 0, i32 4
  %memory57 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff, i32 0, i32 2
  store %struct.gs_memory_s* %101, %struct.gs_memory_s** %memory57, align 8, !tbaa !46
  %103 = load i32, i32* %subfont.addr, align 4, !tbaa !28
  %104 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff58 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %104, i32 0, i32 4
  %subfont59 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff58, i32 0, i32 6
  store i32 %103, i32* %subfont59, align 4, !tbaa !40
  %105 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %106 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff60 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %106, i32 0, i32 4
  %font_file_path61 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff60, i32 0, i32 3
  store i8* %105, i8** %font_file_path61, align 8, !tbaa !41
  %107 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %108 = bitcast %struct.gs_font_base_s* %107 to i8*
  %109 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff62 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %109, i32 0, i32 4
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff62, i32 0, i32 15
  store i8* %108, i8** %client_font_data, align 8, !tbaa !49
  %110 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %111 = bitcast %struct.gs_font_base_s* %110 to i8*
  %112 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff63 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %112, i32 0, i32 4
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff63, i32 0, i32 16
  store i8* %111, i8** %client_font_data2, align 8, !tbaa !50
  %113 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %113, i32 0, i32 26
  %114 = load i8*, i8** %FAPI_font_data, align 8, !tbaa !51
  %115 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff64 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %115, i32 0, i32 4
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff64, i32 0, i32 0
  store i8* %114, i8** %server_font_data, align 8, !tbaa !52
  %116 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %117 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff65 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %117, i32 0, i32 4
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff65, i32 0, i32 7
  store i32 %116, i32* %is_type1, align 4, !tbaa !43
  %118 = load i32, i32* %bCID, align 4, !tbaa !28
  %119 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff66 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %119, i32 0, i32 4
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff66, i32 0, i32 8
  store i32 %118, i32* %is_cid, align 4, !tbaa !58
  %120 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %120, i32 0, i32 17
  %121 = load i32, i32* %PaintType, align 4, !tbaa !59
  %cmp67 = icmp ne i32 %121, 0
  %conv68 = zext i1 %cmp67 to i32
  %122 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff69 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %122, i32 0, i32 4
  %is_outline_font = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff69, i32 0, i32 9
  store i32 %conv68, i32* %is_outline_font, align 4, !tbaa !60
  %123 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call70 = call i32 @fapi_gs_char_show_width_only(%struct.gs_text_enum_s* %123) #7
  %124 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff71 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %124, i32 0, i32 4
  %metrics_only = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff71, i32 0, i32 12
  store i32 %call70, i32* %metrics_only, align 4, !tbaa !213
  %125 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff72 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %125, i32 0, i32 4
  %is_mtx_skipped = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff72, i32 0, i32 10
  %126 = load i32, i32* %is_mtx_skipped, align 4, !tbaa !61
  %tobool73 = icmp ne i32 %126, 0
  br i1 %tobool73, label %if.end.81, label %if.then.74

if.then.74:                                       ; preds = %if.end.55
  %127 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff75 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %127, i32 0, i32 4
  %call76 = call i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s* %ff75) #7
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %128 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff79 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %128, i32 0, i32 4
  %is_mtx_skipped80 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff79, i32 0, i32 10
  store i32 %conv78, i32* %is_mtx_skipped80, align 4, !tbaa !61
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.end.55
  %129 = load i32, i32* %bVertical, align 4, !tbaa !28
  %130 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff82 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %130, i32 0, i32 4
  %is_vertical = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff82, i32 0, i32 11
  store i32 %129, i32* %is_vertical, align 4, !tbaa !45
  %131 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %client_ctx_p, align 8, !tbaa !47
  %133 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff83 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %133, i32 0, i32 4
  %client_ctx_p84 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff83, i32 0, i32 14
  store i8* %132, i8** %client_ctx_p84, align 8, !tbaa !48
  %134 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %frac_shift = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %134, i32 0, i32 2
  %135 = load i32, i32* %frac_shift, align 4, !tbaa !31
  %shl = shl i32 1, %135
  store i32 %shl, i32* %scale, align 4, !tbaa !28
  br label %retry_oversampling

retry_oversampling:                               ; preds = %if.then.650, %if.then.637, %if.then.621, %if.end.81
  %136 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %136, i32 0, i32 3
  %font_id = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face, i32 0, i32 0
  %137 = load i64, i64* %font_id, align 8, !tbaa !86
  %138 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %138, i32 0, i32 6
  %139 = load i64, i64* %id, align 8, !tbaa !214
  %cmp85 = icmp ne i64 %137, %139
  br i1 %cmp85, label %if.then.144, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %retry_oversampling
  %140 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face88 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %140, i32 0, i32 3
  %ctm89 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face88, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm89, i32 0, i32 0
  %141 = load float, float* %xx, align 4, !tbaa !215
  %142 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %xx90 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %142, i32 0, i32 0
  %143 = load float, float* %xx90, align 4, !tbaa !215
  %cmp91 = fcmp oeq float %141, %143
  br i1 %cmp91, label %land.lhs.true.93, label %if.then.144

land.lhs.true.93:                                 ; preds = %lor.lhs.false.87
  %144 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face94 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %144, i32 0, i32 3
  %ctm95 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face94, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm95, i32 0, i32 1
  %145 = load float, float* %xy, align 4, !tbaa !216
  %146 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %xy96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %146, i32 0, i32 1
  %147 = load float, float* %xy96, align 4, !tbaa !216
  %cmp97 = fcmp oeq float %145, %147
  br i1 %cmp97, label %land.lhs.true.99, label %if.then.144

land.lhs.true.99:                                 ; preds = %land.lhs.true.93
  %148 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face100 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %148, i32 0, i32 3
  %ctm101 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face100, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm101, i32 0, i32 2
  %149 = load float, float* %yx, align 4, !tbaa !217
  %150 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %yx102 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %150, i32 0, i32 2
  %151 = load float, float* %yx102, align 4, !tbaa !217
  %cmp103 = fcmp oeq float %149, %151
  br i1 %cmp103, label %land.lhs.true.105, label %if.then.144

land.lhs.true.105:                                ; preds = %land.lhs.true.99
  %152 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face106 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %152, i32 0, i32 3
  %ctm107 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face106, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm107, i32 0, i32 3
  %153 = load float, float* %yy, align 4, !tbaa !218
  %154 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %yy108 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %154, i32 0, i32 3
  %155 = load float, float* %yy108, align 4, !tbaa !218
  %cmp109 = fcmp oeq float %153, %155
  br i1 %cmp109, label %lor.lhs.false.111, label %if.then.144

lor.lhs.false.111:                                ; preds = %land.lhs.true.105
  %156 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face112 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %156, i32 0, i32 3
  %log2_scale113 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face112, i32 0, i32 2
  %x114 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale113, i32 0, i32 0
  %157 = load i32, i32* %x114, align 4, !tbaa !219
  %x115 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %158 = load i32, i32* %x115, align 4, !tbaa !210
  %cmp116 = icmp ne i32 %157, %158
  br i1 %cmp116, label %if.then.144, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.111
  %159 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face119 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %159, i32 0, i32 3
  %log2_scale120 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face119, i32 0, i32 2
  %y121 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale120, i32 0, i32 1
  %160 = load i32, i32* %y121, align 4, !tbaa !220
  %y122 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %161 = load i32, i32* %y122, align 4, !tbaa !211
  %cmp123 = icmp ne i32 %160, %161
  br i1 %cmp123, label %if.then.144, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.118
  %162 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face126 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %162, i32 0, i32 3
  %align_to_pixels127 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face126, i32 0, i32 3
  %163 = load i32, i32* %align_to_pixels127, align 4, !tbaa !221
  %164 = load i32, i32* %align_to_pixels, align 4, !tbaa !28
  %cmp128 = icmp ne i32 %163, %164
  br i1 %cmp128, label %if.then.144, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.125
  %165 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face131 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %165, i32 0, i32 3
  %HWResolution = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face131, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %166 = load float, float* %arrayidx, align 4, !tbaa !119
  %167 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %167, i32 0, i32 22
  %arrayidx133 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution132, i32 0, i64 0
  %168 = load float, float* %arrayidx133, align 4, !tbaa !119
  %cmp134 = fcmp une float %166, %168
  br i1 %cmp134, label %if.then.144, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.130
  %169 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face137 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %169, i32 0, i32 3
  %HWResolution138 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face137, i32 0, i32 4
  %arrayidx139 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution138, i32 0, i64 1
  %170 = load float, float* %arrayidx139, align 4, !tbaa !119
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution140 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 22
  %arrayidx141 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution140, i32 0, i64 1
  %172 = load float, float* %arrayidx141, align 4, !tbaa !119
  %cmp142 = fcmp une float %170, %172
  br i1 %cmp142, label %if.then.144, label %if.end.334

if.then.144:                                      ; preds = %lor.lhs.false.136, %lor.lhs.false.130, %lor.lhs.false.125, %lor.lhs.false.118, %lor.lhs.false.111, %land.lhs.true.105, %land.lhs.true.99, %land.lhs.true.93, %lor.lhs.false.87, %retry_oversampling
  %173 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.lifetime.start(i64 44, i8* %173) #1
  %174 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.memset.p0i8.i64(i8* %174, i8 0, i64 44, i32 4, i1 false)
  %175 = bitcast i8* %174 to %struct.gs_fapi_font_scale_s*
  %176 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %175, i32 0, i32 0
  %177 = getelementptr [6 x i32], [6 x i32]* %176, i32 0, i32 0
  store i32 1, i32* %177
  %178 = getelementptr [6 x i32], [6 x i32]* %176, i32 0, i32 3
  store i32 1, i32* %178
  %179 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %175, i32 0, i32 2
  %180 = getelementptr [2 x i32], [2 x i32]* %179, i32 0, i32 0
  store i32 1, i32* %180
  %181 = getelementptr [2 x i32], [2 x i32]* %179, i32 0, i32 1
  store i32 1, i32* %181
  %182 = getelementptr %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %175, i32 0, i32 3
  store i32 1, i32* %182
  %183 = bitcast %struct.gs_matrix_s* %scale_mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %183) #1
  %184 = bitcast %struct.gs_matrix_s* %scale_ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %184) #1
  %185 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %id145 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %185, i32 0, i32 6
  %186 = load i64, i64* %id145, align 8, !tbaa !214
  %187 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face146 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %187, i32 0, i32 3
  %font_id147 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face146, i32 0, i32 0
  store i64 %186, i64* %font_id147, align 8, !tbaa !86
  %188 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face148 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %188, i32 0, i32 3
  %ctm149 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face148, i32 0, i32 1
  %189 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %190 = bitcast %struct.gs_matrix_s* %ctm149 to i8*
  %191 = bitcast %struct.gs_matrix_s* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 24, i32 4, i1 false), !tbaa.struct !222
  %192 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face150 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %192, i32 0, i32 3
  %log2_scale151 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face150, i32 0, i32 2
  %193 = bitcast %struct.gs_log2_scale_point_s* %log2_scale151 to i8*
  %194 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 8, i32 4, i1 false), !tbaa.struct !209
  %195 = load i32, i32* %align_to_pixels, align 4, !tbaa !28
  %196 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face152 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %196, i32 0, i32 3
  %align_to_pixels153 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face152, i32 0, i32 3
  store i32 %195, i32* %align_to_pixels153, align 4, !tbaa !221
  %197 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution154 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %197, i32 0, i32 22
  %arrayidx155 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution154, i32 0, i64 0
  %198 = load float, float* %arrayidx155, align 4, !tbaa !119
  %199 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face156 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %199, i32 0, i32 3
  %HWResolution157 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face156, i32 0, i32 4
  %arrayidx158 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution157, i32 0, i64 0
  store float %198, float* %arrayidx158, align 4, !tbaa !119
  %200 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution159 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %200, i32 0, i32 22
  %arrayidx160 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution159, i32 0, i64 1
  %201 = load float, float* %arrayidx160, align 4, !tbaa !119
  %202 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %face161 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %202, i32 0, i32 3
  %HWResolution162 = getelementptr inbounds %struct.gs_fapi_face_s, %struct.gs_fapi_face_s* %face161, i32 0, i32 4
  %arrayidx163 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution162, i32 0, i64 1
  store float %201, float* %arrayidx163, align 4, !tbaa !119
  %x164 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %203 = load i32, i32* %x164, align 4, !tbaa !210
  %shl165 = shl i32 1, %203
  %subpixels = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 2
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %subpixels, i32 0, i64 0
  store i32 %shl165, i32* %arrayidx166, align 4, !tbaa !28
  %y167 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %204 = load i32, i32* %y167, align 4, !tbaa !211
  %shl168 = shl i32 1, %204
  %subpixels169 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 2
  %arrayidx170 = getelementptr inbounds [2 x i32], [2 x i32]* %subpixels169, i32 0, i64 1
  store i32 %shl168, i32* %arrayidx170, align 4, !tbaa !28
  %205 = load i32, i32* %align_to_pixels, align 4, !tbaa !28
  %align_to_pixels171 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 3
  store i32 %205, i32* %align_to_pixels171, align 4, !tbaa !223
  %206 = bitcast %struct.gs_matrix_s* %scale_ctm to i8*
  %call172 = call i8* @memset(i8* %206, i32 0, i64 24) #6
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution173 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %207, i32 0, i32 22
  %arrayidx174 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution173, i32 0, i64 0
  %208 = load float, float* %arrayidx174, align 4, !tbaa !119
  %div = fdiv float %208, 7.200000e+01
  %xx175 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_ctm, i32 0, i32 0
  store float %div, float* %xx175, align 4, !tbaa !215
  %209 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution176 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %209, i32 0, i32 22
  %arrayidx177 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution176, i32 0, i64 1
  %210 = load float, float* %arrayidx177, align 4, !tbaa !119
  %div178 = fdiv float %210, 7.200000e+01
  %yy179 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_ctm, i32 0, i32 3
  store float %div178, float* %yy179, align 4, !tbaa !218
  %call180 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %scale_ctm, %struct.gs_matrix_s* %scale_ctm) #7
  store i32 %call180, i32* %code, align 4, !tbaa !28
  %211 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %call181 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %211, %struct.gs_matrix_s* %scale_ctm, %struct.gs_matrix_s* %scale_mat) #7
  store i32 %call181, i32* %code, align 4, !tbaa !28
  %212 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_fontmatrix = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %212, i32 0, i32 17
  %213 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)** %get_fontmatrix, align 8, !tbaa !225
  %214 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call182 = call i32 %213(%struct.gs_fapi_server_s* %214, %struct.gs_matrix_s* %scale_ctm) #7
  store i32 %call182, i32* %code, align 4, !tbaa !28
  %call183 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %scale_ctm, %struct.gs_matrix_s* %scale_ctm) #7
  store i32 %call183, i32* %code, align 4, !tbaa !28
  %call184 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %scale_mat, %struct.gs_matrix_s* %scale_ctm, %struct.gs_matrix_s* %scale_mat) #7
  store i32 %call184, i32* %code, align 4, !tbaa !28
  %xx185 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 0
  %215 = load float, float* %xx185, align 4, !tbaa !215
  %conv186 = fpext float %215 to double
  %216 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul = fmul double %conv186, %216
  %217 = load i32, i32* %scale, align 4, !tbaa !28
  %conv187 = sitofp i32 %217 to double
  %mul188 = fmul double %mul, %conv187
  %add189 = fadd double %mul188, 5.000000e-01
  %conv190 = fptosi double %add189 to i32
  %matrix = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix, i32 0, i64 0
  store i32 %conv190, i32* %arrayidx191, align 4, !tbaa !28
  %xy192 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 1
  %218 = load float, float* %xy192, align 4, !tbaa !216
  %conv193 = fpext float %218 to double
  %219 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul194 = fmul double %conv193, %219
  %220 = load i32, i32* %scale, align 4, !tbaa !28
  %conv195 = sitofp i32 %220 to double
  %mul196 = fmul double %mul194, %conv195
  %add197 = fadd double %mul196, 5.000000e-01
  %conv198 = fptosi double %add197 to i32
  %sub = sub nsw i32 0, %conv198
  %matrix199 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix199, i32 0, i64 1
  store i32 %sub, i32* %arrayidx200, align 4, !tbaa !28
  %yx201 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 2
  %221 = load float, float* %yx201, align 4, !tbaa !217
  %conv202 = fpext float %221 to double
  %222 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul203 = fmul double %conv202, %222
  %223 = load i32, i32* %scale, align 4, !tbaa !28
  %conv204 = sitofp i32 %223 to double
  %mul205 = fmul double %mul203, %conv204
  %add206 = fadd double %mul205, 5.000000e-01
  %conv207 = fptosi double %add206 to i32
  %matrix208 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix208, i32 0, i64 2
  store i32 %conv207, i32* %arrayidx209, align 4, !tbaa !28
  %yy210 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 3
  %224 = load float, float* %yy210, align 4, !tbaa !218
  %conv211 = fpext float %224 to double
  %225 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul212 = fmul double %conv211, %225
  %226 = load i32, i32* %scale, align 4, !tbaa !28
  %conv213 = sitofp i32 %226 to double
  %mul214 = fmul double %mul212, %conv213
  %add215 = fadd double %mul214, 5.000000e-01
  %conv216 = fptosi double %add215 to i32
  %sub217 = sub nsw i32 0, %conv216
  %matrix218 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix218, i32 0, i64 3
  store i32 %sub217, i32* %arrayidx219, align 4, !tbaa !28
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 4
  %227 = load float, float* %tx, align 4, !tbaa !226
  %conv220 = fpext float %227 to double
  %228 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul221 = fmul double %conv220, %228
  %229 = load i32, i32* %scale, align 4, !tbaa !28
  %conv222 = sitofp i32 %229 to double
  %mul223 = fmul double %mul221, %conv222
  %add224 = fadd double %mul223, 5.000000e-01
  %conv225 = fptosi double %add224 to i32
  %matrix226 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix226, i32 0, i64 4
  store i32 %conv225, i32* %arrayidx227, align 4, !tbaa !28
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 5
  %230 = load float, float* %ty, align 4, !tbaa !227
  %conv228 = fpext float %230 to double
  %231 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  %mul229 = fmul double %conv228, %231
  %232 = load i32, i32* %scale, align 4, !tbaa !28
  %conv230 = sitofp i32 %232 to double
  %mul231 = fmul double %mul229, %conv230
  %add232 = fadd double %mul231, 5.000000e-01
  %conv233 = fptosi double %add232 to i32
  %matrix234 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix234, i32 0, i64 5
  store i32 %conv233, i32* %arrayidx235, align 4, !tbaa !28
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution236 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %233, i32 0, i32 22
  %arrayidx237 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution236, i32 0, i64 0
  %234 = load float, float* %arrayidx237, align 4, !tbaa !119
  %conv238 = fpext float %234 to double
  %subpixels239 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 2
  %arrayidx240 = getelementptr inbounds [2 x i32], [2 x i32]* %subpixels239, i32 0, i64 0
  %235 = load i32, i32* %arrayidx240, align 4, !tbaa !28
  %conv241 = sitofp i32 %235 to double
  %mul242 = fmul double %conv238, %conv241
  %236 = load i32, i32* %scale, align 4, !tbaa !28
  %conv243 = sitofp i32 %236 to double
  %mul244 = fmul double %mul242, %conv243
  %conv245 = fptosi double %mul244 to i32
  %HWResolution246 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution246, i32 0, i64 0
  store i32 %conv245, i32* %arrayidx247, align 4, !tbaa !28
  %237 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution248 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %237, i32 0, i32 22
  %arrayidx249 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution248, i32 0, i64 1
  %238 = load float, float* %arrayidx249, align 4, !tbaa !119
  %conv250 = fpext float %238 to double
  %subpixels251 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 2
  %arrayidx252 = getelementptr inbounds [2 x i32], [2 x i32]* %subpixels251, i32 0, i64 1
  %239 = load i32, i32* %arrayidx252, align 4, !tbaa !28
  %conv253 = sitofp i32 %239 to double
  %mul254 = fmul double %conv250, %conv253
  %240 = load i32, i32* %scale, align 4, !tbaa !28
  %conv255 = sitofp i32 %240 to double
  %mul256 = fmul double %mul254, %conv255
  %conv257 = fptosi double %mul256 to i32
  %HWResolution258 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution258, i32 0, i64 1
  store i32 %conv257, i32* %arrayidx259, align 4, !tbaa !28
  %matrix260 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix260, i32 0, i64 0
  %241 = load i32, i32* %arrayidx261, align 4, !tbaa !28
  %conv262 = sitofp i32 %241 to double
  %matrix263 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix263, i32 0, i64 0
  %242 = load i32, i32* %arrayidx264, align 4, !tbaa !28
  %conv265 = sitofp i32 %242 to double
  %mul266 = fmul double %conv262, %conv265
  %matrix267 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix267, i32 0, i64 2
  %243 = load i32, i32* %arrayidx268, align 4, !tbaa !28
  %conv269 = sitofp i32 %243 to double
  %matrix270 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix270, i32 0, i64 2
  %244 = load i32, i32* %arrayidx271, align 4, !tbaa !28
  %conv272 = sitofp i32 %244 to double
  %mul273 = fmul double %conv269, %conv272
  %add274 = fadd double %mul266, %mul273
  %call275 = call double @sqrt(double %add274) #6
  %cmp276 = fcmp oeq double %call275, 0.000000e+00
  br i1 %cmp276, label %if.then.297, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %if.then.144
  %matrix279 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix279, i32 0, i64 1
  %245 = load i32, i32* %arrayidx280, align 4, !tbaa !28
  %conv281 = sitofp i32 %245 to double
  %matrix282 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix282, i32 0, i64 1
  %246 = load i32, i32* %arrayidx283, align 4, !tbaa !28
  %conv284 = sitofp i32 %246 to double
  %mul285 = fmul double %conv281, %conv284
  %matrix286 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix286, i32 0, i64 3
  %247 = load i32, i32* %arrayidx287, align 4, !tbaa !28
  %conv288 = sitofp i32 %247 to double
  %matrix289 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix289, i32 0, i64 3
  %248 = load i32, i32* %arrayidx290, align 4, !tbaa !28
  %conv291 = sitofp i32 %248 to double
  %mul292 = fmul double %conv288, %conv291
  %add293 = fadd double %mul285, %mul292
  %call294 = call double @sqrt(double %add293) #6
  %cmp295 = fcmp oeq double %call294, 0.000000e+00
  br i1 %cmp295, label %if.then.297, label %if.end.312

if.then.297:                                      ; preds = %lor.lhs.false.278, %if.then.144
  %matrix298 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix298, i32 0, i64 0
  %249 = load i32, i32* %arrayidx299, align 4, !tbaa !28
  %tobool300 = icmp ne i32 %249, 0
  br i1 %tobool300, label %if.end.304, label %if.then.301

if.then.301:                                      ; preds = %if.then.297
  %matrix302 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix302, i32 0, i64 0
  store i32 1, i32* %arrayidx303, align 4, !tbaa !28
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.301, %if.then.297
  %matrix305 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix305, i32 0, i64 3
  %250 = load i32, i32* %arrayidx306, align 4, !tbaa !28
  %tobool307 = icmp ne i32 %250, 0
  br i1 %tobool307, label %if.end.311, label %if.then.308

if.then.308:                                      ; preds = %if.end.304
  %matrix309 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %font_scale, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix309, i32 0, i64 3
  store i32 1, i32* %arrayidx310, align 4, !tbaa !28
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.308, %if.end.304
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %lor.lhs.false.278
  %251 = load i32, i32* %bCID, align 4, !tbaa !28
  %tobool313 = icmp ne i32 %251, 0
  br i1 %tobool313, label %lor.lhs.false.314, label %if.then.322

lor.lhs.false.314:                                ; preds = %if.end.312
  %252 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType315 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %252, i32 0, i32 11
  %253 = load i32, i32* %FontType315, align 4, !tbaa !42
  %cmp316 = icmp ne i32 %253, 1
  br i1 %cmp316, label %land.lhs.true.318, label %if.else.323

land.lhs.true.318:                                ; preds = %lor.lhs.false.314
  %254 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType319 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %254, i32 0, i32 11
  %255 = load i32, i32* %FontType319, align 4, !tbaa !42
  %cmp320 = icmp ne i32 %255, 2
  br i1 %cmp320, label %if.then.322, label %if.else.323

if.then.322:                                      ; preds = %land.lhs.true.318, %if.end.312
  store i32 -2, i32* %fdc, align 4, !tbaa !122
  br label %if.end.324

if.else.323:                                      ; preds = %land.lhs.true.318, %lor.lhs.false.314
  store i32 -2, i32* %fdc, align 4, !tbaa !122
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.323, %if.then.322
  %256 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %257 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %258 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_scaled_font = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %258, i32 0, i32 10
  %259 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)** %get_scaled_font, align 8, !tbaa !62
  %260 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %261 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff325 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %261, i32 0, i32 4
  %262 = load i32, i32* %fdc, align 4, !tbaa !122
  %call326 = call i32 %259(%struct.gs_fapi_server_s* %260, %struct.gs_fapi_font_s* %ff325, %struct.gs_fapi_font_scale_s* %font_scale, i8* null, i32 %262) #7
  %call327 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %256, %struct.gs_fapi_server_s* %257, i32 %call326) #7
  store i32 %call327, i32* %code, align 4, !tbaa !28
  %cmp328 = icmp slt i32 %call327, 0
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.324
  %263 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %263, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.331:                                       ; preds = %if.end.324
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.331, %if.then.330
  %264 = bitcast %struct.gs_matrix_s* %scale_ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %264) #1
  %265 = bitcast %struct.gs_matrix_s* %scale_mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %265) #1
  %266 = bitcast %struct.gs_fapi_font_scale_s* %font_scale to i8*
  call void @llvm.lifetime.end(i64 44, i8* %266) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.977 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.334

if.end.334:                                       ; preds = %cleanup.cont, %lor.lhs.false.136
  %char_codes_count = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 2
  store i32 1, i32* %char_codes_count, align 4, !tbaa !228
  %267 = load i64, i64* %index.addr, align 8, !tbaa !198
  %cmp335 = icmp eq i64 %267, 2147483647
  br i1 %cmp335, label %cond.true.337, label %cond.false.338

cond.true.337:                                    ; preds = %if.end.334
  br label %cond.end.339

cond.false.338:                                   ; preds = %if.end.334
  %268 = load i64, i64* %index.addr, align 8, !tbaa !198
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.338, %cond.true.337
  %cond340 = phi i64 [ 0, %cond.true.337 ], [ %268, %cond.false.338 ]
  %char_codes = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes, i32 0, i64 0
  store i64 %cond340, i64* %arrayidx341, align 8, !tbaa !198
  %269 = load i64, i64* %chr.addr, align 8, !tbaa !198
  %client_char_code = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 0
  store i64 %269, i64* %client_char_code, align 8, !tbaa !230
  %is_glyph_index = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 3
  store i32 1, i32* %is_glyph_index, align 4, !tbaa !231
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %enc_char_name_string, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !53
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %enc_char_name_string, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !56
  %270 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff342 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %270, i32 0, i32 4
  %get_glyphname_or_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff342, i32 0, i32 33
  %271 = load i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)** %get_glyphname_or_cid, align 8, !tbaa !232
  %tobool343 = icmp ne i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)* %271, null
  br i1 %tobool343, label %if.then.344, label %if.end.353

if.then.344:                                      ; preds = %cond.end.339
  %272 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff345 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %272, i32 0, i32 4
  %get_glyphname_or_cid346 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff345, i32 0, i32 33
  %273 = load i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)** %get_glyphname_or_cid346, align 8, !tbaa !232
  %274 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %275 = load %struct.gs_string_s*, %struct.gs_string_s** %charstring.addr, align 8, !tbaa !1
  %276 = load %struct.gs_string_s*, %struct.gs_string_s** %glyphname.addr, align 8, !tbaa !1
  %277 = load i64, i64* %index.addr, align 8, !tbaa !198
  %conv347 = trunc i64 %277 to i32
  %278 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %279 = load i32, i32* %bCID, align 4, !tbaa !28
  %call348 = call i32 %273(%struct.gs_font_base_s* %274, %struct.gs_string_s* %275, %struct.gs_string_s* %276, i32 %conv347, %struct.gs_string_s* %enc_char_name_string, i8* %278, %struct.gs_fapi_char_ref* %cr, i32 %279) #7
  store i32 %call348, i32* %code, align 4, !tbaa !28
  %cmp349 = icmp slt i32 %call348, 0
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.then.344
  %280 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %280, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.352:                                       ; preds = %if.then.344
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %cond.end.339
  %281 = load i32, i32* %bCID, align 4, !tbaa !28
  %tobool354 = icmp ne i32 %281, 0
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.445

land.lhs.true.355:                                ; preds = %if.end.353
  %282 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %tobool356 = icmp ne i32 %282, 0
  br i1 %tobool356, label %if.end.445, label %if.then.357

if.then.357:                                      ; preds = %land.lhs.true.355
  %283 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  %284 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %285 = bitcast %struct.gs_font_base_s* %284 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %285, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %286 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %287 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %287, i32 0, i32 30
  %MetricsCount358 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 1
  %288 = load i32, i32* %MetricsCount358, align 4, !tbaa !11
  store i32 %288, i32* %MetricsCount, align 4, !tbaa !28
  %289 = load i32, i32* %MetricsCount, align 4, !tbaa !28
  %cmp359 = icmp sgt i32 %289, 0
  br i1 %cmp359, label %if.then.361, label %if.end.444

if.then.361:                                      ; preds = %if.then.357
  %290 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %290) #1
  %291 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #1
  %292 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff362 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %292, i32 0, i32 4
  %get_glyphdirectory_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff362, i32 0, i32 32
  %293 = load i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)** %get_glyphdirectory_data, align 8, !tbaa !233
  %294 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff363 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %294, i32 0, i32 4
  %char_codes364 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes364, i32 0, i64 0
  %295 = load i64, i64* %arrayidx365, align 8, !tbaa !198
  %conv366 = trunc i64 %295 to i32
  %call367 = call i32 %293(%struct.gs_fapi_font_s* %ff363, i32 %conv366, i8** %data_ptr) #7
  store i32 %call367, i32* %l, align 4, !tbaa !28
  %296 = load i32, i32* %MetricsCount, align 4, !tbaa !28
  %cmp368 = icmp eq i32 %296, 2
  br i1 %cmp368, label %land.lhs.true.370, label %if.else.395

land.lhs.true.370:                                ; preds = %if.then.361
  %297 = load i32, i32* %l, align 4, !tbaa !28
  %cmp371 = icmp sge i32 %297, 4
  br i1 %cmp371, label %if.then.373, label %if.else.395

if.then.373:                                      ; preds = %land.lhs.true.370
  %298 = load i32, i32* %bVertical0, align 4, !tbaa !28
  %tobool374 = icmp ne i32 %298, 0
  br i1 %tobool374, label %if.end.394, label %if.then.375

if.then.375:                                      ; preds = %if.then.373
  %299 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %299, i64 2
  %arrayidx376 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %300 = load i8, i8* %arrayidx376, align 1, !tbaa !122
  %conv377 = zext i8 %300 to i32
  %shl378 = shl i32 %conv377, 8
  %301 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr379 = getelementptr inbounds i8, i8* %301, i64 2
  %arrayidx380 = getelementptr inbounds i8, i8* %add.ptr379, i64 1
  %302 = load i8, i8* %arrayidx380, align 1, !tbaa !122
  %conv381 = zext i8 %302 to i32
  %add382 = add i32 %shl378, %conv381
  %xor = xor i32 %add382, 32768
  %sub383 = sub i32 %xor, 32768
  %303 = load i32, i32* %scale, align 4, !tbaa !28
  %mul384 = mul nsw i32 %sub383, %303
  %sb_x = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  store i32 %mul384, i32* %sb_x, align 4, !tbaa !234
  %304 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr385 = getelementptr inbounds i8, i8* %304, i64 0
  %arrayidx386 = getelementptr inbounds i8, i8* %add.ptr385, i64 0
  %305 = load i8, i8* %arrayidx386, align 1, !tbaa !122
  %conv387 = zext i8 %305 to i32
  %shl388 = shl i32 %conv387, 8
  %306 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr389 = getelementptr inbounds i8, i8* %306, i64 0
  %arrayidx390 = getelementptr inbounds i8, i8* %add.ptr389, i64 1
  %307 = load i8, i8* %arrayidx390, align 1, !tbaa !122
  %conv391 = zext i8 %307 to i32
  %add392 = add i32 %shl388, %conv391
  %308 = load i32, i32* %scale, align 4, !tbaa !28
  %mul393 = mul i32 %add392, %308
  %aw_x = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  store i32 %mul393, i32* %aw_x, align 4, !tbaa !235
  %metrics_type = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 3, i32* %metrics_type, align 4, !tbaa !236
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.375, %if.then.373
  br label %if.end.443

if.else.395:                                      ; preds = %land.lhs.true.370, %if.then.361
  %309 = load i32, i32* %l, align 4, !tbaa !28
  %cmp396 = icmp sge i32 %309, 8
  br i1 %cmp396, label %if.then.398, label %if.end.442

if.then.398:                                      ; preds = %if.else.395
  %310 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr399 = getelementptr inbounds i8, i8* %310, i64 2
  %arrayidx400 = getelementptr inbounds i8, i8* %add.ptr399, i64 0
  %311 = load i8, i8* %arrayidx400, align 1, !tbaa !122
  %conv401 = zext i8 %311 to i32
  %shl402 = shl i32 %conv401, 8
  %312 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr403 = getelementptr inbounds i8, i8* %312, i64 2
  %arrayidx404 = getelementptr inbounds i8, i8* %add.ptr403, i64 1
  %313 = load i8, i8* %arrayidx404, align 1, !tbaa !122
  %conv405 = zext i8 %313 to i32
  %add406 = add i32 %shl402, %conv405
  %xor407 = xor i32 %add406, 32768
  %sub408 = sub i32 %xor407, 32768
  %314 = load i32, i32* %scale, align 4, !tbaa !28
  %mul409 = mul nsw i32 %sub408, %314
  %sb_y = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 8
  store i32 %mul409, i32* %sb_y, align 4, !tbaa !237
  %315 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr410 = getelementptr inbounds i8, i8* %315, i64 0
  %arrayidx411 = getelementptr inbounds i8, i8* %add.ptr410, i64 0
  %316 = load i8, i8* %arrayidx411, align 1, !tbaa !122
  %conv412 = zext i8 %316 to i32
  %shl413 = shl i32 %conv412, 8
  %317 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr414 = getelementptr inbounds i8, i8* %317, i64 0
  %arrayidx415 = getelementptr inbounds i8, i8* %add.ptr414, i64 1
  %318 = load i8, i8* %arrayidx415, align 1, !tbaa !122
  %conv416 = zext i8 %318 to i32
  %add417 = add i32 %shl413, %conv416
  %319 = load i32, i32* %scale, align 4, !tbaa !28
  %mul418 = mul i32 %add417, %319
  %aw_y = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 10
  store i32 %mul418, i32* %aw_y, align 4, !tbaa !238
  %320 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr419 = getelementptr inbounds i8, i8* %320, i64 6
  %arrayidx420 = getelementptr inbounds i8, i8* %add.ptr419, i64 0
  %321 = load i8, i8* %arrayidx420, align 1, !tbaa !122
  %conv421 = zext i8 %321 to i32
  %shl422 = shl i32 %conv421, 8
  %322 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr423 = getelementptr inbounds i8, i8* %322, i64 6
  %arrayidx424 = getelementptr inbounds i8, i8* %add.ptr423, i64 1
  %323 = load i8, i8* %arrayidx424, align 1, !tbaa !122
  %conv425 = zext i8 %323 to i32
  %add426 = add i32 %shl422, %conv425
  %xor427 = xor i32 %add426, 32768
  %sub428 = sub i32 %xor427, 32768
  %324 = load i32, i32* %scale, align 4, !tbaa !28
  %mul429 = mul nsw i32 %sub428, %324
  %sb_x430 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  store i32 %mul429, i32* %sb_x430, align 4, !tbaa !234
  %325 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr431 = getelementptr inbounds i8, i8* %325, i64 4
  %arrayidx432 = getelementptr inbounds i8, i8* %add.ptr431, i64 0
  %326 = load i8, i8* %arrayidx432, align 1, !tbaa !122
  %conv433 = zext i8 %326 to i32
  %shl434 = shl i32 %conv433, 8
  %327 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %add.ptr435 = getelementptr inbounds i8, i8* %327, i64 4
  %arrayidx436 = getelementptr inbounds i8, i8* %add.ptr435, i64 1
  %328 = load i8, i8* %arrayidx436, align 1, !tbaa !122
  %conv437 = zext i8 %328 to i32
  %add438 = add i32 %shl434, %conv437
  %329 = load i32, i32* %scale, align 4, !tbaa !28
  %mul439 = mul i32 %add438, %329
  %aw_x440 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  store i32 %mul439, i32* %aw_x440, align 4, !tbaa !235
  %metrics_type441 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 3, i32* %metrics_type441, align 4, !tbaa !236
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.398, %if.else.395
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %if.end.394
  %330 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %331 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %if.then.357
  %332 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %land.lhs.true.355, %if.end.353
  %metrics_type446 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  %334 = load i32, i32* %metrics_type446, align 4, !tbaa !236
  %cmp447 = icmp ne i32 %334, 3
  br i1 %cmp447, label %land.lhs.true.449, label %if.end.546

land.lhs.true.449:                                ; preds = %if.end.445
  %335 = load i32, i32* %bVertical, align 4, !tbaa !28
  %tobool450 = icmp ne i32 %335, 0
  br i1 %tobool450, label %if.then.451, label %if.end.546

if.then.451:                                      ; preds = %land.lhs.true.449
  %336 = bitcast [4 x double]* %pwv to i8*
  call void @llvm.lifetime.start(i64 32, i8* %336) #1
  %337 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff452 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %337, i32 0, i32 4
  %fapi_get_metrics = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff452, i32 0, i32 34
  %338 = load i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)** %fapi_get_metrics, align 8, !tbaa !239
  %339 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff453 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %339, i32 0, i32 4
  %340 = load i64, i64* %index.addr, align 8, !tbaa !198
  %conv454 = trunc i64 %340 to i32
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i32 0
  %341 = load i32, i32* %bVertical, align 4, !tbaa !28
  %call455 = call i32 %338(%struct.gs_fapi_font_s* %ff453, %struct.gs_string_s* %enc_char_name_string, i32 %conv454, double* %arraydecay, i32 %341) #7
  store i32 %call455, i32* %code, align 4, !tbaa !28
  %342 = load i32, i32* %code, align 4, !tbaa !28
  %cmp456 = icmp slt i32 %342, 0
  br i1 %cmp456, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.then.451
  %343 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %343, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.543

if.end.459:                                       ; preds = %if.then.451
  %344 = load i32, i32* %code, align 4, !tbaa !28
  %cmp460 = icmp eq i32 %344, 0
  br i1 %cmp460, label %if.then.462, label %if.else.506

if.then.462:                                      ; preds = %if.end.459
  %345 = load i32, i32* %bCID, align 4, !tbaa !28
  %tobool463 = icmp ne i32 %345, 0
  br i1 %tobool463, label %land.lhs.true.464, label %if.else.504

land.lhs.true.464:                                ; preds = %if.then.462
  %346 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %tobool465 = icmp ne i32 %346, 0
  br i1 %tobool465, label %if.else.504, label %land.lhs.true.466

land.lhs.true.466:                                ; preds = %land.lhs.true.464
  %347 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %tobool467 = icmp ne i8* %347, null
  br i1 %tobool467, label %if.then.468, label %if.else.504

if.then.468:                                      ; preds = %land.lhs.true.466
  %arrayidx469 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %348 = load double, double* %arrayidx469, align 8, !tbaa !39
  %div470 = fdiv double %348, 2.000000e+00
  %349 = load i32, i32* %scale, align 4, !tbaa !28
  %conv471 = sitofp i32 %349 to double
  %mul472 = fmul double %div470, %conv471
  %call473 = call i32 @fapi_round(double %mul472) #7
  %sb_x474 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  store i32 %call473, i32* %sb_x474, align 4, !tbaa !234
  %350 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %350, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y475 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %351 = load double, double* %y475, align 8, !tbaa !67
  %352 = load i32, i32* %scale, align 4, !tbaa !28
  %conv476 = sitofp i32 %352 to double
  %mul477 = fmul double %351, %conv476
  %call478 = call i32 @fapi_round(double %mul477) #7
  %sb_y479 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 8
  store i32 %call478, i32* %sb_y479, align 4, !tbaa !237
  %353 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox480 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %353, i32 0, i32 23
  %q481 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox480, i32 0, i32 1
  %x482 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q481, i32 0, i32 0
  %354 = load double, double* %x482, align 8, !tbaa !66
  %sub483 = fsub double -0.000000e+00, %354
  %355 = load i32, i32* %scale, align 4, !tbaa !28
  %conv484 = sitofp i32 %355 to double
  %mul485 = fmul double %sub483, %conv484
  %call486 = call i32 @fapi_round(double %mul485) #7
  %aw_y487 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 10
  store i32 %call486, i32* %aw_y487, align 4, !tbaa !238
  %356 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %tobool488 = icmp ne i32 %356, 0
  %cond489 = select i1 %tobool488, i32 1000, i32 1
  %metrics_scale = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 11
  store i32 %cond489, i32* %metrics_scale, align 4, !tbaa !240
  %metrics_type490 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 3, i32* %metrics_type490, align 4, !tbaa !236
  %arrayidx491 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %357 = load double, double* %arrayidx491, align 8, !tbaa !39
  %div492 = fdiv double %357, 2.000000e+00
  %arrayidx493 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %div492, double* %arrayidx493, align 8, !tbaa !39
  %358 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox494 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %358, i32 0, i32 23
  %q495 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox494, i32 0, i32 1
  %y496 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q495, i32 0, i32 1
  %359 = load double, double* %y496, align 8, !tbaa !67
  %arrayidx497 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %359, double* %arrayidx497, align 8, !tbaa !39
  %arrayidx498 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx498, align 8, !tbaa !39
  %360 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox499 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %360, i32 0, i32 23
  %q500 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox499, i32 0, i32 1
  %x501 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q500, i32 0, i32 0
  %361 = load double, double* %x501, align 8, !tbaa !66
  %sub502 = fsub double -0.000000e+00, %361
  %arrayidx503 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %sub502, double* %arrayidx503, align 8, !tbaa !39
  store i32 0, i32* %sbw_state, align 4, !tbaa !122
  br label %if.end.505

if.else.504:                                      ; preds = %land.lhs.true.466, %land.lhs.true.464, %if.then.462
  store i32 0, i32* %bVertical, align 4, !tbaa !28
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.504, %if.then.468
  br label %if.end.542

if.else.506:                                      ; preds = %if.end.459
  %arrayidx507 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 2
  %362 = load double, double* %arrayidx507, align 8, !tbaa !39
  %363 = load i32, i32* %scale, align 4, !tbaa !28
  %conv508 = sitofp i32 %363 to double
  %mul509 = fmul double %362, %conv508
  %call510 = call i32 @fapi_round(double %mul509) #7
  %sb_x511 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  store i32 %call510, i32* %sb_x511, align 4, !tbaa !234
  %arrayidx512 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 3
  %364 = load double, double* %arrayidx512, align 8, !tbaa !39
  %365 = load i32, i32* %scale, align 4, !tbaa !28
  %conv513 = sitofp i32 %365 to double
  %mul514 = fmul double %364, %conv513
  %call515 = call i32 @fapi_round(double %mul514) #7
  %sb_y516 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 8
  store i32 %call515, i32* %sb_y516, align 4, !tbaa !237
  %arrayidx517 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 0
  %366 = load double, double* %arrayidx517, align 8, !tbaa !39
  %367 = load i32, i32* %scale, align 4, !tbaa !28
  %conv518 = sitofp i32 %367 to double
  %mul519 = fmul double %366, %conv518
  %call520 = call i32 @fapi_round(double %mul519) #7
  %aw_x521 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  store i32 %call520, i32* %aw_x521, align 4, !tbaa !235
  %arrayidx522 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 1
  %368 = load double, double* %arrayidx522, align 8, !tbaa !39
  %369 = load i32, i32* %scale, align 4, !tbaa !28
  %conv523 = sitofp i32 %369 to double
  %mul524 = fmul double %368, %conv523
  %call525 = call i32 @fapi_round(double %mul524) #7
  %aw_y526 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 10
  store i32 %call525, i32* %aw_y526, align 4, !tbaa !238
  %370 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %tobool527 = icmp ne i32 %370, 0
  %cond528 = select i1 %tobool527, i32 1000, i32 1
  %metrics_scale529 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 11
  store i32 %cond528, i32* %metrics_scale529, align 4, !tbaa !240
  %371 = load i32, i32* %code, align 4, !tbaa !28
  %cmp530 = icmp eq i32 %371, 2
  %cond532 = select i1 %cmp530, i32 3, i32 2
  %metrics_type533 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 %cond532, i32* %metrics_type533, align 4, !tbaa !236
  %arrayidx534 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 2
  %372 = load double, double* %arrayidx534, align 8, !tbaa !39
  %arrayidx535 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %372, double* %arrayidx535, align 8, !tbaa !39
  %arrayidx536 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 3
  %373 = load double, double* %arrayidx536, align 8, !tbaa !39
  %arrayidx537 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %373, double* %arrayidx537, align 8, !tbaa !39
  %arrayidx538 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 0
  %374 = load double, double* %arrayidx538, align 8, !tbaa !39
  %arrayidx539 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %374, double* %arrayidx539, align 8, !tbaa !39
  %arrayidx540 = getelementptr inbounds [4 x double], [4 x double]* %pwv, i32 0, i64 1
  %375 = load double, double* %arrayidx540, align 8, !tbaa !39
  %arrayidx541 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %375, double* %arrayidx541, align 8, !tbaa !39
  store i32 0, i32* %sbw_state, align 4, !tbaa !122
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.506, %if.end.505
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.543

cleanup.543:                                      ; preds = %if.end.542, %if.then.458
  %376 = bitcast [4 x double]* %pwv to i8*
  call void @llvm.lifetime.end(i64 32, i8* %376) #1
  %cleanup.dest.544 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.544, label %cleanup.977 [
    i32 0, label %cleanup.cont.545
  ]

cleanup.cont.545:                                 ; preds = %cleanup.543
  br label %if.end.546

if.end.546:                                       ; preds = %cleanup.cont.545, %land.lhs.true.449, %if.end.445
  %metrics_type547 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  %377 = load i32, i32* %metrics_type547, align 4, !tbaa !236
  %cmp548 = icmp eq i32 %377, 0
  br i1 %cmp548, label %land.lhs.true.550, label %if.end.607

land.lhs.true.550:                                ; preds = %if.end.546
  %378 = load i32, i32* %bVertical, align 4, !tbaa !28
  %tobool551 = icmp ne i32 %378, 0
  br i1 %tobool551, label %if.end.607, label %if.then.552

if.then.552:                                      ; preds = %land.lhs.true.550
  %379 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff553 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %379, i32 0, i32 4
  %fapi_get_metrics554 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff553, i32 0, i32 34
  %380 = load i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)** %fapi_get_metrics554, align 8, !tbaa !239
  %381 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff555 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %381, i32 0, i32 4
  %382 = load i64, i64* %index.addr, align 8, !tbaa !198
  %conv556 = trunc i64 %382 to i32
  %arraydecay557 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %383 = load i32, i32* %bVertical, align 4, !tbaa !28
  %call558 = call i32 %380(%struct.gs_fapi_font_s* %ff555, %struct.gs_string_s* %enc_char_name_string, i32 %conv556, double* %arraydecay557, i32 %383) #7
  store i32 %call558, i32* %code, align 4, !tbaa !28
  %384 = load i32, i32* %code, align 4, !tbaa !28
  %cmp559 = icmp slt i32 %384, 0
  br i1 %cmp559, label %if.then.561, label %if.end.562

if.then.561:                                      ; preds = %if.then.552
  %385 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %385, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.562:                                       ; preds = %if.then.552
  %386 = load i32, i32* %code, align 4, !tbaa !28
  %cmp563 = icmp eq i32 %386, 0
  br i1 %cmp563, label %if.then.565, label %if.else.578

if.then.565:                                      ; preds = %if.end.562
  store i32 2, i32* %sbw_state, align 4, !tbaa !122
  %387 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType566 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %387, i32 0, i32 11
  %388 = load i32, i32* %FontType566, align 4, !tbaa !42
  %cmp567 = icmp eq i32 %388, 2
  br i1 %cmp567, label %if.then.569, label %if.end.577

if.then.569:                                      ; preds = %if.then.565
  %389 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389) #1
  %390 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %391 = bitcast %struct.gs_font_base_s* %390 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %391, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %392 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data570 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %392, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data570, i32 0, i32 8
  %393 = load i32, i32* %defaultWidthX, align 4, !tbaa !241
  %394 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %frac_shift571 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %394, i32 0, i32 2
  %395 = load i32, i32* %frac_shift571, align 4, !tbaa !31
  %sub572 = sub nsw i32 8, %395
  %call573 = call i32 @export_shift(i32 %393, i32 %sub572) #7
  %aw_x574 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  store i32 %call573, i32* %aw_x574, align 4, !tbaa !235
  %metrics_scale575 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 11
  store i32 1000, i32* %metrics_scale575, align 4, !tbaa !240
  %metrics_type576 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 1, i32* %metrics_type576, align 4, !tbaa !236
  %396 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %396) #1
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.569, %if.then.565
  br label %if.end.606

if.else.578:                                      ; preds = %if.end.562
  %arrayidx579 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  %397 = load double, double* %arrayidx579, align 8, !tbaa !39
  %398 = load i32, i32* %scale, align 4, !tbaa !28
  %conv580 = sitofp i32 %398 to double
  %mul581 = fmul double %397, %conv580
  %call582 = call i32 @fapi_round(double %mul581) #7
  %sb_x583 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  store i32 %call582, i32* %sb_x583, align 4, !tbaa !234
  %arrayidx584 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  %399 = load double, double* %arrayidx584, align 8, !tbaa !39
  %400 = load i32, i32* %scale, align 4, !tbaa !28
  %conv585 = sitofp i32 %400 to double
  %mul586 = fmul double %399, %conv585
  %call587 = call i32 @fapi_round(double %mul586) #7
  %sb_y588 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 8
  store i32 %call587, i32* %sb_y588, align 4, !tbaa !237
  %arrayidx589 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %401 = load double, double* %arrayidx589, align 8, !tbaa !39
  %402 = load i32, i32* %scale, align 4, !tbaa !28
  %conv590 = sitofp i32 %402 to double
  %mul591 = fmul double %401, %conv590
  %call592 = call i32 @fapi_round(double %mul591) #7
  %aw_x593 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  store i32 %call592, i32* %aw_x593, align 4, !tbaa !235
  %arrayidx594 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  %403 = load double, double* %arrayidx594, align 8, !tbaa !39
  %404 = load i32, i32* %scale, align 4, !tbaa !28
  %conv595 = sitofp i32 %404 to double
  %mul596 = fmul double %403, %conv595
  %call597 = call i32 @fapi_round(double %mul596) #7
  %aw_y598 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 10
  store i32 %call597, i32* %aw_y598, align 4, !tbaa !238
  %405 = load i32, i32* %bIsType1GlyphData, align 4, !tbaa !28
  %tobool599 = icmp ne i32 %405, 0
  %cond600 = select i1 %tobool599, i32 1000, i32 1
  %metrics_scale601 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 11
  store i32 %cond600, i32* %metrics_scale601, align 4, !tbaa !240
  %406 = load i32, i32* %code, align 4, !tbaa !28
  %cmp602 = icmp eq i32 %406, 2
  %cond604 = select i1 %cmp602, i32 3, i32 2
  %metrics_type605 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  store i32 %cond604, i32* %metrics_type605, align 4, !tbaa !236
  store i32 0, i32* %sbw_state, align 4, !tbaa !122
  br label %if.end.606

if.end.606:                                       ; preds = %if.else.578, %if.end.577
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %land.lhs.true.550, %if.end.546
  %407 = bitcast %struct.gs_fapi_metrics_s* %metrics to i8*
  %call608 = call i8* @memset(i8* %407, i32 0, i64 32) #6
  %408 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff609 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %408, i32 0, i32 4
  %metrics_only610 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff609, i32 0, i32 12
  %409 = load i32, i32* %metrics_only610, align 4, !tbaa !213
  %tobool611 = icmp ne i32 %409, 0
  br i1 %tobool611, label %if.then.612, label %if.else.625

if.then.612:                                      ; preds = %if.end.607
  %410 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_char_outline_metrics = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %410, i32 0, i32 21
  %411 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)** %get_char_outline_metrics, align 8, !tbaa !242
  %412 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %413 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff613 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %413, i32 0, i32 4
  %call614 = call i32 %411(%struct.gs_fapi_server_s* %412, %struct.gs_fapi_font_s* %ff613, %struct.gs_fapi_char_ref* %cr, %struct.gs_fapi_metrics_s* %metrics) #7
  store i32 %call614, i32* %code, align 4, !tbaa !28
  %414 = load i32, i32* %code, align 4, !tbaa !28
  %cmp615 = icmp eq i32 %414, -25
  br i1 %cmp615, label %land.lhs.true.617, label %if.end.624

land.lhs.true.617:                                ; preds = %if.then.612
  %415 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline618 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %415, i32 0, i32 6
  %416 = load i32, i32* %use_outline618, align 4, !tbaa !118
  %cmp619 = icmp eq i32 %416, 0
  br i1 %cmp619, label %if.then.621, label %if.end.624

if.then.621:                                      ; preds = %land.lhs.true.617
  %417 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %max_bitmap622 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %417, i32 0, i32 5
  store i32 0, i32* %max_bitmap622, align 4, !tbaa !202
  %418 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline623 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %418, i32 0, i32 6
  store i32 1, i32* %use_outline623, align 4, !tbaa !118
  br label %retry_oversampling

if.end.624:                                       ; preds = %land.lhs.true.617, %if.then.612
  br label %if.end.669

if.else.625:                                      ; preds = %if.end.607
  %419 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline626 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %419, i32 0, i32 6
  %420 = load i32, i32* %use_outline626, align 4, !tbaa !118
  %tobool627 = icmp ne i32 %420, 0
  br i1 %tobool627, label %if.then.628, label %if.else.632

if.then.628:                                      ; preds = %if.else.625
  %421 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_char_outline_metrics629 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %421, i32 0, i32 21
  %422 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)** %get_char_outline_metrics629, align 8, !tbaa !242
  %423 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %424 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff630 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %424, i32 0, i32 4
  %call631 = call i32 %422(%struct.gs_fapi_server_s* %423, %struct.gs_fapi_font_s* %ff630, %struct.gs_fapi_char_ref* %cr, %struct.gs_fapi_metrics_s* %metrics) #7
  store i32 %call631, i32* %code, align 4, !tbaa !28
  br label %if.end.668

if.else.632:                                      ; preds = %if.else.625
  %425 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_char_raster_metrics = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %425, i32 0, i32 19
  %426 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)** %get_char_raster_metrics, align 8, !tbaa !243
  %427 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %428 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff633 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %428, i32 0, i32 4
  %call634 = call i32 %426(%struct.gs_fapi_server_s* %427, %struct.gs_fapi_font_s* %ff633, %struct.gs_fapi_char_ref* %cr, %struct.gs_fapi_metrics_s* %metrics) #7
  store i32 %call634, i32* %code, align 4, !tbaa !28
  %429 = load i32, i32* %code, align 4, !tbaa !28
  %cmp635 = icmp eq i32 %429, -25
  br i1 %cmp635, label %if.then.637, label %if.end.639

if.then.637:                                      ; preds = %if.else.632
  %430 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline638 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %430, i32 0, i32 6
  store i32 1, i32* %use_outline638, align 4, !tbaa !118
  br label %retry_oversampling

if.end.639:                                       ; preds = %if.else.632
  %431 = load i32, i32* %code, align 4, !tbaa !28
  %cmp640 = icmp eq i32 %431, -13
  br i1 %cmp640, label %if.then.642, label %if.end.667

if.then.642:                                      ; preds = %if.end.639
  %x643 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %432 = load i32, i32* %x643, align 4, !tbaa !210
  %cmp644 = icmp sgt i32 %432, 0
  br i1 %cmp644, label %if.then.650, label %lor.lhs.false.646

lor.lhs.false.646:                                ; preds = %if.then.642
  %y647 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %433 = load i32, i32* %y647, align 4, !tbaa !211
  %cmp648 = icmp sgt i32 %433, 0
  br i1 %cmp648, label %if.then.650, label %if.end.658

if.then.650:                                      ; preds = %lor.lhs.false.646, %if.then.642
  %y651 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  store i32 0, i32* %y651, align 4, !tbaa !211
  %434 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_log2_scale652 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %434, i32 0, i32 26
  %y653 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %fapi_log2_scale652, i32 0, i32 1
  store i32 0, i32* %y653, align 4, !tbaa !244
  %x654 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  store i32 0, i32* %x654, align 4, !tbaa !210
  %435 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_log2_scale655 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %435, i32 0, i32 26
  %x656 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %fapi_log2_scale655, i32 0, i32 0
  store i32 0, i32* %x656, align 4, !tbaa !245
  %436 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %release_char_data = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %436, i32 0, i32 23
  %437 = load i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*)** %release_char_data, align 8, !tbaa !246
  %438 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call657 = call i32 %437(%struct.gs_fapi_server_s* %438) #7
  br label %retry_oversampling

if.end.658:                                       ; preds = %lor.lhs.false.646
  %439 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %440 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %441 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_char_outline_metrics659 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %441, i32 0, i32 21
  %442 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)** %get_char_outline_metrics659, align 8, !tbaa !242
  %443 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %444 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff660 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %444, i32 0, i32 4
  %call661 = call i32 %442(%struct.gs_fapi_server_s* %443, %struct.gs_fapi_font_s* %ff660, %struct.gs_fapi_char_ref* %cr, %struct.gs_fapi_metrics_s* %metrics) #7
  %call662 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %439, %struct.gs_fapi_server_s* %440, i32 %call661) #7
  store i32 %call662, i32* %code, align 4, !tbaa !28
  %cmp663 = icmp slt i32 %call662, 0
  br i1 %cmp663, label %if.then.665, label %if.end.666

if.then.665:                                      ; preds = %if.end.658
  %445 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %445, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.666:                                       ; preds = %if.end.658
  br label %if.end.667

if.end.667:                                       ; preds = %if.end.666, %if.end.639
  br label %if.end.668

if.end.668:                                       ; preds = %if.end.667, %if.then.628
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.end.624
  %446 = load i32, i32* %code, align 4, !tbaa !28
  %cmp670 = icmp sgt i32 %446, 0
  br i1 %cmp670, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %if.end.669
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.673:                                       ; preds = %if.end.669
  %447 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %448 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %449 = load i32, i32* %code, align 4, !tbaa !28
  %call674 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %447, %struct.gs_fapi_server_s* %448, i32 %449) #7
  store i32 %call674, i32* %code, align 4, !tbaa !28
  %cmp675 = icmp slt i32 %call674, 0
  br i1 %cmp675, label %if.then.677, label %if.end.678

if.then.677:                                      ; preds = %if.end.673
  %450 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %450, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.678:                                       ; preds = %if.end.673
  %451 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %452 = load double, double* %FontMatrix_div, align 8, !tbaa !39
  call void @compute_em_scale(%struct.gs_font_base_s* %451, %struct.gs_fapi_metrics_s* %metrics, double %452, double* %em_scale_x, double* %em_scale_y) #7
  %bbox_x0 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 0
  %453 = load i32, i32* %bbox_x0, align 4, !tbaa !247
  %conv679 = sitofp i32 %453 to double
  %454 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div680 = fdiv double %conv679, %454
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x681 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %div680, double* %x681, align 8, !tbaa !249
  %bbox_y0 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 1
  %455 = load i32, i32* %bbox_y0, align 4, !tbaa !250
  %conv682 = sitofp i32 %455 to double
  %456 = load double, double* %em_scale_y, align 8, !tbaa !39
  %div683 = fdiv double %conv682, %456
  %p684 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %y685 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p684, i32 0, i32 1
  store double %div683, double* %y685, align 8, !tbaa !251
  %bbox_x1 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 2
  %457 = load i32, i32* %bbox_x1, align 4, !tbaa !252
  %conv686 = sitofp i32 %457 to double
  %458 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div687 = fdiv double %conv686, %458
  %q688 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x689 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q688, i32 0, i32 0
  store double %div687, double* %x689, align 8, !tbaa !253
  %bbox_y1 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 3
  %459 = load i32, i32* %bbox_y1, align 4, !tbaa !254
  %conv690 = sitofp i32 %459 to double
  %460 = load double, double* %em_scale_y, align 8, !tbaa !39
  %div691 = fdiv double %conv690, %460
  %q692 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %y693 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q692, i32 0, i32 1
  store double %div691, double* %y693, align 8, !tbaa !255
  %461 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType694 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %461, i32 0, i32 11
  %462 = load i32, i32* %FontType694, align 4, !tbaa !42
  %cmp695 = icmp ne i32 %462, 51
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.790

land.lhs.true.697:                                ; preds = %if.end.678
  %463 = load i32, i32* %bCID, align 4, !tbaa !28
  %tobool698 = icmp ne i32 %463, 0
  br i1 %tobool698, label %if.end.790, label %land.lhs.true.699

land.lhs.true.699:                                ; preds = %land.lhs.true.697
  %464 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox700 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %464, i32 0, i32 23
  %q701 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox700, i32 0, i32 1
  %x702 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q701, i32 0, i32 0
  %465 = load double, double* %x702, align 8, !tbaa !66
  %466 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox703 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %466, i32 0, i32 23
  %p704 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox703, i32 0, i32 0
  %x705 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p704, i32 0, i32 0
  %467 = load double, double* %x705, align 8, !tbaa !64
  %cmp706 = fcmp ogt double %465, %467
  br i1 %cmp706, label %land.lhs.true.708, label %if.end.790

land.lhs.true.708:                                ; preds = %land.lhs.true.699
  %468 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox709 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %468, i32 0, i32 23
  %q710 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox709, i32 0, i32 1
  %y711 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q710, i32 0, i32 1
  %469 = load double, double* %y711, align 8, !tbaa !67
  %470 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox712 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %470, i32 0, i32 23
  %p713 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox712, i32 0, i32 0
  %y714 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p713, i32 0, i32 1
  %471 = load double, double* %y714, align 8, !tbaa !65
  %cmp715 = fcmp ogt double %469, %471
  br i1 %cmp715, label %if.then.717, label %if.end.790

if.then.717:                                      ; preds = %land.lhs.true.708
  %p718 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x719 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p718, i32 0, i32 0
  %472 = load double, double* %x719, align 8, !tbaa !249
  %473 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox720 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %473, i32 0, i32 23
  %p721 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox720, i32 0, i32 0
  %x722 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p721, i32 0, i32 0
  %474 = load double, double* %x722, align 8, !tbaa !64
  %cmp723 = fcmp olt double %472, %474
  br i1 %cmp723, label %cond.true.725, label %cond.false.728

cond.true.725:                                    ; preds = %if.then.717
  %p726 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x727 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p726, i32 0, i32 0
  %475 = load double, double* %x727, align 8, !tbaa !249
  br label %cond.end.732

cond.false.728:                                   ; preds = %if.then.717
  %476 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox729 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %476, i32 0, i32 23
  %p730 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox729, i32 0, i32 0
  %x731 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p730, i32 0, i32 0
  %477 = load double, double* %x731, align 8, !tbaa !64
  br label %cond.end.732

cond.end.732:                                     ; preds = %cond.false.728, %cond.true.725
  %cond733 = phi double [ %475, %cond.true.725 ], [ %477, %cond.false.728 ]
  %p734 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x735 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p734, i32 0, i32 0
  store double %cond733, double* %x735, align 8, !tbaa !249
  %p736 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %y737 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p736, i32 0, i32 1
  %478 = load double, double* %y737, align 8, !tbaa !251
  %479 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox738 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %479, i32 0, i32 23
  %p739 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox738, i32 0, i32 0
  %y740 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p739, i32 0, i32 1
  %480 = load double, double* %y740, align 8, !tbaa !65
  %cmp741 = fcmp olt double %478, %480
  br i1 %cmp741, label %cond.true.743, label %cond.false.746

cond.true.743:                                    ; preds = %cond.end.732
  %p744 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %y745 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p744, i32 0, i32 1
  %481 = load double, double* %y745, align 8, !tbaa !251
  br label %cond.end.750

cond.false.746:                                   ; preds = %cond.end.732
  %482 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox747 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %482, i32 0, i32 23
  %p748 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox747, i32 0, i32 0
  %y749 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p748, i32 0, i32 1
  %483 = load double, double* %y749, align 8, !tbaa !65
  br label %cond.end.750

cond.end.750:                                     ; preds = %cond.false.746, %cond.true.743
  %cond751 = phi double [ %481, %cond.true.743 ], [ %483, %cond.false.746 ]
  %p752 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %y753 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p752, i32 0, i32 1
  store double %cond751, double* %y753, align 8, !tbaa !251
  %q754 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x755 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q754, i32 0, i32 0
  %484 = load double, double* %x755, align 8, !tbaa !253
  %485 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox756 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %485, i32 0, i32 23
  %q757 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox756, i32 0, i32 1
  %x758 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q757, i32 0, i32 0
  %486 = load double, double* %x758, align 8, !tbaa !66
  %cmp759 = fcmp ogt double %484, %486
  br i1 %cmp759, label %cond.true.761, label %cond.false.764

cond.true.761:                                    ; preds = %cond.end.750
  %q762 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x763 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q762, i32 0, i32 0
  %487 = load double, double* %x763, align 8, !tbaa !253
  br label %cond.end.768

cond.false.764:                                   ; preds = %cond.end.750
  %488 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox765 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %488, i32 0, i32 23
  %q766 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox765, i32 0, i32 1
  %x767 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q766, i32 0, i32 0
  %489 = load double, double* %x767, align 8, !tbaa !66
  br label %cond.end.768

cond.end.768:                                     ; preds = %cond.false.764, %cond.true.761
  %cond769 = phi double [ %487, %cond.true.761 ], [ %489, %cond.false.764 ]
  %q770 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x771 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q770, i32 0, i32 0
  store double %cond769, double* %x771, align 8, !tbaa !253
  %q772 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %y773 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q772, i32 0, i32 1
  %490 = load double, double* %y773, align 8, !tbaa !255
  %491 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox774 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %491, i32 0, i32 23
  %q775 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox774, i32 0, i32 1
  %y776 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q775, i32 0, i32 1
  %492 = load double, double* %y776, align 8, !tbaa !67
  %cmp777 = fcmp ogt double %490, %492
  br i1 %cmp777, label %cond.true.779, label %cond.false.782

cond.true.779:                                    ; preds = %cond.end.768
  %q780 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %y781 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q780, i32 0, i32 1
  %493 = load double, double* %y781, align 8, !tbaa !255
  br label %cond.end.786

cond.false.782:                                   ; preds = %cond.end.768
  %494 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox783 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %494, i32 0, i32 23
  %q784 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox783, i32 0, i32 1
  %y785 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q784, i32 0, i32 1
  %495 = load double, double* %y785, align 8, !tbaa !67
  br label %cond.end.786

cond.end.786:                                     ; preds = %cond.false.782, %cond.true.779
  %cond787 = phi double [ %493, %cond.true.779 ], [ %495, %cond.false.782 ]
  %q788 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %y789 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q788, i32 0, i32 1
  store double %cond787, double* %y789, align 8, !tbaa !255
  br label %if.end.790

if.end.790:                                       ; preds = %cond.end.786, %land.lhs.true.708, %land.lhs.true.699, %land.lhs.true.697, %if.end.678
  %496 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType791 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %496, i32 0, i32 17
  %497 = load i32, i32* %PaintType791, align 4, !tbaa !59
  %cmp792 = icmp ne i32 %497, 0
  br i1 %cmp792, label %if.then.794, label %if.end.812

if.then.794:                                      ; preds = %if.end.790
  %498 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %498) #1
  %499 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %499, i32 0, i32 18
  %500 = load float, float* %StrokeWidth, align 4, !tbaa !120
  %div795 = fdiv float %500, 2.000000e+00
  store float %div795, float* %w, align 4, !tbaa !119
  %501 = load float, float* %w, align 4, !tbaa !119
  %conv796 = fpext float %501 to double
  %p797 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x798 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p797, i32 0, i32 0
  %502 = load double, double* %x798, align 8, !tbaa !249
  %sub799 = fsub double %502, %conv796
  store double %sub799, double* %x798, align 8, !tbaa !249
  %503 = load float, float* %w, align 4, !tbaa !119
  %conv800 = fpext float %503 to double
  %p801 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %y802 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p801, i32 0, i32 1
  %504 = load double, double* %y802, align 8, !tbaa !251
  %sub803 = fsub double %504, %conv800
  store double %sub803, double* %y802, align 8, !tbaa !251
  %505 = load float, float* %w, align 4, !tbaa !119
  %conv804 = fpext float %505 to double
  %q805 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x806 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q805, i32 0, i32 0
  %506 = load double, double* %x806, align 8, !tbaa !253
  %add807 = fadd double %506, %conv804
  store double %add807, double* %x806, align 8, !tbaa !253
  %507 = load float, float* %w, align 4, !tbaa !119
  %conv808 = fpext float %507 to double
  %q809 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %y810 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q809, i32 0, i32 1
  %508 = load double, double* %y810, align 8, !tbaa !255
  %add811 = fadd double %508, %conv808
  store double %add811, double* %y810, align 8, !tbaa !255
  %509 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  br label %if.end.812

if.end.812:                                       ; preds = %if.then.794, %if.end.790
  %510 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %510, i32 0, i32 27
  %y813 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift, i32 0, i32 1
  store double 0.000000e+00, double* %y813, align 8, !tbaa !153
  %511 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift814 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %511, i32 0, i32 27
  %x815 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift814, i32 0, i32 0
  store double 0.000000e+00, double* %x815, align 8, !tbaa !148
  %512 = load i32, i32* %sbw_state, align 4, !tbaa !122
  %cmp816 = icmp eq i32 %512, 2
  br i1 %cmp816, label %if.then.818, label %if.else.849

if.then.818:                                      ; preds = %if.end.812
  %513 = bitcast i32* %can_replace_metrics to i8*
  call void @llvm.lifetime.start(i64 4, i8* %513) #1
  %514 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %515 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %516 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %can_replace_metrics819 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %516, i32 0, i32 15
  %517 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)** %can_replace_metrics819, align 8, !tbaa !256
  %518 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %519 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff820 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %519, i32 0, i32 4
  %call821 = call i32 %517(%struct.gs_fapi_server_s* %518, %struct.gs_fapi_font_s* %ff820, %struct.gs_fapi_char_ref* %cr, i32* %can_replace_metrics) #7
  %call822 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %514, %struct.gs_fapi_server_s* %515, i32 %call821) #7
  store i32 %call822, i32* %code, align 4, !tbaa !28
  %cmp823 = icmp slt i32 %call822, 0
  br i1 %cmp823, label %if.then.825, label %if.end.826

if.then.825:                                      ; preds = %if.then.818
  %520 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %520, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.846

if.end.826:                                       ; preds = %if.then.818
  %escapement = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 4
  %521 = load i32, i32* %escapement, align 4, !tbaa !257
  %conv827 = sitofp i32 %521 to double
  %522 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div828 = fdiv double %conv827, %522
  %arrayidx829 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %div828, double* %arrayidx829, align 8, !tbaa !39
  %v_escapement = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 5
  %523 = load i32, i32* %v_escapement, align 4, !tbaa !258
  %conv830 = sitofp i32 %523 to double
  %524 = load double, double* %em_scale_y, align 8, !tbaa !39
  %div831 = fdiv double %conv830, %524
  %arrayidx832 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %div831, double* %arrayidx832, align 8, !tbaa !39
  %525 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType833 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %525, i32 0, i32 11
  %526 = load i32, i32* %FontType833, align 4, !tbaa !42
  %cmp834 = icmp eq i32 %526, 2
  br i1 %cmp834, label %land.lhs.true.836, label %if.end.845

land.lhs.true.836:                                ; preds = %if.end.826
  %527 = load i32, i32* %can_replace_metrics, align 4, !tbaa !28
  %tobool837 = icmp ne i32 %527, 0
  br i1 %tobool837, label %if.end.845, label %if.then.838

if.then.838:                                      ; preds = %land.lhs.true.836
  %528 = bitcast %struct.gs_font_type1_s** %pfont1839 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %528) #1
  %529 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %530 = bitcast %struct.gs_font_base_s* %529 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %530, %struct.gs_font_type1_s** %pfont1839, align 8, !tbaa !1
  %531 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1839, align 8, !tbaa !1
  %data840 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %531, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data840, i32 0, i32 9
  %532 = load i32, i32* %nominalWidthX, align 4, !tbaa !259
  %conv841 = sitofp i32 %532 to double
  %mul842 = fmul double %conv841, 3.906250e-03
  %arrayidx843 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %533 = load double, double* %arrayidx843, align 8, !tbaa !39
  %add844 = fadd double %533, %mul842
  store double %add844, double* %arrayidx843, align 8, !tbaa !39
  %534 = bitcast %struct.gs_font_type1_s** %pfont1839 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %534) #1
  br label %if.end.845

if.end.845:                                       ; preds = %if.then.838, %land.lhs.true.836, %if.end.826
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.846

cleanup.846:                                      ; preds = %if.end.845, %if.then.825
  %535 = bitcast i32* %can_replace_metrics to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  %cleanup.dest.847 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.847, label %cleanup.977 [
    i32 0, label %cleanup.cont.848
  ]

cleanup.cont.848:                                 ; preds = %cleanup.846
  br label %if.end.878

if.else.849:                                      ; preds = %if.end.812
  %536 = load i32, i32* %sbw_state, align 4, !tbaa !122
  %cmp850 = icmp eq i32 %536, 1
  br i1 %cmp850, label %if.then.852, label %if.end.877

if.then.852:                                      ; preds = %if.else.849
  %sb_x853 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 7
  %537 = load i32, i32* %sb_x853, align 4, !tbaa !234
  %conv854 = sitofp i32 %537 to double
  %538 = load i32, i32* %scale, align 4, !tbaa !28
  %conv855 = sitofp i32 %538 to double
  %div856 = fdiv double %conv854, %conv855
  %539 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div857 = fdiv double %div856, %539
  %arrayidx858 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %div857, double* %arrayidx858, align 8, !tbaa !39
  %sb_y859 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 8
  %540 = load i32, i32* %sb_y859, align 4, !tbaa !237
  %conv860 = sitofp i32 %540 to double
  %541 = load i32, i32* %scale, align 4, !tbaa !28
  %conv861 = sitofp i32 %541 to double
  %div862 = fdiv double %conv860, %conv861
  %542 = load double, double* %em_scale_y, align 8, !tbaa !39
  %div863 = fdiv double %div862, %542
  %arrayidx864 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %div863, double* %arrayidx864, align 8, !tbaa !39
  %aw_x865 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 9
  %543 = load i32, i32* %aw_x865, align 4, !tbaa !235
  %conv866 = sitofp i32 %543 to double
  %544 = load i32, i32* %scale, align 4, !tbaa !28
  %conv867 = sitofp i32 %544 to double
  %div868 = fdiv double %conv866, %conv867
  %545 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div869 = fdiv double %div868, %545
  %arrayidx870 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %div869, double* %arrayidx870, align 8, !tbaa !39
  %aw_y871 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 10
  %546 = load i32, i32* %aw_y871, align 4, !tbaa !238
  %conv872 = sitofp i32 %546 to double
  %547 = load i32, i32* %scale, align 4, !tbaa !28
  %conv873 = sitofp i32 %547 to double
  %div874 = fdiv double %conv872, %conv873
  %548 = load double, double* %em_scale_y, align 8, !tbaa !39
  %div875 = fdiv double %div874, %548
  %arrayidx876 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %div875, double* %arrayidx876, align 8, !tbaa !39
  br label %if.end.877

if.end.877:                                       ; preds = %if.then.852, %if.else.849
  br label %if.end.878

if.end.878:                                       ; preds = %if.end.877, %cleanup.cont.848
  %metrics_type879 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %cr, i32 0, i32 6
  %549 = load i32, i32* %metrics_type879, align 4, !tbaa !236
  %cmp880 = icmp eq i32 %549, 3
  br i1 %cmp880, label %if.then.882, label %if.end.924

if.then.882:                                      ; preds = %if.end.878
  %550 = bitcast i32* %can_replace_metrics883 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %550) #1
  %551 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %552 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %553 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %can_replace_metrics884 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %553, i32 0, i32 15
  %554 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)** %can_replace_metrics884, align 8, !tbaa !256
  %555 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %556 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff885 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %556, i32 0, i32 4
  %call886 = call i32 %554(%struct.gs_fapi_server_s* %555, %struct.gs_fapi_font_s* %ff885, %struct.gs_fapi_char_ref* %cr, i32* %can_replace_metrics883) #7
  %call887 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %551, %struct.gs_fapi_server_s* %552, i32 %call886) #7
  store i32 %call887, i32* %code, align 4, !tbaa !28
  %cmp888 = icmp slt i32 %call887, 0
  br i1 %cmp888, label %if.then.890, label %if.end.891

if.then.890:                                      ; preds = %if.then.882
  %557 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %557, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.921

if.end.891:                                       ; preds = %if.then.882
  %558 = load i32, i32* %can_replace_metrics883, align 4, !tbaa !28
  %tobool892 = icmp ne i32 %558, 0
  br i1 %tobool892, label %if.end.920, label %if.then.893

if.then.893:                                      ; preds = %if.end.891
  %p894 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x895 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p894, i32 0, i32 0
  %559 = load double, double* %x895, align 8, !tbaa !249
  %q896 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 1
  %x897 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q896, i32 0, i32 0
  %560 = load double, double* %x897, align 8, !tbaa !253
  %sub898 = fsub double %560, %559
  store double %sub898, double* %x897, align 8, !tbaa !253
  %p899 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox, i32 0, i32 0
  %x900 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p899, i32 0, i32 0
  store double 0.000000e+00, double* %x900, align 8, !tbaa !249
  %bbox_x0901 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %metrics, i32 0, i32 0
  %561 = load i32, i32* %bbox_x0901, align 4, !tbaa !247
  %conv902 = sitofp i32 %561 to double
  %562 = load double, double* %em_scale_x, align 8, !tbaa !39
  %div903 = fdiv double %conv902, %562
  %arrayidx904 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  %563 = load double, double* %arrayidx904, align 8, !tbaa !39
  %sub905 = fsub double %div903, %563
  %564 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ctm, align 8, !tbaa !1
  %565 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift906 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %565, i32 0, i32 27
  %call907 = call i32 @gs_distance_transform(double %sub905, double 0.000000e+00, %struct.gs_matrix_s* %564, %struct.gs_point_s* %fapi_glyph_shift906) #7
  %x908 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 0
  %566 = load i32, i32* %x908, align 4, !tbaa !210
  %shl909 = shl i32 1, %566
  %conv910 = sitofp i32 %shl909 to double
  %567 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift911 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %567, i32 0, i32 27
  %x912 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift911, i32 0, i32 0
  %568 = load double, double* %x912, align 8, !tbaa !148
  %mul913 = fmul double %568, %conv910
  store double %mul913, double* %x912, align 8, !tbaa !148
  %y914 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, i32 1
  %569 = load i32, i32* %y914, align 4, !tbaa !211
  %shl915 = shl i32 1, %569
  %conv916 = sitofp i32 %shl915 to double
  %570 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %fapi_glyph_shift917 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %570, i32 0, i32 27
  %y918 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fapi_glyph_shift917, i32 0, i32 1
  %571 = load double, double* %y918, align 8, !tbaa !153
  %mul919 = fmul double %571, %conv916
  store double %mul919, double* %y918, align 8, !tbaa !153
  br label %if.end.920

if.end.920:                                       ; preds = %if.then.893, %if.end.891
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.921

cleanup.921:                                      ; preds = %if.end.920, %if.then.890
  %572 = bitcast i32* %can_replace_metrics883 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %cleanup.dest.922 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.922, label %cleanup.977 [
    i32 0, label %cleanup.cont.923
  ]

cleanup.cont.923:                                 ; preds = %cleanup.921
  br label %if.end.924

if.end.924:                                       ; preds = %cleanup.cont.923, %if.end.878
  %573 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff925 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %573, i32 0, i32 4
  %metrics_only926 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff925, i32 0, i32 12
  %574 = load i32, i32* %metrics_only926, align 4, !tbaa !213
  %tobool927 = icmp ne i32 %574, 0
  br i1 %tobool927, label %if.then.928, label %if.end.929

if.then.928:                                      ; preds = %if.end.924
  %575 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %575, i32 0, i32 74
  store i32 1, i32* %in_cachedevice, align 4, !tbaa !121
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.928, %if.end.924
  %576 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice930 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %576, i32 0, i32 74
  %577 = load i32, i32* %in_cachedevice930, align 4, !tbaa !121
  %cmp931 = icmp eq i32 %577, 3
  br i1 %cmp931, label %if.then.933, label %if.else.935

if.then.933:                                      ; preds = %if.end.929
  %arraydecay934 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  store double* %arraydecay934, double** %sbwp, align 8, !tbaa !1
  br label %if.end.941

if.else.935:                                      ; preds = %if.end.929
  store double* null, double** %sbwp, align 8, !tbaa !1
  %578 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %use_outline936 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %578, i32 0, i32 6
  %579 = load i32, i32* %use_outline936, align 4, !tbaa !118
  %tobool937 = icmp ne i32 %579, 0
  br i1 %tobool937, label %if.then.938, label %if.end.940

if.then.938:                                      ; preds = %if.else.935
  %580 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice939 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %580, i32 0, i32 74
  store i32 1, i32* %in_cachedevice939, align 4, !tbaa !121
  br label %if.end.940

if.end.940:                                       ; preds = %if.then.938, %if.else.935
  br label %if.end.941

if.end.941:                                       ; preds = %if.end.940, %if.then.933
  %581 = load i32, i32* %bCID, align 4, !tbaa !28
  %tobool942 = icmp ne i32 %581, 0
  br i1 %tobool942, label %if.then.943, label %if.else.949

if.then.943:                                      ; preds = %if.end.941
  %582 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff944 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %582, i32 0, i32 4
  %fapi_set_cache = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff944, i32 0, i32 35
  %583 = load i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)** %fapi_set_cache, align 8, !tbaa !260
  %584 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %585 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %586 = load i64, i64* %index.addr, align 8, !tbaa !198
  %conv945 = trunc i64 %586 to i32
  %arraydecay946 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %add.ptr947 = getelementptr inbounds double, double* %arraydecay946, i64 2
  %587 = load double*, double** %sbwp, align 8, !tbaa !1
  %call948 = call i32 %583(%struct.gs_text_enum_s* %584, %struct.gs_font_base_s* %585, %struct.gs_string_s* %enc_char_name_string, i32 %conv945, double* %add.ptr947, %struct.gs_rect_s* %char_bbox, double* %587, i32* %imagenow) #7
  store i32 %call948, i32* %code, align 4, !tbaa !28
  br label %if.end.955

if.else.949:                                      ; preds = %if.end.941
  %588 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff950 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %588, i32 0, i32 4
  %fapi_set_cache951 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff950, i32 0, i32 35
  %589 = load i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)** %fapi_set_cache951, align 8, !tbaa !260
  %590 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %591 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %arraydecay952 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %add.ptr953 = getelementptr inbounds double, double* %arraydecay952, i64 2
  %592 = load double*, double** %sbwp, align 8, !tbaa !1
  %call954 = call i32 %589(%struct.gs_text_enum_s* %590, %struct.gs_font_base_s* %591, %struct.gs_string_s* %enc_char_name_string, i32 -1, double* %add.ptr953, %struct.gs_rect_s* %char_bbox, double* %592, i32* %imagenow) #7
  store i32 %call954, i32* %code, align 4, !tbaa !28
  br label %if.end.955

if.end.955:                                       ; preds = %if.else.949, %if.then.943
  %593 = load i32, i32* %code, align 4, !tbaa !28
  %cmp956 = icmp sge i32 %593, 0
  br i1 %cmp956, label %land.lhs.true.958, label %if.end.965

land.lhs.true.958:                                ; preds = %if.end.955
  %594 = load i32, i32* %imagenow, align 4, !tbaa !28
  %cmp959 = icmp eq i32 %594, 1
  br i1 %cmp959, label %if.then.961, label %if.end.965

if.then.961:                                      ; preds = %land.lhs.true.958
  %595 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %596 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %597 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %598 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call962 = call i32 @gs_fapi_finish_render(%struct.gs_font_s* %595, %struct.gs_state_s* %596, %struct.gs_text_enum_s* %597, %struct.gs_fapi_server_s* %598) #7
  store i32 %call962, i32* %code, align 4, !tbaa !28
  %599 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %release_char_data963 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %599, i32 0, i32 23
  %600 = load i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*)** %release_char_data963, align 8, !tbaa !246
  %601 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call964 = call i32 %600(%struct.gs_fapi_server_s* %601) #7
  br label %if.end.965

if.end.965:                                       ; preds = %if.then.961, %land.lhs.true.958, %if.end.955
  %602 = load i32, i32* %code, align 4, !tbaa !28
  %cmp966 = icmp ne i32 %602, 0
  br i1 %cmp966, label %if.then.968, label %if.end.976

if.then.968:                                      ; preds = %if.end.965
  %603 = load i32, i32* %code, align 4, !tbaa !28
  %cmp969 = icmp slt i32 %603, 0
  br i1 %cmp969, label %if.then.971, label %if.else.974

if.then.971:                                      ; preds = %if.then.968
  %604 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %release_char_data972 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %604, i32 0, i32 23
  %605 = load i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*)** %release_char_data972, align 8, !tbaa !246
  %606 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call973 = call i32 %605(%struct.gs_fapi_server_s* %606) #7
  br label %if.end.975

if.else.974:                                      ; preds = %if.then.968
  br label %if.end.975

if.end.975:                                       ; preds = %if.else.974, %if.then.971
  br label %if.end.976

if.end.976:                                       ; preds = %if.end.975, %if.end.965
  %607 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %607, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.977

cleanup.977:                                      ; preds = %if.end.976, %cleanup.921, %cleanup.846, %if.then.677, %if.then.672, %if.then.665, %if.then.561, %cleanup.543, %if.then.351, %cleanup, %if.then.25, %if.then
  %608 = bitcast i32* %sbw_state to i8*
  call void @llvm.lifetime.end(i64 4, i8* %608) #1
  %609 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %609) #1
  %610 = bitcast i32* %fdc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast i32* %align_to_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast i32* %imagenow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %613) #1
  %614 = bitcast %struct.gs_rect_s* %char_bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %614) #1
  %615 = bitcast double* %em_scale_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %615) #1
  %616 = bitcast double* %em_scale_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %616) #1
  %617 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %617) #1
  %618 = bitcast double** %sbwp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %618) #1
  %619 = bitcast i32* %bVertical0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i32* %bVertical to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast double* %FontMatrix_div to i8*
  call void @llvm.lifetime.end(i64 8, i8* %621) #1
  %622 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %623) #1
  %624 = bitcast i32* %bIsType1GlyphData to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32* %bCID to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast %struct.gs_string_s* %enc_char_name_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %626) #1
  %627 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %627) #1
  %628 = bitcast %struct.gs_fapi_metrics_s* %metrics to i8*
  call void @llvm.lifetime.end(i64 32, i8* %628) #1
  %629 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %629) #1
  %630 = bitcast %struct.gs_matrix_s** %ctm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #1
  %631 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %631) #1
  %632 = bitcast %struct.gs_fapi_char_ref* %cr to i8*
  call void @llvm.lifetime.end(i64 88, i8* %632) #1
  %633 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %633) #1
  %634 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %634) #1
  %635 = load i32, i32* %retval
  ret i32 %635
}

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #4

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @produce_outline_char(%struct.gs_show_enum_s* %penum_s, %struct.gs_font_base_s* %pbfont, i32 %abits, %struct.gs_log2_scale_point_s* %log2_scale) #0 {
entry:
  %penum_s.addr = alloca %struct.gs_show_enum_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %abits.addr = alloca i32, align 4
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  store %struct.gs_show_enum_s* %penum_s, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %abits, i32* %abits.addr, align 4, !tbaa !28
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 3
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !157
  %3 = bitcast %struct.gs_imager_state_s* %2 to %struct.gs_state_s*
  store %struct.gs_state_s* %3, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !210
  %5 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %5, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !211
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_base_s* %7 to %struct.gs_font_s*
  %9 = load i32, i32* %abits.addr, align 4, !tbaa !28
  %10 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  call void @gx_compute_text_oversampling(%struct.gs_show_enum_s* %6, %struct.gs_font_s* %8, i32 %9, %struct.gs_log2_scale_point_s* %10) #7
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 75
  %12 = load i32, i32* %in_charpath, align 4, !tbaa !113
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 17
  %14 = load i32, i32* %PaintType, align 4, !tbaa !59
  %cmp = icmp ne i32 %14, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 74
  %16 = load i32, i32* %in_cachedevice, align 4, !tbaa !121
  %cmp2 = icmp ne i32 %16, 3
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false.5

land.lhs.true:                                    ; preds = %lor.lhs.false.1
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s.addr, align 8, !tbaa !1
  %pis3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 3
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis3, align 8, !tbaa !157
  %19 = bitcast %struct.gs_imager_state_s* %18 to %struct.gs_state_s*
  %call = call i32 @using_transparency_pattern(%struct.gs_state_s* %19) #7
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true, %lor.lhs.false.1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_cachedevice6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 74
  %21 = load i32, i32* %in_cachedevice6, align 4, !tbaa !121
  %cmp7 = icmp ne i32 %21, 3
  br i1 %cmp7, label %land.lhs.true.8, label %lor.rhs

land.lhs.true.8:                                  ; preds = %lor.lhs.false.5
  %22 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %22, i32 0, i32 0
  %23 = load i32, i32* %x9, align 4, !tbaa !210
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8
  %24 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y12 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %24, i32 0, i32 1
  %25 = load i32, i32* %y12, align 4, !tbaa !211
  %cmp13 = icmp sgt i32 %25, 0
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.5
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_cachedevice14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 74
  %27 = load i32, i32* %in_cachedevice14, align 4, !tbaa !121
  %cmp15 = icmp ne i32 %27, 3
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %28 = load i32, i32* %abits.addr, align 4, !tbaa !28
  %cmp16 = icmp sgt i32 %28, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %29 = phi i1 [ false, %lor.rhs ], [ %cmp16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.11, %land.lhs.true.8, %land.lhs.true, %lor.lhs.false, %entry
  %30 = phi i1 [ true, %lor.lhs.false.11 ], [ true, %land.lhs.true.8 ], [ true, %land.lhs.true ], [ true, %lor.lhs.false ], [ true, %entry ], [ %29, %land.end ]
  %lor.ext = zext i1 %30 to i32
  %31 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret i32 %lor.ext
}

declare i32 @gs_currentcharmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @fapi_gs_char_show_width_only(%struct.gs_text_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_is_width_only(%struct.gs_text_enum_s* %0) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 4
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !261
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType, align 4, !tbaa !262
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 32, label %sw.bb
    i32 42, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #4

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fapi_round(double %x) #3 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !39
  %0 = load double, double* %x.addr, align 8, !tbaa !39
  %add = fadd double %0, 5.000000e-01
  %conv = fptosi double %add to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @export_shift(i32 %x, i32 %n) #3 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !28
  store i32 %n, i32* %n.addr, align 4, !tbaa !28
  %0 = load i32, i32* %n.addr, align 4, !tbaa !28
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !28
  %2 = load i32, i32* %n.addr, align 4, !tbaa !28
  %shr = ashr i32 %1, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4, !tbaa !28
  %4 = load i32, i32* %n.addr, align 4, !tbaa !28
  %sub = sub nsw i32 0, %4
  %shl = shl i32 %3, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %shl, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @compute_em_scale(%struct.gs_font_base_s* %pbfont, %struct.gs_fapi_metrics_s* %metrics, double %FontMatrix_div, double* %em_scale_x, double* %em_scale_y) #0 {
entry:
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %metrics.addr = alloca %struct.gs_fapi_metrics_s*, align 8
  %FontMatrix_div.addr = alloca double, align 8
  %em_scale_x.addr = alloca double*, align 8
  %em_scale_y.addr = alloca double*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %m = alloca %struct.gs_matrix_s*, align 8
  %rounding_x = alloca i32, align 4
  %rounding_y = alloca i32, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.gs_fapi_metrics_s* %metrics, %struct.gs_fapi_metrics_s** %metrics.addr, align 8, !tbaa !1
  store double %FontMatrix_div, double* %FontMatrix_div.addr, align 8, !tbaa !39
  store double* %em_scale_x, double** %em_scale_x.addr, align 8, !tbaa !1
  store double* %em_scale_y, double** %em_scale_y.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_matrix_s** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %2, i32 0, i32 7
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !263
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 10
  store %struct.gs_matrix_s* %orig_FontMatrix, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %4 = bitcast i32* %rounding_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rounding_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast double* %sx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %sy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 25
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  store %struct.gs_fapi_server_s* %10, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %11 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_fontmatrix = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %11, i32 0, i32 17
  %12 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)** %get_fontmatrix, align 8, !tbaa !225
  %13 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %call = call i32 %12(%struct.gs_fapi_server_s* %13, %struct.gs_matrix_s* %14) #7
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 0
  %16 = load float, float* %xx, align 4, !tbaa !215
  %cmp = fcmp oeq float %16, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 1
  %18 = load float, float* %xy, align 4, !tbaa !216
  %cmp1 = fcmp oeq float %18, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 2
  %20 = load float, float* %yx, align 4, !tbaa !217
  %cmp3 = fcmp oeq float %20, 0.000000e+00
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 3
  %22 = load float, float* %yy, align 4, !tbaa !218
  %cmp5 = fcmp oeq float %22, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %base6 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 7
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %base6, align 8, !tbaa !263
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xx7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 0
  %26 = load float, float* %xx7, align 4, !tbaa !215
  %conv = fpext float %26 to double
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xx8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 0
  %28 = load float, float* %xx8, align 4, !tbaa !215
  %conv9 = fpext float %28 to double
  %mul = fmul double %conv, %conv9
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xy10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 1
  %30 = load float, float* %xy10, align 4, !tbaa !216
  %conv11 = fpext float %30 to double
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %xy12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 1
  %32 = load float, float* %xy12, align 4, !tbaa !216
  %conv13 = fpext float %32 to double
  %mul14 = fmul double %conv11, %conv13
  %add = fadd double %mul, %mul14
  %call15 = call double @sqrt(double %add) #6
  %33 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %metrics.addr, align 8, !tbaa !1
  %em_x = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %33, i32 0, i32 6
  %34 = load i32, i32* %em_x, align 4, !tbaa !264
  %conv16 = sitofp i32 %34 to double
  %mul17 = fmul double %call15, %conv16
  %35 = load double, double* %FontMatrix_div.addr, align 8, !tbaa !39
  %div = fdiv double %mul17, %35
  store double %div, double* %sx, align 8, !tbaa !39
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yx18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 2
  %37 = load float, float* %yx18, align 4, !tbaa !217
  %conv19 = fpext float %37 to double
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yx20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 2
  %39 = load float, float* %yx20, align 4, !tbaa !217
  %conv21 = fpext float %39 to double
  %mul22 = fmul double %conv19, %conv21
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %40, i32 0, i32 3
  %41 = load float, float* %yy23, align 4, !tbaa !218
  %conv24 = fpext float %41 to double
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m, align 8, !tbaa !1
  %yy25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 3
  %43 = load float, float* %yy25, align 4, !tbaa !218
  %conv26 = fpext float %43 to double
  %mul27 = fmul double %conv24, %conv26
  %add28 = fadd double %mul22, %mul27
  %call29 = call double @sqrt(double %add28) #6
  %44 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %metrics.addr, align 8, !tbaa !1
  %em_y = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %44, i32 0, i32 7
  %45 = load i32, i32* %em_y, align 4, !tbaa !265
  %conv30 = sitofp i32 %45 to double
  %mul31 = fmul double %call29, %conv30
  %46 = load double, double* %FontMatrix_div.addr, align 8, !tbaa !39
  %div32 = fdiv double %mul31, %46
  store double %div32, double* %sy, align 8, !tbaa !39
  %47 = load double, double* %sx, align 8, !tbaa !39
  %div33 = fdiv double 8.388608e+06, %47
  %conv34 = fptosi double %div33 to i32
  store i32 %conv34, i32* %rounding_x, align 4, !tbaa !28
  %48 = load double, double* %sy, align 8, !tbaa !39
  %div35 = fdiv double 8.388608e+06, %48
  %conv36 = fptosi double %div35 to i32
  store i32 %conv36, i32* %rounding_y, align 4, !tbaa !28
  %49 = load double, double* %sx, align 8, !tbaa !39
  %50 = load i32, i32* %rounding_x, align 4, !tbaa !28
  %conv37 = sitofp i32 %50 to double
  %mul38 = fmul double %49, %conv37
  %add39 = fadd double %mul38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  %conv41 = sitofp i32 %conv40 to double
  %51 = load i32, i32* %rounding_x, align 4, !tbaa !28
  %conv42 = sitofp i32 %51 to double
  %div43 = fdiv double %conv41, %conv42
  %52 = load double*, double** %em_scale_x.addr, align 8, !tbaa !1
  store double %div43, double* %52, align 8, !tbaa !39
  %53 = load double, double* %sy, align 8, !tbaa !39
  %54 = load i32, i32* %rounding_y, align 4, !tbaa !28
  %conv44 = sitofp i32 %54 to double
  %mul45 = fmul double %53, %conv44
  %add46 = fadd double %mul45, 5.000000e-01
  %conv47 = fptosi double %add46 to i32
  %conv48 = sitofp i32 %conv47 to double
  %55 = load i32, i32* %rounding_y, align 4, !tbaa !28
  %conv49 = sitofp i32 %55 to double
  %div50 = fdiv double %conv48, %conv49
  %56 = load double*, double** %em_scale_y.addr, align 8, !tbaa !1
  store double %div50, double* %56, align 8, !tbaa !39
  %57 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast double* %sy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast double* %sx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %rounding_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %rounding_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_matrix_s** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %63) #1
  ret void
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_get_font_info(%struct.gs_font_s* %pfont, i32 %item, i32 %index, i8* %data, i32* %data_len) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %item.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 %item, i32* %item.addr, align 4, !tbaa !122
  store i32 %index, i32* %index.addr, align 4, !tbaa !28
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %data_len, i32** %data_len.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !28
  %1 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %3, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %4 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 25
  %6 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  store %struct.gs_fapi_server_s* %6, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %7 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_font_info = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %7, i32 0, i32 26
  %8 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)** %get_font_info, align 8, !tbaa !266
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %10, i32 0, i32 4
  %11 = load i32, i32* %item.addr, align 4, !tbaa !122
  %12 = load i32, i32* %index.addr, align 4, !tbaa !28
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %data_len.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_fapi_server_s* %9, %struct.gs_fapi_font_s* %ff, i32 %11, i32 %12, i8* %13, i32* %14) #7
  store i32 %call, i32* %code, align 4, !tbaa !28
  %15 = load i32, i32* %code, align 4, !tbaa !28
  %16 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_passfont(%struct.gs_font_s* %pfont, i32 %subfont, i8* %font_file_path, %struct.gs_string_s* %full_font_buf, i8* %fapi_request, i8* %xlatmap, i8** %fapi_id, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* %get_server_param_cb) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %subfont.addr = alloca i32, align 4
  %font_file_path.addr = alloca i8*, align 8
  %full_font_buf.addr = alloca %struct.gs_string_s*, align 8
  %fapi_request.addr = alloca i8*, align 8
  %xlatmap.addr = alloca i8*, align 8
  %fapi_id.addr = alloca i8**, align 8
  %get_server_param_cb.addr = alloca i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %list = alloca %struct.gs_fapi_server_s**, align 8
  %free_params = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %decodingID = alloca i8*, align 8
  %do_restart = alloca i32, align 4
  %server_param = alloca i8*, align 8
  %server_param_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 %subfont, i32* %subfont.addr, align 4, !tbaa !28
  store i8* %font_file_path, i8** %font_file_path.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %full_font_buf, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  store i8* %fapi_request, i8** %fapi_request.addr, align 8, !tbaa !1
  store i8* %xlatmap, i8** %xlatmap.addr, align 8, !tbaa !1
  store i8** %fapi_id, i8*** %fapi_id.addr, align 8, !tbaa !1
  store i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* %get_server_param_cb, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !28
  %2 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_fapi_server_s*** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %free_params to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %free_params, align 4, !tbaa !28
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast i8** %decodingID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %decodingID, align 8, !tbaa !1
  %9 = bitcast i32* %do_restart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %do_restart, align 4, !tbaa !28
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %10) #7
  store %struct.gs_fapi_server_s** %call, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %11 = load i8**, i8*** %fapi_id.addr, align 8, !tbaa !1
  store i8* null, i8** %11, align 8, !tbaa !1
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_s* %12 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %13, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %14 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %15 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %14, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %15, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %16 = load i8*, i8** %fapi_request.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %call1 = call i32 @gs_debug_c(i32 49) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %17 = load i8*, i8** %fapi_request.addr, align 8, !tbaa !1
  %call4 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* %17) #7
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %19 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %18, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %19, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_fapi_server_s* %19, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ig = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %20, i32 0, i32 0
  %d = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig, i32 0, i32 0
  %21 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d, align 8, !tbaa !82
  %subtype = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %subtype, align 8, !tbaa !83
  %23 = load i8*, i8** %fapi_request.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %fapi_request.addr, align 8, !tbaa !1
  %call5 = call i64 @strlen(i8* %24) #8
  %call6 = call i32 @strncmp(i8* %22, i8* %23, i64 %call5) #8
  %cmp7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %26, i32 1
  store %struct.gs_fapi_server_s** %incdec.ptr, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.gs_fapi_server_s* %27, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %while.end
  %call10 = call i32 @gs_debug_c(i32 49) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  %call13 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call15 = call %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %28) #7
  store %struct.gs_fapi_server_s** %call15, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %29 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %30 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %29, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %30, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  br label %if.end.21

if.else:                                          ; preds = %while.end
  %call16 = call i32 @gs_debug_c(i32 49) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else
  %call19 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else
  store i32 1, i32* %do_restart, align 4, !tbaa !28
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  br label %while.cond.23

while.cond.23:                                    ; preds = %cleanup.cont, %if.end.22
  %31 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %tobool24 = icmp ne %struct.gs_fapi_server_s* %31, null
  br i1 %tobool24, label %while.body.25, label %while.end.77

while.body.25:                                    ; preds = %while.cond.23
  %32 = bitcast i8** %server_param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i8* null, i8** %server_param, align 8, !tbaa !1
  %33 = bitcast i32* %server_param_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %server_param_size, align 4, !tbaa !28
  %34 = load i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %35 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %36 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ig26 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %36, i32 0, i32 0
  %d27 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig26, i32 0, i32 0
  %37 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d27, align 8, !tbaa !82
  %subtype28 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %subtype28, align 8, !tbaa !83
  %call29 = call i32 %34(%struct.gs_fapi_server_s* %35, i8* %38, i8** %server_param, i32* %server_param_size) #7
  %39 = load i8*, i8** %server_param, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %39, null
  br i1 %cmp30, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %while.body.25
  %40 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %cmp31 = icmp sgt i32 %40, 0
  br i1 %cmp31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %land.lhs.true
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !192
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %43 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !267
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !192
  %46 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %call34 = call i8* %43(%struct.gs_memory_s* %45, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call34, i8** %server_param, align 8, !tbaa !1
  %47 = load i8*, i8** %server_param, align 8, !tbaa !1
  %tobool35 = icmp ne i8* %47, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.32
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  store i32 1, i32* %free_params, align 4, !tbaa !28
  %48 = load i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %49 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %50 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ig38 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %50, i32 0, i32 0
  %d39 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig38, i32 0, i32 0
  %51 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d39, align 8, !tbaa !82
  %subtype40 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %51, i32 0, i32 1
  %52 = load i8*, i8** %subtype40, align 8, !tbaa !83
  %call41 = call i32 %48(%struct.gs_fapi_server_s* %49, i8* %52, i8** %server_param, i32* %server_param_size) #7
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.37, %land.lhs.true, %while.body.25
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %54 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %55 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ensure_open = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %55, i32 0, i32 9
  %56 = load i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, i8*, i32)** %ensure_open, align 8, !tbaa !268
  %57 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %58 = load i8*, i8** %server_param, align 8, !tbaa !1
  %59 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %call43 = call i32 %56(%struct.gs_fapi_server_s* %57, i8* %58, i32 %59) #7
  %call44 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %53, %struct.gs_fapi_server_s* %54, i32 %call43) #7
  store i32 %call44, i32* %code, align 4, !tbaa !28
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  %60 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.42
  %61 = load i32, i32* %free_params, align 4, !tbaa !28
  %tobool48 = icmp ne i32 %61, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory50, align 8, !tbaa !192
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !175
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory52, align 8, !tbaa !192
  %67 = load i8*, i8** %server_param, align 8, !tbaa !1
  call void %64(%struct.gs_memory_s* %66, i8* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.47
  %68 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %69 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %69, i32 0, i32 25
  store %struct.gs_fapi_server_s* %68, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !74
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %71 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %72 = load i32, i32* %subfont.addr, align 4, !tbaa !28
  %73 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %74 = load %struct.gs_string_s*, %struct.gs_string_s** %full_font_buf.addr, align 8, !tbaa !1
  %75 = load i8*, i8** %xlatmap.addr, align 8, !tbaa !1
  %call54 = call i32 @gs_fapi_prepare_font(%struct.gs_font_s* %70, %struct.gs_fapi_server_s* %71, i32 %72, i8* %73, %struct.gs_string_s* %74, i8* %75, i8** %decodingID) #7
  store i32 %call54, i32* %code, align 4, !tbaa !28
  %76 = load i32, i32* %code, align 4, !tbaa !28
  %cmp55 = icmp sge i32 %76, 0
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.end.53
  %77 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ig57 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %77, i32 0, i32 0
  %d58 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig57, i32 0, i32 0
  %78 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d58, align 8, !tbaa !82
  %subtype59 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %78, i32 0, i32 1
  %79 = load i8*, i8** %subtype59, align 8, !tbaa !83
  %80 = load i8**, i8*** %fapi_id.addr, align 8, !tbaa !1
  store i8* %79, i8** %80, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.53
  %81 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI61 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %81, i32 0, i32 25
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %FAPI61, align 8, !tbaa !74
  %82 = load i32, i32* %do_restart, align 4, !tbaa !28
  %cmp62 = icmp eq i32 %82, 1
  br i1 %cmp62, label %if.then.63, label %if.else.73

if.then.63:                                       ; preds = %if.end.60
  %call64 = call i32 @gs_debug_c(i32 49) #7
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.then.63
  %83 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ig67 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %83, i32 0, i32 0
  %d68 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig67, i32 0, i32 0
  %84 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d68, align 8, !tbaa !82
  %subtype69 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %84, i32 0, i32 1
  %85 = load i8*, i8** %subtype69, align 8, !tbaa !83
  %call70 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0), i8* %85) #7
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.then.63
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call72 = call %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %86) #7
  store %struct.gs_fapi_server_s** %call72, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  store i32 0, i32* %do_restart, align 4, !tbaa !28
  br label %if.end.75

if.else.73:                                       ; preds = %if.end.60
  %87 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %88 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %87, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %88, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %89 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %89, i32 1
  store %struct.gs_fapi_server_s** %incdec.ptr74, %struct.gs_fapi_server_s*** %list, align 8, !tbaa !1
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.end.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.56, %if.then.46, %if.then.36
  %90 = bitcast i32* %server_param_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i8** %server_param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.23

while.end.77:                                     ; preds = %while.cond.23
  %92 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %while.end.77, %cleanup
  %93 = bitcast i32* %do_restart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %decodingID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %free_params to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast %struct.gs_fapi_server_s*** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !269
  %fapi_servers = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 27
  %2 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %fapi_servers, align 8, !tbaa !270
  ret %struct.gs_fapi_server_s** %2
}

declare i32 @gs_debug_c(i32) #4

declare i32 @errprintf_nomem(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_available(%struct.gs_memory_s* %mem, i8* %server) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %server.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %serv = alloca %struct.gs_fapi_server_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %server, i8** %server.addr, align 8, !tbaa !1
  %0 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %retval1, align 4, !tbaa !28
  %1 = load i8*, i8** %server.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_fapi_server_s** %serv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %serv, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %server.addr, align 8, !tbaa !1
  %call = call i32 @gs_fapi_find_server(%struct.gs_memory_s* %3, i8* %4, %struct.gs_fapi_server_s** %serv, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* null) #7
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval1, align 4, !tbaa !28
  %5 = bitcast %struct.gs_fapi_server_s** %serv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 2
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !269
  %fapi_servers = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 27
  %8 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %fapi_servers, align 8, !tbaa !270
  %cmp2 = icmp ne %struct.gs_fapi_server_s** %8, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 2
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx4, align 8, !tbaa !269
  %fapi_servers5 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 27
  %11 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %fapi_servers5, align 8, !tbaa !270
  %12 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %11, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_fapi_server_s* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %13 = phi i1 [ false, %if.else ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval1, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %14 = load i32, i32* %retval1, align 4, !tbaa !28
  %15 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_find_server(%struct.gs_memory_s* %mem, i8* %name, %struct.gs_fapi_server_s** %server, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* %get_server_param_cb) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %name.addr = alloca i8*, align 8
  %server.addr = alloca %struct.gs_fapi_server_s**, align 8
  %get_server_param_cb.addr = alloca i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, align 8
  %servs = alloca %struct.gs_fapi_server_s**, align 8
  %server_param = alloca i8*, align 8
  %server_param_size = alloca i32, align 4
  %code = alloca i32, align 4
  %free_params = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s** %server, %struct.gs_fapi_server_s*** %server.addr, align 8, !tbaa !1
  store i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* %get_server_param_cb, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %1) #7
  store %struct.gs_fapi_server_s** %call, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %2 = bitcast i8** %server_param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %server_param, align 8, !tbaa !1
  %3 = bitcast i32* %server_param_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %server_param_size, align 4, !tbaa !28
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !28
  %5 = bitcast i32* %free_params to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %free_params, align 4, !tbaa !28
  %6 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %6, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_fapi_server_s** %7, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %8 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %8, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_fapi_server_s* %9, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %13 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %12, align 8, !tbaa !1
  %ig = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %13, i32 0, i32 0
  %d = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig, i32 0, i32 0
  %14 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d, align 8, !tbaa !82
  %subtype = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %subtype, align 8, !tbaa !83
  %16 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call2 = call i32 @strcmp(i8* %15, i8* %16) #6
  store i32 %call2, i32* %tmp, !tbaa !28
  %17 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %tmp, !tbaa !28
  %tobool3 = icmp ne i32 %19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %21, i32 1
  store %struct.gs_fapi_server_s** %incdec.ptr, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.gs_fapi_server_s** %22, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %while.end
  %23 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %24 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %23, align 8, !tbaa !1
  %tobool6 = icmp ne %struct.gs_fapi_server_s* %24, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %25 = load i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %tobool8 = icmp ne i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* %25, null
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.7
  %26 = load i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %27 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %28 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %27, align 8, !tbaa !1
  %29 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %30 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %29, align 8, !tbaa !1
  %ig9 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %30, i32 0, i32 0
  %d10 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig9, i32 0, i32 0
  %31 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d10, align 8, !tbaa !82
  %subtype11 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %subtype11, align 8, !tbaa !83
  %call12 = call i32 %26(%struct.gs_fapi_server_s* %28, i8* %32, i8** %server_param, i32* %server_param_size) #7
  %33 = load i8*, i8** %server_param, align 8, !tbaa !1
  %cmp = icmp eq i8* %33, null
  br i1 %cmp, label %land.lhs.true.13, label %if.end.24

land.lhs.true.13:                                 ; preds = %if.then
  %34 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %cmp14 = icmp sgt i32 %34, 0
  br i1 %cmp14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %land.lhs.true.13
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !192
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !267
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !192
  %40 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %call17 = call i8* %37(%struct.gs_memory_s* %39, i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %call17, i8** %server_param, align 8, !tbaa !1
  %41 = load i8*, i8** %server_param, align 8, !tbaa !1
  %tobool18 = icmp ne i8* %41, null
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.then.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.15
  store i32 1, i32* %free_params, align 4, !tbaa !28
  %42 = load i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)** %get_server_param_cb.addr, align 8, !tbaa !1
  %43 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %44 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %43, align 8, !tbaa !1
  %45 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %46 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %45, align 8, !tbaa !1
  %ig20 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %46, i32 0, i32 0
  %d21 = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig20, i32 0, i32 0
  %47 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d21, align 8, !tbaa !82
  %subtype22 = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %47, i32 0, i32 1
  %48 = load i8*, i8** %subtype22, align 8, !tbaa !83
  %call23 = call i32 %42(%struct.gs_fapi_server_s* %44, i8* %48, i8** %server_param, i32* %server_param_size) #7
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %land.lhs.true.13, %if.then
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %50 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %51 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %50, align 8, !tbaa !1
  %52 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %53 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %52, align 8, !tbaa !1
  %ensure_open = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %53, i32 0, i32 9
  %54 = load i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, i8*, i32)** %ensure_open, align 8, !tbaa !268
  %55 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %56 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %55, align 8, !tbaa !1
  %57 = load i8*, i8** %server_param, align 8, !tbaa !1
  %58 = load i32, i32* %server_param_size, align 4, !tbaa !28
  %call25 = call i32 %54(%struct.gs_fapi_server_s* %56, i8* %57, i32 %58) #7
  %call26 = call i32 @gs_fapi_renderer_retcode(%struct.gs_memory_s* %49, %struct.gs_fapi_server_s* %51, i32 %call25) #7
  store i32 %call26, i32* %code, align 4, !tbaa !28
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.24
  %59 = load i32, i32* %free_params, align 4, !tbaa !28
  %tobool30 = icmp ne i32 %59, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.29
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !192
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !175
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !192
  %65 = load i8*, i8** %server_param, align 8, !tbaa !1
  call void %62(%struct.gs_memory_s* %64, i8* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #7
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.29
  %66 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %67 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %66, align 8, !tbaa !1
  %68 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %67, %struct.gs_fapi_server_s** %68, align 8, !tbaa !1
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true.5, %while.end
  %69 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool36 = icmp ne %struct.gs_fapi_server_s** %69, null
  br i1 %tobool36, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %if.else
  %70 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %71 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %70, align 8, !tbaa !1
  %tobool37 = icmp ne %struct.gs_fapi_server_s* %71, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -7, i32* %code, align 4, !tbaa !28
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.35
  %72 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.19
  %73 = bitcast i32* %free_params to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %server_param_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i8** %server_param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define void @gs_fapi_set_servers_client_data(%struct.gs_memory_s* %mem, %struct.gs_fapi_font_s* %ff_proto, i8* %ctx_ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ff_proto.addr = alloca %struct.gs_fapi_font_s*, align 8
  %ctx_ptr.addr = alloca i8*, align 8
  %servs = alloca %struct.gs_fapi_server_s**, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %ff_proto, %struct.gs_fapi_font_s** %ff_proto.addr, align 8, !tbaa !1
  store i8* %ctx_ptr, i8** %ctx_ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_fapi_server_s** @gs_fapi_get_server_list(%struct.gs_memory_s* %1) #7
  store %struct.gs_fapi_server_s** %call, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %2 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_fapi_server_s** %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %4 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %3, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_fapi_server_s* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %ctx_ptr.addr, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %7 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %6, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %7, i32 0, i32 1
  store i8* %5, i8** %client_ctx_p, align 8, !tbaa !47
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff_proto.addr, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gs_fapi_font_s* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %9 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %9, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %10, i32 0, i32 4
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff_proto.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_fapi_font_s* %ff to i8*
  %13 = bitcast %struct.gs_fapi_font_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 320, i32 8, i1 false), !tbaa.struct !272
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  %14 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %14, i32 1
  store %struct.gs_fapi_server_s** %incdec.ptr, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.4

if.end.4:                                         ; preds = %while.end, %entry
  %15 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %num_servers = alloca i32, align 4
  %servs = alloca %struct.gs_fapi_server_s**, align 8
  %gs_fapi_server_inits = alloca i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)**, align 8
  %cleanup.dest.slot = alloca i32
  %f = alloca i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)**, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !28
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_servers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %num_servers, align 4, !tbaa !28
  %3 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gs_fapi_server_s** null, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %4 = bitcast i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %gs_fapi_server_inits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %call = call i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** @gs_get_fapi_server_inits() #7
  store i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %call, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %gs_fapi_server_inits, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %num_servers, align 4, !tbaa !28
  %idxprom = sext i32 %5 to i64
  %6 = load i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)**, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %gs_fapi_server_inits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %6, i64 %idxprom
  %7 = load i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %num_servers, align 4, !tbaa !28
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %num_servers, align 4, !tbaa !28
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !192
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !267
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !192
  %14 = load i32, i32* %num_servers, align 4, !tbaa !28
  %add = add nsw i32 %14, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* %11(%struct.gs_memory_s* %13, i32 %conv2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  %15 = bitcast i8* %call3 to %struct.gs_fapi_server_s**
  store %struct.gs_fapi_server_s** %15, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %16 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.gs_fapi_server_s** %16, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

if.end:                                           ; preds = %while.end
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !28
  %18 = load i32, i32* %num_servers, align 4, !tbaa !28
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom6 = sext i32 %20 to i64
  %21 = load i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)**, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %gs_fapi_server_inits, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %21, i64 %idxprom6
  store i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %arrayidx7, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %f, align 8, !tbaa !1
  %22 = load i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)**, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %f, align 8, !tbaa !1
  %23 = load i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** %22, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom8 = sext i32 %25 to i64
  %26 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %26, i64 %idxprom8
  %call10 = call i32 %23(%struct.gs_memory_s* %24, %struct.gs_fapi_server_s** %arrayidx9) #7
  store i32 %call10, i32* %code, align 4, !tbaa !28
  %27 = load i32, i32* %code, align 4, !tbaa !28
  %cmp11 = icmp ne i32 %27, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %29, i64 %idxprom15
  %30 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %arrayidx16, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %30, i32 0, i32 1
  store i8* null, i8** %client_ctx_p, align 8, !tbaa !47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %31 = bitcast i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, i32* %i, align 4, !tbaa !28
  %inc17 = add nsw i32 %32, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.25, %for.end
  %33 = load i32, i32* %i, align 4, !tbaa !28
  %34 = load i32, i32* %num_servers, align 4, !tbaa !28
  %add19 = add nsw i32 %34, 1
  %cmp20 = icmp slt i32 %33, %add19
  br i1 %cmp20, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.18
  %35 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %36, i64 %idxprom23
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %arrayidx24, align 8, !tbaa !1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %37 = load i32, i32* %i, align 4, !tbaa !28
  %inc26 = add nsw i32 %37, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !28
  br label %for.cond.18

for.end.27:                                       ; preds = %for.cond.18
  %38 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 2
  %40 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !269
  %fapi_servers = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %40, i32 0, i32 27
  store %struct.gs_fapi_server_s** %38, %struct.gs_fapi_server_s*** %fapi_servers, align 8, !tbaa !270
  %41 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end.27, %if.then
  %42 = bitcast i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*** %gs_fapi_server_inits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %num_servers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** @gs_get_fapi_server_inits() #4

; Function Attrs: nounwind uwtable
define void @gs_fapi_finit(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %servs = alloca %struct.gs_fapi_server_s**, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !269
  %fapi_servers = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 27
  %3 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %fapi_servers, align 8, !tbaa !270
  store %struct.gs_fapi_server_s** %3, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_fapi_server_s** %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %5, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_fapi_server_s* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %8, align 8, !tbaa !1
  %ig = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %9, i32 0, i32 0
  %d = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig, i32 0, i32 0
  %10 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d, align 8, !tbaa !82
  %finit = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %10, i32 0, i32 2
  %11 = load void (%struct.gs_fapi_server_s**)*, void (%struct.gs_fapi_server_s**)** %finit, align 8, !tbaa !273
  %12 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  call void %11(%struct.gs_fapi_server_s** %12) #7
  %13 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %13, i32 1
  store %struct.gs_fapi_server_s** %incdec.ptr, %struct.gs_fapi_server_s*** %servs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !192
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !175
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !192
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 2
  %20 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx3, align 8, !tbaa !269
  %fapi_servers4 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %20, i32 0, i32 27
  %21 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %fapi_servers4, align 8, !tbaa !270
  %22 = bitcast %struct.gs_fapi_server_s** %21 to i8*
  call void %16(%struct.gs_memory_s* %18, i8* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0)) #7
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx5, align 8, !tbaa !269
  %fapi_servers6 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 27
  store %struct.gs_fapi_server_s** null, %struct.gs_fapi_server_s*** %fapi_servers6, align 8, !tbaa !270
  %25 = bitcast %struct.gs_fapi_server_s*** %servs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @add_closepath(%struct.gs_fapi_path_s* %I) #0 {
entry:
  %I.addr = alloca %struct.gs_fapi_path_s*, align 8
  %olh = alloca %struct.gs_fapi_outline_handler_s*, align 8
  store %struct.gs_fapi_path_s* %I, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %olh1 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %olh1, align 8, !tbaa !164
  %3 = bitcast i8* %2 to %struct.gs_fapi_outline_handler_s*
  store %struct.gs_fapi_outline_handler_s* %3, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %4 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %4, i32 0, i32 4
  %5 = load i32, i32* %need_close, align 4, !tbaa !163
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close2 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %6, i32 0, i32 4
  store i32 0, i32* %need_close2, align 4, !tbaa !163
  %7 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %7, i32 0, i32 0
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !158
  %call = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %8, i32 0) #7
  %9 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %9, i32 0, i32 2
  store i32 %call, i32* %gs_error, align 4, !tbaa !168
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error3 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 2
  %11 = load i32, i32* %gs_error3, align 4, !tbaa !168
  %12 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @add_move(%struct.gs_fapi_path_s* %I, i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %I.addr = alloca %struct.gs_fapi_path_s*, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %olh = alloca %struct.gs_fapi_outline_handler_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_path_s* %I, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  store i64 %x, i64* %x.addr, align 8, !tbaa !198
  store i64 %y, i64* %y.addr, align 8, !tbaa !198
  %0 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %olh1 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %olh1, align 8, !tbaa !164
  %3 = bitcast i8* %2 to %struct.gs_fapi_outline_handler_s*
  store %struct.gs_fapi_outline_handler_s* %3, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %4 = load i64, i64* %x.addr, align 8, !tbaa !198
  %5 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %5, i32 0, i32 1
  %6 = load i32, i32* %shift, align 4, !tbaa !166
  %conv = sext i32 %6 to i64
  %call = call i64 @import_shift(i64 %4, i64 %conv) #7
  %7 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %x0, align 4, !tbaa !160
  %conv2 = sext i32 %8 to i64
  %add = add nsw i64 %call, %conv2
  store i64 %add, i64* %x.addr, align 8, !tbaa !198
  %9 = load i64, i64* %y.addr, align 8, !tbaa !198
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift3 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 1
  %11 = load i32, i32* %shift3, align 4, !tbaa !166
  %conv4 = sext i32 %11 to i64
  %call5 = call i64 @import_shift(i64 %9, i64 %conv4) #7
  %sub = sub nsw i64 0, %call5
  %12 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %y0, align 4, !tbaa !161
  %conv6 = sext i32 %13 to i64
  %add7 = add nsw i64 %sub, %conv6
  store i64 %add7, i64* %y.addr, align 8, !tbaa !198
  %14 = load i64, i64* %x.addr, align 8, !tbaa !198
  %cmp = icmp sgt i64 %14, 2147483647
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 2147483647, i64* %x.addr, align 8, !tbaa !198
  br label %if.end.12

if.else:                                          ; preds = %entry
  %15 = load i64, i64* %x.addr, align 8, !tbaa !198
  %cmp9 = icmp slt i64 %15, -2147483648
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store i64 -2147483648, i64* %x.addr, align 8, !tbaa !198
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %16 = load i64, i64* %y.addr, align 8, !tbaa !198
  %cmp13 = icmp sgt i64 %16, 2147483647
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.12
  store i64 2147483647, i64* %y.addr, align 8, !tbaa !198
  br label %if.end.21

if.else.16:                                       ; preds = %if.end.12
  %17 = load i64, i64* %y.addr, align 8, !tbaa !198
  %cmp17 = icmp slt i64 %17, -2147483648
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else.16
  store i64 -2147483648, i64* %y.addr, align 8, !tbaa !198
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %18 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %18, i32 0, i32 4
  %19 = load i32, i32* %need_close, align 4, !tbaa !163
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.21
  %20 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %close_path = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %20, i32 0, i32 3
  %21 = load i32, i32* %close_path, align 4, !tbaa !162
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %land.lhs.true
  %22 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %call24 = call i32 @add_closepath(%struct.gs_fapi_path_s* %22) #7
  %23 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %23, i32 0, i32 2
  store i32 %call24, i32* %gs_error, align 4, !tbaa !168
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.23
  %24 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error28 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %24, i32 0, i32 2
  %25 = load i32, i32* %gs_error28, align 4, !tbaa !168
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %if.end.21
  %26 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close31 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %26, i32 0, i32 4
  store i32 0, i32* %need_close31, align 4, !tbaa !163
  %27 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %27, i32 0, i32 0
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !158
  %29 = load i64, i64* %x.addr, align 8, !tbaa !198
  %conv32 = trunc i64 %29 to i32
  %30 = load i64, i64* %y.addr, align 8, !tbaa !198
  %conv33 = trunc i64 %30 to i32
  %call34 = call i32 @gx_path_add_point(%struct.gx_path_s* %28, i32 %conv32, i32 %conv33) #7
  %31 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error35 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %31, i32 0, i32 2
  store i32 %call34, i32* %gs_error35, align 4, !tbaa !168
  %32 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error36 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %32, i32 0, i32 2
  %33 = load i32, i32* %gs_error36, align 4, !tbaa !168
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.27
  %34 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @add_line(%struct.gs_fapi_path_s* %I, i64 %x, i64 %y) #0 {
entry:
  %I.addr = alloca %struct.gs_fapi_path_s*, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %olh = alloca %struct.gs_fapi_outline_handler_s*, align 8
  store %struct.gs_fapi_path_s* %I, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  store i64 %x, i64* %x.addr, align 8, !tbaa !198
  store i64 %y, i64* %y.addr, align 8, !tbaa !198
  %0 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %olh1 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %olh1, align 8, !tbaa !164
  %3 = bitcast i8* %2 to %struct.gs_fapi_outline_handler_s*
  store %struct.gs_fapi_outline_handler_s* %3, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %4 = load i64, i64* %x.addr, align 8, !tbaa !198
  %5 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %5, i32 0, i32 1
  %6 = load i32, i32* %shift, align 4, !tbaa !166
  %conv = sext i32 %6 to i64
  %call = call i64 @import_shift(i64 %4, i64 %conv) #7
  %7 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %x0, align 4, !tbaa !160
  %conv2 = sext i32 %8 to i64
  %add = add nsw i64 %call, %conv2
  store i64 %add, i64* %x.addr, align 8, !tbaa !198
  %9 = load i64, i64* %y.addr, align 8, !tbaa !198
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift3 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 1
  %11 = load i32, i32* %shift3, align 4, !tbaa !166
  %conv4 = sext i32 %11 to i64
  %call5 = call i64 @import_shift(i64 %9, i64 %conv4) #7
  %sub = sub nsw i64 0, %call5
  %12 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %y0, align 4, !tbaa !161
  %conv6 = sext i32 %13 to i64
  %add7 = add nsw i64 %sub, %conv6
  store i64 %add7, i64* %y.addr, align 8, !tbaa !198
  %14 = load i64, i64* %x.addr, align 8, !tbaa !198
  %cmp = icmp sgt i64 %14, 2147483647
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 2147483647, i64* %x.addr, align 8, !tbaa !198
  br label %if.end.12

if.else:                                          ; preds = %entry
  %15 = load i64, i64* %x.addr, align 8, !tbaa !198
  %cmp9 = icmp slt i64 %15, -2147483648
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store i64 -2147483648, i64* %x.addr, align 8, !tbaa !198
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %16 = load i64, i64* %y.addr, align 8, !tbaa !198
  %cmp13 = icmp sgt i64 %16, 2147483647
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.12
  store i64 2147483647, i64* %y.addr, align 8, !tbaa !198
  br label %if.end.21

if.else.16:                                       ; preds = %if.end.12
  %17 = load i64, i64* %y.addr, align 8, !tbaa !198
  %cmp17 = icmp slt i64 %17, -2147483648
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else.16
  store i64 -2147483648, i64* %y.addr, align 8, !tbaa !198
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %18 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %18, i32 0, i32 4
  store i32 1, i32* %need_close, align 4, !tbaa !163
  %19 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %19, i32 0, i32 0
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !158
  %21 = load i64, i64* %x.addr, align 8, !tbaa !198
  %conv22 = trunc i64 %21 to i32
  %22 = load i64, i64* %y.addr, align 8, !tbaa !198
  %conv23 = trunc i64 %22 to i32
  %call24 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %20, i32 %conv22, i32 %conv23, i32 0) #7
  %23 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %23, i32 0, i32 2
  store i32 %call24, i32* %gs_error, align 4, !tbaa !168
  %24 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error25 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %24, i32 0, i32 2
  %25 = load i32, i32* %gs_error25, align 4, !tbaa !168
  %26 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @add_curve(%struct.gs_fapi_path_s* %I, i64 %x0, i64 %y0, i64 %x1, i64 %y1, i64 %x2, i64 %y2) #0 {
entry:
  %I.addr = alloca %struct.gs_fapi_path_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %olh = alloca %struct.gs_fapi_outline_handler_s*, align 8
  store %struct.gs_fapi_path_s* %I, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  store i64 %x0, i64* %x0.addr, align 8, !tbaa !198
  store i64 %y0, i64* %y0.addr, align 8, !tbaa !198
  store i64 %x1, i64* %x1.addr, align 8, !tbaa !198
  store i64 %y1, i64* %y1.addr, align 8, !tbaa !198
  store i64 %x2, i64* %x2.addr, align 8, !tbaa !198
  store i64 %y2, i64* %y2.addr, align 8, !tbaa !198
  %0 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %olh1 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %olh1, align 8, !tbaa !164
  %3 = bitcast i8* %2 to %struct.gs_fapi_outline_handler_s*
  store %struct.gs_fapi_outline_handler_s* %3, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %4 = load i64, i64* %x0.addr, align 8, !tbaa !198
  %5 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %5, i32 0, i32 1
  %6 = load i32, i32* %shift, align 4, !tbaa !166
  %conv = sext i32 %6 to i64
  %call = call i64 @import_shift(i64 %4, i64 %conv) #7
  %7 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %x02 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %x02, align 4, !tbaa !160
  %conv3 = sext i32 %8 to i64
  %add = add nsw i64 %call, %conv3
  store i64 %add, i64* %x0.addr, align 8, !tbaa !198
  %9 = load i64, i64* %y0.addr, align 8, !tbaa !198
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift4 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 1
  %11 = load i32, i32* %shift4, align 4, !tbaa !166
  %conv5 = sext i32 %11 to i64
  %call6 = call i64 @import_shift(i64 %9, i64 %conv5) #7
  %sub = sub nsw i64 0, %call6
  %12 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %y07 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %y07, align 4, !tbaa !161
  %conv8 = sext i32 %13 to i64
  %add9 = add nsw i64 %sub, %conv8
  store i64 %add9, i64* %y0.addr, align 8, !tbaa !198
  %14 = load i64, i64* %x1.addr, align 8, !tbaa !198
  %15 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift10 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %15, i32 0, i32 1
  %16 = load i32, i32* %shift10, align 4, !tbaa !166
  %conv11 = sext i32 %16 to i64
  %call12 = call i64 @import_shift(i64 %14, i64 %conv11) #7
  %17 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %x013 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %17, i32 0, i32 1
  %18 = load i32, i32* %x013, align 4, !tbaa !160
  %conv14 = sext i32 %18 to i64
  %add15 = add nsw i64 %call12, %conv14
  store i64 %add15, i64* %x1.addr, align 8, !tbaa !198
  %19 = load i64, i64* %y1.addr, align 8, !tbaa !198
  %20 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift16 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %20, i32 0, i32 1
  %21 = load i32, i32* %shift16, align 4, !tbaa !166
  %conv17 = sext i32 %21 to i64
  %call18 = call i64 @import_shift(i64 %19, i64 %conv17) #7
  %sub19 = sub nsw i64 0, %call18
  %22 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %y020 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %22, i32 0, i32 2
  %23 = load i32, i32* %y020, align 4, !tbaa !161
  %conv21 = sext i32 %23 to i64
  %add22 = add nsw i64 %sub19, %conv21
  store i64 %add22, i64* %y1.addr, align 8, !tbaa !198
  %24 = load i64, i64* %x2.addr, align 8, !tbaa !198
  %25 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift23 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %25, i32 0, i32 1
  %26 = load i32, i32* %shift23, align 4, !tbaa !166
  %conv24 = sext i32 %26 to i64
  %call25 = call i64 @import_shift(i64 %24, i64 %conv24) #7
  %27 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %x026 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %27, i32 0, i32 1
  %28 = load i32, i32* %x026, align 4, !tbaa !160
  %conv27 = sext i32 %28 to i64
  %add28 = add nsw i64 %call25, %conv27
  store i64 %add28, i64* %x2.addr, align 8, !tbaa !198
  %29 = load i64, i64* %y2.addr, align 8, !tbaa !198
  %30 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %shift29 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %30, i32 0, i32 1
  %31 = load i32, i32* %shift29, align 4, !tbaa !166
  %conv30 = sext i32 %31 to i64
  %call31 = call i64 @import_shift(i64 %29, i64 %conv30) #7
  %sub32 = sub nsw i64 0, %call31
  %32 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %y033 = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %32, i32 0, i32 2
  %33 = load i32, i32* %y033, align 4, !tbaa !161
  %conv34 = sext i32 %33 to i64
  %add35 = add nsw i64 %sub32, %conv34
  store i64 %add35, i64* %y2.addr, align 8, !tbaa !198
  %34 = load i64, i64* %x0.addr, align 8, !tbaa !198
  %cmp = icmp sgt i64 %34, 2147483647
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 2147483647, i64* %x0.addr, align 8, !tbaa !198
  br label %if.end.40

if.else:                                          ; preds = %entry
  %35 = load i64, i64* %x0.addr, align 8, !tbaa !198
  %cmp37 = icmp slt i64 %35, -2147483648
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.else
  store i64 -2147483648, i64* %x0.addr, align 8, !tbaa !198
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then
  %36 = load i64, i64* %y0.addr, align 8, !tbaa !198
  %cmp41 = icmp sgt i64 %36, 2147483647
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  store i64 2147483647, i64* %y0.addr, align 8, !tbaa !198
  br label %if.end.49

if.else.44:                                       ; preds = %if.end.40
  %37 = load i64, i64* %y0.addr, align 8, !tbaa !198
  %cmp45 = icmp slt i64 %37, -2147483648
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.44
  store i64 -2147483648, i64* %y0.addr, align 8, !tbaa !198
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.else.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.43
  %38 = load i64, i64* %x1.addr, align 8, !tbaa !198
  %cmp50 = icmp sgt i64 %38, 2147483647
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49
  store i64 2147483647, i64* %x1.addr, align 8, !tbaa !198
  br label %if.end.58

if.else.53:                                       ; preds = %if.end.49
  %39 = load i64, i64* %x1.addr, align 8, !tbaa !198
  %cmp54 = icmp slt i64 %39, -2147483648
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.53
  store i64 -2147483648, i64* %x1.addr, align 8, !tbaa !198
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.52
  %40 = load i64, i64* %y1.addr, align 8, !tbaa !198
  %cmp59 = icmp sgt i64 %40, 2147483647
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.end.58
  store i64 2147483647, i64* %y1.addr, align 8, !tbaa !198
  br label %if.end.67

if.else.62:                                       ; preds = %if.end.58
  %41 = load i64, i64* %y1.addr, align 8, !tbaa !198
  %cmp63 = icmp slt i64 %41, -2147483648
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else.62
  store i64 -2147483648, i64* %y1.addr, align 8, !tbaa !198
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.else.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.61
  %42 = load i64, i64* %x2.addr, align 8, !tbaa !198
  %cmp68 = icmp sgt i64 %42, 2147483647
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.end.67
  store i64 2147483647, i64* %x2.addr, align 8, !tbaa !198
  br label %if.end.76

if.else.71:                                       ; preds = %if.end.67
  %43 = load i64, i64* %x2.addr, align 8, !tbaa !198
  %cmp72 = icmp slt i64 %43, -2147483648
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else.71
  store i64 -2147483648, i64* %x2.addr, align 8, !tbaa !198
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.else.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.70
  %44 = load i64, i64* %y2.addr, align 8, !tbaa !198
  %cmp77 = icmp sgt i64 %44, 2147483647
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76
  store i64 2147483647, i64* %y2.addr, align 8, !tbaa !198
  br label %if.end.85

if.else.80:                                       ; preds = %if.end.76
  %45 = load i64, i64* %y2.addr, align 8, !tbaa !198
  %cmp81 = icmp slt i64 %45, -2147483648
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.80
  store i64 -2147483648, i64* %y2.addr, align 8, !tbaa !198
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.79
  %46 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %need_close = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %46, i32 0, i32 4
  store i32 1, i32* %need_close, align 4, !tbaa !163
  %47 = load %struct.gs_fapi_outline_handler_s*, %struct.gs_fapi_outline_handler_s** %olh, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_fapi_outline_handler_s, %struct.gs_fapi_outline_handler_s* %47, i32 0, i32 0
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !158
  %49 = load i64, i64* %x0.addr, align 8, !tbaa !198
  %conv86 = trunc i64 %49 to i32
  %50 = load i64, i64* %y0.addr, align 8, !tbaa !198
  %conv87 = trunc i64 %50 to i32
  %51 = load i64, i64* %x1.addr, align 8, !tbaa !198
  %conv88 = trunc i64 %51 to i32
  %52 = load i64, i64* %y1.addr, align 8, !tbaa !198
  %conv89 = trunc i64 %52 to i32
  %53 = load i64, i64* %x2.addr, align 8, !tbaa !198
  %conv90 = trunc i64 %53 to i32
  %54 = load i64, i64* %y2.addr, align 8, !tbaa !198
  %conv91 = trunc i64 %54 to i32
  %call92 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %48, i32 %conv86, i32 %conv87, i32 %conv88, i32 %conv89, i32 %conv90, i32 %conv91, i32 0) #7
  %55 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %55, i32 0, i32 2
  store i32 %call92, i32* %gs_error, align 4, !tbaa !168
  %56 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %I.addr, align 8, !tbaa !1
  %gs_error93 = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %56, i32 0, i32 2
  %57 = load i32, i32* %gs_error93, align 4, !tbaa !168
  %58 = bitcast %struct.gs_fapi_outline_handler_s** %olh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret i32 %57
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @import_shift(i64 %x, i64 %n) #3 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8, !tbaa !198
  store i64 %n, i64* %n.addr, align 8, !tbaa !198
  %0 = load i64, i64* %n.addr, align 8, !tbaa !198
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8, !tbaa !198
  %2 = load i64, i64* %n.addr, align 8, !tbaa !198
  %shl = shl i64 %1, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %x.addr, align 8, !tbaa !198
  %4 = load i64, i64* %n.addr, align 8, !tbaa !198
  %sub = sub nsw i64 0, %4
  %shr = ashr i64 %3, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %shr, %cond.false ]
  ret i64 %cond
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #4

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #4

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #4

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @gx_image_fill_masked(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #4

declare %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @alloc_bold_lines(%struct.gs_memory_s* %mem, i32 %width, i32 %bold, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %width.addr = alloca i32, align 4
  %bold.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !28
  store i32 %bold, i32* %bold.addr, align 4, !tbaa !28
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %1 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !174
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i32, i32* %bold.addr, align 4, !tbaa !28
  %add = add nsw i32 2, %3
  %4 = load i32, i32* %width.addr, align 4, !tbaa !28
  %5 = load i32, i32* %bold.addr, align 4, !tbaa !28
  %add1 = add i32 %4, %5
  %add2 = add i32 %add1, 63
  %shr = lshr i32 %add2, 6
  %shl = shl i32 %shr, 3
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, i32 %add, i32 %shl, i8* %6) #7
  ret i8* %call
}

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #4

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #4

declare i32 @gs_image_init(%struct.gs_image_enum_s*, %struct.gs_image1_s*, i32, %struct.gs_state_s*) #4

declare i32 @gs_image_next(%struct.gs_image_enum_s*, i8*, i32, i32*) #4

; Function Attrs: nounwind uwtable
define internal void @bits_smear_horizontally(i8* %dest, i8* %src, i32 %width, i32 %smear_width) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %smear_width.addr = alloca i32, align 4
  %bits_on = alloca i32, align 4
  %sp = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dbyte = alloca i32, align 4
  %sdmask = alloca i32, align 4
  %zp = alloca i8*, align 8
  %zmask = alloca i32, align 4
  %i = alloca i32, align 4
  %stop = alloca i32, align 4
  %stop79 = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !28
  store i32 %smear_width, i32* %smear_width.addr, align 4, !tbaa !28
  %0 = bitcast i32* %bits_on to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %bits_on, align 4, !tbaa !28
  %1 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %2, i8** %sp, align 8, !tbaa !1
  %3 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %sp, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !122
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %sbyte, align 4, !tbaa !28
  %6 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %7, i8** %dp, align 8, !tbaa !1
  %8 = bitcast i32* %dbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %sbyte, align 4, !tbaa !28
  store i32 %9, i32* %dbyte, align 4, !tbaa !28
  %10 = bitcast i32* %sdmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 128, i32* %sdmask, align 4, !tbaa !28
  %11 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %12, i8** %zp, align 8, !tbaa !1
  %13 = bitcast i32* %zmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 128, i32* %zmask, align 4, !tbaa !28
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !28
  %15 = bitcast i32* %stop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %smear_width.addr, align 4, !tbaa !28
  %17 = load i32, i32* %width.addr, align 4, !tbaa !28
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load i32, i32* %smear_width.addr, align 4, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load i32, i32* %width.addr, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %stop, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %20 = load i32, i32* %i, align 4, !tbaa !28
  %21 = load i32, i32* %stop, align 4, !tbaa !28
  %cmp2 = icmp ult i32 %20, %21
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %sbyte, align 4, !tbaa !28
  %23 = load i32, i32* %sdmask, align 4, !tbaa !28
  %and = and i32 %22, %23
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %24 = load i32, i32* %bits_on, align 4, !tbaa !28
  %inc = add i32 %24, 1
  store i32 %inc, i32* %bits_on, align 4, !tbaa !28
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %bits_on, align 4, !tbaa !28
  %tobool4 = icmp ne i32 %25, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %26 = load i32, i32* %sdmask, align 4, !tbaa !28
  %27 = load i32, i32* %dbyte, align 4, !tbaa !28
  %or = or i32 %27, %26
  store i32 %or, i32* %dbyte, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %28 = load i32, i32* %sdmask, align 4, !tbaa !28
  %shr = lshr i32 %28, 1
  store i32 %shr, i32* %sdmask, align 4, !tbaa !28
  %cmp7 = icmp eq i32 %shr, 0
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  store i32 128, i32* %sdmask, align 4, !tbaa !28
  %29 = load i32, i32* %dbyte, align 4, !tbaa !28
  %conv10 = trunc i32 %29 to i8
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  store i8 %conv10, i8* %30, align 1, !tbaa !122
  %31 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr11, i8** %sp, align 8, !tbaa !1
  %32 = load i8, i8* %incdec.ptr11, align 1, !tbaa !122
  %conv12 = zext i8 %32 to i32
  store i32 %conv12, i32* %sbyte, align 4, !tbaa !28
  store i32 %conv12, i32* %dbyte, align 4, !tbaa !28
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %33 = load i32, i32* %i, align 4, !tbaa !28
  %inc14 = add i32 %33, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = bitcast i32* %stop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.76, %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !28
  %36 = load i32, i32* %width.addr, align 4, !tbaa !28
  %cmp16 = icmp ult i32 %35, %36
  br i1 %cmp16, label %for.body.18, label %for.end.78

for.body.18:                                      ; preds = %for.cond.15
  %37 = load i32, i32* %sbyte, align 4, !tbaa !28
  %38 = load i32, i32* %sdmask, align 4, !tbaa !28
  %and19 = and i32 %37, %38
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %for.body.18
  %39 = load i32, i32* %bits_on, align 4, !tbaa !28
  %inc22 = add i32 %39, 1
  store i32 %inc22, i32* %bits_on, align 4, !tbaa !28
  br label %if.end.28

if.else.23:                                       ; preds = %for.body.18
  %40 = load i32, i32* %bits_on, align 4, !tbaa !28
  %tobool24 = icmp ne i32 %40, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else.23
  %41 = load i32, i32* %sdmask, align 4, !tbaa !28
  %42 = load i32, i32* %dbyte, align 4, !tbaa !28
  %or26 = or i32 %42, %41
  store i32 %or26, i32* %dbyte, align 4, !tbaa !28
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.21
  %43 = load i8*, i8** %zp, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !122
  %conv29 = zext i8 %44 to i32
  %45 = load i32, i32* %zmask, align 4, !tbaa !28
  %and30 = and i32 %conv29, %45
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %46 = load i32, i32* %bits_on, align 4, !tbaa !28
  %dec = add i32 %46, -1
  store i32 %dec, i32* %bits_on, align 4, !tbaa !28
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %47 = load i32, i32* %sdmask, align 4, !tbaa !28
  %shr34 = lshr i32 %47, 1
  store i32 %shr34, i32* %sdmask, align 4, !tbaa !28
  %cmp35 = icmp eq i32 %shr34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.69

if.then.37:                                       ; preds = %if.end.33
  store i32 128, i32* %sdmask, align 4, !tbaa !28
  %48 = load i32, i32* %dbyte, align 4, !tbaa !28
  %conv38 = trunc i32 %48 to i8
  %49 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr39, i8** %dp, align 8, !tbaa !1
  store i8 %conv38, i8* %49, align 1, !tbaa !122
  br label %on

on:                                               ; preds = %if.end.65, %if.end.45, %if.then.37
  %50 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr40, i8** %sp, align 8, !tbaa !1
  %51 = load i8, i8* %incdec.ptr40, align 1, !tbaa !122
  %conv41 = zext i8 %51 to i32
  store i32 %conv41, i32* %sbyte, align 4, !tbaa !28
  store i32 %conv41, i32* %dbyte, align 4, !tbaa !28
  switch i32 %conv41, label %sw.default [
    i32 255, label %sw.bb
    i32 0, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %on
  %52 = load i32, i32* %width.addr, align 4, !tbaa !28
  %53 = load i32, i32* %i, align 4, !tbaa !28
  %sub = sub i32 %52, %53
  %cmp42 = icmp ule i32 %sub, 8
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.45:                                        ; preds = %sw.bb
  %54 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr46, i8** %dp, align 8, !tbaa !1
  store i8 -1, i8* %54, align 1, !tbaa !122
  %55 = load i8*, i8** %zp, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !122
  %conv47 = zext i8 %56 to i32
  %57 = load i32, i32* %zmask, align 4, !tbaa !28
  %sub48 = sub i32 %57, 1
  %and49 = and i32 %conv47, %sub48
  %58 = load i8*, i8** %zp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx, align 1, !tbaa !122
  %conv50 = zext i8 %59 to i32
  %60 = load i32, i32* %zmask, align 4, !tbaa !28
  %sub51 = sub i32 0, %60
  %and52 = and i32 %conv50, %sub51
  %add = add i32 %and49, %and52
  %idxprom = zext i32 %add to i64
  %arrayidx53 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_count_bits, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx53, align 1, !tbaa !122
  %conv54 = zext i8 %61 to i32
  %sub55 = sub nsw i32 8, %conv54
  %62 = load i32, i32* %bits_on, align 4, !tbaa !28
  %add56 = add i32 %62, %sub55
  store i32 %add56, i32* %bits_on, align 4, !tbaa !28
  %63 = load i8*, i8** %zp, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr57, i8** %zp, align 8, !tbaa !1
  %64 = load i32, i32* %i, align 4, !tbaa !28
  %add58 = add i32 %64, 8
  store i32 %add58, i32* %i, align 4, !tbaa !28
  br label %on

sw.bb.59:                                         ; preds = %on
  %65 = load i32, i32* %bits_on, align 4, !tbaa !28
  %tobool60 = icmp ne i32 %65, 0
  br i1 %tobool60, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.59
  %66 = load i32, i32* %width.addr, align 4, !tbaa !28
  %67 = load i32, i32* %i, align 4, !tbaa !28
  %sub61 = sub i32 %66, %67
  %cmp62 = icmp ule i32 %sub61, 8
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false, %sw.bb.59
  br label %sw.epilog

if.end.65:                                        ; preds = %lor.lhs.false
  %68 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr66 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr66, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %68, align 1, !tbaa !122
  %69 = load i8*, i8** %zp, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr67, i8** %zp, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !28
  %add68 = add i32 %70, 8
  store i32 %add68, i32* %i, align 4, !tbaa !28
  br label %on

sw.default:                                       ; preds = %on
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.64, %if.then.44
  br label %if.end.69

if.end.69:                                        ; preds = %sw.epilog, %if.end.33
  %71 = load i32, i32* %zmask, align 4, !tbaa !28
  %shr70 = lshr i32 %71, 1
  store i32 %shr70, i32* %zmask, align 4, !tbaa !28
  %cmp71 = icmp eq i32 %shr70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.69
  store i32 128, i32* %zmask, align 4, !tbaa !28
  %72 = load i8*, i8** %zp, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr74, i8** %zp, align 8, !tbaa !1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.69
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %73 = load i32, i32* %i, align 4, !tbaa !28
  %inc77 = add i32 %73, 1
  store i32 %inc77, i32* %i, align 4, !tbaa !28
  br label %for.cond.15

for.end.78:                                       ; preds = %for.cond.15
  %74 = bitcast i32* %stop79 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %width.addr, align 4, !tbaa !28
  %76 = load i32, i32* %smear_width.addr, align 4, !tbaa !28
  %add80 = add i32 %75, %76
  store i32 %add80, i32* %stop79, align 4, !tbaa !28
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.108, %for.end.78
  %77 = load i32, i32* %i, align 4, !tbaa !28
  %78 = load i32, i32* %stop79, align 4, !tbaa !28
  %cmp82 = icmp ult i32 %77, %78
  br i1 %cmp82, label %for.body.84, label %for.end.110

for.body.84:                                      ; preds = %for.cond.81
  %79 = load i32, i32* %bits_on, align 4, !tbaa !28
  %tobool85 = icmp ne i32 %79, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %for.body.84
  %80 = load i32, i32* %sdmask, align 4, !tbaa !28
  %81 = load i32, i32* %dbyte, align 4, !tbaa !28
  %or87 = or i32 %81, %80
  store i32 %or87, i32* %dbyte, align 4, !tbaa !28
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %for.body.84
  %82 = load i32, i32* %sdmask, align 4, !tbaa !28
  %shr89 = lshr i32 %82, 1
  store i32 %shr89, i32* %sdmask, align 4, !tbaa !28
  %cmp90 = icmp eq i32 %shr89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.88
  store i32 128, i32* %sdmask, align 4, !tbaa !28
  %83 = load i32, i32* %dbyte, align 4, !tbaa !28
  %conv93 = trunc i32 %83 to i8
  %84 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr94, i8** %dp, align 8, !tbaa !1
  store i8 %conv93, i8* %84, align 1, !tbaa !122
  store i32 0, i32* %dbyte, align 4, !tbaa !28
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.end.88
  %85 = load i8*, i8** %zp, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !122
  %conv96 = zext i8 %86 to i32
  %87 = load i32, i32* %zmask, align 4, !tbaa !28
  %and97 = and i32 %conv96, %87
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.95
  %88 = load i32, i32* %bits_on, align 4, !tbaa !28
  %dec100 = add i32 %88, -1
  store i32 %dec100, i32* %bits_on, align 4, !tbaa !28
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.95
  %89 = load i32, i32* %zmask, align 4, !tbaa !28
  %shr102 = lshr i32 %89, 1
  store i32 %shr102, i32* %zmask, align 4, !tbaa !28
  %cmp103 = icmp eq i32 %shr102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.101
  store i32 128, i32* %zmask, align 4, !tbaa !28
  %90 = load i8*, i8** %zp, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr106, i8** %zp, align 8, !tbaa !1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.101
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %91 = load i32, i32* %i, align 4, !tbaa !28
  %inc109 = add i32 %91, 1
  store i32 %inc109, i32* %i, align 4, !tbaa !28
  br label %for.cond.81

for.end.110:                                      ; preds = %for.cond.81
  %92 = bitcast i32* %stop79 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %sdmask, align 4, !tbaa !28
  %cmp111 = icmp ne i32 %93, 128
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %for.end.110
  %94 = load i32, i32* %dbyte, align 4, !tbaa !28
  %conv114 = trunc i32 %94 to i8
  %95 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv114, i8* %95, align 1, !tbaa !122
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %for.end.110
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %zmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %sdmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %dbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %bits_on to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bits_merge(i8* %dest, i8* %src, i32 %nbytes) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %dp = alloca i64*, align 8
  %sp = alloca i64*, align 8
  %n = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !28
  %0 = bitcast i64** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %dp, align 8, !tbaa !1
  %3 = bitcast i64** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %sp, align 8, !tbaa !1
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %nbytes.addr, align 4, !tbaa !28
  %conv = zext i32 %7 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %shr = lshr i64 %sub, 3
  %conv1 = trunc i64 %shr to i32
  store i32 %conv1, i32* %n, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %n, align 4, !tbaa !28
  %cmp = icmp uge i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64*, i64** %sp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !198
  %11 = load i64*, i64** %dp, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx3, align 8, !tbaa !198
  %or = or i64 %12, %10
  store i64 %or, i64* %arrayidx3, align 8, !tbaa !198
  %13 = load i64*, i64** %sp, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %13, i64 1
  %14 = load i64, i64* %arrayidx4, align 8, !tbaa !198
  %15 = load i64*, i64** %dp, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %15, i64 1
  %16 = load i64, i64* %arrayidx5, align 8, !tbaa !198
  %or6 = or i64 %16, %14
  store i64 %or6, i64* %arrayidx5, align 8, !tbaa !198
  %17 = load i64*, i64** %sp, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %17, i64 2
  %18 = load i64, i64* %arrayidx7, align 8, !tbaa !198
  %19 = load i64*, i64** %dp, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i64, i64* %19, i64 2
  %20 = load i64, i64* %arrayidx8, align 8, !tbaa !198
  %or9 = or i64 %20, %18
  store i64 %or9, i64* %arrayidx8, align 8, !tbaa !198
  %21 = load i64*, i64** %sp, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %21, i64 3
  %22 = load i64, i64* %arrayidx10, align 8, !tbaa !198
  %23 = load i64*, i64** %dp, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %23, i64 3
  %24 = load i64, i64* %arrayidx11, align 8, !tbaa !198
  %or12 = or i64 %24, %22
  store i64 %or12, i64* %arrayidx11, align 8, !tbaa !198
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64*, i64** %sp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i64, i64* %25, i64 4
  store i64* %add.ptr, i64** %sp, align 8, !tbaa !1
  %26 = load i64*, i64** %dp, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i64, i64* %26, i64 4
  store i64* %add.ptr13, i64** %dp, align 8, !tbaa !1
  %27 = load i32, i32* %n, align 4, !tbaa !28
  %sub14 = sub i32 %27, 4
  store i32 %sub14, i32* %n, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.18, %for.end
  %28 = load i32, i32* %n, align 4, !tbaa !28
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.15
  %29 = load i64*, i64** %sp, align 8, !tbaa !1
  %30 = load i64, i64* %29, align 8, !tbaa !198
  %31 = load i64*, i64** %dp, align 8, !tbaa !1
  %32 = load i64, i64* %31, align 8, !tbaa !198
  %or17 = or i64 %32, %30
  store i64 %or17, i64* %31, align 8, !tbaa !198
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.16
  %33 = load i64*, i64** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %sp, align 8, !tbaa !1
  %34 = load i64*, i64** %dp, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %incdec.ptr19, i64** %dp, align 8, !tbaa !1
  %35 = load i32, i32* %n, align 4, !tbaa !28
  %dec = add i32 %35, -1
  store i32 %dec, i32* %n, align 4, !tbaa !28
  br label %for.cond.15

for.end.20:                                       ; preds = %for.cond.15
  %36 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i64** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i64** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret void
}

declare i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s*, %struct.gs_state_s*) #4

declare void @gx_compute_text_oversampling(%struct.gs_show_enum_s*, %struct.gs_font_s*, i32, %struct.gs_log2_scale_point_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @using_transparency_pattern(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !102
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !179
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !181
  %cmp = icmp eq %struct.gx_device_color_type_s* %5, @gx_dc_type_data_pure
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true.2

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 10
  %7 = load i32, i32* %log_op, align 4, !tbaa !187
  %and = and i32 %7, 563
  %cmp1 = icmp eq i32 %and, 48
  br i1 %cmp1, label %land.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true, %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %begin_transparency_group = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 44
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %begin_transparency_group, align 8, !tbaa !274
  %cmp3 = icmp ne i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* %9, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %end_transparency_group = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 45
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)** %end_transparency_group, align 8, !tbaa !275
  %cmp5 = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true
  %12 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  %13 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i32 %land.ext
}

declare i32 @gs_text_is_width_only(%struct.gs_text_enum_s*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 48}
!6 = !{!"gs_fapi_font_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !3, i64 72, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !7, i64 184, !8, i64 188, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!7 = !{!"int", !3, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!6, !7, i64 52}
!10 = !{!6, !2, i64 160}
!11 = !{!12, !7, i64 712}
!12 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !13, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !8, i64 156, !7, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !22, i64 448, !23, i64 656, !2, i64 744}
!13 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!14 = !{!"long", !3, i64 0}
!15 = !{!"gs_matrix_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!16 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!17 = !{!"gs_font_name_s", !3, i64 0, !7, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !3, i64 0}
!21 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!22 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !14, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !3, i64 72, !14, i64 120, !14, i64 128, !14, i64 136, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !2, i64 168, !2, i64 176, !7, i64 184, !7, i64 188, !2, i64 192, !14, i64 200}
!23 = !{!"gs_font_cid2_data_s", !24, i64 0, !7, i64 56, !2, i64 64, !27, i64 72}
!24 = !{!"gs_font_cid_data_s", !25, i64 0, !7, i64 40, !7, i64 44, !7, i64 48}
!25 = !{!"gs_cid_system_info_s", !26, i64 0, !26, i64 16, !7, i64 32}
!26 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!27 = !{!"o_", !2, i64 0, !2, i64 8}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !2, i64 16}
!30 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !13, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !8, i64 156, !7, i64 160, !16, i64 168, !17, i64 272, !17, i64 324}
!31 = !{!32, !7, i64 16}
!32 = !{!"gs_fapi_server_s", !33, i64 0, !2, i64 8, !7, i64 16, !34, i64 24, !6, i64 80, !7, i64 400, !7, i64 404, !7, i64 408, !15, i64 412, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!33 = !{!"gs_fapi_server_instance_s", !2, i64 0}
!34 = !{!"gs_fapi_face_s", !14, i64 0, !15, i64 8, !35, i64 32, !7, i64 40, !3, i64 44}
!35 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!36 = !{!37, !8, i64 80}
!37 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !13, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !8, i64 156, !7, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!38 = !{!37, !8, i64 84}
!39 = !{!20, !20, i64 0}
!40 = !{!32, !7, i64 124}
!41 = !{!32, !2, i64 104}
!42 = !{!37, !3, i64 128}
!43 = !{!32, !7, i64 128}
!44 = !{!37, !7, i64 148}
!45 = !{!32, !7, i64 144}
!46 = !{!32, !2, i64 96}
!47 = !{!32, !2, i64 8}
!48 = !{!32, !2, i64 232}
!49 = !{!32, !2, i64 240}
!50 = !{!32, !2, i64 248}
!51 = !{!37, !2, i64 432}
!52 = !{!32, !2, i64 80}
!53 = !{!54, !2, i64 0}
!54 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!55 = !{!32, !2, i64 112}
!56 = !{!54, !7, i64 8}
!57 = !{!32, !7, i64 120}
!58 = !{!32, !7, i64 132}
!59 = !{!37, !7, i64 152}
!60 = !{!32, !7, i64 136}
!61 = !{!32, !7, i64 140}
!62 = !{!32, !2, i64 448}
!63 = !{!32, !2, i64 464}
!64 = !{!37, !20, i64 376}
!65 = !{!37, !20, i64 384}
!66 = !{!37, !20, i64 392}
!67 = !{!37, !20, i64 400}
!68 = !{!32, !2, i64 456}
!69 = !{!70, !2, i64 512}
!70 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !13, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !8, i64 156, !7, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !71, i64 448}
!71 = !{!"gs_font_cid0_data_s", !24, i64 0, !14, i64 56, !2, i64 64, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!72 = !{!70, !7, i64 520}
!73 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 8, !39}
!74 = !{!37, !2, i64 424}
!75 = !{!76, !2, i64 424}
!76 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !13, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !8, i64 156, !7, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !77, i64 448}
!77 = !{!"gs_type1_data_s", !78, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !8, i64 100, !8, i64 104, !79, i64 108, !8, i64 168, !7, i64 172, !79, i64 176, !79, i64 236, !7, i64 280, !79, i64 284, !7, i64 328, !79, i64 332, !79, i64 340, !79, i64 348, !79, i64 400, !79, i64 452, !3, i64 520, !7, i64 536}
!78 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!79 = !{!"", !7, i64 0, !3, i64 4}
!80 = !{!76, !2, i64 432}
!81 = !{!76, !7, i64 152}
!82 = !{!32, !2, i64 0}
!83 = !{!84, !2, i64 8}
!84 = !{!"gs_fapi_server_descriptor_s", !2, i64 0, !2, i64 8, !2, i64 16}
!85 = !{!32, !2, i64 560}
!86 = !{!32, !14, i64 24}
!87 = !{!88, !2, i64 144}
!88 = !{!"gs_text_enum_s", !89, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !90, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !7, i64 208, !35, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !91, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !19, i64 360, !14, i64 376, !7, i64 384, !35, i64 388, !19, i64 400, !92, i64 416}
!89 = !{!"gs_text_params_s", !7, i64 0, !3, i64 8, !7, i64 16, !19, i64 24, !19, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !7, i64 80}
!90 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!91 = !{!"gx_font_stack_s", !7, i64 0, !3, i64 8}
!92 = !{!"gs_text_returned_s", !14, i64 0, !14, i64 8, !19, i64 16}
!93 = !{!94, !2, i64 128}
!94 = !{!"gs_memory_s", !2, i64 0, !95, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!95 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!96 = !{!88, !2, i64 104}
!97 = !{!98, !2, i64 456}
!98 = !{!"gs_show_enum_s", !89, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !90, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !7, i64 208, !35, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !91, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !19, i64 360, !14, i64 376, !7, i64 384, !35, i64 388, !19, i64 400, !92, i64 416, !7, i64 448, !2, i64 456, !7, i64 464, !3, i64 468, !2, i64 472, !7, i64 480, !99, i64 484, !99, i64 500, !7, i64 516, !7, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !101, i64 560, !19, i64 568, !7, i64 584, !101, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!99 = !{!"gs_int_rect_s", !100, i64 0, !100, i64 8}
!100 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!101 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!102 = !{!103, !2, i64 1872}
!103 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !104, i64 24, !7, i64 128, !106, i64 132, !7, i64 168, !19, i64 176, !19, i64 192, !7, i64 208, !7, i64 212, !107, i64 216, !3, i64 220, !108, i64 224, !108, i64 228, !109, i64 232, !14, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !8, i64 296, !101, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !8, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !110, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !111, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !111, i64 1336, !2, i64 1616, !15, i64 1624, !7, i64 1648, !15, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !106, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !112, i64 1888}
!104 = !{!"gx_line_params_s", !8, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !7, i64 36, !15, i64 40, !105, i64 64}
!105 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !8, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!106 = !{!"gs_matrix_fixed_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!107 = !{!"short", !3, i64 0}
!108 = !{!"gs_transparency_source_s", !8, i64 0}
!109 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!110 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!111 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !14, i64 16, !3, i64 24}
!112 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!113 = !{!103, !3, i64 1852}
!114 = !{!88, !7, i64 0}
!115 = !{!103, !2, i64 1680}
!116 = !{!103, !2, i64 1856}
!117 = !{!32, !2, i64 528}
!118 = !{!32, !7, i64 404}
!119 = !{!8, !8, i64 0}
!120 = !{!37, !8, i64 156}
!121 = !{!103, !3, i64 1848}
!122 = !{!3, !3, i64 0}
!123 = !{!103, !7, i64 304}
!124 = !{!103, !7, i64 300}
!125 = !{!19, !20, i64 0}
!126 = !{!19, !20, i64 8}
!127 = !{!128, !7, i64 20}
!128 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!129 = !{!128, !7, i64 24}
!130 = !{!128, !7, i64 8}
!131 = !{!103, !7, i64 156}
!132 = !{!103, !7, i64 160}
!133 = !{!128, !7, i64 28}
!134 = !{!128, !7, i64 36}
!135 = !{!136, !7, i64 832}
!136 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !90, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !137, i64 96, !139, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !14, i64 968, !14, i64 976, !140, i64 984, !7, i64 1052, !7, i64 1056, !141, i64 1064, !2, i64 1104, !3, i64 1112, !143, i64 1120, !144, i64 1144}
!137 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !107, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !138, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !7, i64 712}
!138 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!139 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!140 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!141 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !142, i64 16, !7, i64 32, !3, i64 36}
!142 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !14, i64 8}
!143 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!144 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!145 = !{!128, !7, i64 32}
!146 = !{!128, !7, i64 40}
!147 = !{!136, !7, i64 836}
!148 = !{!98, !20, i64 400}
!149 = !{!98, !2, i64 600}
!150 = !{!151, !7, i64 96}
!151 = !{!"cached_char_s", !152, i64 0, !107, i64 8, !107, i64 10, !107, i64 12, !107, i64 14, !14, i64 16, !2, i64 24, !7, i64 32, !14, i64 40, !3, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !101, i64 72, !14, i64 80, !101, i64 88, !101, i64 96}
!152 = !{!"gx_cached_bits_head_s", !7, i64 0, !7, i64 4}
!153 = !{!98, !20, i64 408}
!154 = !{!151, !7, i64 100}
!155 = !{i64 0, i64 8, !1, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!156 = !{!98, !2, i64 144}
!157 = !{!98, !2, i64 104}
!158 = !{!159, !2, i64 0}
!159 = !{!"gs_fapi_outline_handler_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!160 = !{!159, !7, i64 8}
!161 = !{!159, !7, i64 12}
!162 = !{!159, !7, i64 16}
!163 = !{!159, !7, i64 20}
!164 = !{!165, !2, i64 0}
!165 = !{!"gs_fapi_path_s", !2, i64 0, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!166 = !{!165, !7, i64 8}
!167 = !{!32, !2, i64 544}
!168 = !{!165, !7, i64 12}
!169 = !{!128, !7, i64 16}
!170 = !{!136, !2, i64 1216}
!171 = !{!128, !2, i64 0}
!172 = !{!128, !7, i64 12}
!173 = !{!136, !2, i64 24}
!174 = !{!94, !2, i64 88}
!175 = !{!94, !2, i64 24}
!176 = !{!98, !2, i64 88}
!177 = !{!103, !2, i64 1688}
!178 = !{!98, !2, i64 128}
!179 = !{!180, !2, i64 16}
!180 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!181 = !{!182, !2, i64 0}
!182 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !100, i64 352, !7, i64 360, !183, i64 368, !185, i64 632}
!183 = !{!"gs_client_color_s", !2, i64 0, !184, i64 8}
!184 = !{!"gs_paint_color_s", !3, i64 0}
!185 = !{!"_mask", !186, i64 0, !14, i64 8, !2, i64 16}
!186 = !{!"mp_", !7, i64 0, !7, i64 4}
!187 = !{!103, !7, i64 212}
!188 = !{!32, !8, i64 268}
!189 = !{!94, !2, i64 64}
!190 = !{!103, !8, i64 148}
!191 = !{!103, !8, i64 152}
!192 = !{!94, !2, i64 200}
!193 = !{!103, !2, i64 8}
!194 = !{!195, !7, i64 32}
!195 = !{!"gs_image1_s", !2, i64 0, !15, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576, !7, i64 584, !7, i64 588, !3, i64 592, !3, i64 596}
!196 = !{!195, !7, i64 36}
!197 = !{!195, !7, i64 588}
!198 = !{!14, !14, i64 0}
!199 = !{!136, !2, i64 1304}
!200 = !{!30, !7, i64 148}
!201 = !{!37, !2, i64 24}
!202 = !{!32, !7, i64 400}
!203 = !{!204, !7, i64 124}
!204 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !205, i64 24, !206, i64 56, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !7, i64 192, !2, i64 200, !2, i64 208, !14, i64 216}
!205 = !{!"fm_pair_cache_s", !7, i64 0, !7, i64 4, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24}
!206 = !{!"char_cache_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !2, i64 72, !2, i64 80}
!207 = !{!204, !7, i64 192}
!208 = !{!32, !7, i64 408}
!209 = !{i64 0, i64 4, !28, i64 4, i64 4, !28}
!210 = !{!35, !7, i64 0}
!211 = !{!35, !7, i64 4}
!212 = !{!37, !2, i64 16}
!213 = !{!32, !7, i64 148}
!214 = !{!37, !14, i64 56}
!215 = !{!15, !8, i64 0}
!216 = !{!15, !8, i64 4}
!217 = !{!15, !8, i64 8}
!218 = !{!15, !8, i64 12}
!219 = !{!32, !7, i64 56}
!220 = !{!32, !7, i64 60}
!221 = !{!32, !7, i64 64}
!222 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119, i64 12, i64 4, !119, i64 16, i64 4, !119, i64 20, i64 4, !119}
!223 = !{!224, !7, i64 40}
!224 = !{!"gs_fapi_font_scale_s", !3, i64 0, !3, i64 24, !3, i64 32, !7, i64 40}
!225 = !{!32, !2, i64 504}
!226 = !{!15, !8, i64 16}
!227 = !{!15, !8, i64 20}
!228 = !{!229, !7, i64 40}
!229 = !{!"", !14, i64 0, !3, i64 8, !7, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !3, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80}
!230 = !{!229, !14, i64 0}
!231 = !{!229, !7, i64 44}
!232 = !{!32, !2, i64 376}
!233 = !{!32, !2, i64 368}
!234 = !{!229, !7, i64 64}
!235 = !{!229, !7, i64 72}
!236 = !{!229, !3, i64 60}
!237 = !{!229, !7, i64 68}
!238 = !{!229, !7, i64 76}
!239 = !{!32, !2, i64 384}
!240 = !{!229, !7, i64 80}
!241 = !{!76, !7, i64 536}
!242 = !{!32, !2, i64 536}
!243 = !{!32, !2, i64 520}
!244 = !{!98, !7, i64 392}
!245 = !{!98, !7, i64 388}
!246 = !{!32, !2, i64 552}
!247 = !{!248, !7, i64 0}
!248 = !{!"gs_fapi_metrics_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!249 = !{!18, !20, i64 0}
!250 = !{!248, !7, i64 4}
!251 = !{!18, !20, i64 8}
!252 = !{!248, !7, i64 8}
!253 = !{!18, !20, i64 16}
!254 = !{!248, !7, i64 12}
!255 = !{!18, !20, i64 24}
!256 = !{!32, !2, i64 488}
!257 = !{!248, !7, i64 16}
!258 = !{!248, !7, i64 20}
!259 = !{!76, !7, i64 540}
!260 = !{!32, !2, i64 392}
!261 = !{!88, !2, i64 112}
!262 = !{!30, !3, i64 128}
!263 = !{!37, !2, i64 64}
!264 = !{!248, !7, i64 24}
!265 = !{!248, !7, i64 28}
!266 = !{!32, !2, i64 576}
!267 = !{!94, !2, i64 8}
!268 = !{!32, !2, i64 440}
!269 = !{!94, !2, i64 192}
!270 = !{!271, !2, i64 208}
!271 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !7, i64 128, !2, i64 136, !7, i64 144, !7, i64 148, !3, i64 152, !2, i64 168, !7, i64 176, !2, i64 184, !7, i64 192, !2, i64 200, !2, i64 208}
!272 = !{i64 0, i64 8, !1, i64 8, i64 4, !28, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !28, i64 44, i64 4, !28, i64 48, i64 4, !28, i64 52, i64 4, !28, i64 56, i64 4, !28, i64 60, i64 4, !28, i64 64, i64 4, !28, i64 68, i64 4, !28, i64 72, i64 80, !122, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 4, !28, i64 188, i64 4, !119, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1}
!273 = !{!84, !2, i64 16}
!274 = !{!136, !2, i64 1496}
!275 = !{!136, !2, i64 1504}
