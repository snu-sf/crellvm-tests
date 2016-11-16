; ModuleID = './write_t2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
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
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_string_s = type { i8*, i32 }
%struct.WRF_output_ = type { i8*, i64, i64, i32, i16 }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.1, float, i32, %struct.anon.2, %struct.anon.3, i32, %struct.anon.4, i32, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
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

@.str = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\01\00\04\01\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\00\01\01\01\02x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\00\01\02\00\01\00\00\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\1Dxxxx\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\1Dxxxx\1Dyyyy\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"xxxx\00", align 1

; Function Attrs: nounwind uwtable
define i64 @gs_fapi_serialize_type2_font(%struct.gs_fapi_font_s* %a_fapi_font, i8* %a_buffer, i64 %a_buffer_size) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_buffer.addr = alloca i8*, align 8
  %a_buffer_size.addr = alloca i64, align 8
  %charset_offset_ptr = alloca i8*, align 8
  %charstrings_offset_ptr = alloca i8*, align 8
  %private_dict_length_ptr = alloca i8*, align 8
  %characters = alloca i32, align 4
  %output = alloca %struct.WRF_output_, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store i8* %a_buffer, i8** %a_buffer.addr, align 8, !tbaa !1
  store i64 %a_buffer_size, i64* %a_buffer_size.addr, align 8, !tbaa !5
  %0 = bitcast i8** %charset_offset_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %charset_offset_ptr, align 8, !tbaa !1
  %1 = bitcast i8** %charstrings_offset_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %charstrings_offset_ptr, align 8, !tbaa !1
  %2 = bitcast i8** %private_dict_length_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %private_dict_length_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %characters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %characters, align 4, !tbaa !7
  %4 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = load i8*, i8** %a_buffer.addr, align 8, !tbaa !1
  %6 = load i64, i64* %a_buffer_size.addr, align 8, !tbaa !5
  call void @WRF_init(%struct.WRF_output_* %output, i8* %5, i64 %6) #3
  call void @write_header(%struct.WRF_output_* %output) #3
  call void @write_name_index(%struct.WRF_output_* %output) #3
  %7 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  call void @write_font_dict_index(%struct.gs_fapi_font_s* %7, %struct.WRF_output_* %output, i8** %charset_offset_ptr, i8** %charstrings_offset_ptr, i8** %private_dict_length_ptr) #3
  call void @WRF_wtext(%struct.WRF_output_* %output, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #3
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  call void @write_gsubrs_index(%struct.gs_fapi_font_s* %8, %struct.WRF_output_* %output) #3
  %9 = load i8*, i8** %charset_offset_ptr, align 8, !tbaa !1
  %call = call i32 @write_charset(%struct.WRF_output_* %output, i8* %9) #3
  store i32 %call, i32* %characters, align 4, !tbaa !7
  %10 = load i32, i32* %characters, align 4, !tbaa !7
  %11 = load i8*, i8** %charstrings_offset_ptr, align 8, !tbaa !1
  call void @write_charstrings_index(%struct.WRF_output_* %output, i32 %10, i8* %11) #3
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %private_dict_length_ptr, align 8, !tbaa !1
  call void @write_private_dict(%struct.gs_fapi_font_s* %12, %struct.WRF_output_* %output, i8* %13) #3
  %14 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  call void @write_subrs_index(%struct.gs_fapi_font_s* %14, %struct.WRF_output_* %output) #3
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %output, i32 0, i32 2
  %15 = load i64, i64* %m_count, align 8, !tbaa !9
  %16 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.end(i64 32, i8* %16) #1
  %17 = bitcast i32* %characters to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i8** %private_dict_length_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i8** %charstrings_offset_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i8** %charset_offset_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i64 %15
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @WRF_init(%struct.WRF_output_*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @write_header(%struct.WRF_output_* %a_output) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %0 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_name_index(%struct.WRF_output_* %a_output) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %0 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 6) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_font_dict_index(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i8** %a_charset_offset_ptr, i8** %a_charstrings_offset_ptr, i8** %a_private_dict_length_ptr) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_charset_offset_ptr.addr = alloca i8**, align 8
  %a_charstrings_offset_ptr.addr = alloca i8**, align 8
  %a_private_dict_length_ptr.addr = alloca i8**, align 8
  %data_start = alloca i8*, align 8
  %last_offset = alloca i32, align 4
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8** %a_charset_offset_ptr, i8*** %a_charset_offset_ptr.addr, align 8, !tbaa !1
  store i8** %a_charstrings_offset_ptr, i8*** %a_charstrings_offset_ptr.addr, align 8, !tbaa !1
  store i8** %a_private_dict_length_ptr, i8*** %a_private_dict_length_ptr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %data_start, align 8, !tbaa !1
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 7) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %2, i32 0, i32 0
  %3 = load i8*, i8** %m_pos, align 8, !tbaa !12
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos1 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %4, i32 0, i32 0
  %5 = load i8*, i8** %m_pos1, align 8, !tbaa !12
  store i8* %5, i8** %data_start, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %6, %struct.WRF_output_* %7, i32 9, i32 4, i32 0, i32 5, i32 1) #3
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_float_entry(%struct.gs_fapi_font_s* %8, %struct.WRF_output_* %9, i32 0, i32 6, i32 1, i32 7) #3
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_type2_int(%struct.WRF_output_* %10, i64 0) #3
  %11 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %11, i8 zeroext 16) #3
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos2 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %12, i32 0, i32 0
  %13 = load i8*, i8** %m_pos2, align 8, !tbaa !12
  %14 = load i8**, i8*** %a_charset_offset_ptr.addr, align 8, !tbaa !1
  store i8* %13, i8** %14, align 8, !tbaa !1
  %15 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #3
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %16, i8 zeroext 15) #3
  %17 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos3 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %17, i32 0, i32 0
  %18 = load i8*, i8** %m_pos3, align 8, !tbaa !12
  %19 = load i8**, i8*** %a_charstrings_offset_ptr.addr, align 8, !tbaa !1
  store i8* %18, i8** %19, align 8, !tbaa !1
  %20 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #3
  %21 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %21, i8 zeroext 17) #3
  %22 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos4 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %22, i32 0, i32 0
  %23 = load i8*, i8** %m_pos4, align 8, !tbaa !12
  %24 = load i8**, i8*** %a_private_dict_length_ptr.addr, align 8, !tbaa !1
  store i8* %23, i8** %24, align 8, !tbaa !1
  %25 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 10) #3
  %26 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %26, i8 zeroext 18) #3
  %27 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos5 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %27, i32 0, i32 0
  %28 = load i8*, i8** %m_pos5, align 8, !tbaa !12
  %tobool6 = icmp ne i8* %28, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %29 = bitcast i32* %last_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos8 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %30, i32 0, i32 0
  %31 = load i8*, i8** %m_pos8, align 8, !tbaa !12
  %32 = load i8*, i8** %data_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %last_offset, align 4, !tbaa !7
  %33 = load i32, i32* %last_offset, align 4, !tbaa !7
  %shr = ashr i32 %33, 8
  %conv9 = trunc i32 %shr to i8
  %34 = load i8*, i8** %data_start, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 -2
  store i8 %conv9, i8* %arrayidx, align 1, !tbaa !13
  %35 = load i32, i32* %last_offset, align 4, !tbaa !7
  %and = and i32 %35, 255
  %conv10 = trunc i32 %and to i8
  %36 = load i8*, i8** %data_start, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !13
  %37 = bitcast i32* %last_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %38 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret void
}

