; ModuleID = './gxccman.bc'
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
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type opaque
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }

@st_cached_fm_pair_element = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @fm_pair_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @fm_pair_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"font_dir_alloc(mdata)\00", align 1
@st_cached_char_ptr_element = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cc_ptr_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cc_ptr_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(chars)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"initial_chunk\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gx_add_fm_pair\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"gs_purge_fm_pair\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"gx_alloc_char_bits\00", align 1
@gx_add_cached_char.no_scale = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"cached_fm_pair[]\00", align 1
@st_cached_fm_pair = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @fm_pair_reloc_ptrs to i8*) }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"cached_fm_pair\00", align 1
@fm_pair_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 5, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([5 x %struct.gc_ptr_element_s], [5 x %struct.gc_ptr_element_s]* @fm_pair_enum_ptrs, i32 0, i32 0) }, align 8
@fm_pair_enum_ptrs = internal constant [5 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 80 }, %struct.gc_ptr_element_s { i16 0, i16 88 }], align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"cached_char *[]\00", align 1
@st_cached_char_ptr = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cc_ptr_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cc_ptr_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"cached_char *\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"char cache chunk\00", align 1
@st_font_cache_bytes = internal constant %struct.gs_memory_struct_type_s { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"char cache chunk(data)\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"font cache bytes\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_char_cache_alloc(%struct.gs_memory_s* %struct_mem, %struct.gs_memory_s* %bits_mem, %struct.gs_font_dir_s* %pdir, i32 %bmax, i32 %mmax, i32 %cmax, i32 %upper) #0 {
entry:
  %retval = alloca i32, align 4
  %struct_mem.addr = alloca %struct.gs_memory_s*, align 8
  %bits_mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %bmax.addr = alloca i32, align 4
  %mmax.addr = alloca i32, align 4
  %cmax.addr = alloca i32, align 4
  %upper.addr = alloca i32, align 4
  %chsize = alloca i32, align 4
  %mdata = alloca %struct.cached_fm_pair_s*, align 8
  %chars = alloca %struct.cached_char_s**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %struct_mem, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bits_mem, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store i32 %bmax, i32* %bmax.addr, align 4, !tbaa !5
  store i32 %mmax, i32* %mmax.addr, align 4, !tbaa !5
  store i32 %cmax, i32* %cmax.addr, align 4, !tbaa !5
  store i32 %upper, i32* %upper.addr, align 4, !tbaa !5
  %0 = bitcast i32* %chsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %cmax.addr, align 4, !tbaa !5
  %2 = load i32, i32* %cmax.addr, align 4, !tbaa !5
  %shr = lshr i32 %2, 1
  %add = add i32 %1, %shr
  %or = or i32 %add, 31
  store i32 %or, i32* %chsize, align 4, !tbaa !5
  %3 = bitcast %struct.cached_fm_pair_s** %mdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cached_char_s*** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %chsize, align 4, !tbaa !5
  %6 = load i32, i32* %bmax.addr, align 4, !tbaa !5
  %add1 = add i32 %6, 103
  %div = udiv i32 %add1, 104
  %mul = mul i32 %div, 104
  %div2 = udiv i32 %mul, 104
  %add3 = add i32 %div2, 1
  %cmp = icmp ugt i32 %5, %add3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %chsize, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %bmax.addr, align 4, !tbaa !5
  %add4 = add i32 %8, 103
  %div5 = udiv i32 %add4, 104
  %mul6 = mul i32 %div5, 104
  %div7 = udiv i32 %mul6, 104
  %add8 = add i32 %div7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %add8, %cond.false ]
  store i32 %cond, i32* %chsize, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %9 = load i32, i32* %chsize, align 4, !tbaa !5
  %10 = load i32, i32* %chsize, align 4, !tbaa !5
  %add9 = add i32 %10, 1
  %and = and i32 %9, %add9
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %chsize, align 4, !tbaa !5
  %shr10 = lshr i32 %11, 1
  %12 = load i32, i32* %chsize, align 4, !tbaa !5
  %or11 = or i32 %12, %shr10
  store i32 %or11, i32* %chsize, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %chsize, align 4, !tbaa !5
  %inc = add i32 %13, 1
  store i32 %inc, i32* %chsize, align 4, !tbaa !5
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %15 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !7
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %17 = load i32, i32* %mmax.addr, align 4, !tbaa !5
  %call = call i8* %15(%struct.gs_memory_s* %16, i32 %17, %struct.gs_memory_struct_type_s* @st_cached_fm_pair_element, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #5
  %18 = bitcast i8* %call to %struct.cached_fm_pair_s*
  store %struct.cached_fm_pair_s* %18, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_struct_array13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 12
  %20 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array13, align 8, !tbaa !7
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %22 = load i32, i32* %chsize, align 4, !tbaa !5
  %call14 = call i8* %20(%struct.gs_memory_s* %21, i32 %22, %struct.gs_memory_struct_type_s* @st_cached_char_ptr_element, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  %23 = bitcast i8* %call14 to %struct.cached_char_s**
  store %struct.cached_char_s** %23, %struct.cached_char_s*** %chars, align 8, !tbaa !1
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.cached_fm_pair_s* %24, null
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %25 = load %struct.cached_char_s**, %struct.cached_char_s*** %chars, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.cached_char_s** %25, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !10
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %29 = load %struct.cached_char_s**, %struct.cached_char_s*** %chars, align 8, !tbaa !1
  %30 = bitcast %struct.cached_char_s** %29 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !10
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %34 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !1
  %35 = bitcast %struct.cached_fm_pair_s* %34 to i8*
  call void %32(%struct.gs_memory_s* %33, i8* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %36 = load i32, i32* %mmax.addr, align 4, !tbaa !5
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 4
  %mmax20 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 1
  store i32 %36, i32* %mmax20, align 4, !tbaa !11
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !1
  %39 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %fmcache21 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %39, i32 0, i32 4
  %mdata22 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache21, i32 0, i32 2
  store %struct.cached_fm_pair_s* %38, %struct.cached_fm_pair_s** %mdata22, align 8, !tbaa !16
  %40 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !1
  %41 = bitcast %struct.cached_fm_pair_s* %40 to i8*
  %42 = load i32, i32* %mmax.addr, align 4, !tbaa !5
  %conv = zext i32 %42 to i64
  %mul23 = mul i64 %conv, 112
  %call24 = call i8* @memset(i8* %41, i32 0, i64 %mul23) #6
  %43 = load %struct.cached_char_s**, %struct.cached_char_s*** %chars, align 8, !tbaa !1
  %44 = bitcast %struct.cached_char_s** %43 to i8*
  %45 = load i32, i32* %chsize, align 4, !tbaa !5
  %conv25 = zext i32 %45 to i64
  %mul26 = mul i64 %conv25, 8
  %call27 = call i8* @memset(i8* %44, i32 0, i64 %mul26) #6
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %struct_mem.addr, align 8, !tbaa !1
  %47 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %47, i32 0, i32 5
  %struct_memory = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 4
  store %struct.gs_memory_s* %46, %struct.gs_memory_s** %struct_memory, align 8, !tbaa !17
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_mem.addr, align 8, !tbaa !1
  %49 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache28 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %49, i32 0, i32 5
  %bits_memory = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache28, i32 0, i32 5
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %bits_memory, align 8, !tbaa !18
  %50 = load i32, i32* %bmax.addr, align 4, !tbaa !5
  %51 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache29 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %51, i32 0, i32 5
  %bmax30 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache29, i32 0, i32 8
  store i32 %50, i32* %bmax30, align 4, !tbaa !19
  %52 = load i32, i32* %cmax.addr, align 4, !tbaa !5
  %53 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache31 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %53, i32 0, i32 5
  %cmax32 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache31, i32 0, i32 9
  store i32 %52, i32* %cmax32, align 4, !tbaa !20
  %54 = load i32, i32* %upper.addr, align 4, !tbaa !5
  %div33 = udiv i32 %54, 10
  %55 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache34 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %55, i32 0, i32 5
  %lower = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache34, i32 0, i32 11
  store i32 %div33, i32* %lower, align 4, !tbaa !21
  %56 = load i32, i32* %upper.addr, align 4, !tbaa !5
  %57 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache35 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %57, i32 0, i32 5
  %upper36 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache35, i32 0, i32 12
  store i32 %56, i32* %upper36, align 4, !tbaa !22
  %58 = load %struct.cached_char_s**, %struct.cached_char_s*** %chars, align 8, !tbaa !1
  %59 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache37 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %59, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache37, i32 0, i32 6
  store %struct.cached_char_s** %58, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %60 = load i32, i32* %chsize, align 4, !tbaa !5
  %sub = sub i32 %60, 1
  %61 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %ccache38 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %61, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache38, i32 0, i32 7
  store i32 %sub, i32* %table_mask, align 4, !tbaa !24
  %62 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %call39 = call i32 @gx_char_cache_init(%struct.gs_font_dir_s* %62) #5
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %63 = bitcast %struct.cached_char_s*** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.cached_fm_pair_s** %mdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %chsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gx_char_cache_init(%struct.gs_font_dir_s* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %i = alloca i32, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %cck = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 5
  %bits_memory = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_memory, align 8, !tbaa !18
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !25
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 5
  %bits_memory2 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache1, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_memory2, align 8, !tbaa !18
  %call = call i8* %5(%struct.gs_memory_s* %7, i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #5
  %8 = bitcast i8* %call to %struct.gx_bits_cache_chunk_s*
  store %struct.gx_bits_cache_chunk_s* %8, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %9 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_bits_cache_chunk_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 4
  %msize = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 0
  store i32 0, i32* %msize, align 4, !tbaa !26
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache3, i32 0, i32 1
  %12 = load i32, i32* %mmax, align 4, !tbaa !11
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 4
  %used = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache4, i32 0, i32 3
  store i32 %12, i32* %used, align 4, !tbaa !27
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 4
  %mmax6 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache5, i32 0, i32 1
  %15 = load i32, i32* %mmax6, align 4, !tbaa !11
  %16 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %16, i32 0, i32 4
  %free = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache7, i32 0, i32 4
  store i32 %15, i32* %free, align 4, !tbaa !28
  %17 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %17, i32 0, i32 4
  %unused = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache8, i32 0, i32 5
  store i32 0, i32* %unused, align 4, !tbaa !29
  %18 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  call void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s* %18, i8* null, i32 0) #5
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache9 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %19, i32 0, i32 5
  %20 = bitcast %struct.char_cache_s* %ccache9 to %struct.gx_bits_cache_s*
  %21 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  call void @gx_bits_cache_init(%struct.gx_bits_cache_s* %20, %struct.gx_bits_cache_chunk_s* %21) #5
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 5
  %bspace = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache10, i32 0, i32 10
  store i32 0, i32* %bspace, align 4, !tbaa !30
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache11, i32 0, i32 6
  %24 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %25 = bitcast %struct.cached_char_s** %24 to i8*
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %26, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache12, i32 0, i32 7
  %27 = load i32, i32* %table_mask, align 4, !tbaa !24
  %add = add i32 %27, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call13 = call i8* @memset(i8* %25, i32 0, i64 %mul) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  %28 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %28, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache14, i32 0, i32 2
  %29 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !16
  store %struct.cached_fm_pair_s* %29, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache15 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %31, i32 0, i32 4
  %mmax16 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache15, i32 0, i32 1
  %32 = load i32, i32* %mmax16, align 4, !tbaa !11
  %cmp17 = icmp ult i32 %30, %32
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %34, i32 0, i32 12
  store i32 %33, i32* %index, align 4, !tbaa !31
  %35 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %35, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %font, align 8, !tbaa !35
  %36 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %36, i32 0, i32 1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !36
  %37 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID19 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %37, i32 0, i32 1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID19, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !37
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont_tried = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %38, i32 0, i32 9
  store i32 0, i32* %xfont_tried, align 4, !tbaa !38
  %39 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %39, i32 0, i32 10
  store %struct.gx_xfont_s* null, %struct.gx_xfont_s** %xfont, align 8, !tbaa !39
  %40 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %40, i32 0, i32 13
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %ttf, align 8, !tbaa !40
  %41 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %ttr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %41, i32 0, i32 14
  store %struct.gx_ttfReader_s* null, %struct.gx_ttfReader_s** %ttr, align 8, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %43 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %43, i32 1
  store %struct.cached_fm_pair_s* %incdec.ptr, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %44 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s*, i8*, i32) #3

declare void @gx_bits_cache_init(%struct.gx_bits_cache_s*, %struct.gx_bits_cache_chunk_s*) #3

; Function Attrs: nounwind uwtable
define void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s* %dir, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)* %proc, i8* %proc_data) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %chi = alloca i32, align 4
  %cmax = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)* %proc, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %3 = load i32, i32* %table_mask, align 4, !tbaa !24
  store i32 %3, i32* %cmax, align 4, !tbaa !5
  store i32 0, i32* %chi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %4 = load i32, i32* %chi, align 4, !tbaa !5
  %5 = load i32, i32* %cmax, align 4, !tbaa !5
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %chi, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %8, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache1, i32 0, i32 6
  %9 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %9, i64 %idxprom
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  store %struct.cached_char_s* %10, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.cached_char_s* %11, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)*, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)** %proc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 11
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %15 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %16 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gs_memory_s* %14, %struct.cached_char_s* %15, i8* %16) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %18 = load i32, i32* %chi, align 4, !tbaa !5
  call void @hash_remove_cached_char(%struct.gs_font_dir_s* %17, i32 %18) #5
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %20 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %19, %struct.cached_char_s* %20) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %21 = load i32, i32* %chi, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %chi, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %cmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hash_remove_cached_char(%struct.gs_font_dir_s* %dir, i32 %chi) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %chi.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %from = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %fchi = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i32 %chi, i32* %chi.addr, align 4, !tbaa !5
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %2 = load i32, i32* %table_mask, align 4, !tbaa !24
  store i32 %2, i32* %mask, align 4, !tbaa !5
  %3 = bitcast i32* %from to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %mask, align 4, !tbaa !5
  %5 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %and = and i32 %5, %4
  store i32 %and, i32* %chi.addr, align 4, !tbaa !5
  %add = add i32 %and, 1
  %6 = load i32, i32* %mask, align 4, !tbaa !5
  %and1 = and i32 %add, %6
  store i32 %and1, i32* %from, align 4, !tbaa !5
  %7 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache2, i32 0, i32 6
  %10 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %10, i64 %idxprom
  store %struct.cached_char_s* null, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %11 = load i32, i32* %from, align 4, !tbaa !5
  %idxprom3 = zext i32 %11 to i64
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 5
  %table5 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache4, i32 0, i32 6
  %13 = load %struct.cached_char_s**, %struct.cached_char_s*** %table5, align 8, !tbaa !23
  %arrayidx6 = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %13, i64 %idxprom3
  %14 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx6, align 8, !tbaa !1
  store %struct.cached_char_s* %14, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp = icmp ne %struct.cached_char_s* %14, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = bitcast i32* %fchi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %16, i32 0, i32 8
  %17 = load i64, i64* %code, align 8, !tbaa !43
  %conv = trunc i64 %17 to i32
  %mul = mul i32 %conv, 59
  %18 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %18, i32 0, i32 6
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !48
  %hash = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %19, i32 0, i32 3
  %20 = load i32, i32* %hash, align 4, !tbaa !49
  %mul7 = mul i32 %20, 73
  %add8 = add i32 %mul, %mul7
  store i32 %add8, i32* %fchi, align 4, !tbaa !5
  %21 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %22 = load i32, i32* %from, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %21, %22
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %23 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %24 = load i32, i32* %fchi, align 4, !tbaa !5
  %cmp11 = icmp ule i32 %23, %24
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.true
  %25 = load i32, i32* %fchi, align 4, !tbaa !5
  %26 = load i32, i32* %from, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %25, %26
  br i1 %cmp13, label %if.then, label %if.end

