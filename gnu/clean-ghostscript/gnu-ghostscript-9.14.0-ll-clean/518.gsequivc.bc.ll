; ModuleID = './gsequivc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
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
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clist_state_s = type opaque
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.equivalent_cmyk_color_params_s = type { i32, [64 x %struct.cmyk_color_s] }
%struct.cmyk_color_s = type { i32, i16, i16, i16, i16 }
%struct.gs_separation_params_s = type { i64, %struct.gs_device_n_map_s*, i32, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.color_capture_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, %struct.equivalent_cmyk_color_params_s* }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }

@cmap_capture_cmyk_color = internal constant %struct.gx_color_map_procs_s { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_gray_capture_cmyk_color, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_capture_cmyk_color, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)* @cmap_cmyk_capture_cmyk_color, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_rgb_alpha_capture_cmyk_color, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_separation_capture_cmyk_color, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @cmap_devicen_capture_cmyk_color, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"cmap_separation_capture_cmyk_color - this routine should not be executed\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"cmap_devicen_capture_cmyk_color - this routine should not be executed\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @update_spot_equivalent_cmyk_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %4 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !5
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gx_device_s* %5, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %all_color_info_valid = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %6, i32 0, i32 0
  %7 = load i32, i32* %all_color_info_valid, align 4, !tbaa !20
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %8, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %9 = load i32, i32* %num_separations, align 4, !tbaa !22
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %all_color_info_valid2 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %10, i32 0, i32 0
  store i32 1, i32* %all_color_info_valid2, align 4, !tbaa !20
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !25
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_color_space_s* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.33

if.then.5:                                        ; preds = %if.end.3
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 0
  %15 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !27
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %15, i32 0, i32 0
  %16 = load i32, i32* %index, align 4, !tbaa !29
  %cmp6 = icmp eq i32 %16, 9
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %20 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %21 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @update_Separation_spot_equivalent_cmyk_colors(%struct.gx_device_s* %17, %struct.gs_state_s* %18, %struct.gs_color_space_s* %19, %struct.gs_devn_params_s* %20, %struct.equivalent_cmyk_color_params_s* %21) #5
  %22 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations8 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %22, i32 0, i32 5
  %num_separations9 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations8, i32 0, i32 0
  %23 = load i32, i32* %num_separations9, align 4, !tbaa !22
  %24 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %call10 = call i32 @check_all_colors_known(i32 %23, %struct.equivalent_cmyk_color_params_s* %24) #5
  %25 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %all_color_info_valid11 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %25, i32 0, i32 0
  store i32 %call10, i32* %all_color_info_valid11, align 4, !tbaa !20
  br label %if.end.32

if.else:                                          ; preds = %if.then.5
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 0
  %27 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type12, align 8, !tbaa !27
  %index13 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %27, i32 0, i32 0
  %28 = load i32, i32* %index13, align 4, !tbaa !29
  %cmp14 = icmp eq i32 %28, 4
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.else
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %32 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %33 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @update_DeviceN_spot_equivalent_cmyk_colors(%struct.gx_device_s* %29, %struct.gs_state_s* %30, %struct.gs_color_space_s* %31, %struct.gs_devn_params_s* %32, %struct.equivalent_cmyk_color_params_s* %33) #5
  %34 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations16 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %34, i32 0, i32 5
  %num_separations17 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations16, i32 0, i32 0
  %35 = load i32, i32* %num_separations17, align 4, !tbaa !22
  %36 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %call18 = call i32 @check_all_colors_known(i32 %35, %struct.equivalent_cmyk_color_params_s* %36) #5
  %37 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %all_color_info_valid19 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %37, i32 0, i32 0
  store i32 %call18, i32* %all_color_info_valid19, align 4, !tbaa !20
  br label %if.end.31