declare void @WRF_wtext(%struct.WRF_output_*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @write_gsubrs_index(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %cur_offset = alloca i8*, align 8
  %data_start = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %buffer_size = alloca i64, align 8
  %length = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cur_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %cur_offset, align 8, !tbaa !1
  %1 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %data_start, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %4, i32 0, i32 20
  %5 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !14
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call zeroext i16 %5(%struct.gs_fapi_font_s* %6, i32 29, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !7
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count, align 4, !tbaa !7
  %shr = ashr i32 %8, 8
  %conv1 = trunc i32 %shr to i8
  call void @WRF_wbyte(%struct.WRF_output_* %7, i8 zeroext %conv1) #3
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %10 = load i32, i32* %count, align 4, !tbaa !7
  %and = and i32 %10, 255
  %conv2 = trunc i32 %and to i8
  call void @WRF_wbyte(%struct.WRF_output_* %9, i8 zeroext %conv2) #3
  %11 = load i32, i32* %count, align 4, !tbaa !7
  %cmp = icmp sle i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %12, i8 zeroext 4) #3
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #3
  %14 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %14, i32 0, i32 0
  %15 = load i8*, i8** %m_pos, align 8, !tbaa !12
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos5 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %16, i32 0, i32 0
  %17 = load i8*, i8** %m_pos5, align 8, !tbaa !12
  store i8* %17, i8** %cur_offset, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %19 = load i32, i32* %count, align 4, !tbaa !7
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos9 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %22, i32 0, i32 0
  %23 = load i8*, i8** %m_pos9, align 8, !tbaa !12
  %tobool10 = icmp ne i8* %23, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %24 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos12 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %24, i32 0, i32 0
  %25 = load i8*, i8** %m_pos12, align 8, !tbaa !12
  store i8* %25, i8** %data_start, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.33, %if.end.13
  %26 = load i32, i32* %i, align 4, !tbaa !7
  %27 = load i32, i32* %count, align 4, !tbaa !7
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %for.body.17, label %for.end.35

for.body.17:                                      ; preds = %for.cond.14
  %28 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %29, i32 0, i32 1
  %30 = load i64, i64* %m_limit, align 8, !tbaa !17
  %31 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %31, i32 0, i32 2
  %32 = load i64, i64* %m_count, align 8, !tbaa !9
  %sub = sub nsw i64 %30, %32
  store i64 %sub, i64* %buffer_size, align 8, !tbaa !5
  %33 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_gsubr = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %34, i32 0, i32 25
  %35 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_gsubr, align 8, !tbaa !18
  %36 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %38 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos18 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %38, i32 0, i32 0
  %39 = load i8*, i8** %m_pos18, align 8, !tbaa !12
  %40 = load i64, i64* %buffer_size, align 8, !tbaa !5
  %conv19 = trunc i64 %40 to i16
  %call20 = call zeroext i16 %35(%struct.gs_fapi_font_s* %36, i32 %37, i8* %39, i16 zeroext %conv19) #3
  %conv21 = zext i16 %call20 to i64
  store i64 %conv21, i64* %length, align 8, !tbaa !5
  %41 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos22 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %41, i32 0, i32 0
  %42 = load i8*, i8** %m_pos22, align 8, !tbaa !12
  %tobool23 = icmp ne i8* %42, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body.17
  %43 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %44 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos25 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %44, i32 0, i32 0
  %45 = load i8*, i8** %m_pos25, align 8, !tbaa !12
  %46 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wtext(%struct.WRF_output_* %43, i8* %45, i64 %46) #3
  br label %if.end.27

if.else:                                          ; preds = %for.body.17
  %47 = load i64, i64* %length, align 8, !tbaa !5
  %48 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count26 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %48, i32 0, i32 2
  %49 = load i64, i64* %m_count26, align 8, !tbaa !9
  %add = add nsw i64 %49, %47
  store i64 %add, i64* %m_count26, align 8, !tbaa !9
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  %50 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %tobool28 = icmp ne i8* %50, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %51 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos30 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %52, i32 0, i32 0
  %53 = load i8*, i8** %m_pos30, align 8, !tbaa !12
  %54 = load i8*, i8** %data_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add31 = add nsw i64 %sub.ptr.sub, 1
  store i64 %add31, i64* %pos, align 8, !tbaa !5
  %55 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %56 = load i64, i64* %pos, align 8, !tbaa !5
  call void @write_4_byte_int(i8* %55, i64 %56) #3
  %57 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr, i8** %cur_offset, align 8, !tbaa !1
  %58 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.27
  %59 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %61 = load i32, i32* %i, align 4, !tbaa !7
  %inc34 = add nsw i32 %61, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !7
  br label %for.cond.14

for.end.35:                                       ; preds = %for.cond.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.35, %if.then
  %62 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %cur_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @write_charset(%struct.WRF_output_* %a_output, i8* %a_charset_offset_ptr) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_charset_offset_ptr.addr = alloca i8*, align 8
  %characters = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_charset_offset_ptr, i8** %a_charset_offset_ptr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %characters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %characters, align 4, !tbaa !7
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %2, i32 0, i32 0
  %3 = load i8*, i8** %m_pos, align 8, !tbaa !12
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %a_charset_offset_ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %5, i32 0, i32 2
  %6 = load i64, i64* %m_count, align 8, !tbaa !9
  call void @write_4_byte_int(i8* %add.ptr, i64 %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %7, i8 zeroext 0) #3
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %9, i8 zeroext 0) #3
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %10, i8 zeroext 0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %characters to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @write_charstrings_index(%struct.WRF_output_* %a_output, i32 %a_characters, i8* %a_charstrings_offset_ptr) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_characters.addr = alloca i32, align 4
  %a_charstrings_offset_ptr.addr = alloca i8*, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %a_characters, i32* %a_characters.addr, align 4, !tbaa !7
  store i8* %a_charstrings_offset_ptr, i8** %a_charstrings_offset_ptr.addr, align 8, !tbaa !1
  %0 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %0, i32 0, i32 0
  %1 = load i8*, i8** %m_pos, align 8, !tbaa !12
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %a_charstrings_offset_ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %3, i32 0, i32 2
  %4 = load i64, i64* %m_count, align 8, !tbaa !9
  call void @write_4_byte_int(i8* %add.ptr, i64 %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %6 = load i32, i32* %a_characters.addr, align 4, !tbaa !7
  %shr = ashr i32 %6, 8
  %conv = trunc i32 %shr to i8
  call void @WRF_wbyte(%struct.WRF_output_* %5, i8 zeroext %conv) #3
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a_characters.addr, align 4, !tbaa !7
  %and = and i32 %8, 255
  %conv1 = trunc i32 %and to i8
  call void @WRF_wbyte(%struct.WRF_output_* %7, i8 zeroext %conv1) #3
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %9, i8 zeroext 1) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, i32* %a_characters.addr, align 4, !tbaa !7
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %a_characters.addr, align 4, !tbaa !7
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %11, i8 zeroext 1) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_private_dict(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i8* %a_private_dict_length_ptr) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_private_dict_length_ptr.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %initial = alloca i32, align 4
  %start = alloca i8*, align 8
  %t1 = alloca %struct.gs_font_type1_s*, align 8
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_private_dict_length_ptr, i8** %a_private_dict_length_ptr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %initial to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %2, i32 0, i32 2
  %3 = load i64, i64* %m_count, align 8, !tbaa !9
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %initial, align 4, !tbaa !7
  %4 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %5, i32 0, i32 0
  %6 = load i8*, i8** %m_pos, align 8, !tbaa !12
  store i8* %6, i8** %start, align 8, !tbaa !1
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos1 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %7, i32 0, i32 0
  %8 = load i8*, i8** %m_pos1, align 8, !tbaa !12
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %a_private_dict_length_ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 6
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count2 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %10, i32 0, i32 2
  %11 = load i64, i64* %m_count2, align 8, !tbaa !9
  call void @write_4_byte_int(i8* %add.ptr, i64 %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %12, %struct.WRF_output_* %13, i32 19, i32 1, i32 1, i32 11, i32 16) #3
  %14 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %15 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_long = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %15, i32 0, i32 21
  %16 = load i64 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)** %get_long, align 8, !tbaa !19
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call i64 %16(%struct.gs_fapi_font_s* %17, i32 2, i32 0) #3
  %conv3 = uitofp i64 %call to double
  %div = fdiv double %conv3, 6.553600e+04
  call void @write_type2_float(%struct.WRF_output_* %14, double %div) #3
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %18, i8 zeroext 12) #3
  %19 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %19, i8 zeroext 9) #3
  %20 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %21 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %20, %struct.WRF_output_* %21, i32 18, i32 1, i32 1, i32 10, i32 16) #3
  %22 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %23 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %22, %struct.WRF_output_* %23, i32 11, i32 0, i32 6, i32 16) #3
  %24 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %25 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %24, %struct.WRF_output_* %25, i32 13, i32 0, i32 7, i32 16) #3
  %26 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %27 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %26, %struct.WRF_output_* %27, i32 15, i32 0, i32 8, i32 16) #3
  %28 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %29 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %28, %struct.WRF_output_* %29, i32 17, i32 0, i32 9, i32 16) #3
  %30 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %31 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %30, %struct.WRF_output_* %31, i32 26, i32 1, i32 1, i32 14, i32 1) #3
  %32 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %33 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %32, %struct.WRF_output_* %33, i32 20, i32 1, i32 0, i32 10, i32 16) #3
  %34 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %35 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %34, %struct.WRF_output_* %35, i32 21, i32 1, i32 0, i32 11, i32 16) #3
  %36 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %37 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %36, %struct.WRF_output_* %37, i32 23, i32 1, i32 12, i32 16) #3
  %38 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %39 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_delta_array_entry(%struct.gs_fapi_font_s* %38, %struct.WRF_output_* %39, i32 25, i32 1, i32 13, i32 16) #3
  %40 = bitcast %struct.gs_font_type1_s** %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %41, i32 0, i32 15
  %42 = load i8*, i8** %client_font_data, align 8, !tbaa !20
  %43 = bitcast i8* %42 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %43, %struct.gs_font_type1_s** %t1, align 8, !tbaa !1
  %44 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %45 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %t1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %45, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 8
  %46 = load i32, i32* %defaultWidthX, align 4, !tbaa !21
  %conv4 = sitofp i32 %46 to double
  %mul = fmul double %conv4, 3.906250e-03
  call void @write_type2_float(%struct.WRF_output_* %44, double %mul) #3
  %47 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %47, i8 zeroext 20) #3
  %48 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %49 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %t1, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %49, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data5, i32 0, i32 9
  %50 = load i32, i32* %nominalWidthX, align 4, !tbaa !34
  %conv6 = sitofp i32 %50 to double
  %mul7 = fmul double %conv6, 3.906250e-03
  call void @write_type2_float(%struct.WRF_output_* %48, double %mul7) #3
  %51 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %51, i8 zeroext 21) #3
  %52 = bitcast %struct.gs_font_type1_s** %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %53, i32 0, i32 20
  %54 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !14
  %55 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call8 = call zeroext i16 %54(%struct.gs_fapi_font_s* %55, i32 30, i32 0) #3
  %conv9 = zext i16 %call8 to i32
  store i32 %conv9, i32* %count, align 4, !tbaa !7
  %56 = load i32, i32* %count, align 4, !tbaa !7
  %tobool10 = icmp ne i32 %56, 0
  br i1 %tobool10, label %if.then.11, label %if.end.50