cond.false:                                       ; preds = %while.body
  %27 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %28 = load i32, i32* %fchi, align 4, !tbaa !5
  %cmp15 = icmp ule i32 %27, %28
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false
  %29 = load i32, i32* %fchi, align 4, !tbaa !5
  %30 = load i32, i32* %from, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %29, %30
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %land.lhs.true
  %31 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %32 = load i32, i32* %chi.addr, align 4, !tbaa !5
  %idxprom19 = zext i32 %32 to i64
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache20 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %33, i32 0, i32 5
  %table21 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache20, i32 0, i32 6
  %34 = load %struct.cached_char_s**, %struct.cached_char_s*** %table21, align 8, !tbaa !23
  %arrayidx22 = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %34, i64 %idxprom19
  store %struct.cached_char_s* %31, %struct.cached_char_s** %arrayidx22, align 8, !tbaa !1
  %35 = load i32, i32* %from, align 4, !tbaa !5
  %idxprom23 = zext i32 %35 to i64
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %36, i32 0, i32 5
  %table25 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache24, i32 0, i32 6
  %37 = load %struct.cached_char_s**, %struct.cached_char_s*** %table25, align 8, !tbaa !23
  %arrayidx26 = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %37, i64 %idxprom23
  store %struct.cached_char_s* null, %struct.cached_char_s** %arrayidx26, align 8, !tbaa !1
  %38 = load i32, i32* %from, align 4, !tbaa !5
  store i32 %38, i32* %chi.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true, %cond.true
  %39 = load i32, i32* %from, align 4, !tbaa !5
  %add27 = add i32 %39, 1
  %40 = load i32, i32* %mask, align 4, !tbaa !5
  %and28 = and i32 %add27, %40
  store i32 %and28, i32* %from, align 4, !tbaa !5
  %41 = bitcast i32* %fchi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %from to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_free_cached_char(%struct.gs_font_dir_s* %dir, %struct.cached_char_s* %cc) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %cck = alloca %struct.gx_bits_cache_chunk_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %chunk = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i32 0, i32 10
  %2 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunk, align 8, !tbaa !50
  store %struct.gx_bits_cache_chunk_s* %2, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %3 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %4, i32 0, i32 5
  %chunks = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %3, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !51
  %5 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %6 = bitcast %struct.cached_char_s* %5 to i8*
  %7 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %data, align 8, !tbaa !52
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %cnext = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache1, i32 0, i32 1
  store i32 %conv, i32* %cnext, align 4, !tbaa !54
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %linked = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %10, i32 0, i32 7
  %11 = load i32, i32* %linked, align 4, !tbaa !55
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %12, i32 0, i32 6
  %13 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !48
  %num_chars = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %13, i32 0, i32 8
  %14 = load i32, i32* %num_chars, align 4, !tbaa !56
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %num_chars, align 4, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 5
  %16 = bitcast %struct.char_cache_s* %ccache2 to %struct.gx_bits_cache_s*
  %17 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %17, i32 0, i32 0
  %18 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  call void @gx_bits_cache_free(%struct.gx_bits_cache_s* %16, %struct.gx_cached_bits_head_s* %head, %struct.gx_bits_cache_chunk_s* %18) #5
  %19 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_provide_fm_pair_attributes(%struct.gs_font_dir_s* %dir, %struct.gs_font_s* %font, %struct.cached_fm_pair_s* %pair, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @does_font_need_tt_interpreter(%struct.gs_font_s* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %1, i32 0, i32 13
  %2 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !40
  %cmp = icmp ne %struct.ttfFont_s* %2, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_type42_s*
  %6 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %8 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %9 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %call2 = call i32 @gx_attach_tt_interpreter(%struct.gs_font_dir_s* %3, %struct.gs_font_type42_s* %5, %struct.cached_fm_pair_s* %6, %struct.gs_matrix_s* %7, %struct.gs_log2_scale_point_s* %8, i32 %9) #5
  store i32 %call2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.end, %if.then.1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @does_font_need_tt_interpreter(%struct.gs_font_s* %font) #4 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !57
  %cmp = icmp eq i32 %1, 42
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType1, align 4, !tbaa !57
  %cmp2 = icmp eq i32 %3, 11
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %6, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 25
  %8 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !63
  %cmp3 = icmp eq %struct.gs_fapi_server_s* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %9 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %10 = load i32, i32* %retval
  ret i32 %10

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_attach_tt_interpreter(%struct.gs_font_dir_s* %dir, %struct.gs_font_type42_s* %font, %struct.cached_fm_pair_s* %pair, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %font.addr = alloca %struct.gs_font_type42_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %cxx = alloca float, align 4
  %cxy = alloca float, align 4
  %cyx = alloca float, align 4
  %cyy = alloca float, align 4
  %m = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %font, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  %0 = bitcast float* %cxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %cxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %cyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %cyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %7 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  call void @gx_compute_char_matrix(%struct.gs_matrix_s* %6, %struct.gs_log2_scale_point_s* %7, float* %cxx, float* %cxy, float* %cyx, float* %cyy) #5
  %8 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %9 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %design_grid1 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %9, i32 0, i32 15
  store i32 %8, i32* %design_grid1, align 4, !tbaa !69
  %10 = load float, float* %cxx, align 4, !tbaa !70
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 0
  store float %10, float* %xx, align 4, !tbaa !71
  %11 = load float, float* %cxy, align 4, !tbaa !70
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 1
  store float %11, float* %xy, align 4, !tbaa !72
  %12 = load float, float* %cyx, align 4, !tbaa !70
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 2
  store float %12, float* %yx, align 4, !tbaa !73
  %13 = load float, float* %cyy, align 4, !tbaa !70
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 3
  store float %13, float* %yy, align 4, !tbaa !74
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !75
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !76
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 11
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !77
  %call = call %struct.gx_ttfReader_s* @gx_ttfReader__create(%struct.gs_memory_s* %16) #5
  %17 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %17, i32 0, i32 14
  store %struct.gx_ttfReader_s* %call, %struct.gx_ttfReader_s** %ttr, align 8, !tbaa !41
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr2 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %18, i32 0, i32 14
  %19 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr2, align 8, !tbaa !41
  %tobool = icmp ne %struct.gx_ttfReader_s* %19, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %call3 = call %struct.ttfFont_s* @ttfFont__create(%struct.gs_font_dir_s* %20) #5
  %21 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %21, i32 0, i32 13
  store %struct.ttfFont_s* %call3, %struct.ttfFont_s** %ttf, align 8, !tbaa !40
  %22 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf4 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %22, i32 0, i32 13
  %23 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf4, align 8, !tbaa !40
  %tobool5 = icmp ne %struct.ttfFont_s* %23, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr8 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %24, i32 0, i32 14
  %25 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr8, align 8, !tbaa !41
  %26 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  call void @gx_ttfReader__set_font(%struct.gx_ttfReader_s* %25, %struct.gs_font_type42_s* %26) #5
  %27 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf9 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %27, i32 0, i32 13
  %28 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf9, align 8, !tbaa !40
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %29, i32 0, i32 12
  %30 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !78
  %31 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr10 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %31, i32 0, i32 14
  %32 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr10, align 8, !tbaa !41
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font.addr, align 8, !tbaa !1
  %34 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %35 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %call11 = call i32 @ttfFont__Open_aux(%struct.ttfFont_s* %28, %struct.ttfInterpreter_s* %30, %struct.gx_ttfReader_s* %32, %struct.gs_font_type42_s* %33, %struct.gs_matrix_s* %m, %struct.gs_log2_scale_point_s* %34, i32 %35) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %36 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr12 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %36, i32 0, i32 14
  %37 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr12, align 8, !tbaa !41
  call void @gx_ttfReader__set_font(%struct.gx_ttfReader_s* %37, %struct.gs_font_type42_s* null) #5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #1
  %41 = bitcast float* %cyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast float* %cyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast float* %cxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast float* %cxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @gx_add_fm_pair(%struct.gs_font_dir_s* %dir, %struct.gs_font_s* %font, %struct.gs_uid_s* %puid, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid, %struct.cached_fm_pair_s** %ppair) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %ppair.addr = alloca %struct.cached_fm_pair_s**, align 8
  %mxx = alloca float, align 4
  %mxy = alloca float, align 4
  %myx = alloca float, align 4
  %myy = alloca float, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  store %struct.cached_fm_pair_s** %ppair, %struct.cached_fm_pair_s*** %ppair.addr, align 8, !tbaa !1
  %0 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %myx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %myy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %8 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %9 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  call void @gx_compute_ccache_key(%struct.gs_font_s* %6, %struct.gs_matrix_s* %7, %struct.gs_log2_scale_point_s* %8, i32 %9, float* %mxx, float* %mxy, float* %myx, float* %myy) #5
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 4
  %msize = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 0
  %11 = load i32, i32* %msize, align 4, !tbaa !26
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache1, i32 0, i32 1
  %13 = load i32, i32* %mmax, align 4, !tbaa !11
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache2, i32 0, i32 2
  %15 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !16
  %16 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %16, i32 0, i32 4
  %used = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache3, i32 0, i32 3
  %17 = load i32, i32* %used, align 4, !tbaa !27
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %15, i64 %idx.ext
  store %struct.cached_fm_pair_s* %add.ptr, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 4
  %mdata5 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache4, i32 0, i32 2
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata5, align 8, !tbaa !16
  %20 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %20, i32 0, i32 16
  %21 = load i32, i32* %prev, align 4, !tbaa !79
  %idx.ext6 = zext i32 %21 to i64
  %add.ptr7 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %19, i64 %idx.ext6
  store %struct.cached_fm_pair_s* %add.ptr7, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %23 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %call = call i32 @gs_purge_fm_pair(%struct.gs_font_dir_s* %22, %struct.cached_fm_pair_s* %23, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %24, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %26, i32 0, i32 4
  %free = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache11, i32 0, i32 4
  %27 = load i32, i32* %free, align 4, !tbaa !28
  %28 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %28, i32 0, i32 4
  %mmax13 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache12, i32 0, i32 1
  %29 = load i32, i32* %mmax13, align 4, !tbaa !11
  %cmp14 = icmp ult i32 %27, %29
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.10
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %30, i32 0, i32 4
  %mdata17 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache16, i32 0, i32 2
  %31 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata17, align 8, !tbaa !16
  %32 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache18 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %32, i32 0, i32 4
  %free19 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache18, i32 0, i32 4
  %33 = load i32, i32* %free19, align 4, !tbaa !28
  %idx.ext20 = zext i32 %33 to i64
  %add.ptr21 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %31, i64 %idx.ext20
  store %struct.cached_fm_pair_s* %add.ptr21, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %34 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %35 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache22 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %36, i32 0, i32 4
  %free23 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache22, i32 0, i32 4
  %call24 = call i32 @fm_pair_remove_from_list(%struct.gs_font_dir_s* %34, %struct.cached_fm_pair_s* %35, i32* %free23) #5
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %37, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.15
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.15
  br label %if.end.35

if.else:                                          ; preds = %if.end.10
  %39 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache28 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %39, i32 0, i32 4
  %mdata29 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache28, i32 0, i32 2
  %40 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata29, align 8, !tbaa !16
  %41 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %41, i32 0, i32 4
  %unused = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache30, i32 0, i32 5
  %42 = load i32, i32* %unused, align 4, !tbaa !29
  %idx.ext31 = zext i32 %42 to i64
  %add.ptr32 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %40, i64 %idx.ext31
  store %struct.cached_fm_pair_s* %add.ptr32, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %43 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache33 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %43, i32 0, i32 4
  %unused34 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache33, i32 0, i32 5
  %44 = load i32, i32* %unused34, align 4, !tbaa !29
  %inc = add i32 %44, 1
  store i32 %inc, i32* %unused34, align 4, !tbaa !29
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end.27
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %is_cached = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 19
  store i32 1, i32* %is_cached, align 4, !tbaa !80
  %46 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %46, i32 0, i32 4
  %msize37 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache36, i32 0, i32 0
  %47 = load i32, i32* %msize37, align 4, !tbaa !26
  %inc38 = add i32 %47, 1
  store i32 %inc38, i32* %msize37, align 4, !tbaa !26
  %48 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %49 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %50, i32 0, i32 4
  %used40 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache39, i32 0, i32 3
  %call41 = call i32 @fm_pair_insert_into_list(%struct.gs_font_dir_s* %48, %struct.cached_fm_pair_s* %49, i32* %used40) #5
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %51, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.35
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.35
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %54 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font45 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %54, i32 0, i32 0
  store %struct.gs_font_s* %53, %struct.gs_font_s** %font45, align 8, !tbaa !35
  %55 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %55, i32 0, i32 1
  %56 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gs_uid_s* %UID to i8*
  %58 = bitcast %struct.gs_uid_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !tbaa.struct !81
  %59 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID46 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %59, i32 0, i32 1
  %60 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %60, i32 0, i32 11
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 0
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !77
  %call47 = call i32 @uid_copy(%struct.gs_uid_s* %UID46, %struct.gs_memory_s* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %63, 0
  br i1 %cmp48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.44
  %64 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID50 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %64, i32 0, i32 1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID50, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !36
  %65 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID51 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %65, i32 0, i32 1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID51, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !37
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.44
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 11
  %68 = load i32, i32* %FontType, align 4, !tbaa !57
  %69 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %FontType53 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i32 0, i32 2
  store i32 %68, i32* %FontType53, align 4, !tbaa !83
  %70 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %70, i32 0, i32 8
  %71 = load i32, i32* %hash, align 4, !tbaa !84
  %rem = urem i32 %71, 549
  %72 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %hash54 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %72, i32 0, i32 3
  store i32 %rem, i32* %hash54, align 4, !tbaa !49
  %73 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %hash55 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %73, i32 0, i32 8
  %74 = load i32, i32* %hash55, align 4, !tbaa !84
  %add = add i32 %74, 371
  store i32 %add, i32* %hash55, align 4, !tbaa !84
  %75 = load float, float* %mxx, align 4, !tbaa !70
  %76 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %mxx56 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %76, i32 0, i32 4
  store float %75, float* %mxx56, align 4, !tbaa !85
  %77 = load float, float* %mxy, align 4, !tbaa !70
  %78 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %mxy57 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %78, i32 0, i32 5
  store float %77, float* %mxy57, align 4, !tbaa !86
  %79 = load float, float* %myx, align 4, !tbaa !70
  %80 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %myx58 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %80, i32 0, i32 6
  store float %79, float* %myx58, align 4, !tbaa !87
  %81 = load float, float* %myy, align 4, !tbaa !70
  %82 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %myy59 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %82, i32 0, i32 7
  store float %81, float* %myy59, align 4, !tbaa !88
  %83 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %num_chars = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %83, i32 0, i32 8
  store i32 0, i32* %num_chars, align 4, !tbaa !56
  %84 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont_tried = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %84, i32 0, i32 9
  store i32 0, i32* %xfont_tried, align 4, !tbaa !38
  %85 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %85, i32 0, i32 10
  store %struct.gx_xfont_s* null, %struct.gx_xfont_s** %xfont, align 8, !tbaa !39
  %86 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %86, i32 0, i32 13
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %ttf, align 8, !tbaa !40
  %87 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %ttr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %87, i32 0, i32 14
  store %struct.gx_ttfReader_s* null, %struct.gx_ttfReader_s** %ttr, align 8, !tbaa !41
  %88 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %design_grid60 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %88, i32 0, i32 15
  store i32 0, i32* %design_grid60, align 4, !tbaa !69
  %89 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call61 = call i32 @does_font_need_tt_interpreter(%struct.gs_font_s* %89) #5
  %tobool = icmp ne i32 %call61, 0
  br i1 %tobool, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.end.52
  %90 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %91 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gs_font_s* %91 to %struct.gs_font_type42_s*
  %93 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %94 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %95 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %96 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %call63 = call i32 @gx_attach_tt_interpreter(%struct.gs_font_dir_s* %90, %struct.gs_font_type42_s* %92, %struct.cached_fm_pair_s* %93, %struct.gs_matrix_s* %94, %struct.gs_log2_scale_point_s* %95, i32 %96) #5
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %97 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %97, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  %98 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.then.62
  br label %if.end.73

if.else.67:                                       ; preds = %if.end.52
  %99 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType68 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %99, i32 0, i32 11
  %100 = load i32, i32* %FontType68, align 4, !tbaa !57
  %cmp69 = icmp eq i32 %100, 42
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.else.67
  %101 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %102 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %design_grid71 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %102, i32 0, i32 15
  store i32 %101, i32* %design_grid71, align 4, !tbaa !69
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.else.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.66
  %103 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %103, i32 0, i32 11
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory74, align 8, !tbaa !89
  br label %do.body

do.body:                                          ; preds = %if.end.73
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %104 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %105 = load %struct.cached_fm_pair_s**, %struct.cached_fm_pair_s*** %ppair.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %104, %struct.cached_fm_pair_s** %105, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.65, %if.then.49, %if.then.43, %if.then.26, %if.then.9
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast float* %myy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast float* %myx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare void @gx_compute_ccache_key(%struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32, float*, float*, float*, float*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_purge_fm_pair(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair, i32 %xfont_only) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %xfont_only.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store i32 %xfont_only, i32* %xfont_only.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %xfont = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %0, i32 0, i32 10
  %1 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont, align 8, !tbaa !39
  %cmp = icmp ne %struct.gx_xfont_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %2 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %xfont1 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %2, i32 0, i32 10
  %3 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont1, align 8, !tbaa !39
  %common = getelementptr inbounds %struct.gx_xfont_s, %struct.gx_xfont_s* %3, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gx_xfont_common_s, %struct.gx_xfont_common_s* %common, i32 0, i32 0
  %4 = load %struct.gx_xfont_procs_s*, %struct.gx_xfont_procs_s** %procs, align 8, !tbaa !90
  %release = getelementptr inbounds %struct.gx_xfont_procs_s, %struct.gx_xfont_procs_s* %4, i32 0, i32 4
  %5 = load i32 (%struct.gx_xfont_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_xfont_s*, %struct.gs_memory_s*)** %release, align 8, !tbaa !93
  %6 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %xfont2 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %6, i32 0, i32 10
  %7 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont2, align 8, !tbaa !39
  %8 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %8, i32 0, i32 11
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !89
  %call = call i32 %5(%struct.gx_xfont_s* %7, %struct.gs_memory_s* %9) #5
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %xfont_tried = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %10, i32 0, i32 9
  store i32 0, i32* %xfont_tried, align 4, !tbaa !38
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %xfont3 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %11, i32 0, i32 10
  store %struct.gx_xfont_s* null, %struct.gx_xfont_s** %xfont3, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %13 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %14 = bitcast %struct.cached_fm_pair_s* %13 to i8*
  call void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s* %12, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)* @purge_fm_pair_char, i8* %14) #5
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %16 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  call void @gs_clean_fm_pair_attributes(%struct.gs_font_dir_s* %15, %struct.cached_fm_pair_s* %16) #5
  %17 = load i32, i32* %xfont_only.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.24, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %19, i32 0, i32 11
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 0
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !77
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !10
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 11
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !42
  %stable_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 0
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory8, align 8, !tbaa !77
  %26 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %26, i32 0, i32 1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 1
  %27 = load i64*, i64** %xvalues, align 8, !tbaa !95
  %28 = bitcast i64* %27 to i8*
  call void %22(%struct.gs_memory_s* %25, i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #5
  %29 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %UID9 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %29, i32 0, i32 1
  %xvalues10 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID9, i32 0, i32 1
  store i64* null, i64** %xvalues10, align 8, !tbaa !95
  %30 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %30, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %font, align 8, !tbaa !35
  %31 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %UID11 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %31, i32 0, i32 1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID11, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !36
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %UID12 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %32, i32 0, i32 1
  %xvalues13 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID12, i32 0, i32 1
  store i64* null, i64** %xvalues13, align 8, !tbaa !37
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %34 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %35 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %35, i32 0, i32 4
  %used = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 3
  %call14 = call i32 @fm_pair_remove_from_list(%struct.gs_font_dir_s* %33, %struct.cached_fm_pair_s* %34, i32* %used) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %36, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.4
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.4
  %38 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %39 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %40 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache18 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %40, i32 0, i32 4
  %free = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache18, i32 0, i32 4
  %call19 = call i32 @fm_pair_insert_into_list(%struct.gs_font_dir_s* %38, %struct.cached_fm_pair_s* %39, i32* %free) #5
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %41, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.17
  %43 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache23 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %43, i32 0, i32 4
  %msize = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache23, i32 0, i32 0
  %44 = load i32, i32* %msize, align 4, !tbaa !26
  %dec = add i32 %44, -1
  store i32 %dec, i32* %msize, align 4, !tbaa !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.16
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %cleanup
  %46 = load i32, i32* %retval
  ret i32 %46

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @fm_pair_remove_from_list(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair, i32* %head) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %head.addr = alloca i32*, align 8
  %next9 = alloca %struct.cached_fm_pair_s*, align 8
  %prev15 = alloca %struct.cached_fm_pair_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store i32* %head, i32** %head.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %1 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !16
  %2 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %2, i32 0, i32 12
  %3 = load i32, i32* %index, align 4, !tbaa !31
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %1, i64 %idx.ext
  %4 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cached_fm_pair_s* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %5, i32 0, i32 17
  %6 = load i32, i32* %next, align 4, !tbaa !96
  %7 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %7, i32 0, i32 12
  %8 = load i32, i32* %index1, align 4, !tbaa !31
  %cmp2 = icmp eq i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %9, i32 0, i32 16
  %10 = load i32, i32* %prev, align 4, !tbaa !79
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %11, i32 0, i32 12
  %12 = load i32, i32* %index4, align 4, !tbaa !31
  %cmp5 = icmp ne i32 %10, %12
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i32 -28, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache8, i32 0, i32 1
  %14 = load i32, i32* %mmax, align 4, !tbaa !11
  %15 = load i32*, i32** %head.addr, align 8, !tbaa !1
  store i32 %14, i32* %15, align 4, !tbaa !5
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %16 = bitcast %struct.cached_fm_pair_s** %next9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %17, i32 0, i32 4
  %mdata11 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache10, i32 0, i32 2
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata11, align 8, !tbaa !16
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %next12 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %19, i32 0, i32 17
  %20 = load i32, i32* %next12, align 4, !tbaa !96
  %idx.ext13 = zext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %18, i64 %idx.ext13
  store %struct.cached_fm_pair_s* %add.ptr14, %struct.cached_fm_pair_s** %next9, align 8, !tbaa !1
  %21 = bitcast %struct.cached_fm_pair_s** %prev15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 4
  %mdata17 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache16, i32 0, i32 2
  %23 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata17, align 8, !tbaa !16
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %prev18 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %24, i32 0, i32 16
  %25 = load i32, i32* %prev18, align 4, !tbaa !79
  %idx.ext19 = zext i32 %25 to i64
  %add.ptr20 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %23, i64 %idx.ext19
  store %struct.cached_fm_pair_s* %add.ptr20, %struct.cached_fm_pair_s** %prev15, align 8, !tbaa !1
  %26 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %next9, align 8, !tbaa !1
  %prev21 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %26, i32 0, i32 16
  %27 = load i32, i32* %prev21, align 4, !tbaa !79
  %28 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index22 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %28, i32 0, i32 12
  %29 = load i32, i32* %index22, align 4, !tbaa !31
  %cmp23 = icmp ne i32 %27, %29
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else
  %30 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %prev15, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %30, i32 0, i32 17
  %31 = load i32, i32* %next26, align 4, !tbaa !96
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index27 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %32, i32 0, i32 12
  %33 = load i32, i32* %index27, align 4, !tbaa !31
  %cmp28 = icmp ne i32 %31, %33
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  %34 = load i32*, i32** %head.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index31 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %36, i32 0, i32 12
  %37 = load i32, i32* %index31, align 4, !tbaa !31
  %cmp32 = icmp eq i32 %35, %37
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.30
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %next9, align 8, !tbaa !1
  %index34 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %38, i32 0, i32 12
  %39 = load i32, i32* %index34, align 4, !tbaa !31
  %40 = load i32*, i32** %head.addr, align 8, !tbaa !1
  store i32 %39, i32* %40, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.30
  %41 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %prev15, align 8, !tbaa !1
  %index36 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %41, i32 0, i32 12
  %42 = load i32, i32* %index36, align 4, !tbaa !31
  %43 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %next9, align 8, !tbaa !1
  %prev37 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %43, i32 0, i32 16
  store i32 %42, i32* %prev37, align 4, !tbaa !79
  %44 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %next9, align 8, !tbaa !1
  %index38 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %44, i32 0, i32 12
  %45 = load i32, i32* %index38, align 4, !tbaa !31
  %46 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %prev15, align 8, !tbaa !1
  %next39 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %46, i32 0, i32 17
  store i32 %45, i32* %next39, align 4, !tbaa !96
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.29, %if.then.24
  %47 = bitcast %struct.cached_fm_pair_s** %prev15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.cached_fm_pair_s** %next9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont, %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %cleanup, %if.then.6, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @fm_pair_insert_into_list(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair, i32* %head) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %head.addr = alloca i32*, align 8
  %first = alloca %struct.cached_fm_pair_s*, align 8
  %last = alloca %struct.cached_fm_pair_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store i32* %head, i32** %head.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %1 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !16
  %2 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %2, i32 0, i32 12
  %3 = load i32, i32* %index, align 4, !tbaa !31
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %1, i64 %idx.ext
  %4 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cached_fm_pair_s* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %head.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache1, i32 0, i32 1
  %8 = load i32, i32* %mmax, align 4, !tbaa !11
  %cmp2 = icmp uge i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %9, i32 0, i32 12
  %10 = load i32, i32* %index4, align 4, !tbaa !31
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %11, i32 0, i32 16
  store i32 %10, i32* %prev, align 4, !tbaa !79
  %12 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %12, i32 0, i32 17
  store i32 %10, i32* %next, align 4, !tbaa !96
  %13 = load i32*, i32** %head.addr, align 8, !tbaa !1
  store i32 %10, i32* %13, align 4, !tbaa !5
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %14 = bitcast %struct.cached_fm_pair_s** %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 4
  %mdata6 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache5, i32 0, i32 2
  %16 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata6, align 8, !tbaa !16
  %17 = load i32*, i32** %head.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %idx.ext7 = zext i32 %18 to i64
  %add.ptr8 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %16, i64 %idx.ext7
  store %struct.cached_fm_pair_s* %add.ptr8, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %19 = bitcast %struct.cached_fm_pair_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache9 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %20, i32 0, i32 4
  %mdata10 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache9, i32 0, i32 2
  %21 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata10, align 8, !tbaa !16
  %22 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %prev11 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %22, i32 0, i32 16
  %23 = load i32, i32* %prev11, align 4, !tbaa !79
  %idx.ext12 = zext i32 %23 to i64
  %add.ptr13 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %21, i64 %idx.ext12
  store %struct.cached_fm_pair_s* %add.ptr13, %struct.cached_fm_pair_s** %last, align 8, !tbaa !1
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %prev14 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %24, i32 0, i32 16
  %25 = load i32, i32* %prev14, align 4, !tbaa !79
  %26 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %last, align 8, !tbaa !1
  %index15 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %26, i32 0, i32 12
  %27 = load i32, i32* %index15, align 4, !tbaa !31
  %cmp16 = icmp ne i32 %25, %27
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else
  %28 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %last, align 8, !tbaa !1
  %next19 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %28, i32 0, i32 17
  %29 = load i32, i32* %next19, align 4, !tbaa !96
  %30 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %index20 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %30, i32 0, i32 12
  %31 = load i32, i32* %index20, align 4, !tbaa !31
  %cmp21 = icmp ne i32 %29, %31
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %index24 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %32, i32 0, i32 12
  %33 = load i32, i32* %index24, align 4, !tbaa !31
  %34 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %next25 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %34, i32 0, i32 17
  store i32 %33, i32* %next25, align 4, !tbaa !96
  %35 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %last, align 8, !tbaa !1
  %index26 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %35, i32 0, i32 12
  %36 = load i32, i32* %index26, align 4, !tbaa !31
  %37 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %prev27 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %37, i32 0, i32 16
  store i32 %36, i32* %prev27, align 4, !tbaa !79
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index28 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %38, i32 0, i32 12
  %39 = load i32, i32* %index28, align 4, !tbaa !31
  %40 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %last, align 8, !tbaa !1
  %next29 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %40, i32 0, i32 17
  store i32 %39, i32* %next29, align 4, !tbaa !96
  %41 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %first, align 8, !tbaa !1
  %prev30 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %41, i32 0, i32 16
  store i32 %39, i32* %prev30, align 4, !tbaa !79
  %42 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index31 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %42, i32 0, i32 12
  %43 = load i32, i32* %index31, align 4, !tbaa !31
  %44 = load i32*, i32** %head.addr, align 8, !tbaa !1
  store i32 %43, i32* %44, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.17
  %45 = bitcast %struct.cached_fm_pair_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.cached_fm_pair_s** %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %if.then.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %cleanup, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @uid_copy(%struct.gs_uid_s*, %struct.gs_memory_s*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_touch_fm_pair(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %0 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %0, i32 0, i32 12
  %1 = load i32, i32* %index, align 4, !tbaa !31
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 4
  %used = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 3
  %3 = load i32, i32* %used, align 4, !tbaa !27
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %6 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i32 0, i32 4
  %used2 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache1, i32 0, i32 3
  %call = call i32 @fm_pair_remove_from_list(%struct.gs_font_dir_s* %5, %struct.cached_fm_pair_s* %6, i32* %used2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %fmcache5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 4
  %used6 = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache5, i32 0, i32 3
  %call7 = call i32 @fm_pair_insert_into_list(%struct.gs_font_dir_s* %10, %struct.cached_fm_pair_s* %11, i32* %used6) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  br label %return

if.end.8:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %cleanup
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @gs_clean_fm_pair(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %0, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %font, align 8, !tbaa !35
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %2 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  call void @gs_clean_fm_pair_attributes(%struct.gs_font_dir_s* %1, %struct.cached_fm_pair_s* %2) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gs_clean_fm_pair_attributes(%struct.gs_font_dir_s* %dir, %struct.cached_fm_pair_s* %pair) #4 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %0 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %0, i32 0, i32 14
  %1 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr, align 8, !tbaa !41
  %tobool = icmp ne %struct.gx_ttfReader_s* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr1 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %2, i32 0, i32 14
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %ttr1, align 8, !tbaa !41
  call void @gx_ttfReader__destroy(%struct.gx_ttfReader_s* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttr2 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %4, i32 0, i32 14
  store %struct.gx_ttfReader_s* null, %struct.gx_ttfReader_s** %ttr2, align 8, !tbaa !41
  %5 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %5, i32 0, i32 13
  %6 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !40
  %tobool3 = icmp ne %struct.ttfFont_s* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf5 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %7, i32 0, i32 13
  %8 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf5, align 8, !tbaa !40
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  call void @ttfFont__destroy(%struct.ttfFont_s* %8, %struct.gs_font_dir_s* %9) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %ttf7 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %10, i32 0, i32 13
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %ttf7, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @purge_fm_pair_char(%struct.gs_memory_s* %mem, %struct.cached_char_s* %cc, i8* %vpair) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %vpair.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store i8* %vpair, i8** %vpair.addr, align 8, !tbaa !1
  %0 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %0, i32 0, i32 6
  %1 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !48
  %2 = load i8*, i8** %vpair.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.cached_fm_pair_s*
  %cmp = icmp eq %struct.cached_fm_pair_s* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_alloc_char_bits(%struct.gs_font_dir_s* %dir, %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s* %dev2, i16 zeroext %iwidth, i16 zeroext %iheight, %struct.gs_log2_scale_point_s* %pscale, i32 %depth, %struct.cached_char_s** %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %dev2.addr = alloca %struct.gx_device_memory_s*, align 8
  %iwidth.addr = alloca i16, align 2
  %iheight.addr = alloca i16, align 2
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %depth.addr = alloca i32, align 4
  %pcc.addr = alloca %struct.cached_char_s**, align 8
  %log2_xscale = alloca i32, align 4
  %log2_yscale = alloca i32, align 4
  %log2_depth = alloca i32, align 4
  %nwidth_bits = alloca i32, align 4
  %isize = alloca i64, align 8
  %icdsize = alloca i64, align 8
  %isize2 = alloca i64, align 8
  %iraster = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s, align 8
  %pdev = alloca %struct.gx_device_memory_s*, align 8
  %pdev2 = alloca %struct.gx_device_memory_s*, align 8
  %HWResolution0 = alloca float, align 4
  %HWResolution1 = alloca float, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rc = alloca %struct.rc_header_s, align 8
  %retained = alloca i32, align 4
  %target20 = alloca %struct.gx_device_s*, align 8
  %rc71 = alloca %struct.rc_header_s, align 8
  %bits = alloca i8*, align 8
  %bsize = alloca i64, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %dev2, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  store i16 %iwidth, i16* %iwidth.addr, align 2, !tbaa !97
  store i16 %iheight, i16* %iheight.addr, align 2, !tbaa !97
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.cached_char_s** %pcc, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %log2_xscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !98
  store i32 %2, i32* %log2_xscale, align 4, !tbaa !5
  %3 = bitcast i32* %log2_yscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !100
  store i32 %5, i32* %log2_yscale, align 4, !tbaa !5
  %6 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 @ilog2(i32 %7) #5
  store i32 %call, i32* %log2_depth, align 4, !tbaa !5
  %8 = bitcast i32* %nwidth_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i16, i16* %iwidth.addr, align 2, !tbaa !97
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %log2_xscale, align 4, !tbaa !5
  %shr = ashr i32 %conv, %10
  %11 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl = shl i32 %shr, %11
  store i32 %shl, i32* %nwidth_bits, align 4, !tbaa !5
  %12 = bitcast i64* %isize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %icdsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %isize2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %iraster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %17) #1
  %18 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %19, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_memory_s** %pdev2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast float* %HWResolution0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store float 7.200000e+01, float* %HWResolution0, align 4, !tbaa !70
  %22 = bitcast float* %HWResolution1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store float 7.200000e+01, float* %HWResolution1, align 4, !tbaa !70
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* null, %struct.cached_char_s** %24, align 8, !tbaa !1
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %25, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 3
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory, align 8, !tbaa !101
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target, align 8, !tbaa !118
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %27 = load float, float* %arrayidx, align 4, !tbaa !70
  store float %27, float* %HWResolution0, align 4, !tbaa !70
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %29 = load float, float* %arrayidx3, align 4, !tbaa !70
  store float %29, float* %HWResolution1, align 4, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gx_device_memory_s* %30, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ %31, %cond.true ], [ %32, %cond.false ]
  store %struct.gx_device_memory_s* %cond, %struct.gx_device_memory_s** %pdev2, align 8, !tbaa !1
  %33 = load i32, i32* %nwidth_bits, align 4, !tbaa !5
  %add = add i32 %33, 63
  %shr6 = lshr i32 %add, 6
  %shl7 = shl i32 %shr6, 3
  store i32 %shl7, i32* %iraster, align 4, !tbaa !5
  %34 = load i32, i32* %iraster, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %34, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %cond.end
  %35 = load i16, i16* %iheight.addr, align 2, !tbaa !97
  %conv10 = zext i16 %35 to i32
  %36 = load i32, i32* %log2_yscale, align 4, !tbaa !5
  %shr11 = ashr i32 %conv10, %36
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 5
  %upper = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 12
  %38 = load i32, i32* %upper, align 4, !tbaa !22
  %39 = load i32, i32* %iraster, align 4, !tbaa !5
  %div = udiv i32 %38, %39
  %cmp12 = icmp ugt i32 %shr11, %div
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %land.lhs.true, %cond.end
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.gx_device_memory_s* %40, null
  br i1 %cmp16, label %if.then.18, label %if.else.70

if.then.18:                                       ; preds = %if.end.15
  %41 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.lifetime.start(i64 24, i8* %41) #1
  %42 = bitcast i32* %retained to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %retained19 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 8
  %44 = load i32, i32* %retained19, align 4, !tbaa !119
  store i32 %44, i32* %retained, align 4, !tbaa !5
  %45 = bitcast %struct.gx_device_s** %target20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %target21 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 43
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %target21, align 8, !tbaa !118
  store %struct.gx_device_s* %47, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %rc22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 7
  %49 = bitcast %struct.rc_header_s* %rc to i8*
  %50 = bitcast %struct.rc_header_s* %rc22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 8, i1 false), !tbaa.struct !120
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !101
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %51, %struct.gs_memory_s* %53, %struct.gx_device_s* %54) #5
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.18
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %55, null
  br i1 %tobool, label %if.then.25, label %if.end.55

if.then.25:                                       ; preds = %do.body.24
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %rc30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc30, i32 0, i32 0
  %57 = load i64, i64* %ref_count, align 8, !tbaa !121
  %add31 = add nsw i64 %57, -1
  store i64 %add31, i64* %ref_count, align 8, !tbaa !121
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end.29
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %rc34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 7
  %ref_count35 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 0
  %59 = load i64, i64* %ref_count35, align 8, !tbaa !121
  %tobool36 = icmp ne i64 %59, 0
  br i1 %tobool36, label %if.else.50, label %if.then.37

if.then.37:                                       ; preds = %do.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %rc42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc42, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !123
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %rc43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 7
  %memory44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 1
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !124
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_s* %64 to i8*
  call void %61(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.end.41
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  br label %if.end.54

if.else.50:                                       ; preds = %do.end.33
  br label %do.body.51

do.body.51:                                       ; preds = %if.else.50
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.end.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.body.24
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %66 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %rc58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %66, i32 0, i32 7
  %67 = bitcast %struct.rc_header_s* %rc58 to i8*
  %68 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 24, i32 8, i1 false), !tbaa.struct !120
  %69 = load i32, i32* %retained, align 4, !tbaa !5
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %retained59 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %70, i32 0, i32 8
  store i32 %69, i32* %retained59, align 4, !tbaa !119
  %71 = load i16, i16* %iwidth.addr, align 2, !tbaa !97
  %conv60 = zext i16 %71 to i32
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 13
  store i32 %conv60, i32* %width, align 4, !tbaa !125
  %73 = load i16, i16* %iheight.addr, align 2, !tbaa !97
  %conv61 = zext i16 %73 to i32
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 14
  store i32 %conv61, i32* %height, align 4, !tbaa !126
  %75 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %76 = bitcast %struct.gx_device_memory_s* %75 to %struct.gx_device_s*
  %call62 = call i32 @gx_device_raster(%struct.gx_device_s* %76, i32 1) #5
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 44
  store i32 %call62, i32* %raster, align 4, !tbaa !127
  %78 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %width63 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 13
  %80 = load i32, i32* %width63, align 4, !tbaa !125
  %81 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %height64 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height64, align 4, !tbaa !126
  %call65 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %78, i32 %80, i32 %82, i64* %isize) #5
  %83 = load float, float* %HWResolution0, align 4, !tbaa !70
  %84 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %HWResolution66 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %84, i32 0, i32 22
  %arrayidx67 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution66, i32 0, i64 0
  store float %83, float* %arrayidx67, align 4, !tbaa !70
  %85 = load float, float* %HWResolution1, align 4, !tbaa !70
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %HWResolution68 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %86, i32 0, i32 22
  %arrayidx69 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution68, i32 0, i64 1
  store float %85, float* %arrayidx69, align 4, !tbaa !70
  %87 = bitcast %struct.gx_device_s** %target20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %retained to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.lifetime.end(i64 24, i8* %89) #1
  br label %if.end.104

if.else.70:                                       ; preds = %if.end.15
  %90 = bitcast %struct.rc_header_s* %rc71 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %90) #1
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %rc72 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 7
  %92 = bitcast %struct.rc_header_s* %rc71 to i8*
  %93 = bitcast %struct.rc_header_s* %rc72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 24, i32 8, i1 false), !tbaa.struct !120
  %94 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %95 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory73, align 8, !tbaa !101
  %97 = load i32, i32* %depth.addr, align 4, !tbaa !5
  call void @gs_make_mem_alpha_device(%struct.gx_device_memory_s* %94, %struct.gs_memory_s* %96, %struct.gx_device_s* null, i32 %97) #5
  %98 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %rc74 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %98, i32 0, i32 7
  %99 = bitcast %struct.rc_header_s* %rc74 to i8*
  %100 = bitcast %struct.rc_header_s* %rc71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 24, i32 8, i1 false), !tbaa.struct !120
  %101 = load i16, i16* %iwidth.addr, align 2, !tbaa !97
  %conv75 = zext i16 %101 to i32
  %102 = load i32, i32* %log2_xscale, align 4, !tbaa !5
  %shr76 = ashr i32 %conv75, %102
  %103 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %width77 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %103, i32 0, i32 13
  store i32 %shr76, i32* %width77, align 4, !tbaa !125
  %104 = load i16, i16* %iheight.addr, align 2, !tbaa !97
  %conv78 = zext i16 %104 to i32
  %105 = load i32, i32* %log2_yscale, align 4, !tbaa !5
  %shr79 = ashr i32 %conv78, %105
  %106 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %height80 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %106, i32 0, i32 14
  store i32 %shr79, i32* %height80, align 4, !tbaa !126
  %107 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %rc81 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %107, i32 0, i32 7
  %108 = bitcast %struct.rc_header_s* %rc71 to i8*
  %109 = bitcast %struct.rc_header_s* %rc81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 24, i32 8, i1 false), !tbaa.struct !120
  %110 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %111 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %memory82 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %111, i32 0, i32 3
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory82, align 8, !tbaa !101
  %113 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %114 = bitcast %struct.gx_device_memory_s* %113 to %struct.gx_device_s*
  %115 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %116 = load i32, i32* %depth.addr, align 4, !tbaa !5
  call void @gs_make_mem_abuf_device(%struct.gx_device_memory_s* %110, %struct.gs_memory_s* %112, %struct.gx_device_s* %114, %struct.gs_log2_scale_point_s* %115, i32 %116, i32 0, i32 0) #5
  %117 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %rc83 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %117, i32 0, i32 7
  %118 = bitcast %struct.rc_header_s* %rc83 to i8*
  %119 = bitcast %struct.rc_header_s* %rc71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 24, i32 8, i1 false), !tbaa.struct !120
  %120 = load i16, i16* %iwidth.addr, align 2, !tbaa !97
  %conv84 = zext i16 %120 to i32
  %121 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %width85 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %121, i32 0, i32 13
  store i32 %conv84, i32* %width85, align 4, !tbaa !125
  %122 = load i32, i32* %log2_yscale, align 4, !tbaa !5
  %shl86 = shl i32 2, %122
  %123 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height87 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %123, i32 0, i32 14
  store i32 %shl86, i32* %height87, align 4, !tbaa !126
  %124 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %125 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %width88 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %125, i32 0, i32 13
  %126 = load i32, i32* %width88, align 4, !tbaa !125
  %127 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height89 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %127, i32 0, i32 14
  %128 = load i32, i32* %height89, align 4, !tbaa !126
  %call90 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %124, i32 %126, i32 %128, i64* %isize) #5
  %129 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %130 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %width91 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %130, i32 0, i32 13
  %131 = load i32, i32* %width91, align 4, !tbaa !125
  %132 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %height92 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %132, i32 0, i32 14
  %133 = load i32, i32* %height92, align 4, !tbaa !126
  %call93 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %129, i32 %131, i32 %133, i64* %isize2) #5
  %134 = load i64, i64* %isize2, align 8, !tbaa !82
  %135 = load i64, i64* %isize, align 8, !tbaa !82
  %add94 = add i64 %135, %134
  store i64 %add94, i64* %isize, align 8, !tbaa !82
  %136 = load float, float* %HWResolution0, align 4, !tbaa !70
  %137 = load i32, i32* %log2_xscale, align 4, !tbaa !5
  %shr95 = ashr i32 1, %137
  %conv96 = sitofp i32 %shr95 to float
  %mul = fmul float %136, %conv96
  %138 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %HWResolution97 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %138, i32 0, i32 22
  %arrayidx98 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution97, i32 0, i64 0
  store float %mul, float* %arrayidx98, align 4, !tbaa !70
  %139 = load float, float* %HWResolution1, align 4, !tbaa !70
  %140 = load i32, i32* %log2_yscale, align 4, !tbaa !5
  %shr99 = ashr i32 1, %140
  %conv100 = sitofp i32 %shr99 to float
  %mul101 = fmul float %139, %conv100
  %141 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %HWResolution102 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %141, i32 0, i32 22
  %arrayidx103 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution102, i32 0, i64 1
  store float %mul101, float* %arrayidx103, align 4, !tbaa !70
  %142 = bitcast %struct.rc_header_s* %rc71 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %142) #1
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.70, %do.end.57
  %143 = load i64, i64* %isize, align 8, !tbaa !82
  %add105 = add i64 %143, 104
  store i64 %add105, i64* %icdsize, align 8, !tbaa !82
  %144 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %145 = load i64, i64* %icdsize, align 8, !tbaa !82
  %call106 = call i32 @alloc_char(%struct.gs_font_dir_s* %144, i64 %145, %struct.cached_char_s** %cc) #5
  store i32 %call106, i32* %code, align 4, !tbaa !5
  %146 = load i32, i32* %code, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %146, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.104
  %147 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.110:                                       ; preds = %if.end.104
  %148 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %149 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %148, %struct.cached_char_s** %149, align 8, !tbaa !1
  %150 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp111 = icmp eq %struct.cached_char_s* %150, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %if.end.110
  br label %do.body.115