if.else.20:                                       ; preds = %if.else
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 0
  %39 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type21, align 8, !tbaa !27
  %index22 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %39, i32 0, i32 0
  %40 = load i32, i32* %index22, align 4, !tbaa !29
  %cmp23 = icmp eq i32 %40, 12
  br i1 %cmp23, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.else.20
  %41 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %41, i32 0, i32 11
  %42 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !31
  %cmp24 = icmp ne %struct.gsicc_namelist_s* %42, null
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %land.lhs.true
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %46 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %47 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @update_ICC_spot_equivalent_cmyk_colors(%struct.gx_device_s* %43, %struct.gs_state_s* %44, %struct.gs_color_space_s* %45, %struct.gs_devn_params_s* %46, %struct.equivalent_cmyk_color_params_s* %47) #5
  %48 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations26 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %48, i32 0, i32 5
  %num_separations27 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations26, i32 0, i32 0
  %49 = load i32, i32* %num_separations27, align 4, !tbaa !22
  %50 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %call28 = call i32 @check_all_colors_known(i32 %49, %struct.equivalent_cmyk_color_params_s* %50) #5
  %51 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %all_color_info_valid29 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %51, i32 0, i32 0
  store i32 %call28, i32* %all_color_info_valid29, align 4, !tbaa !20
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %land.lhs.true, %if.else.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.15
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.7
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.1, %if.then
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
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
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @update_Separation_spot_equivalent_cmyk_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs, %struct.gs_color_space_s* %pcs, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %i = alloca i32, align 4
  %dev_sep_name = alloca %struct.devn_separation_name_s*, align 8
  %cs_sep_name_size = alloca i32, align 4
  %pcs_sep_name = alloca i8*, align 8
  %temp_cs = alloca %struct.gs_color_space_s, align 8
  %client_color = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %2 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %2, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %3 = load i32, i32* %num_separations, align 4, !tbaa !22
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %color_info_valid, align 4, !tbaa !33
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  %7 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations3 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %9, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom2
  store %struct.devn_separation_name_s* %arrayidx4, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %10 = bitcast i32* %cs_sep_name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %pcs_sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 4
  %13 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !35
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %separation6 = bitcast %union.anon* %params5 to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation6, i32 0, i32 0
  %17 = load i64, i64* %sep_name, align 8, !tbaa !38
  %call = call i32 %13(%struct.gs_memory_s* %15, i64 %17, i8** %pcs_sep_name, i32* %cs_sep_name_size) #5
  %18 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %18, i32 0, i32 0
  %19 = load i32, i32* %size, align 4, !tbaa !39
  %20 = load i32, i32* %cs_sep_name_size, align 4, !tbaa !19
  %cmp7 = icmp eq i32 %19, %20
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %data, align 8, !tbaa !41
  %23 = load i8*, i8** %pcs_sep_name, align 8, !tbaa !1
  %24 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %24, i32 0, i32 0
  %25 = load i32, i32* %size8, align 4, !tbaa !39
  %conv = sext i32 %25 to i64
  %call9 = call i32 @strncmp(i8* %22, i8* %23, i64 %conv) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  %26 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  call void @llvm.lifetime.start(i64 120, i8* %26) #1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  %29 = bitcast %struct.gs_color_space_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 120, i32 8, i1 false), !tbaa.struct !42
  %30 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.start(i64 264, i8* %30) #1
  %params13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %temp_cs, i32 0, i32 7
  %separation14 = bitcast %union.anon* %params13 to %struct.gs_separation_params_s*
  %use_alt_cspace = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation14, i32 0, i32 3
  store i32 1, i32* %use_alt_cspace, align 4, !tbaa !45
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %client_color, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx15, align 4, !tbaa !46
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %33 = load i32, i32* %i, align 4, !tbaa !19
  %34 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @capture_spot_equivalent_cmyk_colors(%struct.gx_device_s* %31, %struct.gs_state_s* %32, %struct.gs_client_color_s* %client_color, %struct.gs_color_space_s* %temp_cs, i32 %33, %struct.equivalent_cmyk_color_params_s* %34) #5
  store i32 2, i32* %cleanup.dest.slot
  %35 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.end(i64 264, i8* %35) #1
  %36 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  call void @llvm.lifetime.end(i64 120, i8* %36) #1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.12
  %37 = bitcast i8** %pcs_sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %cs_sep_name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %40 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @check_all_colors_known(i32 %num_spot, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %num_spot.addr = alloca i32, align 4
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  store i32 %num_spot, i32* %num_spot.addr, align 4, !tbaa !19
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = load i32, i32* %num_spot.addr, align 4, !tbaa !19
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %num_spot.addr, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %num_spot.addr, align 4, !tbaa !19
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num_spot.addr, align 4, !tbaa !19
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %color_info_valid, align 4, !tbaa !33
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %num_spot.addr, align 4, !tbaa !19
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, i32* %num_spot.addr, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @update_DeviceN_spot_equivalent_cmyk_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs, %struct.gs_color_space_s* %pcs, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cs_sep_name_size = alloca i32, align 4
  %pcs_sep_name = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s2 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dev_sep_name = alloca %struct.devn_separation_name_s*, align 8
  %temp_cs = alloca %struct.gs_color_space_s, align 8
  %client_color = alloca %struct.gs_client_color_s, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %cs_sep_name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %pcs_sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !tbaa !19
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !48
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %device_n2 = bitcast %union.anon* %params1 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n2, i32 0, i32 5
  %8 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !50
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  %11 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 7
  %device_n4 = bitcast %union.anon* %params3 to %struct.gs_device_n_params_s*
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n4, i32 0, i32 0
  %13 = load i64*, i64** %names, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds i64, i64* %13, i64 %idxprom
  %14 = load i64, i64* %arrayidx, align 8, !tbaa !43
  %call = call i32 %8(%struct.gs_memory_s* %10, i64 %14, i8** %pcs_sep_name, i32* %cs_sep_name_size) #5
  %15 = load i32, i32* %cs_sep_name_size, align 4, !tbaa !19
  %cmp5 = icmp eq i32 4, %15
  br i1 %cmp5, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %for.body
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6
  %cmp7 = icmp ult i64 %call6, 4
  br i1 %cmp7, label %cond.true, label %cond.false.49

cond.true:                                        ; preds = %land.lhs.true
  %16 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %cond.true
  %call9 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6
  store i64 %call9, i64* %__s1_len, align 8, !tbaa !43
  %18 = load i64, i64* %__s1_len, align 8, !tbaa !43
  %cmp10 = icmp ult i64 %18, 4
  br i1 %cmp10, label %cond.true.11, label %cond.false

cond.true.11:                                     ; preds = %land.lhs.true.8
  %19 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %pcs_sep_name, align 8, !tbaa !1
  store i8* %20, i8** %__s2, align 8, !tbaa !1
  %21 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !44
  %conv = zext i8 %22 to i32
  %23 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx14, align 1, !tbaa !44
  %conv15 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv, %conv15
  store i32 %sub, i32* %__result, align 4, !tbaa !19
  %25 = load i64, i64* %__s1_len, align 8, !tbaa !43
  %cmp16 = icmp ugt i64 %25, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.46

land.lhs.true.18:                                 ; preds = %cond.true.11
  %26 = load i32, i32* %__result, align 4, !tbaa !19
  %cmp19 = icmp eq i32 %26, 0
  br i1 %cmp19, label %if.then, label %if.end.46

if.then:                                          ; preds = %land.lhs.true.18
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !44
  %conv21 = zext i8 %27 to i32
  %28 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx22, align 1, !tbaa !44
  %conv23 = zext i8 %29 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  store i32 %sub24, i32* %__result, align 4, !tbaa !19
  %30 = load i64, i64* %__s1_len, align 8, !tbaa !43
  %cmp25 = icmp ugt i64 %30, 1
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.45

land.lhs.true.27:                                 ; preds = %if.then
  %31 = load i32, i32* %__result, align 4, !tbaa !19
  %cmp28 = icmp eq i32 %31, 0
  br i1 %cmp28, label %if.then.30, label %if.end.45

if.then.30:                                       ; preds = %land.lhs.true.27
  %32 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !44
  %conv31 = zext i8 %32 to i32
  %33 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx32, align 1, !tbaa !44
  %conv33 = zext i8 %34 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  store i32 %sub34, i32* %__result, align 4, !tbaa !19
  %35 = load i64, i64* %__s1_len, align 8, !tbaa !43
  %cmp35 = icmp ugt i64 %35, 2
  br i1 %cmp35, label %land.lhs.true.37, label %if.end

land.lhs.true.37:                                 ; preds = %if.then.30
  %36 = load i32, i32* %__result, align 4, !tbaa !19
  %cmp38 = icmp eq i32 %36, 0
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.lhs.true.37
  %37 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !44
  %conv41 = zext i8 %37 to i32
  %38 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx42, align 1, !tbaa !44
  %conv43 = zext i8 %39 to i32
  %sub44 = sub nsw i32 %conv41, %conv43
  store i32 %sub44, i32* %__result, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.lhs.true.37, %if.then.30
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %land.lhs.true.27, %if.then
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.18, %cond.true.11
  %40 = load i32, i32* %__result, align 4, !tbaa !19
  store i32 %40, i32* %tmp47, !tbaa !19
  %41 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %tmp47, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.8, %cond.true
  %44 = load i8*, i8** %pcs_sep_name, align 8, !tbaa !1
  %call48 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %44) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.46
  %cond = phi i32 [ %43, %if.end.46 ], [ %call48, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !19
  %45 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %tmp, !tbaa !19
  br label %cond.end.51

cond.false.49:                                    ; preds = %land.lhs.true
  %48 = load i8*, i8** %pcs_sep_name, align 8, !tbaa !1
  %call50 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %48, i64 4) #6
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.end
  %cond52 = phi i32 [ %47, %cond.end ], [ %call50, %cond.false.49 ]
  %cmp53 = icmp eq i32 %cond52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %cond.end.51
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %cond.end.51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %49 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add i32 %49, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.109, %for.end
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %51 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %51, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %52 = load i32, i32* %num_separations, align 4, !tbaa !22
  %cmp58 = icmp slt i32 %50, %52
  br i1 %cmp58, label %for.body.60, label %for.end.111

