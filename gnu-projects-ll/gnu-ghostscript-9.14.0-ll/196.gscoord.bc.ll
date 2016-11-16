; ModuleID = './gscoord.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_fapi_server_s = type opaque
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @gs_initmatrix(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_defaultmatrix(%struct.gs_state_s* %1, %struct.gs_matrix_s* %imat) #4
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %4 = load float, float* %tx, align 4, !tbaa !24
  %conv = fpext float %4 to double
  %cmp = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %cond.false.56

land.lhs.true:                                    ; preds = %entry
  %tx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %5 = load float, float* %tx2, align 4, !tbaa !24
  %conv3 = fpext float %5 to double
  %cmp4 = fcmp olt double %conv3, 8.388608e+06
  br i1 %cmp4, label %land.lhs.true.6, label %cond.false.56

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %6 = load float, float* %ty, align 4, !tbaa !25
  %conv7 = fpext float %6 to double
  %cmp8 = fcmp oge double %conv7, -8.388608e+06
  br i1 %cmp8, label %land.lhs.true.10, label %cond.false.56

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %7 = load float, float* %ty11, align 4, !tbaa !25
  %conv12 = fpext float %7 to double
  %cmp13 = fcmp olt double %conv12, 8.388608e+06
  br i1 %cmp13, label %cond.true, label %cond.false.56

cond.true:                                        ; preds = %land.lhs.true.10
  %tx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %8 = load float, float* %tx15, align 4, !tbaa !24
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 5
  %tx16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  store float %8, float* %tx16, align 4, !tbaa !26
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 5
  %tx18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 4
  %11 = load float, float* %tx18, align 4, !tbaa !26
  %conv19 = fpext float %11 to double
  %cmp20 = fcmp oge double %conv19, -8.388608e+06
  br i1 %cmp20, label %land.lhs.true.22, label %cond.false

land.lhs.true.22:                                 ; preds = %cond.true
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 5
  %tx24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 4
  %13 = load float, float* %tx24, align 4, !tbaa !26
  %conv25 = fpext float %13 to double
  %cmp26 = fcmp olt double %conv25, 8.388608e+06
  br i1 %cmp26, label %cond.true.28, label %cond.false

cond.true.28:                                     ; preds = %land.lhs.true.22
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 5
  %tx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 4
  %15 = load float, float* %tx30, align 4, !tbaa !26
  %mul = fmul float %15, 2.560000e+02
  %conv31 = fptosi float %mul to i32
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm32, i32 0, i32 6
  store i32 %conv31, i32* %tx_fixed, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.22, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.28
  %cond = phi i32 [ 0, %cond.true.28 ], [ -13, %cond.false ]
  %ty33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %17 = load float, float* %ty33, align 4, !tbaa !25
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %ty35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 5
  store float %17, float* %ty35, align 4, !tbaa !28
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 5
  %ty37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 5
  %20 = load float, float* %ty37, align 4, !tbaa !28
  %conv38 = fpext float %20 to double
  %cmp39 = fcmp oge double %conv38, -8.388608e+06
  br i1 %cmp39, label %land.lhs.true.41, label %cond.false.53

land.lhs.true.41:                                 ; preds = %cond.end
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 5
  %ty43 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm42, i32 0, i32 5
  %22 = load float, float* %ty43, align 4, !tbaa !28
  %conv44 = fpext float %22 to double
  %cmp45 = fcmp olt double %conv44, 8.388608e+06
  br i1 %cmp45, label %cond.true.47, label %cond.false.53

cond.true.47:                                     ; preds = %land.lhs.true.41
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 5
  %ty49 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm48, i32 0, i32 5
  %24 = load float, float* %ty49, align 4, !tbaa !28
  %mul50 = fmul float %24, 2.560000e+02
  %conv51 = fptosi float %mul50 to i32
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm52, i32 0, i32 7
  store i32 %conv51, i32* %ty_fixed, align 4, !tbaa !29
  br label %cond.end.54

cond.false.53:                                    ; preds = %land.lhs.true.41, %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.47
  %cond55 = phi i32 [ 0, %cond.true.47 ], [ -13, %cond.false.53 ]
  br label %cond.end.63

cond.false.56:                                    ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %entry
  %tx57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %26 = load float, float* %tx57, align 4, !tbaa !24
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 5
  %tx59 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm58, i32 0, i32 4
  store float %26, float* %tx59, align 4, !tbaa !26
  %ty60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %28 = load float, float* %ty60, align 4, !tbaa !25
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 5
  %ty62 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm61, i32 0, i32 5
  store float %28, float* %ty62, align 4, !tbaa !28
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.56, %cond.end.54
  %cond64 = phi i32 [ 1, %cond.end.54 ], [ 0, %cond.false.56 ]
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm65 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm65, i32 0, i32 8
  store i32 %cond64, i32* %txy_fixed_valid, align 4, !tbaa !30
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 5
  %32 = bitcast %struct.gs_matrix_fixed_s* %ctm66 to %struct.gs_matrix_s*
  %33 = bitcast %struct.gs_matrix_s* %32 to i8*
  %34 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !31
  %35 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %35) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_defaultmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default_set = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 60
  %2 = load i32, i32* %ctm_default_set, align 4, !tbaa !33
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 59
  %5 = bitcast %struct.gs_matrix_s* %3 to i8*
  %6 = bitcast %struct.gs_matrix_s* %ctm_default to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 4, i1 false), !tbaa.struct !31
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !34
  store %struct.gx_device_s* %8, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gs_deviceinitialmatrix(%struct.gx_device_s* %9, %struct.gs_matrix_s* %10) #4
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 24
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !32
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 22
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %14 = load float, float* %arrayidx1, align 4, !tbaa !32
  %mul = fmul float %12, %14
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %16 = load float, float* %arrayidx2, align 4, !tbaa !32
  %div = fdiv float %mul, %16
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 4
  %18 = load float, float* %tx, align 4, !tbaa !24
  %add = fadd float %18, %div
  store float %add, float* %tx, align 4, !tbaa !24
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %Margins3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 24
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %Margins3, i32 0, i64 1
  %20 = load float, float* %arrayidx4, align 4, !tbaa !32
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %HWResolution5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution5, i32 0, i64 1
  %22 = load float, float* %arrayidx6, align 4, !tbaa !32
  %mul7 = fmul float %20, %22
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %MarginsHWResolution8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 23
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution8, i32 0, i64 1
  %24 = load float, float* %arrayidx9, align 4, !tbaa !32
  %div10 = fdiv float %mul7, %24
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 5
  %26 = load float, float* %ty, align 4, !tbaa !25
  %add11 = fadd float %26, %div10
  store float %add11, float* %ty, align 4, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gs_deviceinitialmatrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setdefaultmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_matrix_s* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default_set = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 60
  store i32 0, i32* %ctm_default_set, align 4, !tbaa !33
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 59
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_matrix_s* %ctm_default to i8*
  %5 = bitcast %struct.gs_matrix_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 4, i1 false), !tbaa.struct !31
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default_set1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 60
  store i32 1, i32* %ctm_default_set1, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 5
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %3 = bitcast %struct.gs_matrix_s* %0 to i8*
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 4, i1 false), !tbaa.struct !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcharmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %cmat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 5
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %2, %struct.gs_matrix_s* %4, %struct.gs_matrix_s* %cmat) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %5 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %7 = load float, float* %tx, align 4, !tbaa !24
  %conv = fpext float %7 to double
  %cmp1 = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp1, label %land.lhs.true, label %cond.false.57

land.lhs.true:                                    ; preds = %if.end
  %tx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %8 = load float, float* %tx3, align 4, !tbaa !24
  %conv4 = fpext float %8 to double
  %cmp5 = fcmp olt double %conv4, 8.388608e+06
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false.57

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %9 = load float, float* %ty, align 4, !tbaa !25
  %conv8 = fpext float %9 to double
  %cmp9 = fcmp oge double %conv8, -8.388608e+06
  br i1 %cmp9, label %land.lhs.true.11, label %cond.false.57

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %ty12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %10 = load float, float* %ty12, align 4, !tbaa !25
  %conv13 = fpext float %10 to double
  %cmp14 = fcmp olt double %conv13, 8.388608e+06
  br i1 %cmp14, label %cond.true, label %cond.false.57

cond.true:                                        ; preds = %land.lhs.true.11
  %tx16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %11 = load float, float* %tx16, align 4, !tbaa !24
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 72
  %tx17 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm, i32 0, i32 4
  store float %11, float* %tx17, align 4, !tbaa !36
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 72
  %tx19 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm18, i32 0, i32 4
  %14 = load float, float* %tx19, align 4, !tbaa !36
  %conv20 = fpext float %14 to double
  %cmp21 = fcmp oge double %conv20, -8.388608e+06
  br i1 %cmp21, label %land.lhs.true.23, label %cond.false

land.lhs.true.23:                                 ; preds = %cond.true
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 72
  %tx25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm24, i32 0, i32 4
  %16 = load float, float* %tx25, align 4, !tbaa !36
  %conv26 = fpext float %16 to double
  %cmp27 = fcmp olt double %conv26, 8.388608e+06
  br i1 %cmp27, label %cond.true.29, label %cond.false