do.body.115:                                      ; preds = %if.end.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  %151 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %152 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %152, i32 0, i32 0
  %depth118 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  store i32 %151, i32* %depth118, align 4, !tbaa !128
  %153 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %xglyph = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %153, i32 0, i32 14
  store i64 -1, i64* %xglyph, align 8, !tbaa !129
  %154 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev2, align 8, !tbaa !1
  %width119 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %154, i32 0, i32 13
  %155 = load i32, i32* %width119, align 4, !tbaa !125
  %conv120 = trunc i32 %155 to i16
  %156 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %width121 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %156, i32 0, i32 1
  store i16 %conv120, i16* %width121, align 2, !tbaa !130
  %157 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev2, align 8, !tbaa !1
  %height122 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %157, i32 0, i32 14
  %158 = load i32, i32* %height122, align 4, !tbaa !126
  %conv123 = trunc i32 %158 to i16
  %159 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %height124 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %159, i32 0, i32 2
  store i16 %conv123, i16* %height124, align 2, !tbaa !131
  %160 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %160, i32 0, i32 3
  store i16 0, i16* %shift, align 2, !tbaa !132
  %161 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev2, align 8, !tbaa !1
  %162 = bitcast %struct.gx_device_memory_s* %161 to %struct.gx_device_s*
  %call125 = call i32 @gx_device_raster(%struct.gx_device_s* %162, i32 1) #5
  %conv126 = trunc i32 %call125 to i16
  %163 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %raster127 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %163, i32 0, i32 4
  store i16 %conv126, i16* %raster127, align 2, !tbaa !133
  %164 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %164, i32 0, i32 6
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !48
  %165 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %165, i32 0, i32 5
  store i64 0, i64* %id, align 8, !tbaa !134
  %166 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %subpix_origin = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %166, i32 0, i32 13
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin, i32 0, i32 1
  store i32 0, i32* %y128, align 4, !tbaa !135
  %167 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %subpix_origin129 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %167, i32 0, i32 13
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %subpix_origin129, i32 0, i32 0
  store i32 0, i32* %x130, align 4, !tbaa !136
  %168 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %linked = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %168, i32 0, i32 7
  store i32 0, i32* %linked, align 4, !tbaa !55
  %169 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %tobool131 = icmp ne %struct.gx_device_memory_s* %169, null
  br i1 %tobool131, label %if.then.132, label %if.else.143