for.body.60:                                      ; preds = %for.cond.57
  %53 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom61 = sext i32 %53 to i64
  %54 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %54, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom61
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx62, i32 0, i32 0
  %55 = load i32, i32* %color_info_valid, align 4, !tbaa !33
  %cmp63 = icmp eq i32 %55, 0
  br i1 %cmp63, label %if.then.65, label %if.end.108

if.then.65:                                       ; preds = %for.body.60
  %56 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom67 = sext i32 %57 to i64
  %58 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations68 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %58, i32 0, i32 5
  %names69 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations68, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names69, i32 0, i64 %idxprom67
  store %struct.devn_separation_name_s* %arrayidx70, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.105, %if.then.65
  %59 = load i32, i32* %j, align 4, !tbaa !19
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params72 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %60, i32 0, i32 7
  %device_n73 = bitcast %union.anon* %params72 to %struct.gs_device_n_params_s*
  %num_components74 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n73, i32 0, i32 1
  %61 = load i32, i32* %num_components74, align 4, !tbaa !48
  %cmp75 = icmp ult i32 %59, %61
  br i1 %cmp75, label %for.body.77, label %for.end.107

for.body.77:                                      ; preds = %for.cond.71
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 7
  %device_n79 = bitcast %union.anon* %params78 to %struct.gs_device_n_params_s*
  %get_colorname_string80 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n79, i32 0, i32 5
  %63 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string80, align 8, !tbaa !50
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory81 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !37
  %66 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom82 = zext i32 %66 to i64
  %67 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %67, i32 0, i32 7
  %device_n84 = bitcast %union.anon* %params83 to %struct.gs_device_n_params_s*
  %names85 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n84, i32 0, i32 0
  %68 = load i64*, i64** %names85, align 8, !tbaa !51
  %arrayidx86 = getelementptr inbounds i64, i64* %68, i64 %idxprom82
  %69 = load i64, i64* %arrayidx86, align 8, !tbaa !43
  %call87 = call i32 %63(%struct.gs_memory_s* %65, i64 %69, i8** %pcs_sep_name, i32* %cs_sep_name_size) #5
  %70 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %70, i32 0, i32 0
  %71 = load i32, i32* %size, align 4, !tbaa !39
  %72 = load i32, i32* %cs_sep_name_size, align 4, !tbaa !19
  %cmp88 = icmp eq i32 %71, %72
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.104

land.lhs.true.90:                                 ; preds = %for.body.77
  %73 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %73, i32 0, i32 1
  %74 = load i8*, i8** %data, align 8, !tbaa !41
  %75 = load i8*, i8** %pcs_sep_name, align 8, !tbaa !1
  %76 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size91 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %76, i32 0, i32 0
  %77 = load i32, i32* %size91, align 4, !tbaa !39
  %conv92 = sext i32 %77 to i64
  %call93 = call i32 @strncmp(i8* %74, i8* %75, i64 %conv92) #6
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.104