cond.true.29:                                     ; preds = %land.lhs.true.23
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 72
  %tx31 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm30, i32 0, i32 4
  %18 = load float, float* %tx31, align 4, !tbaa !36
  %mul = fmul float %18, 2.560000e+02
  %conv32 = fptosi float %mul to i32
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 72
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm33, i32 0, i32 6
  store i32 %conv32, i32* %tx_fixed, align 4, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.23, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.29
  %cond = phi i32 [ 0, %cond.true.29 ], [ -13, %cond.false ]
  %ty34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %20 = load float, float* %ty34, align 4, !tbaa !25
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 72
  %ty36 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm35, i32 0, i32 5
  store float %20, float* %ty36, align 4, !tbaa !38
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 72
  %ty38 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm37, i32 0, i32 5
  %23 = load float, float* %ty38, align 4, !tbaa !38
  %conv39 = fpext float %23 to double
  %cmp40 = fcmp oge double %conv39, -8.388608e+06
  br i1 %cmp40, label %land.lhs.true.42, label %cond.false.54

land.lhs.true.42:                                 ; preds = %cond.end
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 72
  %ty44 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm43, i32 0, i32 5
  %25 = load float, float* %ty44, align 4, !tbaa !38
  %conv45 = fpext float %25 to double
  %cmp46 = fcmp olt double %conv45, 8.388608e+06
  br i1 %cmp46, label %cond.true.48, label %cond.false.54

cond.true.48:                                     ; preds = %land.lhs.true.42
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 72
  %ty50 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm49, i32 0, i32 5
  %27 = load float, float* %ty50, align 4, !tbaa !38
  %mul51 = fmul float %27, 2.560000e+02
  %conv52 = fptosi float %mul51 to i32
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 72
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm53, i32 0, i32 7
  store i32 %conv52, i32* %ty_fixed, align 4, !tbaa !39
  br label %cond.end.55

cond.false.54:                                    ; preds = %land.lhs.true.42, %cond.end
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.48
  %cond56 = phi i32 [ 0, %cond.true.48 ], [ -13, %cond.false.54 ]
  br label %cond.end.64

cond.false.57:                                    ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %if.end
  %tx58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %29 = load float, float* %tx58, align 4, !tbaa !24
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 72
  %tx60 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm59, i32 0, i32 4
  store float %29, float* %tx60, align 4, !tbaa !36
  %ty61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %31 = load float, float* %ty61, align 4, !tbaa !25
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm62 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 72
  %ty63 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm62, i32 0, i32 5
  store float %31, float* %ty63, align 4, !tbaa !38
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.57, %cond.end.55
  %cond65 = phi i32 [ 1, %cond.end.55 ], [ 0, %cond.false.57 ]
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 72
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm66, i32 0, i32 8
  store i32 %cond65, i32* %txy_fixed_valid, align 4, !tbaa !40
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm67 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 72
  %35 = bitcast %struct.gs_matrix_fixed_s* %char_tm67 to %struct.gs_matrix_s*
  %36 = bitcast %struct.gs_matrix_s* %35 to i8*
  %37 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 4, i1 false), !tbaa.struct !31
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 73
  store i32 1, i32* %char_tm_valid, align 4, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.64, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentcharmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %ptm, i32 %force) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ptm.addr = alloca %struct.gs_matrix_s*, align 8
  %force.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %ptm, %struct.gs_matrix_s** %ptm.addr, align 8, !tbaa !1
  store i32 %force, i32* %force.addr, align 4, !tbaa !35
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 73
  %1 = load i32, i32* %char_tm_valid, align 4, !tbaa !23
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %force.addr, align 4, !tbaa !35
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 70
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !41
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 9
  %call = call i32 @gs_setcharmatrix(%struct.gs_state_s* %4, %struct.gs_matrix_s* %FontMatrix) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %7 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then.2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %entry
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ptm.addr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_matrix_s* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %ptm.addr, align 8, !tbaa !1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 72
  %13 = bitcast %struct.gs_matrix_fixed_s* %char_tm to %struct.gs_matrix_s*
  %14 = bitcast %struct.gs_matrix_s* %11 to i8*
  %15 = bitcast %struct.gs_matrix_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 4, i1 false), !tbaa.struct !31
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %cleanup
  %16 = load i32, i32* %retval
  ret i32 %16

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_setmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 4
  %3 = load float, float* %tx, align 4, !tbaa !24
  %conv = fpext float %3 to double
  %cmp = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %cond.false.56

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 4
  %5 = load float, float* %tx2, align 4, !tbaa !24
  %conv3 = fpext float %5 to double
  %cmp4 = fcmp olt double %conv3, 8.388608e+06
  br i1 %cmp4, label %land.lhs.true.6, label %cond.false.56

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 5
  %7 = load float, float* %ty, align 4, !tbaa !25
  %conv7 = fpext float %7 to double
  %cmp8 = fcmp oge double %conv7, -8.388608e+06
  br i1 %cmp8, label %land.lhs.true.10, label %cond.false.56

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 5
  %9 = load float, float* %ty11, align 4, !tbaa !25
  %conv12 = fpext float %9 to double
  %cmp13 = fcmp olt double %conv12, 8.388608e+06
  br i1 %cmp13, label %cond.true, label %cond.false.56

cond.true:                                        ; preds = %land.lhs.true.10
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 4
  %11 = load float, float* %tx15, align 4, !tbaa !24
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 5
  %tx16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  store float %11, float* %tx16, align 4, !tbaa !26
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 5
  %tx18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 4
  %14 = load float, float* %tx18, align 4, !tbaa !26
  %conv19 = fpext float %14 to double
  %cmp20 = fcmp oge double %conv19, -8.388608e+06
  br i1 %cmp20, label %land.lhs.true.22, label %cond.false

land.lhs.true.22:                                 ; preds = %cond.true
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 5
  %tx24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 4
  %16 = load float, float* %tx24, align 4, !tbaa !26
  %conv25 = fpext float %16 to double
  %cmp26 = fcmp olt double %conv25, 8.388608e+06
  br i1 %cmp26, label %cond.true.28, label %cond.false

cond.true.28:                                     ; preds = %land.lhs.true.22
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 5
  %tx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 4
  %18 = load float, float* %tx30, align 4, !tbaa !26
  %mul = fmul float %18, 2.560000e+02
  %conv31 = fptosi float %mul to i32
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm32, i32 0, i32 6
  store i32 %conv31, i32* %tx_fixed, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.22, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.28
  %cond = phi i32 [ 0, %cond.true.28 ], [ -13, %cond.false ]
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 5
  %21 = load float, float* %ty33, align 4, !tbaa !25
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 5
  %ty35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 5
  store float %21, float* %ty35, align 4, !tbaa !28
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 5
  %ty37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 5
  %24 = load float, float* %ty37, align 4, !tbaa !28
  %conv38 = fpext float %24 to double
  %cmp39 = fcmp oge double %conv38, -8.388608e+06
  br i1 %cmp39, label %land.lhs.true.41, label %cond.false.53

land.lhs.true.41:                                 ; preds = %cond.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 5
  %ty43 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm42, i32 0, i32 5
  %26 = load float, float* %ty43, align 4, !tbaa !28
  %conv44 = fpext float %26 to double
  %cmp45 = fcmp olt double %conv44, 8.388608e+06
  br i1 %cmp45, label %cond.true.47, label %cond.false.53

cond.true.47:                                     ; preds = %land.lhs.true.41
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 5
  %ty49 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm48, i32 0, i32 5
  %28 = load float, float* %ty49, align 4, !tbaa !28
  %mul50 = fmul float %28, 2.560000e+02
  %conv51 = fptosi float %mul50 to i32
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm52, i32 0, i32 7
  store i32 %conv51, i32* %ty_fixed, align 4, !tbaa !29
  br label %cond.end.54

cond.false.53:                                    ; preds = %land.lhs.true.41, %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.47
  %cond55 = phi i32 [ 0, %cond.true.47 ], [ -13, %cond.false.53 ]
  br label %cond.end.63