if.then.132:                                      ; preds = %do.end.117
  %170 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %172 = bitcast %struct.cached_char_s* %171 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %172, i64 104
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  %173 = bitcast i64* %bsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %175 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %width133 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %175, i32 0, i32 13
  %176 = load i32, i32* %width133, align 4, !tbaa !125
  %177 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %height134 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %177, i32 0, i32 14
  %178 = load i32, i32* %height134, align 4, !tbaa !126
  %call135 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %174, i32 %176, i32 %178, i64* %bsize) #5
  %179 = load i8*, i8** %bits, align 8, !tbaa !1
  %180 = load i64, i64* %bsize, align 8, !tbaa !82
  %call136 = call i8* @memset(i8* %179, i32 0, i64 %180) #6
  %181 = load i8*, i8** %bits, align 8, !tbaa !1
  %182 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %182, i32 0, i32 45
  store i8* %181, i8** %base, align 8, !tbaa !137
  %183 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %183, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %184 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !138
  %185 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev2.addr, align 8, !tbaa !1
  %186 = bitcast %struct.gx_device_memory_s* %185 to %struct.gx_device_s*
  %call137 = call i32 %184(%struct.gx_device_s* %186) #5
  %187 = load i8*, i8** %bits, align 8, !tbaa !1
  %188 = load i64, i64* %bsize, align 8, !tbaa !82
  %add.ptr138 = getelementptr inbounds i8, i8* %187, i64 %188
  %189 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %base139 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %189, i32 0, i32 45
  store i8* %add.ptr138, i8** %base139, align 8, !tbaa !137
  %190 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs140 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %190, i32 0, i32 42
  %open_device141 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs140, i32 0, i32 0
  %191 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device141, align 8, !tbaa !138
  %192 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %193 = bitcast %struct.gx_device_memory_s* %192 to %struct.gx_device_s*
  %call142 = call i32 %191(%struct.gx_device_s* %193) #5
  %194 = bitcast i64* %bsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  br label %if.end.147