if.then.96:                                       ; preds = %land.lhs.true.90
  %78 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  call void @llvm.lifetime.start(i64 120, i8* %78) #1
  %79 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  %81 = bitcast %struct.gs_color_space_s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 120, i32 8, i1 false), !tbaa.struct !42
  %82 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.start(i64 264, i8* %82) #1
  %83 = bitcast %struct.gs_client_color_s* %client_color to i8*
  %call99 = call i8* @memset(i8* %83, i32 0, i64 264) #7
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %temp_cs, i32 0, i32 7
  %device_n101 = bitcast %union.anon* %params100 to %struct.gs_device_n_params_s*
  %use_alt_cspace = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n101, i32 0, i32 4
  store i32 1, i32* %use_alt_cspace, align 4, !tbaa !52
  %84 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom102 = zext i32 %84 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %client_color, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom102
  store float 1.000000e+00, float* %arrayidx103, align 4, !tbaa !46
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !19
  %88 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @capture_spot_equivalent_cmyk_colors(%struct.gx_device_s* %85, %struct.gs_state_s* %86, %struct.gs_client_color_s* %client_color, %struct.gs_color_space_s* %temp_cs, i32 %87, %struct.equivalent_cmyk_color_params_s* %88) #5
  store i32 8, i32* %cleanup.dest.slot
  %89 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.end(i64 264, i8* %89) #1
  %90 = bitcast %struct.gs_color_space_s* %temp_cs to i8*
  call void @llvm.lifetime.end(i64 120, i8* %90) #1
  br label %for.end.107

if.end.104:                                       ; preds = %land.lhs.true.90, %for.body.77
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %91 = load i32, i32* %j, align 4, !tbaa !19
  %inc106 = add i32 %91, 1
  store i32 %inc106, i32* %j, align 4, !tbaa !19
  br label %for.cond.71

for.end.107:                                      ; preds = %if.then.96, %for.cond.71
  %92 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %for.body.60
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %93 = load i32, i32* %i, align 4, !tbaa !19
  %inc110 = add nsw i32 %93, 1
  store i32 %inc110, i32* %i, align 4, !tbaa !19
  br label %for.cond.57