if.then.11:                                       ; preds = %if.end
  %57 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 1, i32* %n, align 4, !tbaa !7
  %58 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.11
  %59 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count12 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %59, i32 0, i32 2
  %60 = load i64, i64* %m_count12, align 8, !tbaa !9
  %61 = load i32, i32* %initial, align 4, !tbaa !7
  %conv13 = sext i32 %61 to i64
  %sub = sub nsw i64 %60, %conv13
  %add = add nsw i64 %sub, 1
  %62 = load i32, i32* %n, align 4, !tbaa !7
  %conv14 = sext i32 %62 to i64
  %add15 = add nsw i64 %add, %conv14
  %conv16 = trunc i64 %add15 to i32
  store i32 %conv16, i32* %n1, align 4, !tbaa !7
  %63 = load i32, i32* %n, align 4, !tbaa !7
  switch i32 %63, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.37
    i32 4, label %sw.epilog
    i32 5, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %do.body
  %64 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp = icmp sge i32 %64, -107
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %sw.bb
  %65 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp18 = icmp sle i32 %65, 107
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %66 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %67 = load i32, i32* %n1, align 4, !tbaa !7
  %conv21 = sext i32 %67 to i64
  call void @write_type2_int(%struct.WRF_output_* %66, i64 %conv21) #3
  store i32 5, i32* %n, align 4, !tbaa !7
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.body
  %68 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp24 = icmp sge i32 %68, 108
  br i1 %cmp24, label %land.lhs.true.26, label %lor.lhs.false