if.else.143:                                      ; preds = %do.end.117
  %196 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %tobool144 = icmp ne %struct.gx_device_memory_s* %196, null
  br i1 %tobool144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.else.143
  %197 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %198 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  call void @gx_open_cache_device(%struct.gx_device_memory_s* %197, %struct.cached_char_s* %198) #5
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.else.143
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.132
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.147, %if.then.113, %if.then.109, %do.end
  %199 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast float* %HWResolution1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast float* %HWResolution0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast %struct.gx_device_memory_s** %pdev2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %204) #1
  %205 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %iraster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i64* %isize2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i64* %icdsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %isize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %nwidth_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %log2_yscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %log2_xscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = load i32, i32* %retval
  ret i32 %214
}

declare i32 @ilog2(i32) #3

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #3

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #3

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #3

declare void @gs_make_mem_alpha_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*, i32) #3

declare void @gs_make_mem_abuf_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*, %struct.gs_log2_scale_point_s*, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @alloc_char(%struct.gs_font_dir_s* %dir, i64 %icdsize, %struct.cached_char_s** %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %icdsize.addr = alloca i64, align 8
  %pcc.addr = alloca %struct.cached_char_s**, align 8
  %cc = alloca %struct.cached_char_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_memory_s*, align 8
  %cck_prev = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %cck = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %cksize = alloca i32, align 4
  %tsize = alloca i32, align 4
  %cdata = alloca i8*, align 8
  %cck_init = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %cck48 = alloca %struct.gx_bits_cache_chunk_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i64 %icdsize, i64* %icdsize.addr, align 8, !tbaa !82
  store %struct.cached_char_s** %pcc, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %3 = load i64, i64* %icdsize.addr, align 8, !tbaa !82
  %call = call i32 @alloc_char_in_chunk(%struct.gs_font_dir_s* %2, i64 %3, %struct.cached_char_s** %cc) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %5 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %4, %struct.cached_char_s** %5, align 8, !tbaa !1
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end:                                           ; preds = %entry
  %8 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.cached_char_s* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.76

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 5
  %bspace = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 10
  %10 = load i32, i32* %bspace, align 4, !tbaa !30
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 5
  %bmax = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache3, i32 0, i32 8
  %12 = load i32, i32* %bmax, align 4, !tbaa !19
  %cmp4 = icmp ult i32 %10, %12
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 5
  %bits_memory = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache6, i32 0, i32 5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bits_memory, align 8, !tbaa !18
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = bitcast %struct.gx_bits_cache_chunk_s** %cck_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %17, i32 0, i32 5
  %chunks = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache7, i32 0, i32 0
  %18 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !51
  store %struct.gx_bits_cache_chunk_s* %18, %struct.gx_bits_cache_chunk_s** %cck_prev, align 8, !tbaa !1
  %19 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %cksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %21, i32 0, i32 5
  %bmax9 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache8, i32 0, i32 8
  %22 = load i32, i32* %bmax9, align 4, !tbaa !19
  %div = udiv i32 %22, 5
  %add = add i32 %div, 1
  store i32 %add, i32* %cksize, align 4, !tbaa !5
  %23 = bitcast i32* %tsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %24, i32 0, i32 5
  %bmax11 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache10, i32 0, i32 8
  %25 = load i32, i32* %bmax11, align 4, !tbaa !19
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %26, i32 0, i32 5
  %bspace13 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache12, i32 0, i32 10
  %27 = load i32, i32* %bspace13, align 4, !tbaa !30
  %sub = sub i32 %25, %27
  store i32 %sub, i32* %tsize, align 4, !tbaa !5
  %28 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i32, i32* %cksize, align 4, !tbaa !5
  %30 = load i32, i32* %tsize, align 4, !tbaa !5
  %cmp14 = icmp ugt i32 %29, %30
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.5
  %31 = load i32, i32* %tsize, align 4, !tbaa !5
  store i32 %31, i32* %cksize, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.5
  %32 = load i64, i64* %icdsize.addr, align 8, !tbaa !82
  %add17 = add i64 %32, 8
  %33 = load i32, i32* %cksize, align 4, !tbaa !5
  %conv = zext i32 %33 to i64
  %cmp18 = icmp ugt i64 %add17, %conv
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %35 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !25
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call22 = call i8* %35(%struct.gs_memory_s* %36, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %37 = bitcast i8* %call22 to %struct.gx_bits_cache_chunk_s*
  store %struct.gx_bits_cache_chunk_s* %37, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %38 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gx_bits_cache_chunk_s* %38, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_struct_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 13
  %40 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array_immovable, align 8, !tbaa !139
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %42 = load i32, i32* %cksize, align 4, !tbaa !5
  %call28 = call i8* %40(%struct.gs_memory_s* %41, i32 %42, %struct.gs_memory_struct_type_s* @st_font_cache_bytes, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)) #5
  store i8* %call28, i8** %cdata, align 8, !tbaa !1
  %43 = load i8*, i8** %cdata, align 8, !tbaa !1
  %cmp29 = icmp eq i8* %43, null
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.26
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !10
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %47 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %48 = bitcast %struct.gx_bits_cache_chunk_s* %47 to i8*
  call void %45(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  %49 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %50 = load i8*, i8** %cdata, align 8, !tbaa !1
  %51 = load i32, i32* %cksize, align 4, !tbaa !5
  call void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s* %49, i8* %50, i32 %51) #5
  %52 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck_prev, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %52, i32 0, i32 0
  %53 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %next, align 8, !tbaa !140
  %54 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %next34 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %54, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %53, %struct.gx_bits_cache_chunk_s** %next34, align 8, !tbaa !140
  %55 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %56 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck_prev, align 8, !tbaa !1
  %next35 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %56, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %55, %struct.gx_bits_cache_chunk_s** %next35, align 8, !tbaa !140
  %57 = load i32, i32* %cksize, align 4, !tbaa !5
  %58 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %58, i32 0, i32 5
  %bspace37 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache36, i32 0, i32 10
  %59 = load i32, i32* %bspace37, align 4, !tbaa !30
  %add38 = add i32 %59, %57
  store i32 %add38, i32* %bspace37, align 4, !tbaa !30
  %60 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %61 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %61, i32 0, i32 5
  %chunks40 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache39, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %60, %struct.gx_bits_cache_chunk_s** %chunks40, align 8, !tbaa !51
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then.25, %do.end
  %62 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %tsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %cksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.gx_bits_cache_chunk_s** %cck_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.77 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.else:                                          ; preds = %if.then.2
  %68 = bitcast %struct.gx_bits_cache_chunk_s** %cck_init to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache46 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %69, i32 0, i32 5
  %chunks47 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache46, i32 0, i32 0
  %70 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunks47, align 8, !tbaa !51
  store %struct.gx_bits_cache_chunk_s* %70, %struct.gx_bits_cache_chunk_s** %cck_init, align 8, !tbaa !1
  %71 = bitcast %struct.gx_bits_cache_chunk_s** %cck48 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck_init, align 8, !tbaa !1
  store %struct.gx_bits_cache_chunk_s* %72, %struct.gx_bits_cache_chunk_s** %cck48, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.else
  %73 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck48, align 8, !tbaa !1
  %next49 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %73, i32 0, i32 0
  %74 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %next49, align 8, !tbaa !140
  store %struct.gx_bits_cache_chunk_s* %74, %struct.gx_bits_cache_chunk_s** %cck48, align 8, !tbaa !1
  %75 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache50 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %75, i32 0, i32 5
  %chunks51 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache50, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %74, %struct.gx_bits_cache_chunk_s** %chunks51, align 8, !tbaa !51
  %76 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck_init, align 8, !tbaa !1
  %cmp52 = icmp ne %struct.gx_bits_cache_chunk_s* %74, %76
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %77 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache54 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %77, i32 0, i32 5
  %cnext = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache54, i32 0, i32 1
  store i32 0, i32* %cnext, align 4, !tbaa !54
  %78 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %79 = load i64, i64* %icdsize.addr, align 8, !tbaa !82
  %call55 = call i32 @alloc_char_in_chunk(%struct.gs_font_dir_s* %78, i64 %79, %struct.cached_char_s** %cc) #5
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %80, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.body
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.59:                                        ; preds = %while.body
  %82 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %cmp60 = icmp ne %struct.cached_char_s* %82, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %83 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %84 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %83, %struct.cached_char_s** %84, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.63:                                        ; preds = %if.end.59
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %while.end, %if.then.62, %if.then.58
  %85 = bitcast %struct.gx_bits_cache_chunk_s** %cck48 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gx_bits_cache_chunk_s** %cck_init to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %cleanup.dest.66 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.66, label %cleanup.77 [
    i32 0, label %cleanup.cont.67
  ]

cleanup.cont.67:                                  ; preds = %cleanup.64
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont.67, %cleanup.cont
  %87 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache69 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %87, i32 0, i32 5
  %cnext70 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache69, i32 0, i32 1
  store i32 0, i32* %cnext70, align 4, !tbaa !54
  %88 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %89 = load i64, i64* %icdsize.addr, align 8, !tbaa !82
  %call71 = call i32 @alloc_char_in_chunk(%struct.gs_font_dir_s* %88, i64 %89, %struct.cached_char_s** %cc) #5
  store i32 %call71, i32* %code, align 4, !tbaa !5
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %90, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  %91 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.75:                                        ; preds = %if.end.68
  %92 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !1
  %93 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %92, %struct.cached_char_s** %93, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %if.end.76, %if.then.74, %cleanup.64, %cleanup, %if.then
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.cached_char_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define void @gx_open_cache_device(%struct.gx_device_memory_s* %dev, %struct.cached_char_s* %cc) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %bits = alloca i8*, align 8
  %bsize = alloca i64, align 8
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cached_char_s* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 104
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  %3 = bitcast i64* %bsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 13
  %6 = load i32, i32* %width, align 4, !tbaa !125
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 14
  %8 = load i32, i32* %height, align 4, !tbaa !126
  %call = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %4, i32 %6, i32 %8, i64* %bsize) #5
  %9 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %9, i32 0, i32 1
  %10 = load i16, i16* %width1, align 2, !tbaa !130
  %conv = zext i16 %10 to i32
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 13
  store i32 %conv, i32* %width2, align 4, !tbaa !125
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %12, i32 0, i32 2
  %13 = load i16, i16* %height3, align 2, !tbaa !131
  %conv4 = zext i16 %13 to i32
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 14
  store i32 %conv4, i32* %height5, align 4, !tbaa !126
  %15 = load i8*, i8** %bits, align 8, !tbaa !1
  %16 = load i64, i64* %bsize, align 8, !tbaa !82
  %call6 = call i8* @memset(i8* %15, i32 0, i64 %16) #6
  %17 = load i8*, i8** %bits, align 8, !tbaa !1
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 45
  store i8* %17, i8** %base, align 8, !tbaa !137
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %20 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !138
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_memory_s* %21 to %struct.gx_device_s*
  %call7 = call i32 %20(%struct.gx_device_s* %22) #5
  %23 = bitcast i64* %bsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