for.end.111:                                      ; preds = %for.cond.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.111, %if.then.55
  %94 = bitcast i8** %pcs_sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32* %cs_sep_name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
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
define internal void @update_ICC_spot_equivalent_cmyk_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs, %struct.gs_color_space_s* %pcs, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %client_color = alloca %struct.gs_client_color_s, align 8
  %dev_sep_name = alloca %struct.devn_separation_name_s*, align 8
  %name_entry = alloca %struct.gsicc_colorname_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.start(i64 264, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %6 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_s* %7, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !19
  %9 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %9, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %10 = load i32, i32* %num_separations, align 4, !tbaa !22
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %color_info_valid, align 4, !tbaa !33
  %cmp1 = icmp eq i32 %13, 0
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %for.body
  %14 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations3 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %16, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom2
  store %struct.devn_separation_name_s* %arrayidx4, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %17 = bitcast %struct.gsicc_colorname_s** %name_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %18, i32 0, i32 11
  %19 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !31
  %head = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %19, i32 0, i32 1
  %20 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %head, align 8, !tbaa !53
  store %struct.gsicc_colorname_s* %20, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %21 = load i32, i32* %j, align 4, !tbaa !19
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %22, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx6, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 0
  %24 = load i8, i8* %num_comps, align 1, !tbaa !55
  %conv = zext i8 %24 to i32
  %cmp7 = icmp slt i32 %21, %conv
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %25 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom10 = sext i32 %25 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %client_color, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom10
  store float 0.000000e+00, float* %arrayidx11, align 4, !tbaa !46
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %26 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.29, %for.end
  %27 = load i32, i32* %j, align 4, !tbaa !19
  %28 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames13 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %28, i32 0, i32 11
  %29 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames13, align 8, !tbaa !31
  %count = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %29, i32 0, i32 0
  %30 = load i32, i32* %count, align 4, !tbaa !59
  %cmp14 = icmp slt i32 %27, %30
  br i1 %cmp14, label %for.body.16, label %for.end.31

for.body.16:                                      ; preds = %for.cond.12
  %31 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %31, i32 0, i32 0
  %32 = load i32, i32* %size, align 4, !tbaa !39
  %33 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %33, i32 0, i32 1
  %34 = load i32, i32* %length, align 4, !tbaa !60
  %cmp17 = icmp eq i32 %32, %34
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.16
  %35 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %data, align 8, !tbaa !41
  %37 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %37, i32 0, i32 0
  %38 = load i8*, i8** %name, align 8, !tbaa !62
  %39 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %dev_sep_name, align 8, !tbaa !1
  %size19 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %39, i32 0, i32 0
  %40 = load i32, i32* %size19, align 4, !tbaa !39
  %conv20 = sext i32 %40 to i64
  %call21 = call i32 @strncmp(i8* %36, i8* %38, i64 %conv20) #6
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom25 = sext i32 %41 to i64
  %paint26 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %client_color, i32 0, i32 1
  %values27 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [64 x float], [64 x float]* %values27, i32 0, i64 %idxprom25
  store float 1.000000e+00, float* %arrayidx28, align 4, !tbaa !46
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  call void @capture_spot_equivalent_cmyk_colors(%struct.gx_device_s* %42, %struct.gs_state_s* %43, %struct.gs_client_color_s* %client_color, %struct.gs_color_space_s* %44, i32 %45, %struct.equivalent_cmyk_color_params_s* %46) #5
  br label %for.end.31

if.end:                                           ; preds = %land.lhs.true, %for.body.16
  %47 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %47, i32 0, i32 2
  %48 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %next, align 8, !tbaa !63
  store %struct.gsicc_colorname_s* %48, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %49 = load i32, i32* %j, align 4, !tbaa !19
  %inc30 = add nsw i32 %49, 1
  store i32 %inc30, i32* %j, align 4, !tbaa !19
  br label %for.cond.12

for.end.31:                                       ; preds = %if.then.24, %for.cond.12
  %50 = bitcast %struct.gsicc_colorname_s** %name_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.devn_separation_name_s** %dev_sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %for.body
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %inc34 = add nsw i32 %52, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %53 = bitcast %struct.gs_client_color_s* %client_color to i8*
  call void @llvm.lifetime.end(i64 264, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @capture_spot_equivalent_cmyk_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs, %struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, i32 %sep_num, %struct.equivalent_cmyk_color_params_s* %pparams) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %sep_num.addr = alloca i32, align 4
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %temp_state = alloca %struct.gs_imager_state_s, align 8
  %temp_device = alloca %struct.color_capture_device_s, align 8
  %dev_color = alloca %struct.gx_device_color_s, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %curr_output_profile = alloca %struct.cmm_profile_s*, align 8
  %temp_profile = alloca %struct.cmm_dev_profile_s, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %sep_num, i32* %sep_num.addr, align 4, !tbaa !19
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s* %temp_state to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s* %1 to %struct.gs_imager_state_s*
  %3 = bitcast %struct.gs_imager_state_s* %temp_state to i8*
  %4 = bitcast %struct.gs_imager_state_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1616, i32 8, i1 false), !tbaa.struct !64
  %5 = bitcast %struct.color_capture_device_s* %temp_device to i8*
  call void @llvm.lifetime.start(i64 18488, i8* %5) #1
  %6 = bitcast %struct.color_capture_device_s* %temp_device to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 18488, i32 8, i1 false)
  %7 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.start(i64 656, i8* %7) #1
  %8 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.cmm_profile_s** %curr_output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.cmm_dev_profile_s* %temp_profile to i8*
  call void @llvm.lifetime.start(i64 224, i8* %12) #1
  %13 = bitcast %struct.cmm_dev_profile_s* %temp_profile to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 224, i32 8, i1 false)
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !5
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 40
  %18 = load i32, i32* %graphics_type_tag, align 4, !tbaa !68
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %18, %struct.cmm_dev_profile_s* %19, %struct.cmm_profile_s** %curr_output_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %color_info = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 11
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %21 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %22 = bitcast %struct.gx_device_color_info_s* %color_info1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 720, i32 8, i1 false), !tbaa.struct !69
  %23 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %sep_num2 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 68
  store i32 %23, i32* %sep_num2, align 4, !tbaa !70
  %24 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %pequiv_cmyk_colors = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 69
  store %struct.equivalent_cmyk_color_params_s* %24, %struct.equivalent_cmyk_color_params_s** %pequiv_cmyk_colors, align 8, !tbaa !75
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  %memory3 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 3
  store %struct.gs_memory_s* %26, %struct.gs_memory_s** %memory3, align 8, !tbaa !89
  %usefastcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 8
  store i32 0, i32* %usefastcolor, align 4, !tbaa !90
  %prebandthreshold = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 12
  store i32 1, i32* %prebandthreshold, align 4, !tbaa !91
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 9
  store i32 0, i32* %supports_devn, align 4, !tbaa !92
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 0
  %27 = bitcast %struct.gsicc_rendering_param_s* %arrayidx to i8*
  %28 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 4, i1 false), !tbaa.struct !93
  %rendercond4 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond4, i32 0, i64 1
  %29 = bitcast %struct.gsicc_rendering_param_s* %arrayidx5 to i8*
  %30 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 4, i1 false), !tbaa.struct !93
  %rendercond6 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond6, i32 0, i64 2
  %31 = bitcast %struct.gsicc_rendering_param_s* %arrayidx7 to i8*
  %32 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 24, i32 4, i1 false), !tbaa.struct !93
  %rendercond8 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond8, i32 0, i64 3
  %33 = bitcast %struct.gsicc_rendering_param_s* %arrayidx9 to i8*
  %34 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !93
  %icc_struct = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %temp_profile, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !94
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_output_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 5
  %36 = load i32, i32* %data_cs, align 4, !tbaa !95
  %cmp = icmp eq i32 %36, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %temp_state, i32 0, i32 35
  %37 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !96
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %37, i32 0, i32 3
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !98
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  store %struct.cmm_profile_s* %38, %struct.cmm_profile_s** %arrayidx10, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_output_profile, align 8, !tbaa !1
  %device_profile11 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %temp_profile, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile11, i32 0, i64 0
  store %struct.cmm_profile_s* %39, %struct.cmm_profile_s** %arrayidx12, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %procs13 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %temp_device, i32 0, i32 42
  %get_profile14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile14, align 8, !tbaa !100
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %temp_state, i32 0, i32 49
  store %struct.gx_color_map_procs_s* @cmap_capture_cmyk_color, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !101
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %temp_state, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  store i32 1, i32* %use_alt_cspace, align 4, !tbaa !102
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 0
  %41 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !27
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %41, i32 0, i32 10
  %42 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !103
  %43 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %45 = bitcast %struct.color_capture_device_s* %temp_device to %struct.gx_device_s*
  %call15 = call i32 %42(%struct.gs_client_color_s* %43, %struct.gs_color_space_s* %44, %struct.gx_device_color_s* %dev_color, %struct.gs_imager_state_s* %temp_state, %struct.gx_device_s* %45, i32 0) #5
  %46 = bitcast %struct.cmm_dev_profile_s* %temp_profile to i8*
  call void @llvm.lifetime.end(i64 224, i8* %46) #1
  %47 = bitcast %struct.cmm_profile_s** %curr_output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %50) #1
  %51 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.end(i64 656, i8* %51) #1
  %52 = bitcast %struct.color_capture_device_s* %temp_device to i8*
  call void @llvm.lifetime.end(i64 18488, i8* %52) #1
  %53 = bitcast %struct.gs_imager_state_s* %temp_state to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %53) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_capture_cmyk_color(i16 signext %gray, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %gray.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pparams = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %sep_num = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !67
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  %0 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.color_capture_device_s*
  %pequiv_cmyk_colors = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %2, i32 0, i32 69
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_cmyk_colors, align 8, !tbaa !75
  store %struct.equivalent_cmyk_color_params_s* %3, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %4 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.color_capture_device_s*
  %sep_num1 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %6, i32 0, i32 68
  %7 = load i32, i32* %sep_num1, align 4, !tbaa !70
  store i32 %7, i32* %sep_num, align 4, !tbaa !19
  %8 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !67
  %arrayidx2 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  store i16 0, i16* %arrayidx2, align 2, !tbaa !67
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  store i16 0, i16* %arrayidx3, align 2, !tbaa !67
  %9 = load i16, i16* %gray.addr, align 2, !tbaa !67
  %conv = sext i16 %9 to i32
  %sub = sub nsw i32 32760, %conv
  %conv4 = trunc i32 %sub to i16
  %arrayidx5 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !67
  %10 = load i32, i32* %sep_num, align 4, !tbaa !19
  %11 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  call void @save_spot_equivalent_cmyk_color(i32 %10, %struct.equivalent_cmyk_color_params_s* %11, i16* %arraydecay) #5
  %12 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_capture_cmyk_color(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pparams = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %sep_num = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store i16 %r, i16* %r.addr, align 2, !tbaa !67
  store i16 %g, i16* %g.addr, align 2, !tbaa !67
  store i16 %b, i16* %b.addr, align 2, !tbaa !67
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  %0 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.color_capture_device_s*
  %pequiv_cmyk_colors = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %2, i32 0, i32 69
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_cmyk_colors, align 8, !tbaa !75
  store %struct.equivalent_cmyk_color_params_s* %3, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %4 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.color_capture_device_s*
  %sep_num1 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %6, i32 0, i32 68
  %7 = load i32, i32* %sep_num1, align 4, !tbaa !70
  store i32 %7, i32* %sep_num, align 4, !tbaa !19
  %8 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i16, i16* %r.addr, align 2, !tbaa !67
  %10 = load i16, i16* %g.addr, align 2, !tbaa !67
  %11 = load i16, i16* %b.addr, align 2, !tbaa !67
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  call void @color_rgb_to_cmyk(i16 signext %9, i16 signext %10, i16 signext %11, %struct.gs_imager_state_s* %12, i16* %arraydecay, %struct.gs_memory_s* %14) #5
  %15 = load i32, i32* %sep_num, align 4, !tbaa !19
  %16 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  call void @save_spot_equivalent_cmyk_color(i32 %15, %struct.equivalent_cmyk_color_params_s* %16, i16* %arraydecay2) #5
  %17 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_cmyk_capture_cmyk_color(i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pparams = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %sep_num = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store i16 %c, i16* %c.addr, align 2, !tbaa !67
  store i16 %m, i16* %m.addr, align 2, !tbaa !67
  store i16 %y, i16* %y.addr, align 2, !tbaa !67
  store i16 %k, i16* %k.addr, align 2, !tbaa !67
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.color_capture_device_s*
  %pequiv_cmyk_colors = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %2, i32 0, i32 69
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_cmyk_colors, align 8, !tbaa !75
  store %struct.equivalent_cmyk_color_params_s* %3, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %4 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.color_capture_device_s*
  %sep_num1 = getelementptr inbounds %struct.color_capture_device_s, %struct.color_capture_device_s* %6, i32 0, i32 68
  %7 = load i32, i32* %sep_num1, align 4, !tbaa !70
  store i32 %7, i32* %sep_num, align 4, !tbaa !19
  %8 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i16, i16* %c.addr, align 2, !tbaa !67
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  store i16 %9, i16* %arrayidx, align 2, !tbaa !67
  %10 = load i16, i16* %m.addr, align 2, !tbaa !67
  %arrayidx2 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  store i16 %10, i16* %arrayidx2, align 2, !tbaa !67
  %11 = load i16, i16* %y.addr, align 2, !tbaa !67
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  store i16 %11, i16* %arrayidx3, align 2, !tbaa !67
  %12 = load i16, i16* %k.addr, align 2, !tbaa !67
  %arrayidx4 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  store i16 %12, i16* %arrayidx4, align 2, !tbaa !67
  %13 = load i32, i32* %sep_num, align 4, !tbaa !19
  %14 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  call void @save_spot_equivalent_cmyk_color(i32 %13, %struct.equivalent_cmyk_color_params_s* %14, i16* %arraydecay) #5
  %15 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.equivalent_cmyk_color_params_s** %pparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_alpha_capture_cmyk_color(i16 signext %r, i16 signext %g, i16 signext %b, i16 signext %alpha, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16 %r, i16* %r.addr, align 2, !tbaa !67
  store i16 %g, i16* %g.addr, align 2, !tbaa !67
  store i16 %b, i16* %b.addr, align 2, !tbaa !67
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !67
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  %0 = load i16, i16* %r.addr, align 2, !tbaa !67
  %1 = load i16, i16* %g.addr, align 2, !tbaa !67
  %2 = load i16, i16* %b.addr, align 2, !tbaa !67
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i32, i32* %select.addr, align 4, !tbaa !44
  call void @cmap_rgb_capture_cmyk_color(i16 signext %0, i16 signext %1, i16 signext %2, %struct.gx_device_color_s* %3, %struct.gs_imager_state_s* %4, %struct.gx_device_s* %5, i32 %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_separation_capture_cmyk_color(i16 signext %all, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %all.addr = alloca i16, align 2
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16 %all, i16* %all.addr, align 2, !tbaa !67
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_devicen_capture_cmyk_color(i16* %pcc, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %pcc.addr = alloca i16*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store i16* %pcc, i16** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !44
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save_spot_equivalent_cmyk_color(i32 %sep_num, %struct.equivalent_cmyk_color_params_s* %pparams, i16* %cmyk) #0 {
entry:
  %sep_num.addr = alloca i32, align 4
  %pparams.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %cmyk.addr = alloca i16*, align 8
  store i32 %sep_num, i32* %sep_num.addr, align 4, !tbaa !19
  store %struct.equivalent_cmyk_color_params_s* %pparams, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  store i16* %cmyk, i16** %cmyk.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cmyk.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !67
  %2 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %3, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %c = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx1, i32 0, i32 1
  store i16 %1, i16* %c, align 2, !tbaa !105
  %4 = load i16*, i16** %cmyk.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx2, align 2, !tbaa !67
  %6 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color4, i32 0, i64 %idxprom3
  %m = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx5, i32 0, i32 2
  store i16 %5, i16* %m, align 2, !tbaa !106
  %8 = load i16*, i16** %cmyk.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %8, i64 2
  %9 = load i16, i16* %arrayidx6, align 2, !tbaa !67
  %10 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color8 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color8, i32 0, i64 %idxprom7
  %y = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx9, i32 0, i32 3
  store i16 %9, i16* %y, align 2, !tbaa !107
  %12 = load i16*, i16** %cmyk.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %12, i64 3
  %13 = load i16, i16* %arrayidx10, align 2, !tbaa !67
  %14 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %15, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color12, i32 0, i64 %idxprom11
  %k = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx13, i32 0, i32 4
  store i16 %13, i16* %k, align 2, !tbaa !108
  %16 = load i32, i32* %sep_num.addr, align 4, !tbaa !19
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pparams.addr, align 8, !tbaa !1
  %color15 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color15, i32 0, i64 %idxprom14
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx16, i32 0, i32 0
  store i32 1, i32* %color_info_valid, align 4, !tbaa !33
  ret void
}

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 1680}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !7, i64 0}
!21 = !{!"equivalent_cmyk_color_params_s", !7, i64 0, !3, i64 4}
!22 = !{!23, !7, i64 32}
!23 = !{!"gs_devn_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !24, i64 32, !7, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !24, i64 1368}
!24 = !{!"gs_separations_s", !7, i64 0, !3, i64 8}
!25 = !{!26, !2, i64 0}
!26 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!28, !2, i64 0}
!28 = !{!"gs_color_space_s", !2, i64 0, !8, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!29 = !{!30, !3, i64 0}
!30 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!31 = !{!32, !2, i64 176}
!32 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!33 = !{!34, !7, i64 0}
!34 = !{!"cmyk_color_s", !7, i64 0, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10}
!35 = !{!36, !2, i64 24}
!36 = !{!"gs_separation_params_s", !9, i64 0, !2, i64 8, !3, i64 16, !7, i64 20, !2, i64 24}
!37 = !{!6, !2, i64 24}
!38 = !{!36, !9, i64 0}
!39 = !{!40, !7, i64 0}
!40 = !{!"devn_separation_name_s", !7, i64 0, !2, i64 8}
!41 = !{!40, !2, i64 8}
!42 = !{i64 0, i64 8, !1, i64 8, i64 8, !43, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !43, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 4, !19, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !43, i64 80, i64 8, !1, i64 88, i64 4, !44, i64 92, i64 4, !19, i64 96, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !19, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 4, !19, i64 112, i64 8, !1, i64 72, i64 4, !19, i64 76, i64 4, !19, i64 80, i64 8, !1, i64 88, i64 4, !19, i64 80, i64 8, !1, i64 96, i64 4, !19, i64 72, i64 4, !19}
!43 = !{!9, !9, i64 0}
!44 = !{!3, !3, i64 0}
!45 = !{!36, !7, i64 20}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !3, i64 0}
!48 = !{!49, !7, i64 8}
!49 = !{!"gs_device_n_params_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !2, i64 40}
!50 = !{!49, !2, i64 40}
!51 = !{!49, !2, i64 0}
!52 = !{!49, !7, i64 32}
!53 = !{!54, !2, i64 8}
!54 = !{!"gsicc_namelist_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32}
!55 = !{!56, !3, i64 0}
!56 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !57, i64 20, !9, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !58, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !8, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!57 = !{!"gs_range_icc_s", !3, i64 0}
!58 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!59 = !{!54, !7, i64 0}
!60 = !{!61, !7, i64 8}
!61 = !{!"gsicc_colorname_s", !2, i64 0, !7, i64 8, !2, i64 16}
!62 = !{!61, !2, i64 0}
!63 = !{!61, !2, i64 16}
!64 = !{i64 0, i64 4, !19, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !46, i64 28, i64 4, !44, i64 32, i64 4, !44, i64 36, i64 4, !44, i64 40, i64 4, !44, i64 44, i64 4, !19, i64 48, i64 4, !46, i64 52, i64 4, !46, i64 56, i64 4, !46, i64 60, i64 4, !19, i64 64, i64 4, !46, i64 68, i64 4, !46, i64 72, i64 4, !46, i64 76, i64 4, !46, i64 80, i64 4, !46, i64 84, i64 4, !46, i64 88, i64 8, !1, i64 96, i64 4, !19, i64 100, i64 4, !46, i64 104, i64 4, !19, i64 108, i64 4, !46, i64 112, i64 4, !19, i64 116, i64 4, !19, i64 120, i64 4, !46, i64 128, i64 4, !19, i64 132, i64 4, !46, i64 136, i64 4, !46, i64 140, i64 4, !46, i64 144, i64 4, !46, i64 148, i64 4, !46, i64 152, i64 4, !46, i64 156, i64 4, !19, i64 160, i64 4, !19, i64 164, i64 4, !19, i64 168, i64 4, !19, i64 176, i64 8, !65, i64 184, i64 8, !65, i64 192, i64 8, !65, i64 200, i64 8, !65, i64 208, i64 4, !19, i64 212, i64 4, !19, i64 216, i64 2, !67, i64 220, i64 4, !44, i64 224, i64 4, !46, i64 228, i64 4, !46, i64 232, i64 4, !19, i64 236, i64 4, !19, i64 240, i64 8, !43, i64 248, i64 4, !19, i64 252, i64 4, !19, i64 256, i64 4, !19, i64 264, i64 8, !1, i64 272, i64 4, !19, i64 276, i64 4, !19, i64 280, i64 4, !19, i64 284, i64 4, !19, i64 288, i64 4, !19, i64 292, i64 4, !19, i64 296, i64 4, !46, i64 300, i64 4, !19, i64 304, i64 4, !19, i64 308, i64 4, !19, i64 312, i64 4, !19, i64 316, i64 4, !19, i64 320, i64 4, !46, i64 324, i64 4, !19, i64 328, i64 4, !19, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !44, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !19, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !19, i64 440, i64 8, !1, i64 448, i64 4, !19, i64 456, i64 8, !1, i64 464, i64 4, !19, i64 472, i64 8, !1, i64 480, i64 4, !19, i64 488, i64 8, !1, i64 496, i64 512, !44, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !19, i64 1028, i64 4, !44, i64 1032, i64 4, !19, i64 1036, i64 4, !19, i64 1040, i64 8, !43, i64 1048, i64 256, !44, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !19, i64 1340, i64 4, !44, i64 1344, i64 4, !19, i64 1348, i64 4, !19, i64 1352, i64 8, !43, i64 1360, i64 256, !44}
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !3, i64 0}
!67 = !{!11, !11, i64 0}
!68 = !{!6, !3, i64 1112}
!69 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !44, i64 12, i64 2, !67, i64 14, i64 1, !44, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 4, !19, i64 36, i64 4, !19, i64 40, i64 4, !44, i64 44, i64 64, !44, i64 108, i64 64, !44, i64 176, i64 512, !44, i64 688, i64 8, !1, i64 696, i64 4, !44, i64 704, i64 8, !43, i64 712, i64 4, !19}
!70 = !{!71, !7, i64 18472}
!71 = !{!"color_capture_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !72, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !74, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472, !2, i64 18480}
!72 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !73, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!73 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!74 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!75 = !{!71, !2, i64 18480}
!76 = !{!77, !2, i64 8}
!77 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !78, i64 24, !7, i64 128, !81, i64 132, !7, i64 168, !82, i64 176, !82, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !83, i64 224, !83, i64 228, !84, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !47, i64 296, !85, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !47, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !86, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !87, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !87, i64 1336, !2, i64 1616, !79, i64 1624, !7, i64 1648, !79, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !9, i64 1712, !9, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !81, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !88, i64 1888}
!78 = !{!"gx_line_params_s", !47, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !7, i64 36, !79, i64 40, !80, i64 64}
!79 = !{!"gs_matrix_s", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20}
!80 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !47, i64 12, !7, i64 16, !47, i64 20, !7, i64 24, !7, i64 28, !47, i64 32}
!81 = !{!"gs_matrix_fixed_s", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!82 = !{!"gs_point_s", !66, i64 0, !66, i64 8}
!83 = !{!"gs_transparency_source_s", !47, i64 0}
!84 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!85 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!86 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!87 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!88 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!89 = !{!71, !2, i64 24}
!90 = !{!32, !7, i64 164}
!91 = !{!32, !7, i64 184}
!92 = !{!32, !7, i64 168}
!93 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 4, !44, i64 20, i64 4, !19}
!94 = !{!71, !2, i64 1104}
!95 = !{!56, !3, i64 16}
!96 = !{!97, !2, i64 336}
!97 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !78, i64 24, !7, i64 128, !81, i64 132, !7, i64 168, !82, i64 176, !82, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !83, i64 224, !83, i64 228, !84, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !47, i64 296, !85, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !47, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !86, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !87, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !87, i64 1336}
!98 = !{!99, !2, i64 24}
!99 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !2, i64 72, !2, i64 80, !8, i64 88}
!100 = !{!71, !2, i64 1680}
!101 = !{!97, !2, i64 1016}
!102 = !{!97, !7, i64 1024}
!103 = !{!30, !2, i64 72}
!104 = !{!97, !2, i64 8}
!105 = !{!34, !11, i64 4}
!106 = !{!34, !11, i64 6}
!107 = !{!34, !11, i64 8}
!108 = !{!34, !11, i64 10}