land.lhs.true.26:                                 ; preds = %sw.bb.23
  %69 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp27 = icmp sle i32 %69, 1131
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.26, %sw.bb.23
  %70 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp29 = icmp sge i32 %70, -1131
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %lor.lhs.false
  %71 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp32 = icmp sle i32 %71, -108
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %land.lhs.true.31, %land.lhs.true.26
  %72 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %73 = load i32, i32* %n1, align 4, !tbaa !7
  %conv35 = sext i32 %73 to i64
  call void @write_type2_int(%struct.WRF_output_* %72, i64 %conv35) #3
  store i32 5, i32* %n, align 4, !tbaa !7
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %land.lhs.true.31, %lor.lhs.false
  br label %sw.epilog

sw.bb.37:                                         ; preds = %do.body
  %74 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp38 = icmp sge i32 %74, -32768
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %sw.bb.37
  %75 = load i32, i32* %n1, align 4, !tbaa !7
  %cmp41 = icmp sle i32 %75, 32767
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.40
  %76 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %77 = load i32, i32* %n1, align 4, !tbaa !7
  %conv44 = sext i32 %77 to i64
  call void @write_type2_int(%struct.WRF_output_* %76, i64 %conv44) #3
  store i32 5, i32* %n, align 4, !tbaa !7
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %sw.bb.37
  br label %sw.epilog