cond.false.56:                                    ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %entry
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 4
  %31 = load float, float* %tx57, align 4, !tbaa !24
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 5
  %tx59 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm58, i32 0, i32 4
  store float %31, float* %tx59, align 4, !tbaa !26
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 5
  %34 = load float, float* %ty60, align 4, !tbaa !25
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 5
  %ty62 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm61, i32 0, i32 5
  store float %34, float* %ty62, align 4, !tbaa !28
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.56, %cond.end.54
  %cond64 = phi i32 [ 1, %cond.end.54 ], [ 0, %cond.false.56 ]
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm65 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm65, i32 0, i32 8
  store i32 %cond64, i32* %txy_fixed_valid, align 4, !tbaa !30
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 5
  %38 = bitcast %struct.gs_matrix_fixed_s* %ctm66 to %struct.gs_matrix_s*
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gs_matrix_s* %38 to i8*
  %41 = bitcast %struct.gs_matrix_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 24, i32 4, i1 false), !tbaa.struct !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_imager_setmatrix(%struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 4
  %1 = load float, float* %tx, align 4, !tbaa !24
  %conv = fpext float %1 to double
  %cmp = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %cond.false.56

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 4
  %3 = load float, float* %tx2, align 4, !tbaa !24
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp olt double %conv3, 8.388608e+06
  br i1 %cmp4, label %land.lhs.true.6, label %cond.false.56

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 5
  %5 = load float, float* %ty, align 4, !tbaa !25
  %conv7 = fpext float %5 to double
  %cmp8 = fcmp oge double %conv7, -8.388608e+06
  br i1 %cmp8, label %land.lhs.true.10, label %cond.false.56

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 5
  %7 = load float, float* %ty11, align 4, !tbaa !25
  %conv12 = fpext float %7 to double
  %cmp13 = fcmp olt double %conv12, 8.388608e+06
  br i1 %cmp13, label %cond.true, label %cond.false.56

cond.true:                                        ; preds = %land.lhs.true.10
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 4
  %9 = load float, float* %tx15, align 4, !tbaa !24
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 5
  %tx16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  store float %9, float* %tx16, align 4, !tbaa !42
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 5
  %tx18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 4
  %12 = load float, float* %tx18, align 4, !tbaa !42
  %conv19 = fpext float %12 to double
  %cmp20 = fcmp oge double %conv19, -8.388608e+06
  br i1 %cmp20, label %land.lhs.true.22, label %cond.false

land.lhs.true.22:                                 ; preds = %cond.true
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 5
  %tx24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 4
  %14 = load float, float* %tx24, align 4, !tbaa !42
  %conv25 = fpext float %14 to double
  %cmp26 = fcmp olt double %conv25, 8.388608e+06
  br i1 %cmp26, label %cond.true.28, label %cond.false

cond.true.28:                                     ; preds = %land.lhs.true.22
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 5
  %tx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 4
  %16 = load float, float* %tx30, align 4, !tbaa !42
  %mul = fmul float %16, 2.560000e+02
  %conv31 = fptosi float %mul to i32
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm32 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm32, i32 0, i32 6
  store i32 %conv31, i32* %tx_fixed, align 4, !tbaa !44
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.22, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.28
  %cond = phi i32 [ 0, %cond.true.28 ], [ -13, %cond.false ]
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 5
  %19 = load float, float* %ty33, align 4, !tbaa !25
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 5
  %ty35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 5
  store float %19, float* %ty35, align 4, !tbaa !45
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 5
  %ty37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 5
  %22 = load float, float* %ty37, align 4, !tbaa !45
  %conv38 = fpext float %22 to double
  %cmp39 = fcmp oge double %conv38, -8.388608e+06
  br i1 %cmp39, label %land.lhs.true.41, label %cond.false.53

land.lhs.true.41:                                 ; preds = %cond.end
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 5
  %ty43 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm42, i32 0, i32 5
  %24 = load float, float* %ty43, align 4, !tbaa !45
  %conv44 = fpext float %24 to double
  %cmp45 = fcmp olt double %conv44, 8.388608e+06
  br i1 %cmp45, label %cond.true.47, label %cond.false.53

cond.true.47:                                     ; preds = %land.lhs.true.41
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 5
  %ty49 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm48, i32 0, i32 5
  %26 = load float, float* %ty49, align 4, !tbaa !45
  %mul50 = fmul float %26, 2.560000e+02
  %conv51 = fptosi float %mul50 to i32
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm52 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm52, i32 0, i32 7
  store i32 %conv51, i32* %ty_fixed, align 4, !tbaa !46
  br label %cond.end.54

cond.false.53:                                    ; preds = %land.lhs.true.41, %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.47
  %cond55 = phi i32 [ 0, %cond.true.47 ], [ -13, %cond.false.53 ]
  br label %cond.end.63

cond.false.56:                                    ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %entry
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 4
  %29 = load float, float* %tx57, align 4, !tbaa !24
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 5
  %tx59 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm58, i32 0, i32 4
  store float %29, float* %tx59, align 4, !tbaa !42
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 5
  %32 = load float, float* %ty60, align 4, !tbaa !25
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm61 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 5
  %ty62 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm61, i32 0, i32 5
  store float %32, float* %ty62, align 4, !tbaa !45
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.56, %cond.end.54
  %cond64 = phi i32 [ 1, %cond.end.54 ], [ 0, %cond.false.56 ]
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm65 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm65, i32 0, i32 8
  store i32 %cond64, i32* %txy_fixed_valid, align 4, !tbaa !47
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 5
  %36 = bitcast %struct.gs_matrix_fixed_s* %ctm66 to %struct.gs_matrix_s*
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gs_matrix_s* %36 to i8*
  %39 = bitcast %struct.gs_matrix_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 4, i1 false), !tbaa.struct !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_settocharmatrix(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 73
  %1 = load i32, i32* %char_tm_valid, align 4, !tbaa !23
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 72
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm to i8*
  %5 = bitcast %struct.gs_matrix_fixed_s* %char_tm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 36, i32 4, i1 false), !tbaa.struct !48
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -23, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_translate(%struct.gs_state_s* %pgs, double %dx, double %dy) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !49
  store double %dy, double* %dy.addr, align 8, !tbaa !49
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load double, double* %dx.addr, align 8, !tbaa !49
  %3 = load double, double* %dy.addr, align 8, !tbaa !49
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %5 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_distance_transform(double %2, double %3, %struct.gs_matrix_s* %5, %struct.gs_point_s* %pt) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %7 = load double, double* %x, align 8, !tbaa !50
  %conv = fptrunc double %7 to float
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 4
  %9 = load float, float* %tx, align 4, !tbaa !26
  %add = fadd float %conv, %9
  %conv2 = fpext float %add to double
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %conv2, double* %x3, align 8, !tbaa !50
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !51
  %conv4 = fptrunc double %10 to float
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm5, i32 0, i32 5
  %12 = load float, float* %ty, align 4, !tbaa !28
  %add6 = fadd float %conv4, %12
  %conv7 = fpext float %add6 to double
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  store double %conv7, double* %y8, align 8, !tbaa !51
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %15 = load double, double* %x9, align 8, !tbaa !50
  %cmp10 = fcmp oge double %15, -8.388608e+06
  br i1 %cmp10, label %land.lhs.true, label %cond.false.67

land.lhs.true:                                    ; preds = %if.end
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %16 = load double, double* %x12, align 8, !tbaa !50
  %cmp13 = fcmp olt double %16, 8.388608e+06
  br i1 %cmp13, label %land.lhs.true.15, label %cond.false.67

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %17 = load double, double* %y16, align 8, !tbaa !51
  %cmp17 = fcmp oge double %17, -8.388608e+06
  br i1 %cmp17, label %land.lhs.true.19, label %cond.false.67

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %18 = load double, double* %y20, align 8, !tbaa !51
  %cmp21 = fcmp olt double %18, 8.388608e+06
  br i1 %cmp21, label %cond.true, label %cond.false.67

cond.true:                                        ; preds = %land.lhs.true.19
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %19 = load double, double* %x23, align 8, !tbaa !50
  %conv24 = fptrunc double %19 to float
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 5
  %tx26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm25, i32 0, i32 4
  store float %conv24, float* %tx26, align 4, !tbaa !26
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 5
  %tx28 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm27, i32 0, i32 4
  %22 = load float, float* %tx28, align 4, !tbaa !26
  %conv29 = fpext float %22 to double
  %cmp30 = fcmp oge double %conv29, -8.388608e+06
  br i1 %cmp30, label %land.lhs.true.32, label %cond.false

land.lhs.true.32:                                 ; preds = %cond.true
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 5
  %tx34 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm33, i32 0, i32 4
  %24 = load float, float* %tx34, align 4, !tbaa !26
  %conv35 = fpext float %24 to double
  %cmp36 = fcmp olt double %conv35, 8.388608e+06
  br i1 %cmp36, label %cond.true.38, label %cond.false

cond.true.38:                                     ; preds = %land.lhs.true.32
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 5
  %tx40 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm39, i32 0, i32 4
  %26 = load float, float* %tx40, align 4, !tbaa !26
  %mul = fmul float %26, 2.560000e+02
  %conv41 = fptosi float %mul to i32
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm42, i32 0, i32 6
  store i32 %conv41, i32* %tx_fixed, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.32, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.38
  %cond = phi i32 [ 0, %cond.true.38 ], [ -13, %cond.false ]
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %28 = load double, double* %y43, align 8, !tbaa !51
  %conv44 = fptrunc double %28 to float
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 5
  %ty46 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm45, i32 0, i32 5
  store float %conv44, float* %ty46, align 4, !tbaa !28
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm47 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 5
  %ty48 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm47, i32 0, i32 5
  %31 = load float, float* %ty48, align 4, !tbaa !28
  %conv49 = fpext float %31 to double
  %cmp50 = fcmp oge double %conv49, -8.388608e+06
  br i1 %cmp50, label %land.lhs.true.52, label %cond.false.64