declare void @gx_bits_cache_free(%struct.gx_bits_cache_s*, %struct.gx_cached_bits_head_s*, %struct.gx_bits_cache_chunk_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_add_cached_char(%struct.gs_font_dir_s* %dir, %struct.gx_device_memory_s* %dev, %struct.cached_char_s* %cc, %struct.cached_fm_pair_s* %pair, %struct.gs_log2_scale_point_s* %pscale) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %chi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_memory_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %2 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !141
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_memory_s* %3 to %struct.gx_device_s*
  %call = call i32 %2(%struct.gx_device_s* %4) #5
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %6 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_memory_s* %7 to %struct.gx_device_s*
  %call1 = call i32 @gs_device_is_abuf(%struct.gx_device_s* %8) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_log2_scale_point_s* [ @gx_add_cached_char.no_scale, %cond.true ], [ %9, %cond.false ]
  call void @gx_add_char_bits(%struct.gs_font_dir_s* %5, %struct.cached_char_s* %6, %struct.gs_log2_scale_point_s* %cond) #5
  br label %if.end

if.end:                                           ; preds = %cond.end, %do.end
  %10 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %11, i32 0, i32 8
  %12 = load i64, i64* %code, align 8, !tbaa !43
  %conv = trunc i64 %12 to i32
  %mul = mul i32 %conv, 59
  %13 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %13, i32 0, i32 3
  %14 = load i32, i32* %hash, align 4, !tbaa !49
  %mul2 = mul i32 %14, 73
  %add = add i32 %mul, %mul2
  store i32 %add, i32* %chi, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 7
  %16 = load i32, i32* %table_mask, align 4, !tbaa !24
  %17 = load i32, i32* %chi, align 4, !tbaa !5
  %and = and i32 %17, %16
  store i32 %and, i32* %chi, align 4, !tbaa !5
  %idxprom = zext i32 %and to i64
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache3, i32 0, i32 6
  %19 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %19, i64 %idxprom
  %20 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.cached_char_s* %20, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %chi, align 4, !tbaa !5
  %inc = add i32 %21, 1
  store i32 %inc, i32* %chi, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %23 = load i32, i32* %chi, align 4, !tbaa !5
  %idxprom6 = zext i32 %23 to i64
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %24, i32 0, i32 5
  %table8 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache7, i32 0, i32 6
  %25 = load %struct.cached_char_s**, %struct.cached_char_s*** %table8, align 8, !tbaa !23
  %arrayidx9 = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %25, i64 %idxprom6
  store %struct.cached_char_s* %22, %struct.cached_char_s** %arrayidx9, align 8, !tbaa !1
  %26 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair10 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %26, i32 0, i32 6
  %27 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair10, align 8, !tbaa !48
  %cmp11 = icmp eq %struct.cached_fm_pair_s* %27, null
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  %28 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %29 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair14 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %29, i32 0, i32 6
  store %struct.cached_fm_pair_s* %28, %struct.cached_fm_pair_s** %pair14, align 8, !tbaa !48
  br label %if.end.20

if.else:                                          ; preds = %while.end
  %30 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair15 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %30, i32 0, i32 6
  %31 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair15, align 8, !tbaa !48
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.cached_fm_pair_s* %31, %32
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.13
  %33 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %linked = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %33, i32 0, i32 7
  store i32 1, i32* %linked, align 4, !tbaa !55
  %34 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %35 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair21 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %35, i32 0, i32 6
  store %struct.cached_fm_pair_s* %34, %struct.cached_fm_pair_s** %pair21, align 8, !tbaa !48
  %index = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %34, i32 0, i32 12
  %36 = load i32, i32* %index, align 4, !tbaa !31
  %37 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair_index = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %37, i32 0, i32 12
  store i32 %36, i32* %pair_index, align 4, !tbaa !142
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8, !tbaa !1
  %num_chars = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %38, i32 0, i32 8
  %39 = load i32, i32* %num_chars, align 4, !tbaa !56
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %num_chars, align 4, !tbaa !56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18
  %40 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont, %cleanup
  %41 = load i32, i32* %retval
  ret i32 %41

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @gx_add_char_bits(%struct.gs_font_dir_s* %dir, %struct.cached_char_s* %cc, %struct.gs_log2_scale_point_s* %plog2_scale) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %plog2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %log2_x = alloca i32, align 4
  %log2_y = alloca i32, align 4
  %raster = alloca i32, align 4
  %bits = alloca i8*, align 8
  %depth = alloca i32, align 4
  %log2_depth = alloca i32, align 4
  %nwidth_bits = alloca i32, align 4
  %nraster = alloca i32, align 4
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %scale_x = alloca i32, align 4
  %scale_y = alloca i32, align 4
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %n = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %plog2_scale, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %0 = bitcast i32* %log2_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !98
  store i32 %2, i32* %log2_x, align 4, !tbaa !5
  %3 = bitcast i32* %log2_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !100
  store i32 %5, i32* %log2_y, align 4, !tbaa !5
  %6 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster1 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %7, i32 0, i32 4
  %8 = load i16, i16* %raster1, align 2, !tbaa !133
  %conv = zext i16 %8 to i32
  store i32 %conv, i32* %raster, align 4, !tbaa !5
  %9 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %11 = bitcast %struct.cached_char_s* %10 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 104
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  %12 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %13, i32 0, i32 0
  %depth2 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  %14 = load i32, i32* %depth2, align 4, !tbaa !128
  store i32 %14, i32* %depth, align 4, !tbaa !5
  %15 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %depth, align 4, !tbaa !5
  %call = call i32 @ilog2(i32 %16) #5
  store i32 %call, i32* %log2_depth, align 4, !tbaa !5
  %17 = bitcast i32* %nwidth_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %nraster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load i8*, i8** %bits, align 8, !tbaa !1
  %21 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %21, i32 0, i32 2
  %22 = load i16, i16* %height, align 2, !tbaa !131
  %conv3 = zext i16 %22 to i32
  %23 = load i32, i32* %raster, align 4, !tbaa !5
  call void @bits_bounding_box(i8* %20, i32 %conv3, i32 %23, %struct.gs_int_rect_s* %bbox) #5
  %24 = load i32, i32* %log2_x, align 4, !tbaa !5
  %25 = load i32, i32* %log2_y, align 4, !tbaa !5
  %or = or i32 %24, %25
  %cmp = icmp ne i32 %or, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %log2_x, align 4, !tbaa !5
  %shl = shl i32 1, %27
  store i32 %shl, i32* %scale_x, align 4, !tbaa !5
  %28 = load i32, i32* %scale_x, align 4, !tbaa !5
  %sub = sub nsw i32 0, %28
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %29 = load i32, i32* %x5, align 4, !tbaa !143
  %and = and i32 %29, %sub
  store i32 %and, i32* %x5, align 4, !tbaa !143
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %30 = load i32, i32* %x6, align 4, !tbaa !146
  %31 = load i32, i32* %scale_x, align 4, !tbaa !5
  %add = add nsw i32 %30, %31
  %sub7 = sub nsw i32 %add, 1
  %32 = load i32, i32* %scale_x, align 4, !tbaa !5
  %sub8 = sub nsw i32 0, %32
  %and9 = and i32 %sub7, %sub8
  %q10 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q10, i32 0, i32 0
  store i32 %and9, i32* %x11, align 4, !tbaa !146
  %33 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %log2_y, align 4, !tbaa !5
  %shl12 = shl i32 1, %35
  store i32 %shl12, i32* %scale_y, align 4, !tbaa !5
  %36 = load i32, i32* %scale_y, align 4, !tbaa !5
  %sub13 = sub nsw i32 0, %36
  %p14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p14, i32 0, i32 1
  %37 = load i32, i32* %y15, align 4, !tbaa !147
  %and16 = and i32 %37, %sub13
  store i32 %and16, i32* %y15, align 4, !tbaa !147
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 1
  %38 = load i32, i32* %y18, align 4, !tbaa !148
  %39 = load i32, i32* %scale_y, align 4, !tbaa !5
  %add19 = add nsw i32 %38, %39
  %sub20 = sub nsw i32 %add19, 1
  %40 = load i32, i32* %scale_y, align 4, !tbaa !5
  %sub21 = sub nsw i32 0, %40
  %and22 = and i32 %sub20, %sub21
  %q23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q23, i32 0, i32 1
  store i32 %and22, i32* %y24, align 4, !tbaa !148
  %41 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %q25 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q25, i32 0, i32 0
  %42 = load i32, i32* %x26, align 4, !tbaa !146
  %p27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p27, i32 0, i32 0
  %43 = load i32, i32* %x28, align 4, !tbaa !143
  %sub29 = sub nsw i32 %42, %43
  %44 = load i32, i32* %log2_x, align 4, !tbaa !5
  %shr = ashr i32 %sub29, %44
  %conv30 = trunc i32 %shr to i16
  %45 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %45, i32 0, i32 1
  store i16 %conv30, i16* %width, align 2, !tbaa !130
  %q31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q31, i32 0, i32 1
  %46 = load i32, i32* %y32, align 4, !tbaa !148
  %p33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p33, i32 0, i32 1
  %47 = load i32, i32* %y34, align 4, !tbaa !147
  %sub35 = sub nsw i32 %46, %47
  %48 = load i32, i32* %log2_y, align 4, !tbaa !5
  %shr36 = ashr i32 %sub35, %48
  %conv37 = trunc i32 %shr36 to i16
  %49 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height38 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %49, i32 0, i32 2
  store i16 %conv37, i16* %height38, align 2, !tbaa !131
  %50 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width39 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %50, i32 0, i32 1
  %51 = load i16, i16* %width39, align 2, !tbaa !130
  %conv40 = zext i16 %51 to i32
  %52 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl41 = shl i32 %conv40, %52
  store i32 %shl41, i32* %nwidth_bits, align 4, !tbaa !5
  %53 = load i32, i32* %nwidth_bits, align 4, !tbaa !5
  %add42 = add i32 %53, 63
  %shr43 = lshr i32 %add42, 6
  %shl44 = shl i32 %shr43, 3
  store i32 %shl44, i32* %nraster, align 4, !tbaa !5
  %54 = load i8*, i8** %bits, align 8, !tbaa !1
  %55 = load i32, i32* %raster, align 4, !tbaa !5
  %p45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p45, i32 0, i32 1
  %56 = load i32, i32* %y46, align 4, !tbaa !147
  %mul = mul i32 %55, %56
  %idx.ext = zext i32 %mul to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %p48 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p48, i32 0, i32 0
  %57 = load i32, i32* %x49, align 4, !tbaa !143
  %58 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width50 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %58, i32 0, i32 1
  %59 = load i16, i16* %width50, align 2, !tbaa !130
  %conv51 = zext i16 %59 to i32
  %60 = load i32, i32* %log2_x, align 4, !tbaa !5
  %shl52 = shl i32 %conv51, %60
  %61 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height53 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %61, i32 0, i32 2
  %62 = load i16, i16* %height53, align 2, !tbaa !131
  %conv54 = zext i16 %62 to i32
  %63 = load i32, i32* %log2_y, align 4, !tbaa !5
  %shl55 = shl i32 %conv54, %63
  %64 = load i32, i32* %raster, align 4, !tbaa !5
  %65 = load i8*, i8** %bits, align 8, !tbaa !1
  %66 = load i32, i32* %nraster, align 4, !tbaa !5
  %67 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %68 = load i32, i32* %log2_depth, align 4, !tbaa !5
  call void @bits_compress_scaled(i8* %add.ptr47, i32 %57, i32 %shl52, i32 %shl55, i32 %64, i8* %65, i32 %66, %struct.gs_log2_scale_point_s* %67, i32 %68) #5
  %69 = load i32, i32* %log2_x, align 4, !tbaa !5
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 0
  %70 = load i32, i32* %x57, align 4, !tbaa !143
  %shr58 = ashr i32 %70, %69
  store i32 %shr58, i32* %x57, align 4, !tbaa !143
  %71 = load i32, i32* %log2_y, align 4, !tbaa !5
  %p59 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p59, i32 0, i32 1
  %72 = load i32, i32* %y60, align 4, !tbaa !147
  %shr61 = ashr i32 %72, %71
  store i32 %shr61, i32* %y60, align 4, !tbaa !147
  br label %if.end.132

if.else:                                          ; preds = %entry
  %73 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = load i8*, i8** %bits, align 8, !tbaa !1
  %75 = load i32, i32* %raster, align 4, !tbaa !5
  %p62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p62, i32 0, i32 1
  %76 = load i32, i32* %y63, align 4, !tbaa !147
  %mul64 = mul i32 %75, %76
  %idx.ext65 = zext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %74, i64 %idx.ext65
  %p67 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x68 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p67, i32 0, i32 0
  %77 = load i32, i32* %x68, align 4, !tbaa !143
  %shr69 = ashr i32 %77, 3
  %idx.ext70 = sext i32 %shr69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.ext70
  store i8* %add.ptr71, i8** %from, align 8, !tbaa !1
  %q72 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q72, i32 0, i32 1
  %78 = load i32, i32* %y73, align 4, !tbaa !148
  %p74 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p74, i32 0, i32 1
  %79 = load i32, i32* %y75, align 4, !tbaa !147
  %sub76 = sub nsw i32 %78, %79
  %conv77 = trunc i32 %sub76 to i16
  %80 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height78 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %80, i32 0, i32 2
  store i16 %conv77, i16* %height78, align 2, !tbaa !131
  %p79 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x80 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p79, i32 0, i32 0
  %81 = load i32, i32* %x80, align 4, !tbaa !143
  %and81 = and i32 %81, -8
  store i32 %and81, i32* %x80, align 4, !tbaa !143
  %82 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %p82 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x83 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p82, i32 0, i32 0
  %83 = load i32, i32* %x83, align 4, !tbaa !143
  %shr84 = ashr i32 %83, %82
  store i32 %shr84, i32* %x83, align 4, !tbaa !143
  %q85 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q85, i32 0, i32 0
  %84 = load i32, i32* %x86, align 4, !tbaa !146
  %85 = load i32, i32* %depth, align 4, !tbaa !5
  %add87 = add nsw i32 %84, %85
  %sub88 = sub nsw i32 %add87, 1
  %86 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shr89 = ashr i32 %sub88, %86
  %q90 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x91 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q90, i32 0, i32 0
  store i32 %shr89, i32* %x91, align 4, !tbaa !146
  %q92 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x93 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q92, i32 0, i32 0
  %87 = load i32, i32* %x93, align 4, !tbaa !146
  %p94 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x95 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p94, i32 0, i32 0
  %88 = load i32, i32* %x95, align 4, !tbaa !143
  %sub96 = sub nsw i32 %87, %88
  %conv97 = trunc i32 %sub96 to i16
  %89 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width98 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %89, i32 0, i32 1
  store i16 %conv97, i16* %width98, align 2, !tbaa !130
  %90 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %width99 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %90, i32 0, i32 1
  %91 = load i16, i16* %width99, align 2, !tbaa !130
  %conv100 = zext i16 %91 to i32
  %92 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl101 = shl i32 %conv100, %92
  store i32 %shl101, i32* %nwidth_bits, align 4, !tbaa !5
  %93 = load i32, i32* %nwidth_bits, align 4, !tbaa !5
  %add102 = add i32 %93, 63
  %shr103 = lshr i32 %add102, 6
  %shl104 = shl i32 %shr103, 3
  store i32 %shl104, i32* %nraster, align 4, !tbaa !5
  %p105 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x106 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p105, i32 0, i32 0
  %94 = load i32, i32* %x106, align 4, !tbaa !143
  %cmp107 = icmp ne i32 %94, 0
  br i1 %cmp107, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %95 = load i32, i32* %nraster, align 4, !tbaa !5
  %96 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp109 = icmp ne i32 %95, %96
  br i1 %cmp109, label %if.then.111, label %if.else.120

if.then.111:                                      ; preds = %lor.lhs.false, %if.else
  %97 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load i8*, i8** %bits, align 8, !tbaa !1
  store i8* %98, i8** %to, align 8, !tbaa !1
  %99 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height112 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %100, i32 0, i32 2
  %101 = load i16, i16* %height112, align 2, !tbaa !131
  %conv113 = zext i16 %101 to i32
  store i32 %conv113, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.111
  %102 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add i32 %102, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  %tobool = icmp ne i32 %102, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i8*, i8** %to, align 8, !tbaa !1
  %104 = load i8*, i8** %from, align 8, !tbaa !1
  %105 = load i32, i32* %nraster, align 4, !tbaa !5
  %conv114 = zext i32 %105 to i64
  %call115 = call i8* @memmove(i8* %103, i8* %104, i64 %conv114) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %106 = load i32, i32* %raster, align 4, !tbaa !5
  %107 = load i8*, i8** %from, align 8, !tbaa !1
  %idx.ext116 = zext i32 %106 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %107, i64 %idx.ext116
  store i8* %add.ptr117, i8** %from, align 8, !tbaa !1
  %108 = load i32, i32* %nraster, align 4, !tbaa !5
  %109 = load i8*, i8** %to, align 8, !tbaa !1
  %idx.ext118 = zext i32 %108 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %109, i64 %idx.ext118
  store i8* %add.ptr119, i8** %to, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %110 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %if.end.131

if.else.120:                                      ; preds = %lor.lhs.false
  %p121 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y122 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p121, i32 0, i32 1
  %112 = load i32, i32* %y122, align 4, !tbaa !147
  %cmp123 = icmp ne i32 %112, 0
  br i1 %cmp123, label %if.then.125, label %if.end

if.then.125:                                      ; preds = %if.else.120
  %113 = load i8*, i8** %bits, align 8, !tbaa !1
  %114 = load i8*, i8** %from, align 8, !tbaa !1
  %115 = load i32, i32* %raster, align 4, !tbaa !5
  %116 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height126 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %116, i32 0, i32 2
  %117 = load i16, i16* %height126, align 2, !tbaa !131
  %conv127 = zext i16 %117 to i32
  %mul128 = mul i32 %115, %conv127
  %conv129 = zext i32 %mul128 to i64
  %call130 = call i8* @memmove(i8* %113, i8* %114, i64 %conv129) #6
  br label %if.end

if.end:                                           ; preds = %if.then.125, %if.else.120
  br label %if.end.131

if.end.131:                                       ; preds = %if.end, %for.end
  %118 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %do.end
  %p133 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x134 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p133, i32 0, i32 0
  %119 = load i32, i32* %x134, align 4, !tbaa !143
  %shl135 = shl i32 %119, 8
  %120 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %120, i32 0, i32 16
  %x136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %121 = load i32, i32* %x136, align 4, !tbaa !149
  %sub137 = sub nsw i32 %121, %shl135
  store i32 %sub137, i32* %x136, align 4, !tbaa !149
  %p138 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y139 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p138, i32 0, i32 1
  %122 = load i32, i32* %y139, align 4, !tbaa !147
  %shl140 = shl i32 %122, 8
  %123 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %offset141 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %123, i32 0, i32 16
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset141, i32 0, i32 1
  %124 = load i32, i32* %y142, align 4, !tbaa !150
  %sub143 = sub nsw i32 %124, %shl140
  store i32 %sub143, i32* %y142, align 4, !tbaa !150
  %125 = load i32, i32* %nraster, align 4, !tbaa !5
  %conv144 = trunc i32 %125 to i16
  %126 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %raster145 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %126, i32 0, i32 4
  store i16 %conv144, i16* %raster145, align 2, !tbaa !133
  %127 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %128 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head146 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %128, i32 0, i32 0
  %size = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head146, i32 0, i32 0
  %129 = load i32, i32* %size, align 4, !tbaa !151
  %sub147 = sub i32 %129, 104
  %130 = load i32, i32* %nraster, align 4, !tbaa !5
  %131 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %height148 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %131, i32 0, i32 2
  %132 = load i16, i16* %height148, align 2, !tbaa !131
  %conv149 = zext i16 %132 to i32
  %mul150 = mul i32 %130, %conv149
  %sub151 = sub i32 %sub147, %mul150
  %and152 = and i32 %sub151, -8
  store i32 %and152, i32* %diff, align 4, !tbaa !5
  %133 = load i32, i32* %diff, align 4, !tbaa !5
  %conv153 = zext i32 %133 to i64
  %cmp154 = icmp uge i64 %conv153, 8
  br i1 %cmp154, label %if.then.156, label %if.end.160

if.then.156:                                      ; preds = %if.end.132
  %134 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %135 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %136 = load i32, i32* %diff, align 4, !tbaa !5
  call void @shorten_cached_char(%struct.gs_font_dir_s* %134, %struct.cached_char_s* %135, i32 %136) #5
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  br label %do.cond.158

do.cond.158:                                      ; preds = %do.body.157
  br label %do.end.159

do.end.159:                                       ; preds = %do.cond.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %if.end.132
  %137 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %138, i32 0, i32 11
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %call161 = call i64 @gs_next_ids(%struct.gs_memory_s* %139, i32 1) #5
  %140 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %140, i32 0, i32 5
  store i64 %call161, i64* %id, align 8, !tbaa !134
  %141 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %141) #1
  %142 = bitcast i32* %nraster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %nwidth_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %log2_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %log2_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  ret void
}