sw.bb.46:                                         ; preds = %do.body
  %78 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %79 = load i32, i32* %n1, align 4, !tbaa !7
  %conv47 = sext i32 %79 to i64
  call void @write_type2_int(%struct.WRF_output_* %78, i64 %conv47) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb.46, %do.body, %if.end.45, %if.end.36, %if.end.22
  %80 = load i32, i32* %n, align 4, !tbaa !7
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %n, align 4, !tbaa !7
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %81 = load i32, i32* %n, align 4, !tbaa !7
  %cmp48 = icmp slt i32 %81, 5
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %82 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %82, i8 zeroext 19) #3
  %83 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %if.end.50

if.end.50:                                        ; preds = %do.end, %if.end
  %85 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos51 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %85, i32 0, i32 0
  %86 = load i8*, i8** %m_pos51, align 8, !tbaa !12
  %tobool52 = icmp ne i8* %86, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %87 = load i8*, i8** %a_private_dict_length_ptr.addr, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos55 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %88, i32 0, i32 0
  %89 = load i8*, i8** %m_pos55, align 8, !tbaa !12
  %90 = load i8*, i8** %start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @write_4_byte_int(i8* %add.ptr54, i64 %sub.ptr.sub) #3
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %91 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %initial to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_subrs_index(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %cur_offset = alloca i8*, align 8
  %data_start = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %buffer_size = alloca i64, align 8
  %length = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cur_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %cur_offset, align 8, !tbaa !1
  %1 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %data_start, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %4, i32 0, i32 20
  %5 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !14
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call zeroext i16 %5(%struct.gs_fapi_font_s* %6, i32 30, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !7
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count, align 4, !tbaa !7
  %shr = ashr i32 %8, 8
  %conv1 = trunc i32 %shr to i8
  call void @WRF_wbyte(%struct.WRF_output_* %7, i8 zeroext %conv1) #3
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %10 = load i32, i32* %count, align 4, !tbaa !7
  %and = and i32 %10, 255
  %conv2 = trunc i32 %and to i8
  call void @WRF_wbyte(%struct.WRF_output_* %9, i8 zeroext %conv2) #3
  %11 = load i32, i32* %count, align 4, !tbaa !7
  %cmp = icmp sle i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %12, i8 zeroext 4) #3
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #3
  %14 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %14, i32 0, i32 0
  %15 = load i8*, i8** %m_pos, align 8, !tbaa !12
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos5 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %16, i32 0, i32 0
  %17 = load i8*, i8** %m_pos5, align 8, !tbaa !12
  store i8* %17, i8** %cur_offset, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %19 = load i32, i32* %count, align 4, !tbaa !7
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wtext(%struct.WRF_output_* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos9 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %22, i32 0, i32 0
  %23 = load i8*, i8** %m_pos9, align 8, !tbaa !12
  %tobool10 = icmp ne i8* %23, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %24 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos12 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %24, i32 0, i32 0
  %25 = load i8*, i8** %m_pos12, align 8, !tbaa !12
  store i8* %25, i8** %data_start, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.33, %if.end.13
  %26 = load i32, i32* %i, align 4, !tbaa !7
  %27 = load i32, i32* %count, align 4, !tbaa !7
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %for.body.17, label %for.end.35

for.body.17:                                      ; preds = %for.cond.14
  %28 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %29, i32 0, i32 1
  %30 = load i64, i64* %m_limit, align 8, !tbaa !17
  %31 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %31, i32 0, i32 2
  %32 = load i64, i64* %m_count, align 8, !tbaa !9
  %sub = sub nsw i64 %30, %32
  store i64 %sub, i64* %buffer_size, align 8, !tbaa !5
  %33 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_subr = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %34, i32 0, i32 26
  %35 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_subr, align 8, !tbaa !35
  %36 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %38 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos18 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %38, i32 0, i32 0
  %39 = load i8*, i8** %m_pos18, align 8, !tbaa !12
  %40 = load i64, i64* %buffer_size, align 8, !tbaa !5
  %conv19 = trunc i64 %40 to i16
  %call20 = call zeroext i16 %35(%struct.gs_fapi_font_s* %36, i32 %37, i8* %39, i16 zeroext %conv19) #3
  %conv21 = zext i16 %call20 to i64
  store i64 %conv21, i64* %length, align 8, !tbaa !5
  %41 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos22 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %41, i32 0, i32 0
  %42 = load i8*, i8** %m_pos22, align 8, !tbaa !12
  %tobool23 = icmp ne i8* %42, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body.17
  %43 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %44 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos25 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %44, i32 0, i32 0
  %45 = load i8*, i8** %m_pos25, align 8, !tbaa !12
  %46 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wtext(%struct.WRF_output_* %43, i8* %45, i64 %46) #3
  br label %if.end.27

if.else:                                          ; preds = %for.body.17
  %47 = load i64, i64* %length, align 8, !tbaa !5
  %48 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count26 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %48, i32 0, i32 2
  %49 = load i64, i64* %m_count26, align 8, !tbaa !9
  %add = add nsw i64 %49, %47
  store i64 %add, i64* %m_count26, align 8, !tbaa !9
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  %50 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %tobool28 = icmp ne i8* %50, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %51 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos30 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %52, i32 0, i32 0
  %53 = load i8*, i8** %m_pos30, align 8, !tbaa !12
  %54 = load i8*, i8** %data_start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add31 = add nsw i64 %sub.ptr.sub, 1
  store i64 %add31, i64* %pos, align 8, !tbaa !5
  %55 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %56 = load i64, i64* %pos, align 8, !tbaa !5
  call void @write_4_byte_int(i8* %55, i64 %56) #3
  %57 = load i8*, i8** %cur_offset, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr, i8** %cur_offset, align 8, !tbaa !1
  %58 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.27
  %59 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %61 = load i32, i32* %i, align 4, !tbaa !7
  %inc34 = add nsw i32 %61, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !7
  br label %for.cond.14

for.end.35:                                       ; preds = %for.cond.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.35, %if.then
  %62 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i8** %data_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %cur_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @write_word_entry(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %a_feature_id, i32 %a_feature_count, i32 %a_two_byte_op, i32 %a_op, i32 %a_divisor) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_feature_id.addr = alloca i32, align 4
  %a_feature_count.addr = alloca i32, align 4
  %a_two_byte_op.addr = alloca i32, align 4
  %a_op.addr = alloca i32, align 4
  %a_divisor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i16, align 2
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %a_feature_id, i32* %a_feature_id.addr, align 4, !tbaa !7
  store i32 %a_feature_count, i32* %a_feature_count.addr, align 4, !tbaa !7
  store i32 %a_two_byte_op, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  store i32 %a_op, i32* %a_op.addr, align 4, !tbaa !7
  store i32 %a_divisor, i32* %a_divisor.addr, align 4, !tbaa !7
  %0 = load i32, i32* %a_feature_count.addr, align 4, !tbaa !7
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %3 = load i32, i32* %a_feature_count.addr, align 4, !tbaa !7
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i16* %x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 20
  %6 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !14
  %7 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a_feature_id.addr, align 4, !tbaa !7
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %call = call zeroext i16 %6(%struct.gs_fapi_font_s* %7, i32 %8, i32 %9) #3
  store i16 %call, i16* %x, align 2, !tbaa !36
  %10 = load i16, i16* %x, align 2, !tbaa !36
  %conv = sext i16 %10 to i32
  %11 = load i32, i32* %a_divisor.addr, align 4, !tbaa !7
  %div = sdiv i32 %conv, %11
  %conv2 = trunc i32 %div to i16
  store i16 %conv2, i16* %x, align 2, !tbaa !36
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %13 = load i16, i16* %x, align 2, !tbaa !36
  %conv3 = sext i16 %13 to i64
  call void @write_type2_int(%struct.WRF_output_* %12, i64 %conv3) #3
  %14 = bitcast i16* %x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.end
  %17 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %17, i8 zeroext 12) #3
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.end
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %19 = load i32, i32* %a_op.addr, align 4, !tbaa !7
  %conv5 = trunc i32 %19 to i8
  call void @WRF_wbyte(%struct.WRF_output_* %18, i8 zeroext %conv5) #3
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_float_entry(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %a_feature_id, i32 %a_feature_count, i32 %a_two_byte_op, i32 %a_op) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_feature_id.addr = alloca i32, align 4
  %a_feature_count.addr = alloca i32, align 4
  %a_two_byte_op.addr = alloca i32, align 4
  %a_op.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %a_feature_id, i32* %a_feature_id.addr, align 4, !tbaa !7
  store i32 %a_feature_count, i32* %a_feature_count.addr, align 4, !tbaa !7
  store i32 %a_two_byte_op, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  store i32 %a_op, i32* %a_op.addr, align 4, !tbaa !7
  %0 = load i32, i32* %a_feature_count.addr, align 4, !tbaa !7
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %3 = load i32, i32* %a_feature_count.addr, align 4, !tbaa !7
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 22
  %6 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float, align 8, !tbaa !37
  %7 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a_feature_id.addr, align 4, !tbaa !7
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %call = call float %6(%struct.gs_fapi_font_s* %7, i32 %8, i32 %9) #3
  %conv = fpext float %call to double
  store double %conv, double* %x, align 8, !tbaa !38
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %11 = load double, double* %x, align 8, !tbaa !38
  call void @write_type2_float(%struct.WRF_output_* %10, double %11) #3
  %12 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.end
  %15 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %15, i8 zeroext 12) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.end
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %17 = load i32, i32* %a_op.addr, align 4, !tbaa !7
  %conv3 = trunc i32 %17 to i8
  call void @WRF_wbyte(%struct.WRF_output_* %16, i8 zeroext %conv3) #3
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_type2_int(%struct.WRF_output_* %a_output, i64 %a_int) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_int.addr = alloca i64, align 8
  %buffer = alloca [4 x i8], align 1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i64 %a_int, i64* %a_int.addr, align 8, !tbaa !5
  %0 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp = icmp sge i64 %0, -107
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp1 = icmp sle i64 %1, 107
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %3 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %add = add nsw i64 %3, 139
  %conv = trunc i64 %add to i8
  call void @WRF_wbyte(%struct.WRF_output_* %2, i8 zeroext %conv) #3
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp2 = icmp sge i64 %4, -32768
  br i1 %cmp2, label %land.lhs.true.4, label %if.else.27