land.lhs.true.52:                                 ; preds = %cond.end
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 5
  %ty54 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm53, i32 0, i32 5
  %33 = load float, float* %ty54, align 4, !tbaa !28
  %conv55 = fpext float %33 to double
  %cmp56 = fcmp olt double %conv55, 8.388608e+06
  br i1 %cmp56, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %land.lhs.true.52
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 5
  %ty60 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm59, i32 0, i32 5
  %35 = load float, float* %ty60, align 4, !tbaa !28
  %mul61 = fmul float %35, 2.560000e+02
  %conv62 = fptosi float %mul61 to i32
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm63 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm63, i32 0, i32 7
  store i32 %conv62, i32* %ty_fixed, align 4, !tbaa !29
  br label %cond.end.65

cond.false.64:                                    ; preds = %land.lhs.true.52, %cond.end
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.58
  %cond66 = phi i32 [ 0, %cond.true.58 ], [ -13, %cond.false.64 ]
  br label %cond.end.76

cond.false.67:                                    ; preds = %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true, %if.end
  %x68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %37 = load double, double* %x68, align 8, !tbaa !50
  %conv69 = fptrunc double %37 to float
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 5
  %tx71 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm70, i32 0, i32 4
  store float %conv69, float* %tx71, align 4, !tbaa !26
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %39 = load double, double* %y72, align 8, !tbaa !51
  %conv73 = fptrunc double %39 to float
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm74 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 5
  %ty75 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm74, i32 0, i32 5
  store float %conv73, float* %ty75, align 4, !tbaa !28
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.67, %cond.end.65
  %cond77 = phi i32 [ 1, %cond.end.65 ], [ 0, %cond.false.67 ]
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm78 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm78, i32 0, i32 8
  store i32 %cond77, i32* %txy_fixed_valid, align 4, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.76, %if.then
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_translate_untransformed(%struct.gs_state_s* %pgs, double %dx, double %dy) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !49
  store double %dy, double* %dy.addr, align 8, !tbaa !49
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load double, double* %dx.addr, align 8, !tbaa !49
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %4 = load float, float* %tx, align 4, !tbaa !26
  %add = fadd float %conv, %4
  %conv1 = fpext float %add to double
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %conv1, double* %x, align 8, !tbaa !50
  %5 = load double, double* %dy.addr, align 8, !tbaa !49
  %conv2 = fptrunc double %5 to float
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 5
  %7 = load float, float* %ty, align 4, !tbaa !28
  %add4 = fadd float %conv2, %7
  %conv5 = fpext float %add4 to double
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  store double %conv5, double* %y, align 8, !tbaa !51
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %10 = load double, double* %x6, align 8, !tbaa !50
  %cmp = fcmp oge double %10, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %cond.false.63

land.lhs.true:                                    ; preds = %entry
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %11 = load double, double* %x8, align 8, !tbaa !50
  %cmp9 = fcmp olt double %11, 8.388608e+06
  br i1 %cmp9, label %land.lhs.true.11, label %cond.false.63

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %12 = load double, double* %y12, align 8, !tbaa !51
  %cmp13 = fcmp oge double %12, -8.388608e+06
  br i1 %cmp13, label %land.lhs.true.15, label %cond.false.63

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %13 = load double, double* %y16, align 8, !tbaa !51
  %cmp17 = fcmp olt double %13, 8.388608e+06
  br i1 %cmp17, label %cond.true, label %cond.false.63

cond.true:                                        ; preds = %land.lhs.true.15
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %14 = load double, double* %x19, align 8, !tbaa !50
  %conv20 = fptrunc double %14 to float
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 5
  %tx22 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm21, i32 0, i32 4
  store float %conv20, float* %tx22, align 4, !tbaa !26
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 5
  %tx24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 4
  %17 = load float, float* %tx24, align 4, !tbaa !26
  %conv25 = fpext float %17 to double
  %cmp26 = fcmp oge double %conv25, -8.388608e+06
  br i1 %cmp26, label %land.lhs.true.28, label %cond.false

land.lhs.true.28:                                 ; preds = %cond.true
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %tx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 4
  %19 = load float, float* %tx30, align 4, !tbaa !26
  %conv31 = fpext float %19 to double
  %cmp32 = fcmp olt double %conv31, 8.388608e+06
  br i1 %cmp32, label %cond.true.34, label %cond.false

cond.true.34:                                     ; preds = %land.lhs.true.28
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 5
  %tx36 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm35, i32 0, i32 4
  %21 = load float, float* %tx36, align 4, !tbaa !26
  %mul = fmul float %21, 2.560000e+02
  %conv37 = fptosi float %mul to i32
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm38, i32 0, i32 6
  store i32 %conv37, i32* %tx_fixed, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.28, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.34
  %cond = phi i32 [ 0, %cond.true.34 ], [ -13, %cond.false ]
  %y39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %23 = load double, double* %y39, align 8, !tbaa !51
  %conv40 = fptrunc double %23 to float
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 5
  %ty42 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm41, i32 0, i32 5
  store float %conv40, float* %ty42, align 4, !tbaa !28
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 5
  %ty44 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm43, i32 0, i32 5
  %26 = load float, float* %ty44, align 4, !tbaa !28
  %conv45 = fpext float %26 to double
  %cmp46 = fcmp oge double %conv45, -8.388608e+06
  br i1 %cmp46, label %land.lhs.true.48, label %cond.false.60

land.lhs.true.48:                                 ; preds = %cond.end
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 5
  %ty50 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm49, i32 0, i32 5
  %28 = load float, float* %ty50, align 4, !tbaa !28
  %conv51 = fpext float %28 to double
  %cmp52 = fcmp olt double %conv51, 8.388608e+06
  br i1 %cmp52, label %cond.true.54, label %cond.false.60

cond.true.54:                                     ; preds = %land.lhs.true.48
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 5
  %ty56 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm55, i32 0, i32 5
  %30 = load float, float* %ty56, align 4, !tbaa !28
  %mul57 = fmul float %30, 2.560000e+02
  %conv58 = fptosi float %mul57 to i32
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm59, i32 0, i32 7
  store i32 %conv58, i32* %ty_fixed, align 4, !tbaa !29
  br label %cond.end.61

cond.false.60:                                    ; preds = %land.lhs.true.48, %cond.end
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.54
  %cond62 = phi i32 [ 0, %cond.true.54 ], [ -13, %cond.false.60 ]
  br label %cond.end.72

cond.false.63:                                    ; preds = %land.lhs.true.15, %land.lhs.true.11, %land.lhs.true, %entry
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %32 = load double, double* %x64, align 8, !tbaa !50
  %conv65 = fptrunc double %32 to float
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 5
  %tx67 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm66, i32 0, i32 4
  store float %conv65, float* %tx67, align 4, !tbaa !26
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %34 = load double, double* %y68, align 8, !tbaa !51
  %conv69 = fptrunc double %34 to float
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 5
  %ty71 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm70, i32 0, i32 5
  store float %conv69, float* %ty71, align 4, !tbaa !28
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.63, %cond.end.61
  %cond73 = phi i32 [ 1, %cond.end.61 ], [ 0, %cond.false.63 ]
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm74 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm74, i32 0, i32 8
  store i32 %cond73, i32* %txy_fixed_valid, align 4, !tbaa !30
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_scale(%struct.gs_state_s* %pgs, double %sx, double %sy) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %sx, double* %sx.addr, align 8, !tbaa !49
  store double %sy, double* %sy.addr, align 8, !tbaa !49
  %0 = load double, double* %sx.addr, align 8, !tbaa !49
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !52
  %conv = fpext float %2 to double
  %mul = fmul double %conv, %0
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %xx, align 4, !tbaa !52
  %3 = load double, double* %sx.addr, align 8, !tbaa !49
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 1
  %5 = load float, float* %xy, align 4, !tbaa !53
  %conv3 = fpext float %5 to double
  %mul4 = fmul double %conv3, %3
  %conv5 = fptrunc double %mul4 to float
  store float %conv5, float* %xy, align 4, !tbaa !53
  %6 = load double, double* %sy.addr, align 8, !tbaa !49
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 2
  %8 = load float, float* %yx, align 4, !tbaa !54
  %conv7 = fpext float %8 to double
  %mul8 = fmul double %conv7, %6
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, float* %yx, align 4, !tbaa !54
  %9 = load double, double* %sy.addr, align 8, !tbaa !49
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm10, i32 0, i32 3
  %11 = load float, float* %yy, align 4, !tbaa !55
  %conv11 = fpext float %11 to double
  %mul12 = fmul double %conv11, %9
  %conv13 = fptrunc double %mul12 to float
  store float %conv13, float* %yy, align 4, !tbaa !55
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_rotate(%struct.gs_state_s* %pgs, double %ang) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ang.addr = alloca double, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %ang, double* %ang.addr, align 8, !tbaa !49
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 5
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %3 = load double, double* %ang.addr, align 8, !tbaa !49
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %5 = bitcast %struct.gs_matrix_fixed_s* %ctm1 to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* %2, double %3, %struct.gs_matrix_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %8 = load i32, i32* %code, align 4, !tbaa !35
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