declare i32 @gs_device_is_abuf(%struct.gx_device_s*) #3

declare void @bits_bounding_box(i8*, i32, i32, %struct.gs_int_rect_s*) #3

declare void @bits_compress_scaled(i8*, i32, i32, i32, i32, i8*, i32, %struct.gs_log2_scale_point_s*, i32) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @shorten_cached_char(%struct.gs_font_dir_s* %dir, %struct.cached_char_s* %cc, i32 %diff) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %diff.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !5
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 5
  %1 = bitcast %struct.char_cache_s* %ccache to %struct.gx_bits_cache_s*
  %2 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %2, i32 0, i32 0
  %3 = load i32, i32* %diff.addr, align 4, !tbaa !5
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %chunk = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %4, i32 0, i32 10
  %5 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunk, align 8, !tbaa !50
  call void @gx_bits_cache_shorten(%struct.gx_bits_cache_s* %1, %struct.gx_cached_bits_head_s* %head, i32 %3, %struct.gx_bits_cache_chunk_s* %5) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_purge_font_from_char_caches(%struct.gs_font_s* %font) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @gs_purge_font_from_char_caches_forced(%struct.gs_font_s* %0, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_purge_font_from_char_caches_forced(%struct.gs_font_s* %font, i32 %force) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %force.addr = alloca i32, align 4
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %force, i32* %force.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 3
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir1, align 8, !tbaa !152
  %cmp = icmp eq %struct.gs_font_dir_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %is_cached = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 19
  %6 = load i32, i32* %is_cached, align 4, !tbaa !80
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 3
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir4, align 8, !tbaa !152
  store %struct.gs_font_dir_s* %8, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !16
  store %struct.cached_fm_pair_s* %10, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %fmcache5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache5, i32 0, i32 1
  %12 = load i32, i32* %mmax, align 4, !tbaa !11
  store i32 %12, i32* %count, align 4, !tbaa !5
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %is_cached6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 19
  store i32 0, i32* %is_cached6, align 4, !tbaa !80
  br label %do.body

do.body:                                          ; preds = %if.end.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %14 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font8 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %15, i32 0, i32 0
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font8, align 8, !tbaa !35
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_font_s* %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %for.body
  %18 = load i32, i32* %force.addr, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.10
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %19, i32 0, i32 1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %20 = load i64, i64* %id, align 8, !tbaa !36
  %cmp12 = icmp ne i64 %20, 9223372036854775807
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %22 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  call void @gs_clean_fm_pair(%struct.gs_font_dir_s* %21, %struct.cached_fm_pair_s* %22) #5
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.then.10
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !1
  %25 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %call = call i32 @gs_purge_fm_pair(%struct.gs_font_dir_s* %24, %struct.cached_fm_pair_s* %25, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %29 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %29, i32 1
  store %struct.cached_fm_pair_s* %incdec.ptr, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %for.end, %cleanup, %if.then.2, %if.then
  %30 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_font_dir_s** %dir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @gs_purge_font_from_char_caches_completely(%struct.gs_font_s* %font) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @gs_purge_font_from_char_caches_forced(%struct.gs_font_s* %0, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @fm_pair_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 112
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cached_fm_pair, i32 0, i32 4), align 8, !tbaa !153
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 112
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 112, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_cached_fm_pair, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @fm_pair_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 112
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cached_fm_pair, i32 0, i32 5), align 8, !tbaa !155
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 112, %struct.gs_memory_struct_type_s* @st_cached_fm_pair, %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 112
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cc_ptr_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
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
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cached_char_ptr, i32 0, i32 4), align 8, !tbaa !153
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
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 8, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_cached_char_ptr, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @cc_ptr_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cached_char_ptr, i32 0, i32 5), align 8, !tbaa !155
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 8, %struct.gs_memory_struct_type_s* @st_cached_char_ptr, %struct.gc_state_s* %5) #5
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
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cc_ptr_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
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
  ]

sw.default:                                       ; preds = %entry
  ret %struct.gs_ptr_procs_s* null
}