land.lhs.true.4:                                  ; preds = %if.else
  %5 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp5 = icmp sle i64 %5, 32767
  br i1 %cmp5, label %if.then.7, label %if.else.27

if.then.7:                                        ; preds = %land.lhs.true.4
  %6 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp8 = icmp sge i64 %6, 108
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.15

land.lhs.true.10:                                 ; preds = %if.then.7
  %7 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp11 = icmp sle i64 %7, 1131
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %land.lhs.true.10
  %8 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %add14 = add nsw i64 %8, 63124
  store i64 %add14, i64* %a_int.addr, align 8, !tbaa !5
  br label %if.end.24

if.else.15:                                       ; preds = %land.lhs.true.10, %if.then.7
  %9 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp16 = icmp sge i64 %9, -1131
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.23

land.lhs.true.18:                                 ; preds = %if.else.15
  %10 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %cmp19 = icmp sle i64 %10, -108
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %land.lhs.true.18
  %11 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %sub = sub nsw i64 0, %11
  %add22 = add nsw i64 %sub, 64148
  store i64 %add22, i64* %a_int.addr, align 8, !tbaa !5
  br label %if.end

if.else.23:                                       ; preds = %land.lhs.true.18, %if.else.15
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %12, i8 zeroext 28) #3
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.13
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %14 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %shr = ashr i64 %14, 8
  %conv25 = trunc i64 %shr to i8
  call void @WRF_wbyte(%struct.WRF_output_* %13, i8 zeroext %conv25) #3
  %15 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %16 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %and = and i64 %16, 255
  %conv26 = trunc i64 %and to i8
  call void @WRF_wbyte(%struct.WRF_output_* %15, i8 zeroext %conv26) #3
  br label %if.end.29