declare i32 @gs_matrix_rotate(%struct.gs_matrix_s*, double, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_concat(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %cmat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 5
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %2, %struct.gs_matrix_s* %4, %struct.gs_matrix_s* %cmat) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %5 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 73
  store i32 0, i32* %char_tm_valid, align 4, !tbaa !23
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %9 = load float, float* %tx, align 4, !tbaa !24
  %conv = fpext float %9 to double
  %cmp1 = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp1, label %land.lhs.true, label %cond.false.58

land.lhs.true:                                    ; preds = %if.end
  %tx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %10 = load float, float* %tx3, align 4, !tbaa !24
  %conv4 = fpext float %10 to double
  %cmp5 = fcmp olt double %conv4, 8.388608e+06
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false.58

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %11 = load float, float* %ty, align 4, !tbaa !25
  %conv8 = fpext float %11 to double
  %cmp9 = fcmp oge double %conv8, -8.388608e+06
  br i1 %cmp9, label %land.lhs.true.11, label %cond.false.58

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %ty12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %12 = load float, float* %ty12, align 4, !tbaa !25
  %conv13 = fpext float %12 to double
  %cmp14 = fcmp olt double %conv13, 8.388608e+06
  br i1 %cmp14, label %cond.true, label %cond.false.58

cond.true:                                        ; preds = %land.lhs.true.11
  %tx16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %13 = load float, float* %tx16, align 4, !tbaa !24
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 5
  %tx18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 4
  store float %13, float* %tx18, align 4, !tbaa !26
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 5
  %tx20 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm19, i32 0, i32 4
  %16 = load float, float* %tx20, align 4, !tbaa !26
  %conv21 = fpext float %16 to double
  %cmp22 = fcmp oge double %conv21, -8.388608e+06
  br i1 %cmp22, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %cond.true
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 5
  %tx26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm25, i32 0, i32 4
  %18 = load float, float* %tx26, align 4, !tbaa !26
  %conv27 = fpext float %18 to double
  %cmp28 = fcmp olt double %conv27, 8.388608e+06
  br i1 %cmp28, label %cond.true.30, label %cond.false

cond.true.30:                                     ; preds = %land.lhs.true.24
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 5
  %tx32 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm31, i32 0, i32 4
  %20 = load float, float* %tx32, align 4, !tbaa !26
  %mul = fmul float %20, 2.560000e+02
  %conv33 = fptosi float %mul to i32
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 5
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 6
  store i32 %conv33, i32* %tx_fixed, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.24, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.30
  %cond = phi i32 [ 0, %cond.true.30 ], [ -13, %cond.false ]
  %ty35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %22 = load float, float* %ty35, align 4, !tbaa !25
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 5
  %ty37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 5
  store float %22, float* %ty37, align 4, !tbaa !28
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 5
  %ty39 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm38, i32 0, i32 5
  %25 = load float, float* %ty39, align 4, !tbaa !28
  %conv40 = fpext float %25 to double
  %cmp41 = fcmp oge double %conv40, -8.388608e+06
  br i1 %cmp41, label %land.lhs.true.43, label %cond.false.55

land.lhs.true.43:                                 ; preds = %cond.end
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm44 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 5
  %ty45 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm44, i32 0, i32 5
  %27 = load float, float* %ty45, align 4, !tbaa !28
  %conv46 = fpext float %27 to double
  %cmp47 = fcmp olt double %conv46, 8.388608e+06
  br i1 %cmp47, label %cond.true.49, label %cond.false.55

cond.true.49:                                     ; preds = %land.lhs.true.43
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 5
  %ty51 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm50, i32 0, i32 5
  %29 = load float, float* %ty51, align 4, !tbaa !28
  %mul52 = fmul float %29, 2.560000e+02
  %conv53 = fptosi float %mul52 to i32
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm54, i32 0, i32 7
  store i32 %conv53, i32* %ty_fixed, align 4, !tbaa !29
  br label %cond.end.56

cond.false.55:                                    ; preds = %land.lhs.true.43, %cond.end
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.49
  %cond57 = phi i32 [ 0, %cond.true.49 ], [ -13, %cond.false.55 ]
  br label %cond.end.65

cond.false.58:                                    ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %if.end
  %tx59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  %31 = load float, float* %tx59, align 4, !tbaa !24
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm60 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 5
  %tx61 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm60, i32 0, i32 4
  store float %31, float* %tx61, align 4, !tbaa !26
  %ty62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  %33 = load float, float* %ty62, align 4, !tbaa !25
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm63 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 5
  %ty64 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm63, i32 0, i32 5
  store float %33, float* %ty64, align 4, !tbaa !28
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.58, %cond.end.56
  %cond66 = phi i32 [ 1, %cond.end.56 ], [ 0, %cond.false.58 ]
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm67 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm67, i32 0, i32 8
  store i32 %cond66, i32* %txy_fixed_valid, align 4, !tbaa !30
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %37 = bitcast %struct.gs_matrix_fixed_s* %ctm68 to %struct.gs_matrix_s*
  %38 = bitcast %struct.gs_matrix_s* %37 to i8*
  %39 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 4, i1 false), !tbaa.struct !31
  %40 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.65, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @gs_transform(%struct.gs_state_s* %pgs, double %x, double %y, %struct.gs_point_s* %pt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !49
  store double %y, double* %y.addr, align 8, !tbaa !49
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load double, double* %x.addr, align 8, !tbaa !49
  %1 = load double, double* %y.addr, align 8, !tbaa !49
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_point_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #4
  ret i32 %call
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_dtransform(%struct.gs_state_s* %pgs, double %dx, double %dy, %struct.gs_point_s* %pt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !49
  store double %dy, double* %dy.addr, align 8, !tbaa !49
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load double, double* %dx.addr, align 8, !tbaa !49
  %1 = load double, double* %dy.addr, align 8, !tbaa !49
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_itransform(%struct.gs_state_s* %pgs, double %x, double %y, %struct.gs_point_s* %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !49
  store double %y, double* %y.addr, align 8, !tbaa !49
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !56
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !57
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !58
  %conv7 = fpext float %5 to double
  %cmp8 = fcmp oeq double %conv7, 0.000000e+00
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !59
  %conv12 = fpext float %7 to double
  %cmp13 = fcmp oeq double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true
  %8 = load double, double* %x.addr, align 8, !tbaa !49
  %9 = load double, double* %y.addr, align 8, !tbaa !49
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 5
  %11 = bitcast %struct.gs_matrix_fixed_s* %ctm15 to %struct.gs_matrix_s*
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_point_transform_inverse(double %8, double %9, %struct.gs_matrix_s* %11, %struct.gs_point_s* %12) #4
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.10, %lor.lhs.false
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 58
  %14 = load i32, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call i32 @ctm_set_inverse(%struct.gs_state_s* %16) #4
  store i32 %call17, i32* %code, align 4, !tbaa !35
  %17 = load i32, i32* %code, align 4, !tbaa !35
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.16
  %18 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.20
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %if.else
  %20 = load double, double* %x.addr, align 8, !tbaa !49
  %21 = load double, double* %y.addr, align 8, !tbaa !49
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 57
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call22 = call i32 @gs_point_transform(double %20, double %21, %struct.gs_matrix_s* %ctm_inverse, %struct.gs_point_s* %23) #4
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %cleanup, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ctm_set_inverse(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 5
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 57
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %2, %struct.gs_matrix_s* %ctm_inverse) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 58
  store i32 1, i32* %ctm_inverse_valid, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gs_idtransform(%struct.gs_state_s* %pgs, double %dx, double %dy, %struct.gs_point_s* %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !49
  store double %dy, double* %dy.addr, align 8, !tbaa !49
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !56
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !57
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !58
  %conv7 = fpext float %5 to double
  %cmp8 = fcmp oeq double %conv7, 0.000000e+00
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !59
  %conv12 = fpext float %7 to double
  %cmp13 = fcmp oeq double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true
  %8 = load double, double* %dx.addr, align 8, !tbaa !49
  %9 = load double, double* %dy.addr, align 8, !tbaa !49
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 5
  %11 = bitcast %struct.gs_matrix_fixed_s* %ctm15 to %struct.gs_matrix_s*
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform_inverse(double %8, double %9, %struct.gs_matrix_s* %11, %struct.gs_point_s* %12) #4
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.10, %lor.lhs.false
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 58
  %14 = load i32, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call i32 @ctm_set_inverse(%struct.gs_state_s* %16) #4
  store i32 %call17, i32* %code, align 4, !tbaa !35
  %17 = load i32, i32* %code, align 4, !tbaa !35
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.16
  %18 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.20
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %if.else
  %20 = load double, double* %dx.addr, align 8, !tbaa !49
  %21 = load double, double* %dy.addr, align 8, !tbaa !49
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 57
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call22 = call i32 @gs_distance_transform(double %20, double %21, %struct.gs_matrix_s* %ctm_inverse, %struct.gs_point_s* %23) #4
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %cleanup, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_imager_idtransform(%struct.gs_imager_state_s* %pis, double %dx, double %dy, %struct.gs_point_s* %pt) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !49
  store double %dy, double* %dy.addr, align 8, !tbaa !49
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %0 = load double, double* %dx.addr, align 8, !tbaa !49
  %1 = load double, double* %dy.addr, align 8, !tbaa !49
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 5
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform_inverse(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_translate_to_fixed(%struct.gs_state_s* %pgs, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %fpx = alloca double, align 8
  %fdx = alloca double, align 8
  %fpy = alloca double, align 8
  %fdy = alloca double, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !35
  store i32 %py, i32* %py.addr, align 4, !tbaa !35
  %0 = bitcast double* %fpx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %px.addr, align 4, !tbaa !35
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 3.906250e-03
  store double %mul, double* %fpx, align 8, !tbaa !49
  %2 = bitcast double* %fdx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load double, double* %fpx, align 8, !tbaa !49
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %5 = load float, float* %tx, align 4, !tbaa !26
  %conv1 = fpext float %5 to double
  %sub = fsub double %3, %conv1
  store double %sub, double* %fdx, align 8, !tbaa !49
  %6 = bitcast double* %fpy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %py.addr, align 4, !tbaa !35
  %conv2 = sitofp i32 %7 to double
  %mul3 = fmul double %conv2, 3.906250e-03
  store double %mul3, double* %fpy, align 8, !tbaa !49
  %8 = bitcast double* %fdy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load double, double* %fpy, align 8, !tbaa !49
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 5
  %11 = load float, float* %ty, align 4, !tbaa !28
  %conv5 = fpext float %11 to double
  %sub6 = fsub double %9, %conv5
  store double %sub6, double* %fdy, align 8, !tbaa !49
  %12 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 5
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 8
  %16 = load i32, i32* %txy_fixed_valid, align 4, !tbaa !30
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load double, double* %fdx, align 8, !tbaa !49
  %mul8 = fmul double %17, 2.560000e+02
  %conv9 = fptosi double %mul8 to i32
  store i32 %conv9, i32* %dx, align 4, !tbaa !35
  %18 = load double, double* %fdy, align 8, !tbaa !49
  %mul10 = fmul double %18, 2.560000e+02
  %conv11 = fptosi double %mul10 to i32
  store i32 %conv11, i32* %dy, align 4, !tbaa !35
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 61
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !60
  %21 = load i32, i32* %dx, align 4, !tbaa !35
  %22 = load i32, i32* %dy, align 4, !tbaa !35
  %call = call i32 @gx_path_translate(%struct.gx_path_s* %20, i32 %21, i32 %22) #4
  store i32 %call, i32* %code, align 4, !tbaa !35
  %23 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %24 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 73
  %26 = load i32, i32* %char_tm_valid, align 4, !tbaa !23
  %tobool14 = icmp ne i32 %26, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 72
  %txy_fixed_valid15 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm, i32 0, i32 8
  %28 = load i32, i32* %txy_fixed_valid15, align 4, !tbaa !40
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %dx, align 4, !tbaa !35
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 72
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm18, i32 0, i32 6
  %31 = load i32, i32* %tx_fixed, align 4, !tbaa !37
  %add = add nsw i32 %31, %29
  store i32 %add, i32* %tx_fixed, align 4, !tbaa !37
  %32 = load i32, i32* %dy, align 4, !tbaa !35
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 72
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm19, i32 0, i32 7
  %34 = load i32, i32* %ty_fixed, align 4, !tbaa !39
  %add20 = add nsw i32 %34, %32
  store i32 %add20, i32* %ty_fixed, align 4, !tbaa !39
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true, %if.end
  br label %if.end.27

if.else:                                          ; preds = %entry
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 61
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %path22, align 8, !tbaa !60
  %call23 = call i32 @gx_path_is_null(%struct.gx_path_s* %36) #4
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.else
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  %37 = load double, double* %fpx, align 8, !tbaa !49
  %conv28 = fptrunc double %37 to float
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 5
  %tx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 4
  store float %conv28, float* %tx30, align 4, !tbaa !26
  %39 = load i32, i32* %px.addr, align 4, !tbaa !35
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 5
  %tx_fixed32 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm31, i32 0, i32 6
  store i32 %39, i32* %tx_fixed32, align 4, !tbaa !27
  %41 = load double, double* %fpy, align 8, !tbaa !49
  %conv33 = fptrunc double %41 to float
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 5
  %ty35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 5
  store float %conv33, float* %ty35, align 4, !tbaa !28
  %43 = load i32, i32* %py.addr, align 4, !tbaa !35
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 5
  %ty_fixed37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 7
  store i32 %43, i32* %ty_fixed37, align 4, !tbaa !29
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 5
  %txy_fixed_valid39 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm38, i32 0, i32 8
  store i32 1, i32* %txy_fixed_valid39, align 4, !tbaa !30
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 73
  %48 = load i32, i32* %char_tm_valid40, align 4, !tbaa !23
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %if.end.27
  %49 = load double, double* %fdx, align 8, !tbaa !49
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 72
  %tx44 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm43, i32 0, i32 4
  %51 = load float, float* %tx44, align 4, !tbaa !36
  %conv45 = fpext float %51 to double
  %add46 = fadd double %conv45, %49
  %conv47 = fptrunc double %add46 to float
  store float %conv47, float* %tx44, align 4, !tbaa !36
  %52 = load double, double* %fdy, align 8, !tbaa !49
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 72
  %ty49 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm48, i32 0, i32 5
  %54 = load float, float* %ty49, align 4, !tbaa !38
  %conv50 = fpext float %54 to double
  %add51 = fadd double %conv50, %52
  %conv52 = fptrunc double %add51 to float
  store float %conv52, float* %ty49, align 4, !tbaa !38
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.42, %if.end.27
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 5
  %tx_fixed55 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm54, i32 0, i32 6
  %56 = load i32, i32* %tx_fixed55, align 4, !tbaa !27
  %conv56 = sitofp i32 %56 to double
  %mul57 = fmul double %conv56, 3.906250e-03
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %mul57, double* %x, align 8, !tbaa !61
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 5
  %ty_fixed59 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm58, i32 0, i32 7
  %59 = load i32, i32* %ty_fixed59, align 4, !tbaa !29
  %conv60 = sitofp i32 %59 to double
  %mul61 = fmul double %conv60, 3.906250e-03
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point62 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point62, i32 0, i32 1
  store double %mul61, double* %y, align 8, !tbaa !62
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 6
  store i32 1, i32* %current_point_valid, align 4, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.25, %if.then.13
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast double* %fdy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast double* %fpy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast double* %fdx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast double* %fpx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @gx_path_translate(%struct.gx_path_s*, i32, i32) #2

declare i32 @gx_path_is_null(%struct.gx_path_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_scale_char_matrix(%struct.gs_state_s* %pgs, i32 %sx, i32 %sy) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %sx, i32* %sx.addr, align 4, !tbaa !35
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !35
  %0 = load i32, i32* %sx.addr, align 4, !tbaa !35
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %sx.addr, align 4, !tbaa !35
  %conv = sitofp i32 %1 to float
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %3 = load float, float* %xx, align 4, !tbaa !52
  %mul = fmul float %3, %conv
  store float %mul, float* %xx, align 4, !tbaa !52
  %4 = load i32, i32* %sx.addr, align 4, !tbaa !35
  %conv1 = sitofp i32 %4 to float
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %6 = load float, float* %yx, align 4, !tbaa !54
  %mul3 = fmul float %6, %conv1
  store float %mul3, float* %yx, align 4, !tbaa !54
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid, align 4, !tbaa !5
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 73
  %9 = load i32, i32* %char_tm_valid, align 4, !tbaa !23
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i32, i32* %sx.addr, align 4, !tbaa !35
  %conv5 = sitofp i32 %10 to float
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 72
  %xx6 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm, i32 0, i32 0
  %12 = load float, float* %xx6, align 4, !tbaa !64
  %mul7 = fmul float %12, %conv5
  store float %mul7, float* %xx6, align 4, !tbaa !64
  %13 = load i32, i32* %sx.addr, align 4, !tbaa !35
  %conv8 = sitofp i32 %13 to float
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 72
  %yx10 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm9, i32 0, i32 2
  %15 = load float, float* %yx10, align 4, !tbaa !65
  %mul11 = fmul float %15, %conv8
  store float %mul11, float* %yx10, align 4, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %16 = load i32, i32* %sy.addr, align 4, !tbaa !35
  %cmp13 = icmp ne i32 %16, 1
  br i1 %cmp13, label %if.then.15, label %if.end.35

if.then.15:                                       ; preds = %if.end.12
  %17 = load i32, i32* %sy.addr, align 4, !tbaa !35
  %conv16 = sitofp i32 %17 to float
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 1
  %19 = load float, float* %xy, align 4, !tbaa !53
  %mul18 = fmul float %19, %conv16
  store float %mul18, float* %xy, align 4, !tbaa !53
  %20 = load i32, i32* %sy.addr, align 4, !tbaa !35
  %conv19 = sitofp i32 %20 to float
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm20, i32 0, i32 3
  %22 = load float, float* %yy, align 4, !tbaa !55
  %mul21 = fmul float %22, %conv19
  store float %mul21, float* %yy, align 4, !tbaa !55
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_inverse_valid22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 58
  store i32 0, i32* %ctm_inverse_valid22, align 4, !tbaa !5
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm_valid23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 73
  %25 = load i32, i32* %char_tm_valid23, align 4, !tbaa !23
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.then.15
  %26 = load i32, i32* %sy.addr, align 4, !tbaa !35
  %conv26 = sitofp i32 %26 to float
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 72
  %xy28 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm27, i32 0, i32 1
  %28 = load float, float* %xy28, align 4, !tbaa !66
  %mul29 = fmul float %28, %conv26
  store float %mul29, float* %xy28, align 4, !tbaa !66
  %29 = load i32, i32* %sy.addr, align 4, !tbaa !35
  %conv30 = sitofp i32 %29 to float
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %char_tm31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 72
  %yy32 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %char_tm31, i32 0, i32 3
  %31 = load float, float* %yy32, align 4, !tbaa !67
  %mul33 = fmul float %31, %conv30
  store float %mul33, float* %yy32, align 4, !tbaa !67
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.25, %if.then.15
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_matrix_to_fixed_coeff(%struct.gs_matrix_s* %pmat, %struct.fixed_coeff* %pfc, i32 %max_bits) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pfc.addr = alloca %struct.fixed_coeff*, align 8
  %max_bits.addr = alloca i32, align 4
  %ctm = alloca %struct.gs_matrix_s, align 4
  %scale = alloca i32, align 4
  %expt = alloca i32, align 4
  %shift = alloca i32, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.fixed_coeff* %pfc, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  store i32 %max_bits, i32* %max_bits.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gs_matrix_s* %ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -10000, i32* %scale, align 4, !tbaa !35
  %2 = bitcast i32* %expt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_matrix_s* %ctm to i8*
  %6 = bitcast %struct.gs_matrix_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 4, i1 false), !tbaa.struct !31
  %7 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %skewed = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %7, i32 0, i32 4
  store i32 0, i32* %skewed, align 4, !tbaa !68
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %8 = load float, float* %xx, align 4, !tbaa !70
  %conv = fpext float %8 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %9 = load float, float* %xx2, align 4, !tbaa !70
  %conv3 = fpext float %9 to double
  %call = call double @frexp(double %conv3, i32* %scale) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %10 = load float, float* %xy, align 4, !tbaa !71
  %conv4 = fpext float %10 to double
  %cmp5 = fcmp oeq double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.end.16, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %xy8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %11 = load float, float* %xy8, align 4, !tbaa !71
  %conv9 = fpext float %11 to double
  %call10 = call double @frexp(double %conv9, i32* %expt) #5
  %12 = load i32, i32* %expt, align 4, !tbaa !35
  %13 = load i32, i32* %scale, align 4, !tbaa !35
  %cmp11 = icmp sgt i32 %12, %13
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  %14 = load i32, i32* %expt, align 4, !tbaa !35
  store i32 %14, i32* %scale, align 4, !tbaa !35
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.7
  %15 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %skewed15 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %15, i32 0, i32 4
  store i32 1, i32* %skewed15, align 4, !tbaa !68
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %if.end
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %16 = load float, float* %yx, align 4, !tbaa !72
  %conv17 = fpext float %16 to double
  %cmp18 = fcmp oeq double %conv17, 0.000000e+00
  br i1 %cmp18, label %if.end.29, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  %yx21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %17 = load float, float* %yx21, align 4, !tbaa !72
  %conv22 = fpext float %17 to double
  %call23 = call double @frexp(double %conv22, i32* %expt) #5
  %18 = load i32, i32* %expt, align 4, !tbaa !35
  %19 = load i32, i32* %scale, align 4, !tbaa !35
  %cmp24 = icmp sgt i32 %18, %19
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %20 = load i32, i32* %expt, align 4, !tbaa !35
  store i32 %20, i32* %scale, align 4, !tbaa !35
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.20
  %21 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %skewed28 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %21, i32 0, i32 4
  store i32 1, i32* %skewed28, align 4, !tbaa !68
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.end.16
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %22 = load float, float* %yy, align 4, !tbaa !73
  %conv30 = fpext float %22 to double
  %cmp31 = fcmp oeq double %conv30, 0.000000e+00
  br i1 %cmp31, label %if.end.41, label %if.then.33

if.then.33:                                       ; preds = %if.end.29
  %yy34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %23 = load float, float* %yy34, align 4, !tbaa !73
  %conv35 = fpext float %23 to double
  %call36 = call double @frexp(double %conv35, i32* %expt) #5
  %24 = load i32, i32* %expt, align 4, !tbaa !35
  %25 = load i32, i32* %scale, align 4, !tbaa !35
  %cmp37 = icmp sgt i32 %24, %25
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.33
  %26 = load i32, i32* %expt, align 4, !tbaa !35
  store i32 %26, i32* %scale, align 4, !tbaa !35
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.29
  %27 = load i32, i32* %max_bits.addr, align 4, !tbaa !35
  %cmp42 = icmp slt i32 %27, 8
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store i32 8, i32* %max_bits.addr, align 4, !tbaa !35
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %28 = load i32, i32* %max_bits.addr, align 4, !tbaa !35
  %conv46 = sext i32 %28 to i64
  %sub = sub i64 63, %conv46
  %29 = load i32, i32* %scale, align 4, !tbaa !35
  %conv47 = sext i32 %29 to i64
  %sub48 = sub i64 %sub, %conv47
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, i32* %scale, align 4, !tbaa !35
  %30 = load i32, i32* %scale, align 4, !tbaa !35
  %sub50 = sub nsw i32 %30, 8
  store i32 %sub50, i32* %shift, align 4, !tbaa !35
  %31 = load i32, i32* %shift, align 4, !tbaa !35
  %cmp51 = icmp sgt i32 %31, 0
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.45
  %32 = load i32, i32* %shift, align 4, !tbaa !35
  %33 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %shift54 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %33, i32 0, i32 5
  store i32 %32, i32* %shift54, align 4, !tbaa !74
  %34 = load i32, i32* %shift, align 4, !tbaa !35
  %sub55 = sub nsw i32 %34, 1
  %shl = shl i32 1, %sub55
  %35 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %round = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %35, i32 0, i32 7
  store i32 %shl, i32* %round, align 4, !tbaa !75
  br label %if.end.59

if.else:                                          ; preds = %if.end.45
  %36 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %shift56 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %36, i32 0, i32 5
  store i32 0, i32* %shift56, align 4, !tbaa !74
  %37 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %round57 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %37, i32 0, i32 7
  store i32 0, i32* %round57, align 4, !tbaa !75
  %38 = load i32, i32* %shift, align 4, !tbaa !35
  %39 = load i32, i32* %scale, align 4, !tbaa !35
  %sub58 = sub nsw i32 %39, %38
  store i32 %sub58, i32* %scale, align 4, !tbaa !35
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.53
  %xx60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %40 = load float, float* %xx60, align 4, !tbaa !70
  %conv61 = fpext float %40 to double
  %cmp62 = fcmp oeq double %conv61, 0.000000e+00
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.end.59
  %41 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %xx65 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %41, i32 0, i32 0
  store i64 0, i64* %xx65, align 8, !tbaa !76
  br label %if.end.72

if.else.66:                                       ; preds = %if.end.59
  %xx67 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %42 = load float, float* %xx67, align 4, !tbaa !70
  %conv68 = fpext float %42 to double
  %43 = load i32, i32* %scale, align 4, !tbaa !35
  %call69 = call double @ldexp(double %conv68, i32 %43) #5
  %conv70 = fptosi double %call69 to i64
  %44 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %xx71 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %44, i32 0, i32 0
  store i64 %conv70, i64* %xx71, align 8, !tbaa !76
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.66, %if.then.64
  %xy73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %45 = load float, float* %xy73, align 4, !tbaa !71
  %conv74 = fpext float %45 to double
  %cmp75 = fcmp oeq double %conv74, 0.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.end.72
  %46 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %xy78 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %46, i32 0, i32 1
  store i64 0, i64* %xy78, align 8, !tbaa !77
  br label %if.end.85

if.else.79:                                       ; preds = %if.end.72
  %xy80 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %47 = load float, float* %xy80, align 4, !tbaa !71
  %conv81 = fpext float %47 to double
  %48 = load i32, i32* %scale, align 4, !tbaa !35
  %call82 = call double @ldexp(double %conv81, i32 %48) #5
  %conv83 = fptosi double %call82 to i64
  %49 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %xy84 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %49, i32 0, i32 1
  store i64 %conv83, i64* %xy84, align 8, !tbaa !77
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.79, %if.then.77
  %yx86 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %50 = load float, float* %yx86, align 4, !tbaa !72
  %conv87 = fpext float %50 to double
  %cmp88 = fcmp oeq double %conv87, 0.000000e+00
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.85
  %51 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %yx91 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %51, i32 0, i32 2
  store i64 0, i64* %yx91, align 8, !tbaa !78
  br label %if.end.98

if.else.92:                                       ; preds = %if.end.85
  %yx93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %52 = load float, float* %yx93, align 4, !tbaa !72
  %conv94 = fpext float %52 to double
  %53 = load i32, i32* %scale, align 4, !tbaa !35
  %call95 = call double @ldexp(double %conv94, i32 %53) #5
  %conv96 = fptosi double %call95 to i64
  %54 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %yx97 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %54, i32 0, i32 2
  store i64 %conv96, i64* %yx97, align 8, !tbaa !78
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.92, %if.then.90
  %yy99 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %55 = load float, float* %yy99, align 4, !tbaa !73
  %conv100 = fpext float %55 to double
  %cmp101 = fcmp oeq double %conv100, 0.000000e+00
  br i1 %cmp101, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.end.98
  %56 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %yy104 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %56, i32 0, i32 3
  store i64 0, i64* %yy104, align 8, !tbaa !79
  br label %if.end.111

if.else.105:                                      ; preds = %if.end.98
  %yy106 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %57 = load float, float* %yy106, align 4, !tbaa !73
  %conv107 = fpext float %57 to double
  %58 = load i32, i32* %scale, align 4, !tbaa !35
  %call108 = call double @ldexp(double %conv107, i32 %58) #5
  %conv109 = fptosi double %call108 to i64
  %59 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %yy110 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %59, i32 0, i32 3
  store i64 %conv109, i64* %yy110, align 8, !tbaa !79
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.105, %if.then.103
  %60 = load i32, i32* %max_bits.addr, align 4, !tbaa !35
  %61 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %max_bits112 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %61, i32 0, i32 6
  store i32 %60, i32* %max_bits112, align 4, !tbaa !80
  %62 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %expt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gs_matrix_s* %ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %65) #1
  ret i32 0
}

; Function Attrs: nounwind
declare double @frexp(double, i32*) #3

; Function Attrs: nounwind
declare double @ldexp(double, i32) #3

; Function Attrs: nounwind uwtable
define i32 @fixed_coeff_mult(i32 %value, i64 %coeff, %struct.fixed_coeff* %pfc, i32 %maxb) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %coeff.addr = alloca i64, align 8
  %pfc.addr = alloca %struct.fixed_coeff*, align 8
  %maxb.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %value, i32* %value.addr, align 4, !tbaa !35
  store i64 %coeff, i64* %coeff.addr, align 8, !tbaa !81
  store %struct.fixed_coeff* %pfc, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  store i32 %maxb, i32* %maxb.addr, align 4, !tbaa !35
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %shift1 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %1, i32 0, i32 5
  %2 = load i32, i32* %shift1, align 4, !tbaa !74
  store i32 %2, i32* %shift, align 4, !tbaa !35
  %3 = load i32, i32* %value.addr, align 4, !tbaa !35
  %conv = sext i32 %3 to i64
  %4 = load i32, i32* %maxb.addr, align 4, !tbaa !35
  %sub = sub nsw i32 %4, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 256, %sh_prom
  %add = add nsw i64 %conv, %shl
  %5 = load i32, i32* %maxb.addr, align 4, !tbaa !35
  %sh_prom2 = zext i32 %5 to i64
  %shl3 = shl i64 -256, %sh_prom2
  %and = and i64 %add, %shl3
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %coeff.addr, align 8, !tbaa !81
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, i32* %value.addr, align 4, !tbaa !35
  %8 = load i64, i64* %coeff.addr, align 8, !tbaa !81
  %sub5 = sub nsw i64 0, %8
  %conv6 = trunc i64 %sub5 to i32
  %9 = load i32, i32* %shift, align 4, !tbaa !35
  %sh_prom7 = zext i32 %9 to i64
  %shl8 = shl i64 256, %sh_prom7
  %conv9 = trunc i64 %shl8 to i32
  %call = call i32 @fixed_mult_quo(i32 %7, i32 %conv6, i32 %conv9) #4
  %sub10 = sub nsw i32 0, %call
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i32, i32* %value.addr, align 4, !tbaa !35
  %11 = load i64, i64* %coeff.addr, align 8, !tbaa !81
  %conv11 = trunc i64 %11 to i32
  %12 = load i32, i32* %shift, align 4, !tbaa !35
  %sh_prom12 = zext i32 %12 to i64
  %shl13 = shl i64 256, %sh_prom12
  %conv14 = trunc i64 %shl13 to i32
  %call15 = call i32 @fixed_mult_quo(i32 %10, i32 %conv11, i32 %conv14) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ %call15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %value.addr, align 4, !tbaa !35
  %shr = ashr i32 %13, 8
  %conv16 = sext i32 %shr to i64
  %14 = load i64, i64* %coeff.addr, align 8, !tbaa !81
  %mul = mul nsw i64 %conv16, %14
  %15 = load i32, i32* %value.addr, align 4, !tbaa !35
  %and17 = and i32 %15, 255
  %conv18 = sext i32 %and17 to i64
  %16 = load i64, i64* %coeff.addr, align 8, !tbaa !81
  %mul19 = mul nsw i64 %conv18, %16
  %shr20 = ashr i64 %mul19, 8
  %conv21 = trunc i64 %shr20 to i32
  %conv22 = sext i32 %conv21 to i64
  %add23 = add nsw i64 %mul, %conv22
  %17 = load %struct.fixed_coeff*, %struct.fixed_coeff** %pfc.addr, align 8, !tbaa !1
  %round = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %17, i32 0, i32 7
  %18 = load i32, i32* %round, align 4, !tbaa !75
  %conv24 = sext i32 %18 to i64
  %add25 = add nsw i64 %add23, %conv24
  %19 = load i32, i32* %shift, align 4, !tbaa !35
  %sh_prom26 = zext i32 %19 to i64
  %shr27 = ashr i64 %add25, %sh_prom26
  %conv28 = trunc i64 %shr27 to i32
  store i32 %conv28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end
  %20 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @fixed_mult_quo(i32, i32, i32) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 1648}
!6 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !7, i64 128, !12, i64 132, !7, i64 168, !13, i64 176, !13, i64 192, !7, i64 208, !7, i64 212, !15, i64 216, !3, i64 220, !16, i64 224, !16, i64 228, !17, i64 232, !18, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !19, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !9, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !20, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !21, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !21, i64 1336, !2, i64 1616, !10, i64 1624, !7, i64 1648, !10, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !18, i64 1712, !18, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !12, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !22, i64 1888}
!7 = !{!"int", !3, i64 0}
!8 = !{!"gx_line_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !7, i64 36, !10, i64 40, !11, i64 64}
!9 = !{!"float", !3, i64 0}
!10 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!11 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !9, i64 12, !7, i64 16, !9, i64 20, !7, i64 24, !7, i64 28, !9, i64 32}
!12 = !{!"gs_matrix_fixed_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!13 = !{!"gs_point_s", !14, i64 0, !14, i64 8}
!14 = !{!"double", !3, i64 0}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gs_transparency_source_s", !9, i64 0}
!17 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!20 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!21 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !18, i64 16, !3, i64 24}
!22 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!6, !7, i64 1844}
!24 = !{!10, !9, i64 16}
!25 = !{!10, !9, i64 20}
!26 = !{!6, !9, i64 148}
!27 = !{!6, !7, i64 156}
!28 = !{!6, !9, i64 152}
!29 = !{!6, !7, i64 160}
!30 = !{!6, !7, i64 164}
!31 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32}
!32 = !{!9, !9, i64 0}
!33 = !{!6, !7, i64 1676}
!34 = !{!6, !2, i64 1872}
!35 = !{!7, !7, i64 0}
!36 = !{!6, !9, i64 1824}
!37 = !{!6, !7, i64 1832}
!38 = !{!6, !9, i64 1828}
!39 = !{!6, !7, i64 1836}
!40 = !{!6, !7, i64 1840}
!41 = !{!6, !2, i64 1792}
!42 = !{!43, !9, i64 148}
!43 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !7, i64 128, !12, i64 132, !7, i64 168, !13, i64 176, !13, i64 192, !7, i64 208, !7, i64 212, !15, i64 216, !3, i64 220, !16, i64 224, !16, i64 228, !17, i64 232, !18, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !19, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !9, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !20, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !21, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !21, i64 1336}
!44 = !{!43, !7, i64 156}
!45 = !{!43, !9, i64 152}
!46 = !{!43, !7, i64 160}
!47 = !{!43, !7, i64 164}
!48 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 4, !35}
!49 = !{!14, !14, i64 0}
!50 = !{!13, !14, i64 0}
!51 = !{!13, !14, i64 8}
!52 = !{!6, !9, i64 132}
!53 = !{!6, !9, i64 136}
!54 = !{!6, !9, i64 140}
!55 = !{!6, !9, i64 144}
!56 = !{!12, !9, i64 4}
!57 = !{!12, !9, i64 8}
!58 = !{!12, !9, i64 0}
!59 = !{!12, !9, i64 12}
!60 = !{!6, !2, i64 1680}
!61 = !{!6, !14, i64 176}
!62 = !{!6, !14, i64 184}
!63 = !{!6, !7, i64 168}
!64 = !{!6, !9, i64 1808}
!65 = !{!6, !9, i64 1816}
!66 = !{!6, !9, i64 1812}
!67 = !{!6, !9, i64 1820}
!68 = !{!69, !7, i64 32}
!69 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!70 = !{!10, !9, i64 0}
!71 = !{!10, !9, i64 4}
!72 = !{!10, !9, i64 8}
!73 = !{!10, !9, i64 12}
!74 = !{!69, !7, i64 36}
!75 = !{!69, !7, i64 44}
!76 = !{!69, !18, i64 0}
!77 = !{!69, !18, i64 8}
!78 = !{!69, !18, i64 16}
!79 = !{!69, !18, i64 24}
!80 = !{!69, !7, i64 40}
!81 = !{!18, !18, i64 0}