; Function Attrs: nounwind uwtable
define internal void @cc_ptr_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

declare void @gx_compute_char_matrix(%struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, float*, float*, float*, float*) #3

declare %struct.gx_ttfReader_s* @gx_ttfReader__create(%struct.gs_memory_s*) #3

declare %struct.ttfFont_s* @ttfFont__create(%struct.gs_font_dir_s*) #3

declare void @gx_ttfReader__set_font(%struct.gx_ttfReader_s*, %struct.gs_font_type42_s*) #3

declare i32 @ttfFont__Open_aux(%struct.ttfFont_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfReader_s*, %struct.gs_font_type42_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32) #3

declare void @gx_ttfReader__destroy(%struct.gx_ttfReader_s*) #3

declare void @ttfFont__destroy(%struct.ttfFont_s*, %struct.gs_font_dir_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @alloc_char_in_chunk(%struct.gs_font_dir_s* %dir, i64 %icdsize, %struct.cached_char_s** %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %icdsize.addr = alloca i64, align 8
  %pcc.addr = alloca %struct.cached_char_s**, align 8
  %cck = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %cch = alloca %struct.gx_cached_bits_head_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %chi = alloca i32, align 4
  %cnt = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  store i64 %icdsize, i64* %icdsize.addr, align 8, !tbaa !82
  store %struct.cached_char_s** %pcc, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 5
  %chunks = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 0
  %2 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !51
  store %struct.gx_bits_cache_chunk_s* %2, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %3 = bitcast %struct.gx_cached_bits_head_s** %cch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* null, %struct.cached_char_s** %4, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %5, i32 0, i32 5
  %6 = bitcast %struct.char_cache_s* %ccache1 to %struct.gx_bits_cache_s*
  %7 = load i64, i64* %icdsize.addr, align 8, !tbaa !82
  %call = call i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s* %6, i64 %7, %struct.gx_cached_bits_head_s** %cch) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end.25

while.body:                                       ; preds = %while.cond
  %8 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_cached_bits_head_s* %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

if.else:                                          ; preds = %while.body
  %9 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %11 = bitcast %struct.gx_cached_bits_head_s* %10 to %struct.cached_char_s*
  %pair3 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %11, i32 0, i32 6
  %12 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair3, align 8, !tbaa !48
  store %struct.cached_fm_pair_s* %12, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %13 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.cached_fm_pair_s* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.else
  %14 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %16 = bitcast %struct.gx_cached_bits_head_s* %15 to %struct.cached_char_s*
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %16, i32 0, i32 8
  %17 = load i64, i64* %code, align 8, !tbaa !43
  %conv = trunc i64 %17 to i32
  %mul = mul i32 %conv, 59
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %18, i32 0, i32 3
  %19 = load i32, i32* %hash, align 4, !tbaa !49
  %mul6 = mul i32 %19, 73
  %add = add i32 %mul, %mul6
  store i32 %add, i32* %chi, align 4, !tbaa !5
  %20 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %21, i32 0, i32 5
  %table_mask = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache7, i32 0, i32 7
  %22 = load i32, i32* %table_mask, align 4, !tbaa !24
  %add8 = add i32 %22, 1
  store i32 %add8, i32* %cnt, align 4, !tbaa !5
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end, %if.then.5
  %23 = load i32, i32* %chi, align 4, !tbaa !5
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %24, i32 0, i32 5
  %table_mask11 = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache10, i32 0, i32 7
  %25 = load i32, i32* %table_mask11, align 4, !tbaa !24
  %and = and i32 %23, %25
  %idxprom = zext i32 %and to i64
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ccache12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %26, i32 0, i32 5
  %table = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache12, i32 0, i32 6
  %27 = load %struct.cached_char_s**, %struct.cached_char_s*** %table, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cached_char_s*, %struct.cached_char_s** %27, i64 %idxprom
  %28 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8, !tbaa !1
  %29 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %30 = bitcast %struct.gx_cached_bits_head_s* %29 to %struct.cached_char_s*
  %cmp13 = icmp ne %struct.cached_char_s* %28, %30
  br i1 %cmp13, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.9
  %31 = load i32, i32* %chi, align 4, !tbaa !5
  %inc = add i32 %31, 1
  store i32 %inc, i32* %chi, align 4, !tbaa !5
  %32 = load i32, i32* %cnt, align 4, !tbaa !5
  %dec = add i32 %32, -1
  store i32 %dec, i32* %cnt, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %32, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %while.body.15
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body.15
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %34 = load i32, i32* %chi, align 4, !tbaa !5
  call void @hash_remove_cached_char(%struct.gs_font_dir_s* %33, i32 %34) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.18
  %35 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %chi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont, %if.else
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %38 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %39 = bitcast %struct.gx_cached_bits_head_s* %38 to %struct.cached_char_s*
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %37, %struct.cached_char_s* %39) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.20, %cleanup
  %40 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest.22 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.22, label %cleanup.27 [
    i32 0, label %cleanup.cont.23
  ]

cleanup.cont.23:                                  ; preds = %cleanup.21
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont.23
  br label %while.cond

while.end.25:                                     ; preds = %while.cond
  %41 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %42 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %43 = bitcast %struct.gx_cached_bits_head_s* %42 to %struct.cached_char_s*
  %chunk = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %43, i32 0, i32 10
  store %struct.gx_bits_cache_chunk_s* %41, %struct.gx_bits_cache_chunk_s** %chunk, align 8, !tbaa !50
  %44 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %45 = bitcast %struct.gx_cached_bits_head_s* %44 to %struct.cached_char_s*
  %46 = bitcast %struct.cached_char_s* %45 to i8*
  %47 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %cck, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %47, i32 0, i32 1
  %48 = load i8*, i8** %data, align 8, !tbaa !52
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %49 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %50 = bitcast %struct.gx_cached_bits_head_s* %49 to %struct.cached_char_s*
  %loc = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %50, i32 0, i32 11
  store i32 %conv26, i32* %loc, align 4, !tbaa !156
  %51 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cch, align 8, !tbaa !1
  %52 = bitcast %struct.gx_cached_bits_head_s* %51 to %struct.cached_char_s*
  %53 = load %struct.cached_char_s**, %struct.cached_char_s*** %pcc.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %52, %struct.cached_char_s** %53, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %while.end.25, %cleanup.21, %if.then
  %54 = bitcast %struct.gx_cached_bits_head_s** %cch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gx_bits_cache_chunk_s** %cck to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s*, i64, %struct.gx_cached_bits_head_s**) #3

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @gx_bits_cache_shorten(%struct.gx_bits_cache_s*, %struct.gx_cached_bits_head_s*, i32, %struct.gx_bits_cache_chunk_s*) #3

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
!7 = !{!8, !2, i64 104}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!8, !2, i64 24}
!11 = !{!12, !6, i64 28}
!12 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !13, i64 24, !14, i64 56, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208, !15, i64 216}
!13 = !{!"fm_pair_cache_s", !6, i64 0, !6, i64 4, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!14 = !{!"char_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!15 = !{!"long", !3, i64 0}
!16 = !{!12, !2, i64 32}
!17 = !{!12, !2, i64 80}
!18 = !{!12, !2, i64 88}
!19 = !{!12, !6, i64 108}
!20 = !{!12, !6, i64 112}
!21 = !{!12, !6, i64 120}
!22 = !{!12, !6, i64 124}
!23 = !{!12, !2, i64 96}
!24 = !{!12, !6, i64 104}
!25 = !{!8, !2, i64 8}
!26 = !{!12, !6, i64 24}
!27 = !{!12, !6, i64 40}
!28 = !{!12, !6, i64 44}
!29 = !{!12, !6, i64 48}
!30 = !{!12, !6, i64 116}
!31 = !{!32, !6, i64 72}
!32 = !{!"cached_fm_pair_s", !2, i64 0, !33, i64 8, !3, i64 24, !6, i64 28, !34, i64 32, !34, i64 36, !34, i64 40, !34, i64 44, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !6, i64 104}
!33 = !{!"gs_uid_s", !15, i64 0, !2, i64 8}
!34 = !{!"float", !3, i64 0}
!35 = !{!32, !2, i64 0}
!36 = !{!33, !15, i64 0}
!37 = !{!33, !2, i64 8}
!38 = !{!32, !6, i64 52}
!39 = !{!32, !2, i64 56}
!40 = !{!32, !2, i64 80}
!41 = !{!32, !2, i64 88}
!42 = !{!12, !2, i64 168}
!43 = !{!44, !15, i64 40}
!44 = !{!"cached_char_s", !45, i64 0, !46, i64 8, !46, i64 10, !46, i64 12, !46, i64 14, !15, i64 16, !2, i64 24, !6, i64 32, !15, i64 40, !3, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !47, i64 72, !15, i64 80, !47, i64 88, !47, i64 96}
!45 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!46 = !{!"short", !3, i64 0}
!47 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!48 = !{!44, !2, i64 24}
!49 = !{!32, !6, i64 28}
!50 = !{!44, !2, i64 56}
!51 = !{!12, !2, i64 56}
!52 = !{!53, !2, i64 8}
!53 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!54 = !{!12, !6, i64 64}
!55 = !{!44, !6, i64 32}
!56 = !{!32, !6, i64 48}
!57 = !{!58, !3, i64 128}
!58 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !59, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !60, i64 80, !60, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !34, i64 156, !6, i64 160, !61, i64 168, !62, i64 272, !62, i64 324}
!59 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!60 = !{!"gs_matrix_s", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20}
!61 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!62 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!63 = !{!64, !2, i64 424}
!64 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !59, i64 40, !15, i64 56, !2, i64 64, !2, i64 72, !60, i64 80, !60, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !34, i64 156, !6, i64 160, !61, i64 168, !62, i64 272, !62, i64 324, !65, i64 376, !33, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !68, i64 448}
!65 = !{!"gs_rect_s", !66, i64 0, !66, i64 16}
!66 = !{!"gs_point_s", !67, i64 0, !67, i64 8}
!67 = !{!"double", !3, i64 0}
!68 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !15, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !15, i64 120, !15, i64 128, !15, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !15, i64 200}
!69 = !{!32, !6, i64 96}
!70 = !{!34, !34, i64 0}
!71 = !{!60, !34, i64 0}
!72 = !{!60, !34, i64 4}
!73 = !{!60, !34, i64 8}
!74 = !{!60, !34, i64 12}
!75 = !{!60, !34, i64 20}
!76 = !{!60, !34, i64 16}
!77 = !{!8, !2, i64 0}
!78 = !{!12, !2, i64 176}
!79 = !{!32, !6, i64 100}
!80 = !{!58, !6, i64 160}
!81 = !{i64 0, i64 8, !82, i64 8, i64 8, !1}
!82 = !{!15, !15, i64 0}
!83 = !{!32, !3, i64 24}
!84 = !{!12, !6, i64 152}
!85 = !{!32, !34, i64 32}
!86 = !{!32, !34, i64 36}
!87 = !{!32, !34, i64 40}
!88 = !{!32, !34, i64 44}
!89 = !{!32, !2, i64 64}
!90 = !{!91, !2, i64 0}
!91 = !{!"gx_xfont_s", !92, i64 0}
!92 = !{!"gx_xfont_common_s", !2, i64 0}
!93 = !{!94, !2, i64 32}
!94 = !{!"gx_xfont_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!95 = !{!32, !2, i64 16}
!96 = !{!32, !6, i64 104}
!97 = !{!46, !46, i64 0}
!98 = !{!99, !6, i64 0}
!99 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!100 = !{!99, !6, i64 4}
!101 = !{!102, !2, i64 24}
!102 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !103, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !104, i64 96, !106, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !107, i64 984, !6, i64 1052, !6, i64 1056, !108, i64 1064, !2, i64 1104, !3, i64 1112, !110, i64 1120, !111, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !60, i64 2548, !2, i64 2576, !112, i64 2584, !113, i64 2600, !114, i64 2624, !115, i64 2656, !116, i64 2680, !117, i64 2720, !99, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !15, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!103 = !{!"rc_header_s", !15, i64 0, !2, i64 8, !2, i64 16}
!104 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !46, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !105, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !15, i64 704, !6, i64 712}
!105 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!106 = !{!"gx_device_cached_colors_s", !15, i64 0, !15, i64 8}
!107 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!108 = !{!"gdev_space_params_s", !15, i64 0, !15, i64 8, !109, i64 16, !6, i64 32, !3, i64 36}
!109 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !15, i64 8}
!110 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!111 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!112 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!113 = !{!"_c24", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!114 = !{!"_c40", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!115 = !{!"_c48", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!116 = !{!"_c56", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!117 = !{!"_c64", !15, i64 0, !6, i64 8, !6, i64 12}
!118 = !{!102, !2, i64 1728}
!119 = !{!102, !6, i64 80}
!120 = !{i64 0, i64 8, !82, i64 8, i64 8, !1, i64 16, i64 8, !1}
!121 = !{!122, !15, i64 56}
!122 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !103, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !104, i64 96, !106, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !107, i64 984, !6, i64 1052, !6, i64 1056, !108, i64 1064, !2, i64 1104, !3, i64 1112, !110, i64 1120, !111, i64 1144}
!123 = !{!122, !2, i64 72}
!124 = !{!122, !2, i64 64}
!125 = !{!102, !6, i64 832}
!126 = !{!102, !6, i64 836}
!127 = !{!102, !6, i64 1736}
!128 = !{!44, !6, i64 4}
!129 = !{!44, !15, i64 80}
!130 = !{!44, !46, i64 8}
!131 = !{!44, !46, i64 10}
!132 = !{!44, !46, i64 12}
!133 = !{!44, !46, i64 14}
!134 = !{!44, !15, i64 16}
!135 = !{!44, !6, i64 76}
!136 = !{!44, !6, i64 72}
!137 = !{!102, !2, i64 1744}
!138 = !{!102, !2, i64 1144}
!139 = !{!8, !2, i64 112}
!140 = !{!53, !2, i64 0}
!141 = !{!102, !2, i64 1176}
!142 = !{!44, !6, i64 68}
!143 = !{!144, !6, i64 0}
!144 = !{!"gs_int_rect_s", !145, i64 0, !145, i64 8}
!145 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!146 = !{!144, !6, i64 8}
!147 = !{!144, !6, i64 4}
!148 = !{!144, !6, i64 12}
!149 = !{!44, !6, i64 96}
!150 = !{!44, !6, i64 100}
!151 = !{!44, !6, i64 0}
!152 = !{!58, !2, i64 24}
!153 = !{!154, !2, i64 32}
!154 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!155 = !{!154, !2, i64 40}
!156 = !{!44, !6, i64 64}