if.else.27:                                       ; preds = %land.lhs.true.4, %if.else
  %17 = bitcast [4 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %18, i8 zeroext 29) #3
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %19 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  call void @write_4_byte_int(i8* %arraydecay, i64 %19) #3
  %20 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  call void @WRF_wtext(%struct.WRF_output_* %20, i8* %arraydecay28, i64 4) #3
  %21 = bitcast [4 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  ret void
}

declare void @WRF_wbyte(%struct.WRF_output_*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @write_type2_float(%struct.WRF_output_* %a_output, double %a_float) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_float.addr = alloca double, align 8
  %buffer = alloca [32 x i8], align 16
  %p = alloca i8*, align 8
  %high = alloca i32, align 4
  %c = alloca i8, align 1
  %n = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store double %a_float, double* %a_float.addr, align 8, !tbaa !38
  %0 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %2 = bitcast i32* %high to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %high, align 4, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  store i8 0, i8* %c, align 1, !tbaa !13
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  %3 = load double, double* %a_float.addr, align 8, !tbaa !38
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %3) #3
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %4, i8 zeroext 30) #3
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start(i64 1, i8* %n) #1
  store i8 0, i8* %n, align 1, !tbaa !13
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !13
  %conv = sext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !13
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !13
  %conv6 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv6, 48
  %conv7 = trunc i32 %sub to i8
  store i8 %conv7, i8* %n, align 1, !tbaa !13
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %for.cond
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 46
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store i8 10, i8* %n, align 1, !tbaa !13
  br label %if.end.38

if.else.12:                                       ; preds = %if.else
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 101
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !13
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 69
  br i1 %cmp17, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %lor.lhs.false, %if.else.12
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 45
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.19
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 12, i8* %n, align 1, !tbaa !13
  br label %if.end

if.else.24:                                       ; preds = %if.then.19
  store i8 11, i8* %n, align 1, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  br label %if.end.37

if.else.25:                                       ; preds = %lor.lhs.false
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !13
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.25
  store i8 14, i8* %n, align 1, !tbaa !13
  br label %if.end.36

if.else.30:                                       ; preds = %if.else.25
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.30
  store i8 15, i8* %n, align 1, !tbaa !13
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.11
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then
  %24 = load i32, i32* %high, align 4, !tbaa !7
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.40, label %if.else.49

if.then.40:                                       ; preds = %if.end.39
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %conv41 = sext i8 %26 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.40
  %27 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %27, i8 zeroext -1) #3
  br label %if.end.48

if.else.45:                                       ; preds = %if.then.40
  %28 = load i8, i8* %n, align 1, !tbaa !13
  %conv46 = sext i8 %28 to i32
  %shl = shl i32 %conv46, 4
  %conv47 = trunc i32 %shl to i8
  store i8 %conv47, i8* %c, align 1, !tbaa !13
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.53

if.else.49:                                       ; preds = %if.end.39
  %29 = load i8, i8* %n, align 1, !tbaa !13
  %conv50 = sext i8 %29 to i32
  %30 = load i8, i8* %c, align 1, !tbaa !13
  %conv51 = sext i8 %30 to i32
  %or = or i32 %conv51, %conv50
  %conv52 = trunc i32 %or to i8
  store i8 %conv52, i8* %c, align 1, !tbaa !13
  %31 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %32 = load i8, i8* %c, align 1, !tbaa !13
  call void @WRF_wbyte(%struct.WRF_output_* %31, i8 zeroext %32) #3
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.end.48
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %conv54 = sext i8 %34 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.53
  %35 = load i32, i32* %high, align 4, !tbaa !7
  %tobool59 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool59, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %high, align 4, !tbaa !7
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57
  call void @llvm.lifetime.end(i64 1, i8* %n) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %37 = bitcast i32* %high to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %39) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @write_4_byte_int(i8* %a_output, i64 %a_int) #0 {
entry:
  %a_output.addr = alloca i8*, align 8
  %a_int.addr = alloca i64, align 8
  store i8* %a_output, i8** %a_output.addr, align 8, !tbaa !1
  store i64 %a_int, i64* %a_int.addr, align 8, !tbaa !5
  %0 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %shr = ashr i64 %0, 24
  %conv = trunc i64 %shr to i8
  %1 = load i8*, i8** %a_output.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !13
  %2 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %shr1 = ashr i64 %2, 16
  %conv2 = trunc i64 %shr1 to i8
  %3 = load i8*, i8** %a_output.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !13
  %4 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %shr4 = ashr i64 %4, 8
  %conv5 = trunc i64 %shr4 to i8
  %5 = load i8*, i8** %a_output.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !13
  %6 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %and = and i64 %6, 255
  %conv7 = trunc i64 %and to i8
  %7 = load i8*, i8** %a_output.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_delta_array_entry(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %a_feature_id, i32 %a_two_byte_op, i32 %a_op, i32 %a_divisor) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_feature_id.addr = alloca i32, align 4
  %a_two_byte_op.addr = alloca i32, align 4
  %a_op.addr = alloca i32, align 4
  %a_divisor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %prev_value = alloca i16, align 2
  %value = alloca i16, align 2
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %a_feature_id, i32* %a_feature_id.addr, align 4, !tbaa !7
  store i32 %a_two_byte_op, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  store i32 %a_op, i32* %a_op.addr, align 4, !tbaa !7
  store i32 %a_divisor, i32* %a_divisor.addr, align 4, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %2, i32 0, i32 20
  %3 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !14
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %5 = load i32, i32* %a_feature_id.addr, align 4, !tbaa !7
  %sub = sub nsw i32 %5, 1
  %call = call zeroext i16 %3(%struct.gs_fapi_font_s* %4, i32 %sub, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !7
  %6 = load i32, i32* %count, align 4, !tbaa !7
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %7 = bitcast i16* %prev_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 0, i16* %prev_value, align 2, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %9 = load i32, i32* %count, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word4 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %11, i32 0, i32 20
  %12 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word4, align 8, !tbaa !14
  %13 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %14 = load i32, i32* %a_feature_id.addr, align 4, !tbaa !7
  %15 = load i32, i32* %i, align 4, !tbaa !7
  %call5 = call zeroext i16 %12(%struct.gs_fapi_font_s* %13, i32 %14, i32 %15) #3
  store i16 %call5, i16* %value, align 2, !tbaa !36
  %16 = load i16, i16* %value, align 2, !tbaa !36
  %conv6 = sext i16 %16 to i32
  %17 = load i32, i32* %a_divisor.addr, align 4, !tbaa !7
  %div = sdiv i32 %conv6, %17
  %conv7 = trunc i32 %div to i16
  store i16 %conv7, i16* %value, align 2, !tbaa !36
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %19 = load i16, i16* %value, align 2, !tbaa !36
  %conv8 = sext i16 %19 to i32
  %20 = load i16, i16* %prev_value, align 2, !tbaa !36
  %conv9 = sext i16 %20 to i32
  %sub10 = sub nsw i32 %conv8, %conv9
  %conv11 = sext i32 %sub10 to i64
  call void @write_type2_int(%struct.WRF_output_* %18, i64 %conv11) #3
  %21 = load i16, i16* %value, align 2, !tbaa !36
  store i16 %21, i16* %prev_value, align 2, !tbaa !36
  %22 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %a_two_byte_op.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.end
  %25 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %25, i8 zeroext 12) #3
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.end
  %26 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %27 = load i32, i32* %a_op.addr, align 4, !tbaa !7
  %conv13 = trunc i32 %27 to i8
  call void @WRF_wbyte(%struct.WRF_output_* %26, i8 zeroext %conv13) #3
  %28 = bitcast i16* %prev_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %29 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"WRF_output_", !2, i64 0, !6, i64 8, !6, i64 16, !8, i64 24, !11, i64 28}
!11 = !{!"short", !3, i64 0}
!12 = !{!10, !2, i64 0}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !2, i64 192}
!15 = !{!"gs_fapi_font_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !3, i64 72, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !8, i64 184, !16, i64 188, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!16 = !{!"float", !3, i64 0}
!17 = !{!10, !6, i64 8}
!18 = !{!15, !2, i64 232}
!19 = !{!15, !2, i64 200}
!20 = !{!15, !2, i64 160}
!21 = !{!22, !8, i64 536}
!22 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !23, i64 40, !6, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !16, i64 156, !8, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !27, i64 376, !30, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !31, i64 448}
!23 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!24 = !{!"gs_matrix_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!25 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!26 = !{!"gs_font_name_s", !3, i64 0, !8, i64 48}
!27 = !{!"gs_rect_s", !28, i64 0, !28, i64 16}
!28 = !{!"gs_point_s", !29, i64 0, !29, i64 8}
!29 = !{!"double", !3, i64 0}
!30 = !{!"gs_uid_s", !6, i64 0, !2, i64 8}
!31 = !{!"gs_type1_data_s", !32, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !6, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !16, i64 100, !16, i64 104, !33, i64 108, !16, i64 168, !8, i64 172, !33, i64 176, !33, i64 236, !8, i64 280, !33, i64 284, !8, i64 328, !33, i64 332, !33, i64 340, !33, i64 348, !33, i64 400, !33, i64 452, !3, i64 520, !8, i64 536}
!32 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!33 = !{!"", !8, i64 0, !3, i64 4}
!34 = !{!22, !8, i64 540}
!35 = !{!15, !2, i64 240}
!36 = !{!11, !11, i64 0}
!37 = !{!15, !2, i64 208}
!38 = !{!29, !29, i64 0}
