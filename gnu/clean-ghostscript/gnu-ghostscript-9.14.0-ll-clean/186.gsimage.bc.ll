; ModuleID = './gsimage.bc'
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gs_image_enum_s = type { %struct.gs_memory_s*, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32, i32, [65 x i8], [65 x i8], [65 x %struct.image_enum_plane_s], [65 x %struct.gx_image_plane_s] }
%struct.image_enum_plane_s = type { %struct.gs_string_s, i32, %struct.gs_const_string_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@st_gs_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 3824, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_image_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_image_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [19 x i8] c"gs_image_next(row)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_image_cleanup(row)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gs_image_cleanup_and_free_enum\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gs_image_enum\00", align 1
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gs_image_begin_typed(%struct.gs_image_common_s* %pic, %struct.gs_state_s* %pgs, i32 %uses_color, %struct.gx_image_enum_common_s** %ppie) #0 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %uses_color.addr = alloca i32, align 4
  %ppie.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %dev2 = alloca %struct.gx_device_s*, align 8
  %dc_temp = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %cleanup.dest.slot = alloca i32
  %image = alloca %struct.gs_image1_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %uses_color, i32* %uses_color.addr, align 4, !tbaa !5
  store %struct.gx_image_enum_common_s** %ppie, %struct.gx_image_enum_common_s*** %ppie.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #6
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_effective_clip_path(%struct.gs_state_s* %4, %struct.gx_clip_path_s** %pcpath) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %5 = bitcast %struct.gx_device_s** %dev2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  store %struct.gx_device_s* %6, %struct.gx_device_s** %dev2, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_color_s* %dc_temp to i8*
  call void @llvm.lifetime.start(i64 656, i8* %7) #1
  %8 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !7
  store %struct.gx_device_color_s* %10, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 78
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %15 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !26
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 78
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %device2, align 8, !tbaa !9
  call void %15(%struct.gx_device_s* %17, i32 2) #6
  %18 = load i32, i32* %uses_color.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.3, label %if.end.24

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color4, i32 0, i64 0
  %dev_color6 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 2
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color6, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !37
  %cmp7 = icmp ne %struct.gx_device_color_type_s* %21, @gx_dc_type_data_none
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_remap_color(%struct.gs_state_s* %22) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call8, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %cond.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.11:                                        ; preds = %cond.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color12, i32 0, i64 0
  %dev_color14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 2
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color14, align 8, !tbaa !7
  %type15 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 0
  %27 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type15, align 8, !tbaa !37
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %27, i32 0, i32 4
  %28 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !44
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 69
  %arrayidx17 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color16, i32 0, i64 0
  %dev_color18 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx17, i32 0, i32 2
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color18, align 8, !tbaa !7
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_state_s* %31 to %struct.gs_imager_state_s*
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device19, align 8, !tbaa !9
  %call20 = call i32 %28(%struct.gx_device_color_s* %30, %struct.gs_imager_state_s* %32, %struct.gx_device_s* %34, i32 0) #6
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %35, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.11
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.23:                                        ; preds = %if.end.11
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %37 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type25 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %37, i32 0, i32 0
  %38 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type25, align 8, !tbaa !46
  %begin_typed_image = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %38, i32 0, i32 1
  %39 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !48
  %cmp26 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %39, @gx_begin_image1
  br i1 %cmp26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %if.end.24
  %40 = bitcast %struct.gs_image1_s** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_image_common_s* %41 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %42, %struct.gs_image1_s** %image, align 8, !tbaa !1
  %43 = load %struct.gs_image1_s*, %struct.gs_image1_s** %image, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %43, i32 0, i32 10
  %44 = load i32, i32* %ImageMask, align 4, !tbaa !50
  %tobool28 = icmp ne i32 %44, 0
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %if.then.27
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 69
  %arrayidx31 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color30, i32 0, i64 0
  %dev_color32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 2
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color32, align 8, !tbaa !7
  %48 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %call33 = call i32 @gx_image_fill_masked_start(%struct.gx_device_s* %45, %struct.gx_device_color_s* %47, %struct.gx_clip_path_s* %48, %struct.gs_memory_s* %50, %struct.gx_device_s** %dev2) #6
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %51, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.29
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.27
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !1
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp38 = icmp ne %struct.gx_device_s* %53, %54
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_temp, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 1, i64* %pure, align 8, !tbaa !53
  %type40 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_temp, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type40, align 8, !tbaa !37
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_temp, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !54
  store %struct.gx_device_color_s* %dc_temp, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.35
  %55 = bitcast %struct.gs_image1_s** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.42

if.end.42:                                        ; preds = %cleanup.cont, %if.end.24
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 42
  %begin_typed_image44 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs43, i32 0, i32 37
  %begin_typed_image45 = bitcast {}** %begin_typed_image44 to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %57 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image45, align 8, !tbaa !55
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !1
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gs_state_s* %59 to %struct.gs_imager_state_s*
  %61 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %63 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !52
  %66 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %ppie.addr, align 8, !tbaa !1
  %call47 = call i32 %57(%struct.gx_device_s* %58, %struct.gs_imager_state_s* %60, %struct.gs_matrix_s* null, %struct.gs_image_common_s* %61, %struct.gs_int_rect_s* null, %struct.gx_device_color_s* %62, %struct.gx_clip_path_s* %63, %struct.gs_memory_s* %65, %struct.gx_image_enum_common_s** %66) #6
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %67, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.42
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.50:                                        ; preds = %if.end.42
  %69 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %71 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call51 = call i32 @is_image_visible(%struct.gs_image_common_s* %69, %struct.gs_state_s* %70, %struct.gx_clip_path_s* %71) #6
  store i32 %call51, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %72, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.54:                                        ; preds = %if.end.50
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %tobool55 = icmp ne i32 %74, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.54
  %75 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %ppie.addr, align 8, !tbaa !1
  %76 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %75, align 8, !tbaa !1
  %skipping = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %76, i32 0, i32 5
  store i32 1, i32* %skipping, align 4, !tbaa !56
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.57, %if.then.53, %if.then.49, %cleanup, %if.then.22, %if.then.10, %if.then
  %77 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.gx_device_color_s* %dc_temp to i8*
  call void @llvm.lifetime.end(i64 656, i8* %78) #1
  %79 = bitcast %struct.gx_device_s** %dev2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @gx_effective_clip_path(%struct.gs_state_s*, %struct.gx_clip_path_s**) #2

declare i32 @gx_remap_color(%struct.gs_state_s*) #2

declare i32 @gx_begin_image1(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_image_fill_masked_start(%struct.gx_device_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_device_s**) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_image_visible(%struct.gs_image_common_s* %pic, %struct.gs_state_s* %pgs, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  %image_rect = alloca %struct.gs_rect_s, align 8
  %device_rect = alloca %struct.gs_rect_s, align 8
  %device_int_rect = alloca %struct.gs_int_rect_s, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %0, i32 0, i32 0
  %1 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !46
  %begin_typed_image = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !48
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %2, @gx_begin_image1
  br i1 %cmp, label %if.then, label %if.end.84

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_image_common_s* %4 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %5, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %6 = bitcast %struct.gs_rect_s* %image_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast %struct.gs_rect_s* %image_rect to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  %8 = bitcast %struct.gs_rect_s* %device_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast %struct.gs_int_rect_s* %device_int_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %12, i32 0, i32 2
  %13 = load i32, i32* %Width, align 4, !tbaa !58
  %conv = sitofp i32 %13 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %image_rect, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !59
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 3
  %15 = load i32, i32* %Height, align 4, !tbaa !61
  %conv1 = sitofp i32 %15 to double
  %q2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %image_rect, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q2, i32 0, i32 1
  store double %conv1, double* %y, align 8, !tbaa !62
  %16 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %16, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 0
  %17 = load float, float* %xx, align 4, !tbaa !63
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %19 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %xx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 0
  %20 = load float, float* %xx3, align 4, !tbaa !64
  %cmp4 = fcmp oeq float %17, %20
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix6 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %21, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix6, i32 0, i32 1
  %22 = load float, float* %xy, align 4, !tbaa !65
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 5
  %24 = bitcast %struct.gs_matrix_fixed_s* %ctm7 to %struct.gs_matrix_s*
  %xy8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 1
  %25 = load float, float* %xy8, align 4, !tbaa !66
  %cmp9 = fcmp oeq float %22, %25
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %26 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix12 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %26, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix12, i32 0, i32 2
  %27 = load float, float* %yx, align 4, !tbaa !67
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 5
  %29 = bitcast %struct.gs_matrix_fixed_s* %ctm13 to %struct.gs_matrix_s*
  %yx14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 2
  %30 = load float, float* %yx14, align 4, !tbaa !68
  %cmp15 = fcmp oeq float %27, %30
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.11
  %31 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix18 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %31, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix18, i32 0, i32 3
  %32 = load float, float* %yy, align 4, !tbaa !69
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 5
  %34 = bitcast %struct.gs_matrix_fixed_s* %ctm19 to %struct.gs_matrix_s*
  %yy20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 3
  %35 = load float, float* %yy20, align 4, !tbaa !70
  %cmp21 = fcmp oeq float %32, %35
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.17
  %yy24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float 1.000000e+00, float* %yy24, align 4, !tbaa !70
  %xx25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float 1.000000e+00, float* %xx25, align 4, !tbaa !64
  %xy26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  store float 0.000000e+00, float* %xy26, align 4, !tbaa !66
  %yx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  store float 0.000000e+00, float* %yx27, align 4, !tbaa !68
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 5
  %37 = bitcast %struct.gs_matrix_fixed_s* %ctm28 to %struct.gs_matrix_s*
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 4
  %38 = load float, float* %tx, align 4, !tbaa !71
  %39 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix29 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %39, i32 0, i32 1
  %tx30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix29, i32 0, i32 4
  %40 = load float, float* %tx30, align 4, !tbaa !72
  %sub = fsub float %38, %40
  %tx31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %sub, float* %tx31, align 4, !tbaa !71
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 5
  %42 = bitcast %struct.gs_matrix_fixed_s* %ctm32 to %struct.gs_matrix_s*
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 5
  %43 = load float, float* %ty, align 4, !tbaa !73
  %44 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix33 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %44, i32 0, i32 1
  %ty34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix33, i32 0, i32 5
  %45 = load float, float* %ty34, align 4, !tbaa !74
  %sub35 = fsub float %43, %45
  %ty36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %sub35, float* %ty36, align 4, !tbaa !73
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.11, %land.lhs.true, %if.then
  %46 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix37 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %46, i32 0, i32 1
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix37, %struct.gs_matrix_s* %mat) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %47, 0
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.else
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 5
  %50 = bitcast %struct.gs_matrix_fixed_s* %ctm41 to %struct.gs_matrix_s*
  %call42 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %50, %struct.gs_matrix_s* %mat) #6
  store i32 %call42, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %51, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.23
  %call48 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %image_rect, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %device_rect) #6
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %53, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.47
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %device_rect, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %55 = load double, double* %x53, align 8, !tbaa !75
  %call54 = call double @floor(double %55) #7
  %conv55 = fptosi double %call54 to i32
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %device_int_rect, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 0
  store i32 %conv55, i32* %x57, align 4, !tbaa !76
  %p58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %device_rect, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p58, i32 0, i32 1
  %56 = load double, double* %y59, align 8, !tbaa !78
  %call60 = call double @floor(double %56) #7
  %conv61 = fptosi double %call60 to i32
  %p62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %device_int_rect, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p62, i32 0, i32 1
  store i32 %conv61, i32* %y63, align 4, !tbaa !79
  %q64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %device_rect, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q64, i32 0, i32 0
  %57 = load double, double* %x65, align 8, !tbaa !59
  %call66 = call double @ceil(double %57) #7
  %conv67 = fptosi double %call66 to i32
  %q68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %device_int_rect, i32 0, i32 1
  %x69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q68, i32 0, i32 0
  store i32 %conv67, i32* %x69, align 4, !tbaa !80
  %q70 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %device_rect, i32 0, i32 1
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q70, i32 0, i32 1
  %58 = load double, double* %y71, align 8, !tbaa !62
  %call72 = call double @ceil(double %58) #7
  %conv73 = fptosi double %call72 to i32
  %q74 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %device_int_rect, i32 0, i32 1
  %y75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q74, i32 0, i32 1
  store i32 %conv73, i32* %y75, align 4, !tbaa !81
  %59 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call76 = call i32 @gx_cpath_rect_visible(%struct.gx_clip_path_s* %59, %struct.gs_int_rect_s* %device_int_rect) #6
  %tobool = icmp ne i32 %call76, 0
  br i1 %tobool, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.then.77, %if.then.51, %if.then.45, %if.then.40
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %61) #1
  %62 = bitcast %struct.gs_int_rect_s* %device_int_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  %63 = bitcast %struct.gs_rect_s* %device_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %63) #1
  %64 = bitcast %struct.gs_rect_s* %image_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %64) #1
  %65 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.84

if.end.84:                                        ; preds = %cleanup.cont, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %cleanup
  %66 = load i32, i32* %retval
  ret i32 %66

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !82
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_gs_image_enum, i8* %4) #6
  %5 = bitcast i8* %call to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %5, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_image_enum_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 0
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory, align 8, !tbaa !85
  %9 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  call void @image_enum_init(%struct.gs_image_enum_s* %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %11 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.gs_image_enum_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @image_enum_init(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 2
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %dev, align 8, !tbaa !88
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 6
  store i32 0, i32* %plane_index, align 4, !tbaa !89
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %3, i32 0, i32 3
  store i32 0, i32* %num_planes, align 4, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_init(%struct.gs_image_enum_s* %penum, %struct.gs_image1_s* %pim, i32 %multi, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %multi.addr = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %pie = alloca %struct.gx_image_enum_common_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %multi, i32* %multi.addr, align 4, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %0) #1
  %1 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_image1_s* %image to i8*
  %5 = bitcast %struct.gs_image1_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 600, i32 8, i1 false), !tbaa.struct !91
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 10
  %6 = load i32, i32* %ImageMask, align 4, !tbaa !50
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ColorSpace = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 9
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !94
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 74
  %8 = load i32, i32* %in_cachedevice, align 4, !tbaa !95
  %cmp = icmp ule i32 %8, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 11
  store i32 0, i32* %adjust, align 4, !tbaa !96
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 74
  %10 = load i32, i32* %in_cachedevice2, align 4, !tbaa !95
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.else
  %ColorSpace6 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 9
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace6, align 8, !tbaa !94
  %cmp7 = icmp eq %struct.gs_color_space_s* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %13) #6
  %ColorSpace9 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 9
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %ColorSpace9, align 8, !tbaa !94
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %14 = bitcast %struct.gs_image1_s* %image to %struct.gs_image_common_s*
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ImageMask12 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 10
  %16 = load i32, i32* %ImageMask12, align 4, !tbaa !50
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 8
  %17 = load i32, i32* %CombineWithColor, align 4, !tbaa !97
  %or = or i32 %16, %17
  %call13 = call i32 @gs_image_begin_typed(%struct.gs_image_common_s* %14, %struct.gs_state_s* %15, i32 %or, %struct.gx_image_enum_common_s** %pie) #6
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %21 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %22 = bitcast %struct.gs_image1_s* %image to %struct.gs_data_image_s*
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call17 = call i32 @gs_image_enum_init(%struct.gs_image_enum_s* %20, %struct.gx_image_enum_common_s* %21, %struct.gs_data_image_s* %22, %struct.gs_state_s* %23) #6
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.4
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_image_enum_init(%struct.gs_image_enum_s* %penum, %struct.gx_image_enum_common_s* %pie, %struct.gs_data_image_s* %pim, %struct.gs_state_s* %pgs) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pie.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %pim.addr = alloca %struct.gs_data_image_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pie, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  store %struct.gs_data_image_s* %pim, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !9
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !98
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %3 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 75
  %6 = load i32, i32* %in_charpath, align 4, !tbaa !99
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 78
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ null, %cond.true ], [ %8, %cond.false ]
  %call = call i32 @gs_image_common_init(%struct.gs_image_enum_s* %2, %struct.gx_image_enum_common_s* %3, %struct.gs_data_image_s* %4, %struct.gx_device_s* %cond) #6
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @gs_image_bytes_per_plane_row(%struct.gs_image_enum_s* %penum, i32 %plane) #3 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %plane.addr = alloca i32, align 4
  %pie = alloca %struct.gx_image_enum_common_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 2
  %2 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  store %struct.gx_image_enum_common_s* %2, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %3 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %4, i32 0, i32 8
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %7, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %8
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  %9 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_common_init(%struct.gs_image_enum_s* %penum, %struct.gx_image_enum_common_s* %pie, %struct.gs_data_image_s* %pim, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pie.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %pim.addr = alloca %struct.gs_data_image_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pie, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  store %struct.gs_data_image_s* %pim, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %1, i32 0, i32 2
  %2 = load i32, i32* %Width, align 4, !tbaa !100
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %3, i32 0, i32 3
  %4 = load i32, i32* %Height, align 4, !tbaa !102
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %5, i32 0) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @image_enum_init(%struct.gs_image_enum_s* %6) #6
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 1
  store %struct.gx_device_s* %7, %struct.gx_device_s** %dev2, align 8, !tbaa !88
  %9 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 2
  store %struct.gx_image_enum_common_s* %9, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %11, i32 0, i32 6
  %12 = load i32, i32* %num_planes, align 4, !tbaa !103
  %13 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes3 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %13, i32 0, i32 3
  store i32 %12, i32* %num_planes3, align 4, !tbaa !90
  %14 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height4 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %14, i32 0, i32 3
  %15 = load i32, i32* %Height4, align 4, !tbaa !102
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 4
  store i32 %15, i32* %height, align 4, !tbaa !104
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes5 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %18, i32 0, i32 6
  %19 = load i32, i32* %num_planes5, align 4, !tbaa !103
  %cmp6 = icmp slt i32 %17, %19
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %21, i32 0, i32 11
  %arrayidx = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !105
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes8 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %23, i32 0, i32 11
  %arrayidx9 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes8, i32 0, i64 %idxprom7
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx9, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !109
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %24 to i64
  %25 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes11 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %25, i32 0, i32 11
  %arrayidx12 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes11, i32 0, i64 %idxprom10
  %source13 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx12, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source13, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !110
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes15 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %27, i32 0, i32 11
  %arrayidx16 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes15, i32 0, i64 %idxprom14
  %row = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx16, i32 0, i32 0
  %data17 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row, i32 0, i32 0
  store i8* null, i8** %data17, align 8, !tbaa !111
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes19 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %29, i32 0, i32 11
  %arrayidx20 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes19, i32 0, i64 %idxprom18
  %row21 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx20, i32 0, i32 0
  %size22 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row21, i32 0, i32 1
  store i32 0, i32* %size22, align 4, !tbaa !112
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %31, i32 0, i32 12
  %arrayidx24 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes, i32 0, i64 %idxprom23
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx24, i32 0, i32 1
  store i32 0, i32* %data_x, align 4, !tbaa !113
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %33, i32 0, i32 7
  store i32 0, i32* %y, align 4, !tbaa !115
  %34 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %34, i32 0, i32 8
  store i32 0, i32* %error, align 4, !tbaa !116
  %35 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted_varies = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %35, i32 0, i32 5
  store i32 1, i32* %wanted_varies, align 4, !tbaa !117
  %36 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @begin_planes(%struct.gs_image_enum_s* %36) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @begin_planes(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @cache_planes(%struct.gs_image_enum_s* %0) #6
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 6
  store i32 -1, i32* %plane_index, align 4, !tbaa !89
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @next_plane(%struct.gs_image_enum_s* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gs_image_planes_wanted(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 3
  %3 = load i32, i32* %num_planes, align 4, !tbaa !90
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %5, i32 0, i32 9
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %wanted, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !93
  %conv = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 11
  %arrayidx2 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom1
  %pos = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx2, i32 0, i32 1
  %9 = load i32, i32* %pos, align 4, !tbaa !105
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes4 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %11, i32 0, i32 11
  %arrayidx5 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes4, i32 0, i64 %idxprom3
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx5, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !109
  %add = add i32 %9, %12
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %14, i32 0, i32 12
  %arrayidx7 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes, i32 0, i64 %idxprom6
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx7, i32 0, i32 2
  %15 = load i32, i32* %raster, align 4, !tbaa !118
  %cmp8 = icmp ult i32 %add, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %16 = phi i1 [ false, %for.body ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %conv10 = trunc i32 %land.ext to i8
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %client_wanted = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 10
  %arrayidx12 = getelementptr inbounds [65 x i8], [65 x i8]* %client_wanted, i32 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !93
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %client_wanted13 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %20, i32 0, i32 10
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %client_wanted13, i32 0, i32 0
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_next(%struct.gs_image_enum_s* %penum, i8* %dbytes, i32 %dsize, i32* %pused) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %dbytes.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %pused.addr = alloca i32*, align 8
  %px = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %used = alloca [65 x i32], align 16
  %plane_data = alloca [65 x %struct.gs_const_string_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %dbytes, i8** %dbytes.addr, align 8, !tbaa !1
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store i32* %pused, i32** %pused.addr, align 8, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 6
  %2 = load i32, i32* %plane_index, align 4, !tbaa !89
  store i32 %2, i32* %px, align 4, !tbaa !5
  %3 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %4, i32 0, i32 3
  %5 = load i32, i32* %num_planes1, align 4, !tbaa !90
  store i32 %5, i32* %num_planes, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.start(i64 260, i8* %8) #1
  %9 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %9) #1
  %10 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %11, i32 0, i32 11
  %arrayidx = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !109
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %13, %14
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom3
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx4, i32 0, i32 1
  store i32 0, i32* %size5, align 4, !tbaa !119
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %dbytes.addr, align 8, !tbaa !1
  %18 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx7, i32 0, i32 0
  store i8* %17, i8** %data, align 8, !tbaa !120
  %19 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %20 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom8
  %size10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx9, i32 0, i32 1
  store i32 %19, i32* %size10, align 4, !tbaa !119
  %21 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %21, i32 0, i32 8
  store i32 0, i32* %error, align 4, !tbaa !116
  %22 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i32 0
  %call = call i32 @gs_image_next_planes(%struct.gs_image_enum_s* %22, %struct.gs_const_string_s* %arraydecay, i32* %arraydecay11) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i64 %idxprom12
  %24 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %25 = load i32*, i32** %pused.addr, align 8, !tbaa !1
  store i32 %24, i32* %25, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %27 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @next_plane(%struct.gs_image_enum_s* %27) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.end
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %29 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %29) #1
  %30 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.end(i64 260, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_next_planes(%struct.gs_image_enum_s* %penum, %struct.gs_const_string_s* %plane_data, i32* %used) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %plane_data.addr = alloca %struct.gs_const_string_s*, align 8
  %used.addr = alloca i32*, align 8
  %num_planes = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %h = alloca i32, align 4
  %pos = alloca i32, align 4
  %size27 = alloca i32, align 4
  %raster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copy = alloca i32, align 4
  %old_size = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %old_data = alloca i8*, align 8
  %row73 = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %plane_data, %struct.gs_const_string_s** %plane_data.addr, align 8, !tbaa !1
  store i32* %used, i32** %used.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 3
  %2 = load i32, i32* %num_planes1, align 4, !tbaa !90
  store i32 %2, i32* %num_planes, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %used.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [65 x i8], [65 x i8]* %wanted, i32 0, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1, !tbaa !93
  %conv = zext i8 %11 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %plane_data.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %13, i64 %idxprom4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx5, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !119
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %plane_data.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %16, i64 %idxprom8
  %size10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx9, i32 0, i32 1
  %17 = load i32, i32* %size10, align 4, !tbaa !119
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %19, i32 0, i32 11
  %arrayidx12 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom11
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx12, i32 0, i32 2
  %size13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source, i32 0, i32 1
  store i32 %17, i32* %size13, align 4, !tbaa !109
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %plane_data.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %21, i64 %idxprom14
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx15, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8, !tbaa !120
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes17 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %24, i32 0, i32 11
  %arrayidx18 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes17, i32 0, i64 %idxprom16
  %source19 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx18, i32 0, i32 2
  %data20 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source19, i32 0, i32 0
  store i8* %22, i8** %data20, align 8, !tbaa !110
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.21

for.cond.21:                                      ; preds = %cleanup.cont.281, %for.end
  %26 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted_varies = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %27, i32 0, i32 5
  %28 = load i32, i32* %wanted_varies, align 4, !tbaa !117
  %tobool22 = icmp ne i32 %28, 0
  %cond = select i1 %tobool22, i32 1, i32 2147483647
  store i32 %cond, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.190, %for.cond.21
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body.26, label %for.end.192

for.body.26:                                      ; preds = %for.cond.23
  %31 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %size27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted29 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %35, i32 0, i32 9
  %arrayidx30 = getelementptr inbounds [65 x i8], [65 x i8]* %wanted29, i32 0, i64 %idxprom28
  %36 = load i8, i8* %arrayidx30, align 1, !tbaa !93
  %tobool31 = icmp ne i8 %36, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %for.body.26
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.33:                                        ; preds = %for.body.26
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %37 to i64
  %38 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes35 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %38, i32 0, i32 11
  %arrayidx36 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes35, i32 0, i64 %idxprom34
  %pos37 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx36, i32 0, i32 1
  %39 = load i32, i32* %pos37, align 4, !tbaa !105
  store i32 %39, i32* %pos, align 4, !tbaa !5
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %40 to i64
  %41 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes39 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %41, i32 0, i32 11
  %arrayidx40 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes39, i32 0, i64 %idxprom38
  %source41 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx40, i32 0, i32 2
  %size42 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source41, i32 0, i32 1
  %42 = load i32, i32* %size42, align 4, !tbaa !109
  store i32 %42, i32* %size27, align 4, !tbaa !5
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %43 to i64
  %44 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %44, i32 0, i32 12
  %arrayidx44 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes, i32 0, i64 %idxprom43
  %raster45 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx44, i32 0, i32 2
  %45 = load i32, i32* %raster45, align 4, !tbaa !118
  store i32 %45, i32* %raster, align 4, !tbaa !5
  %46 = load i32, i32* %size27, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %46, 0
  br i1 %cmp46, label %if.then.48, label %if.end.137

if.then.48:                                       ; preds = %if.end.33
  %47 = load i32, i32* %pos, align 4, !tbaa !5
  %48 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp49 = icmp ult i32 %47, %48
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.136

land.lhs.true.51:                                 ; preds = %if.then.48
  %49 = load i32, i32* %pos, align 4, !tbaa !5
  %cmp52 = icmp ne i32 %49, 0
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.51
  %50 = load i32, i32* %size27, align 4, !tbaa !5
  %51 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp54 = icmp ult i32 %50, %51
  br i1 %cmp54, label %if.then.56, label %if.end.136

if.then.56:                                       ; preds = %lor.lhs.false, %land.lhs.true.51
  %52 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %size27, align 4, !tbaa !5
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %pos, align 4, !tbaa !5
  %sub = sub i32 %54, %55
  %cmp57 = icmp ult i32 %53, %sub
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.56
  %56 = load i32, i32* %size27, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.56
  %57 = load i32, i32* %raster, align 4, !tbaa !5
  %58 = load i32, i32* %pos, align 4, !tbaa !5
  %sub59 = sub i32 %57, %58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i32 [ %56, %cond.true ], [ %sub59, %cond.false ]
  store i32 %cond60, i32* %copy, align 4, !tbaa !5
  %59 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %60 to i64
  %61 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes62 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %61, i32 0, i32 11
  %arrayidx63 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes62, i32 0, i64 %idxprom61
  %row = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx63, i32 0, i32 0
  %size64 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row, i32 0, i32 1
  %62 = load i32, i32* %size64, align 4, !tbaa !112
  store i32 %62, i32* %old_size, align 4, !tbaa !5
  %63 = load i32, i32* %raster, align 4, !tbaa !5
  %64 = load i32, i32* %old_size, align 4, !tbaa !5
  %cmp65 = icmp ugt i32 %63, %64
  br i1 %cmp65, label %if.then.67, label %if.end.99

if.then.67:                                       ; preds = %cond.end
  %65 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gs_image_row_memory(%struct.gs_image_enum_s* %66) #6
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %67 = bitcast i8** %old_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %68 to i64
  %69 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes69 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %69, i32 0, i32 11
  %arrayidx70 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes69, i32 0, i64 %idxprom68
  %row71 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx70, i32 0, i32 0
  %data72 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row71, i32 0, i32 0
  %70 = load i8*, i8** %data72, align 8, !tbaa !111
  store i8* %70, i8** %old_data, align 8, !tbaa !1
  %71 = bitcast i8** %row73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i8*, i8** %old_data, align 8, !tbaa !1
  %cmp74 = icmp eq i8* %72, null
  br i1 %cmp74, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %if.then.67
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %74 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !121
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %76 = load i32, i32* %raster, align 4, !tbaa !5
  %call77 = call i8* %74(%struct.gs_memory_s* %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end.81

cond.false.78:                                    ; preds = %if.then.67
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs79, i32 0, i32 18
  %78 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !122
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %80 = load i8*, i8** %old_data, align 8, !tbaa !1
  %81 = load i32, i32* %old_size, align 4, !tbaa !5
  %82 = load i32, i32* %raster, align 4, !tbaa !5
  %call80 = call i8* %78(%struct.gs_memory_s* %79, i8* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.78, %cond.true.76
  %cond82 = phi i8* [ %call77, %cond.true.76 ], [ %call80, %cond.false.78 ]
  store i8* %cond82, i8** %row73, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.81
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %83 = load i8*, i8** %row73, align 8, !tbaa !1
  %cmp83 = icmp eq i8* %83, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %do.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  %84 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %85 = load i32, i32* %i, align 4, !tbaa !5
  call void @free_row_buffers(%struct.gs_image_enum_s* %84, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #6
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %do.end
  %86 = load i8*, i8** %row73, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %87 to i64
  %88 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes88 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %88, i32 0, i32 11
  %arrayidx89 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes88, i32 0, i64 %idxprom87
  %row90 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx89, i32 0, i32 0
  %data91 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row90, i32 0, i32 0
  store i8* %86, i8** %data91, align 8, !tbaa !111
  %89 = load i32, i32* %raster, align 4, !tbaa !5
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %90 to i64
  %91 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes93 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %91, i32 0, i32 11
  %arrayidx94 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes93, i32 0, i64 %idxprom92
  %row95 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx94, i32 0, i32 0
  %size96 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row95, i32 0, i32 1
  store i32 %89, i32* %size96, align 4, !tbaa !112
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.then.85
  %92 = bitcast i8** %row73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i8** %old_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.132 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.99

if.end.99:                                        ; preds = %cleanup.cont, %cond.end
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %95 to i64
  %96 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes101 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %96, i32 0, i32 11
  %arrayidx102 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes101, i32 0, i64 %idxprom100
  %row103 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx102, i32 0, i32 0
  %data104 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row103, i32 0, i32 0
  %97 = load i8*, i8** %data104, align 8, !tbaa !111
  %98 = load i32, i32* %pos, align 4, !tbaa !5
  %idx.ext = sext i32 %98 to i64
  %add.ptr = getelementptr inbounds i8, i8* %97, i64 %idx.ext
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %99 to i64
  %100 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes106 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %100, i32 0, i32 11
  %arrayidx107 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes106, i32 0, i64 %idxprom105
  %source108 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx107, i32 0, i32 2
  %data109 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source108, i32 0, i32 0
  %101 = load i8*, i8** %data109, align 8, !tbaa !110
  %102 = load i32, i32* %copy, align 4, !tbaa !5
  %conv110 = sext i32 %102 to i64
  %call111 = call i8* @memcpy(i8* %add.ptr, i8* %101, i64 %conv110) #8
  %103 = load i32, i32* %copy, align 4, !tbaa !5
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %104 to i64
  %105 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes113 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %105, i32 0, i32 11
  %arrayidx114 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes113, i32 0, i64 %idxprom112
  %source115 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx114, i32 0, i32 2
  %data116 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source115, i32 0, i32 0
  %106 = load i8*, i8** %data116, align 8, !tbaa !110
  %idx.ext117 = sext i32 %103 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %106, i64 %idx.ext117
  store i8* %add.ptr118, i8** %data116, align 8, !tbaa !110
  %107 = load i32, i32* %copy, align 4, !tbaa !5
  %108 = load i32, i32* %size27, align 4, !tbaa !5
  %sub119 = sub nsw i32 %108, %107
  store i32 %sub119, i32* %size27, align 4, !tbaa !5
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %109 to i64
  %110 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes121 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %110, i32 0, i32 11
  %arrayidx122 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes121, i32 0, i64 %idxprom120
  %source123 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx122, i32 0, i32 2
  %size124 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source123, i32 0, i32 1
  store i32 %sub119, i32* %size124, align 4, !tbaa !109
  %111 = load i32, i32* %copy, align 4, !tbaa !5
  %112 = load i32, i32* %pos, align 4, !tbaa !5
  %add = add nsw i32 %112, %111
  store i32 %add, i32* %pos, align 4, !tbaa !5
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom125 = sext i32 %113 to i64
  %114 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes126 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %114, i32 0, i32 11
  %arrayidx127 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes126, i32 0, i64 %idxprom125
  %pos128 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx127, i32 0, i32 1
  store i32 %add, i32* %pos128, align 4, !tbaa !105
  %115 = load i32, i32* %copy, align 4, !tbaa !5
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %116 to i64
  %117 = load i32*, i32** %used.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i32, i32* %117, i64 %idxprom129
  %118 = load i32, i32* %arrayidx130, align 4, !tbaa !5
  %add131 = add i32 %118, %115
  store i32 %add131, i32* %arrayidx130, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %if.end.99, %cleanup
  %119 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %cleanup.dest.134 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.134, label %cleanup.185 [
    i32 0, label %cleanup.cont.135
  ]

cleanup.cont.135:                                 ; preds = %cleanup.132
  br label %if.end.136

if.end.136:                                       ; preds = %cleanup.cont.135, %lor.lhs.false, %if.then.48
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.33
  %121 = load i32, i32* %h, align 4, !tbaa !5
  %cmp138 = icmp eq i32 %121, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.137
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.141:                                       ; preds = %if.end.137
  %122 = load i32, i32* %pos, align 4, !tbaa !5
  %123 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %122, %123
  br i1 %cmp142, label %if.then.144, label %if.else

if.then.144:                                      ; preds = %if.end.141
  %124 = load i32, i32* %h, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %124, 1
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %if.then.144
  %125 = load i32, i32* %h, align 4, !tbaa !5
  br label %cond.end.149

cond.false.148:                                   ; preds = %if.then.144
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi i32 [ %125, %cond.true.147 ], [ 1, %cond.false.148 ]
  store i32 %cond150, i32* %h, align 4, !tbaa !5
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom151 = sext i32 %126 to i64
  %127 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes152 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %127, i32 0, i32 11
  %arrayidx153 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes152, i32 0, i64 %idxprom151
  %row154 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx153, i32 0, i32 0
  %data155 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row154, i32 0, i32 0
  %128 = load i8*, i8** %data155, align 8, !tbaa !111
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %129 to i64
  %130 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes157 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %130, i32 0, i32 12
  %arrayidx158 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes157, i32 0, i64 %idxprom156
  %data159 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx158, i32 0, i32 0
  store i8* %128, i8** %data159, align 8, !tbaa !123
  br label %if.end.184

if.else:                                          ; preds = %if.end.141
  %131 = load i32, i32* %pos, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %131, 0
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.182

land.lhs.true.162:                                ; preds = %if.else
  %132 = load i32, i32* %size27, align 4, !tbaa !5
  %133 = load i32, i32* %raster, align 4, !tbaa !5
  %cmp163 = icmp uge i32 %132, %133
  br i1 %cmp163, label %if.then.165, label %if.else.182

if.then.165:                                      ; preds = %land.lhs.true.162
  %134 = load i32, i32* %h, align 4, !tbaa !5
  %135 = load i32, i32* %size27, align 4, !tbaa !5
  %136 = load i32, i32* %raster, align 4, !tbaa !5
  %div = udiv i32 %135, %136
  %cmp166 = icmp ult i32 %134, %div
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.then.165
  %137 = load i32, i32* %h, align 4, !tbaa !5
  br label %cond.end.171

cond.false.169:                                   ; preds = %if.then.165
  %138 = load i32, i32* %size27, align 4, !tbaa !5
  %139 = load i32, i32* %raster, align 4, !tbaa !5
  %div170 = udiv i32 %138, %139
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.168
  %cond172 = phi i32 [ %137, %cond.true.168 ], [ %div170, %cond.false.169 ]
  store i32 %cond172, i32* %h, align 4, !tbaa !5
  %140 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom173 = sext i32 %140 to i64
  %141 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes174 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %141, i32 0, i32 11
  %arrayidx175 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes174, i32 0, i64 %idxprom173
  %source176 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx175, i32 0, i32 2
  %data177 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source176, i32 0, i32 0
  %142 = load i8*, i8** %data177, align 8, !tbaa !110
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom178 = sext i32 %143 to i64
  %144 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes179 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %144, i32 0, i32 12
  %arrayidx180 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes179, i32 0, i64 %idxprom178
  %data181 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx180, i32 0, i32 0
  store i8* %142, i8** %data181, align 8, !tbaa !123
  br label %if.end.183

if.else.182:                                      ; preds = %land.lhs.true.162, %if.else
  store i32 0, i32* %h, align 4, !tbaa !5
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.182, %cond.end.171
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %cond.end.149
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %if.end.184, %if.then.140, %cleanup.132, %if.then.32
  %145 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %size27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %cleanup.dest.188 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.188, label %unreachable [
    i32 0, label %cleanup.cont.189
    i32 9, label %for.inc.190
    i32 7, label %for.end.192
  ]

cleanup.cont.189:                                 ; preds = %cleanup.185
  br label %for.inc.190

for.inc.190:                                      ; preds = %cleanup.cont.189, %cleanup.185
  %148 = load i32, i32* %i, align 4, !tbaa !5
  %inc191 = add nsw i32 %148, 1
  store i32 %inc191, i32* %i, align 4, !tbaa !5
  br label %for.cond.23

for.end.192:                                      ; preds = %cleanup.185, %for.cond.23
  %149 = load i32, i32* %h, align 4, !tbaa !5
  %cmp193 = icmp eq i32 %149, 0
  br i1 %cmp193, label %if.then.198, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %for.end.192
  %150 = load i32, i32* %code, align 4, !tbaa !5
  %cmp196 = icmp ne i32 %150, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %lor.lhs.false.195, %for.end.192
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.199:                                       ; preds = %lor.lhs.false.195
  %151 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %151, i32 0, i32 1
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !88
  %cmp200 = icmp eq %struct.gx_device_s* %152, null
  br i1 %cmp200, label %if.then.202, label %if.else.212

if.then.202:                                      ; preds = %if.end.199
  %153 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %153, i32 0, i32 7
  %154 = load i32, i32* %y, align 4, !tbaa !115
  %155 = load i32, i32* %h, align 4, !tbaa !5
  %add203 = add nsw i32 %154, %155
  %156 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %156, i32 0, i32 4
  %157 = load i32, i32* %height, align 4, !tbaa !104
  %cmp204 = icmp slt i32 %add203, %157
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %if.then.202
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.211

if.else.207:                                      ; preds = %if.then.202
  %158 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %height208 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %158, i32 0, i32 4
  %159 = load i32, i32* %height208, align 4, !tbaa !104
  %160 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y209 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %160, i32 0, i32 7
  %161 = load i32, i32* %y209, align 4, !tbaa !115
  %sub210 = sub nsw i32 %159, %161
  store i32 %sub210, i32* %h, align 4, !tbaa !5
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.207, %if.then.206
  br label %if.end.220

if.else.212:                                      ; preds = %if.end.199
  %162 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %162, i32 0, i32 2
  %163 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %164 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes213 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %164, i32 0, i32 12
  %arraydecay = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes213, i32 0, i32 0
  %165 = load i32, i32* %h, align 4, !tbaa !5
  %call214 = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %163, %struct.gx_image_plane_s* %arraydecay, i32 %165, i32* %h) #6
  store i32 %call214, i32* %code, align 4, !tbaa !5
  br label %do.body.215

do.body.215:                                      ; preds = %if.else.212
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp218 = icmp slt i32 %166, 0
  %conv219 = zext i1 %cmp218 to i32
  %167 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %167, i32 0, i32 8
  store i32 %conv219, i32* %error, align 4, !tbaa !116
  br label %if.end.220

if.end.220:                                       ; preds = %do.end.217, %if.end.211
  %168 = load i32, i32* %h, align 4, !tbaa !5
  %169 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y221 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %169, i32 0, i32 7
  %170 = load i32, i32* %y221, align 4, !tbaa !115
  %add222 = add nsw i32 %170, %168
  store i32 %add222, i32* %y221, align 4, !tbaa !115
  %171 = load i32, i32* %h, align 4, !tbaa !5
  %cmp223 = icmp eq i32 %171, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.220
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.226:                                       ; preds = %if.end.220
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.272, %if.end.226
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %173 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp228 = icmp slt i32 %172, %173
  br i1 %cmp228, label %for.body.230, label %for.end.274

for.body.230:                                     ; preds = %for.cond.227
  %174 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom231 = sext i32 %175 to i64
  %176 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted232 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %176, i32 0, i32 9
  %arrayidx233 = getelementptr inbounds [65 x i8], [65 x i8]* %wanted232, i32 0, i64 %idxprom231
  %177 = load i8, i8* %arrayidx233, align 1, !tbaa !93
  %tobool234 = icmp ne i8 %177, 0
  br i1 %tobool234, label %if.end.236, label %if.then.235

if.then.235:                                      ; preds = %for.body.230
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.269

if.end.236:                                       ; preds = %for.body.230
  %178 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom237 = sext i32 %178 to i64
  %179 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes238 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %179, i32 0, i32 12
  %arrayidx239 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes238, i32 0, i64 %idxprom237
  %raster240 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx239, i32 0, i32 2
  %180 = load i32, i32* %raster240, align 4, !tbaa !118
  %181 = load i32, i32* %h, align 4, !tbaa !5
  %mul = mul i32 %180, %181
  store i32 %mul, i32* %count, align 4, !tbaa !5
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom241 = sext i32 %182 to i64
  %183 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes242 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %183, i32 0, i32 11
  %arrayidx243 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes242, i32 0, i64 %idxprom241
  %pos244 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx243, i32 0, i32 1
  %184 = load i32, i32* %pos244, align 4, !tbaa !105
  %tobool245 = icmp ne i32 %184, 0
  br i1 %tobool245, label %if.then.246, label %if.else.251

if.then.246:                                      ; preds = %if.end.236
  %185 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom247 = sext i32 %185 to i64
  %186 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes248 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %186, i32 0, i32 11
  %arrayidx249 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes248, i32 0, i64 %idxprom247
  %pos250 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx249, i32 0, i32 1
  store i32 0, i32* %pos250, align 4, !tbaa !105
  br label %if.end.268

if.else.251:                                      ; preds = %if.end.236
  %187 = load i32, i32* %count, align 4, !tbaa !5
  %188 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom252 = sext i32 %188 to i64
  %189 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes253 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %189, i32 0, i32 11
  %arrayidx254 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes253, i32 0, i64 %idxprom252
  %source255 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx254, i32 0, i32 2
  %data256 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source255, i32 0, i32 0
  %190 = load i8*, i8** %data256, align 8, !tbaa !110
  %idx.ext257 = sext i32 %187 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %190, i64 %idx.ext257
  store i8* %add.ptr258, i8** %data256, align 8, !tbaa !110
  %191 = load i32, i32* %count, align 4, !tbaa !5
  %192 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom259 = sext i32 %192 to i64
  %193 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes260 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %193, i32 0, i32 11
  %arrayidx261 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes260, i32 0, i64 %idxprom259
  %source262 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx261, i32 0, i32 2
  %size263 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source262, i32 0, i32 1
  %194 = load i32, i32* %size263, align 4, !tbaa !109
  %sub264 = sub i32 %194, %191
  store i32 %sub264, i32* %size263, align 4, !tbaa !109
  %195 = load i32, i32* %count, align 4, !tbaa !5
  %196 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom265 = sext i32 %196 to i64
  %197 = load i32*, i32** %used.addr, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i32, i32* %197, i64 %idxprom265
  %198 = load i32, i32* %arrayidx266, align 4, !tbaa !5
  %add267 = add i32 %198, %195
  store i32 %add267, i32* %arrayidx266, align 4, !tbaa !5
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.251, %if.then.246
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.269

cleanup.269:                                      ; preds = %if.end.268, %if.then.235
  %199 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %cleanup.dest.270 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.270, label %unreachable [
    i32 0, label %cleanup.cont.271
    i32 16, label %for.inc.272
  ]

cleanup.cont.271:                                 ; preds = %cleanup.269
  br label %for.inc.272

for.inc.272:                                      ; preds = %cleanup.cont.271, %cleanup.269
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %inc273 = add nsw i32 %200, 1
  store i32 %inc273, i32* %i, align 4, !tbaa !5
  br label %for.cond.227

for.end.274:                                      ; preds = %for.cond.227
  %201 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  call void @cache_planes(%struct.gs_image_enum_s* %201) #6
  %202 = load i32, i32* %code, align 4, !tbaa !5
  %cmp275 = icmp sgt i32 %202, 0
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %for.end.274
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.278:                                       ; preds = %for.end.274
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.279

cleanup.279:                                      ; preds = %if.end.278, %if.then.277, %if.then.225, %if.then.198
  %203 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %cleanup.dest.280 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.280, label %unreachable [
    i32 0, label %cleanup.cont.281
    i32 5, label %for.end.282
  ]

cleanup.cont.281:                                 ; preds = %cleanup.279
  br label %for.cond.21

for.end.282:                                      ; preds = %cleanup.279
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.293, %for.end.282
  %204 = load i32, i32* %i, align 4, !tbaa !5
  %205 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp284 = icmp slt i32 %204, %205
  br i1 %cmp284, label %for.body.286, label %for.end.295

for.body.286:                                     ; preds = %for.cond.283
  %206 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom287 = sext i32 %206 to i64
  %207 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %plane_data.addr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %207, i64 %idxprom287
  %208 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom289 = sext i32 %208 to i64
  %209 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes290 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %209, i32 0, i32 11
  %arrayidx291 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes290, i32 0, i64 %idxprom289
  %source292 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx291, i32 0, i32 2
  %210 = bitcast %struct.gs_const_string_s* %arrayidx288 to i8*
  %211 = bitcast %struct.gs_const_string_s* %source292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 16, i32 8, i1 false), !tbaa.struct !124
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.body.286
  %212 = load i32, i32* %i, align 4, !tbaa !5
  %inc294 = add nsw i32 %212, 1
  store i32 %inc294, i32* %i, align 4, !tbaa !5
  br label %for.cond.283

for.end.295:                                      ; preds = %for.cond.283
  br label %do.body.296

do.body.296:                                      ; preds = %for.end.295
  br label %do.cond.297

do.cond.297:                                      ; preds = %do.body.296
  br label %do.end.298

do.end.298:                                       ; preds = %do.cond.297
  %213 = load i32, i32* %code, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %214 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  ret i32 %213

unreachable:                                      ; preds = %cleanup.279, %cleanup.269, %cleanup.185
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @next_plane(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %px = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 6
  %2 = load i32, i32* %plane_index, align 4, !tbaa !89
  store i32 %2, i32* %px, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i32, i32* %px, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %px, align 4, !tbaa !5
  %4 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %4, i32 0, i32 3
  %5 = load i32, i32* %num_planes, align 4, !tbaa !90
  %cmp = icmp eq i32 %inc, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %6 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %7, i32 0, i32 9
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %wanted, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !93
  %tobool = icmp ne i8 %8, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %px, align 4, !tbaa !5
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %plane_index1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 6
  store i32 %9, i32* %plane_index1, align 4, !tbaa !89
  %11 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @gs_image_row_memory(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !85
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %2 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !125
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !85
  %call = call %struct.gs_memory_s* %2(%struct.gs_memory_s* %4) #6
  ret %struct.gs_memory_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @free_row_buffers(%struct.gs_image_enum_s* %penum, i32 %num_planes, i8* %cname) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %num_planes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gs_image_row_memory(%struct.gs_image_enum_s* %3) #6
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %4 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !126
  %5 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_memory_s* @gs_image_row_memory(%struct.gs_image_enum_s* %5) #6
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %7, i32 0, i32 11
  %arrayidx = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom
  %row = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !111
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes3 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 11
  %arrayidx4 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes3, i32 0, i64 %idxprom2
  %row5 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx4, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row5, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !112
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %call1, i8* %8, i32 %11, i8* %12) #6
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes7 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %14, i32 0, i32 11
  %arrayidx8 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes7, i32 0, i64 %idxprom6
  %row9 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx8, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row9, i32 0, i32 0
  store i8* null, i8** %data10, align 8, !tbaa !111
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %planes12 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 11
  %arrayidx13 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes12, i32 0, i64 %idxprom11
  %row14 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx13, i32 0, i32 0
  %size15 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row14, i32 0, i32 1
  store i32 0, i32* %size15, align 4, !tbaa !112
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @cache_planes(%struct.gs_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted_varies = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %1, i32 0, i32 5
  %2 = load i32, i32* %wanted_varies, align 4, !tbaa !117
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %3, i32 0, i32 2
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %5 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %5, i32 0, i32 9
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %wanted, i32 0, i32 0
  %call = call i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s* %4, i8* %arraydecay) #6
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted_varies2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %6, i32 0, i32 5
  store i32 %lnot.ext, i32* %wanted_varies2, align 4, !tbaa !117
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 3
  %9 = load i32, i32* %num_planes, align 4, !tbaa !90
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wanted3 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %11, i32 0, i32 9
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %wanted3, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !93
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %13 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %call6 = call i32 @gs_image_bytes_per_plane_row(%struct.gs_image_enum_s* %13, i32 %14) #6
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 12
  %arrayidx8 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes, i32 0, i64 %idxprom7
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx8, i32 0, i32 2
  store i32 %call6, i32* %raster, align 4, !tbaa !118
  br label %if.end

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_planes10 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 12
  %arrayidx11 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %image_planes10, i32 0, i64 %idxprom9
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx11, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_cleanup(%struct.gs_image_enum_s* %penum, %struct.gs_state_s* %pgs) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %cdev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %3, i32 0, i32 3
  %4 = load i32, i32* %num_planes, align 4, !tbaa !90
  call void @free_row_buffers(%struct.gs_image_enum_s* %2, i32 %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #6
  %5 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %cmp = icmp ne %struct.gx_image_enum_common_s* %6, null
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %7, i32 0, i32 2
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info1, align 8, !tbaa !87
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %8, i32 0, i32 2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !127
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %10 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !128
  %11 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %11, i32 0, i32 2
  %12 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info2, align 8, !tbaa !87
  %dev3 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev3, align 8, !tbaa !127
  %call = call i32 %10(%struct.gx_device_s* %13, i32 5, i8* null, i32 0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %14 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info5 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %15, i32 0, i32 2
  %16 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info5, align 8, !tbaa !87
  %dev6 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %16, i32 0, i32 2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev6, align 8, !tbaa !127
  store %struct.gx_device_s* %17, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info7 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 2
  %19 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info7, align 8, !tbaa !87
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %20, i32 0, i32 8
  %21 = load i32, i32* %error, align 4, !tbaa !116
  %tobool8 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  %call9 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %19, i32 %lnot.ext) #6
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %23 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev10 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %23, i32 0, i32 1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev10, align 8, !tbaa !88
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !7
  %call11 = call i32 @gx_image_fill_masked_end(%struct.gx_device_s* %22, %struct.gx_device_s* %24, %struct.gx_device_color_s* %26) #6
  store i32 %call11, i32* %code1, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.4
  %28 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %28, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.4
  %29 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %if.end.20

if.else:                                          ; preds = %if.then
  %30 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %info14 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %30, i32 0, i32 2
  %31 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info14, align 8, !tbaa !87
  %32 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %error15 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %32, i32 0, i32 8
  %33 = load i32, i32* %error15, align 4, !tbaa !116
  %tobool16 = icmp ne i32 %33, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %call19 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %31, i32 %lnot.ext18) #6
  store i32 %call19, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %35 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 %34
}

declare i32 @gx_image_fill_masked_end(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gx_device_color_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %penum, %struct.gs_state_s* %pgs) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_image_cleanup(%struct.gs_image_enum_s* %1, %struct.gs_state_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !85
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !129
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !85
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_image_enum_s* %8 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #6
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

declare i32 @gx_cpath_rect_visible(%struct.gx_clip_path_s*, %struct.gs_int_rect_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_image_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_image_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %2, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %6, i32 0, i32 3
  %7 = load i32, i32* %num_planes, align 4, !tbaa !90
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_image_enum_s*
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 11
  %arrayidx = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !120
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr, align 8, !tbaa !130
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %13 to i64
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gs_image_enum_s*
  %planes2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %15, i32 0, i32 11
  %arrayidx3 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes2, i32 0, i64 %idxprom1
  %source4 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx3, i32 0, i32 2
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %source4, i32 0, i32 1
  %16 = load i32, i32* %size5, align 4, !tbaa !119
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 1
  store i32 %16, i32* %size6, align 4, !tbaa !132
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %num_planes7 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 3
  %19 = load i32, i32* %num_planes7, align 4, !tbaa !90
  %20 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub8 = sub nsw i32 %20, %19
  store i32 %sub8, i32* %index.addr, align 4, !tbaa !5
  %21 = load i32, i32* %index.addr, align 4, !tbaa !5
  %22 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %num_planes9 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %22, i32 0, i32 3
  %23 = load i32, i32* %num_planes9, align 4, !tbaa !90
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.end
  %24 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %24 to i64
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_image_enum_s*
  %planes13 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %26, i32 0, i32 11
  %arrayidx14 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes13, i32 0, i64 %idxprom12
  %row = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx14, i32 0, i32 0
  %data15 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row, i32 0, i32 0
  %27 = load i8*, i8** %data15, align 8, !tbaa !133
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr16, align 8, !tbaa !130
  %29 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom17 = sext i32 %29 to i64
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_image_enum_s*
  %planes18 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %31, i32 0, i32 11
  %arrayidx19 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes18, i32 0, i64 %idxprom17
  %row20 = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx19, i32 0, i32 0
  %size21 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %row20, i32 0, i32 1
  %32 = load i32, i32* %size21, align 4, !tbaa !134
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size22 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %33, i32 0, i32 1
  store i32 %32, i32* %size22, align 4, !tbaa !132
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %34 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_image_enum_s*
  %dev = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %35, i32 0, i32 1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !88
  %37 = bitcast %struct.gx_device_s* %36 to i8*
  %38 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %38, i32 0, i32 0
  store i8* %37, i8** %ptr24, align 8, !tbaa !130
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %entry
  %39 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %40 = bitcast i8* %39 to %struct.gs_image_enum_s*
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %40, i32 0, i32 2
  %41 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %42 = bitcast %struct.gx_image_enum_common_s* %41 to i8*
  %43 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %43, i32 0, i32 0
  store i8* %42, i8** %ptr26, align 8, !tbaa !130
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.25, %sw.bb, %if.end.23, %if.then.11, %if.then
  %44 = bitcast %struct.gs_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %45
}

; Function Attrs: nounwind uwtable
define internal void @gs_image_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gs_image_enum_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %2, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gc_state_s* %4 to %struct.gc_procs_common_s**
  %6 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %5, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %6, i32 0, i32 0
  %7 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !135
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gs_image_enum_s*
  %dev = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %9, i32 0, i32 1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !88
  %11 = bitcast %struct.gx_device_s* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %7(i8* %11, %struct.gc_state_s* %12) #6
  %13 = bitcast i8* %call to %struct.gx_device_s*
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gs_image_enum_s*
  %dev1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %15, i32 0, i32 1
  store %struct.gx_device_s* %13, %struct.gx_device_s** %dev1, align 8, !tbaa !88
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gc_state_s* %16 to %struct.gc_procs_common_s**
  %18 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %17, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %18, i32 0, i32 0
  %19 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !135
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_image_enum_s*
  %info = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %21, i32 0, i32 2
  %22 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !87
  %23 = bitcast %struct.gx_image_enum_common_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %19(i8* %23, %struct.gc_state_s* %24) #6
  %25 = bitcast i8* %call3 to %struct.gx_image_enum_common_s*
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_image_enum_s*
  %info4 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %27, i32 0, i32 2
  store %struct.gx_image_enum_common_s* %25, %struct.gx_image_enum_common_s** %info4, align 8, !tbaa !87
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %29, i32 0, i32 3
  %30 = load i32, i32* %num_planes, align 4, !tbaa !90
  %cmp = icmp slt i32 %28, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gc_state_s* %31 to %struct.gc_procs_common_s**
  %33 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %32, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %33, i32 0, i32 2
  %34 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !137
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %36 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %37 = bitcast i8* %36 to %struct.gs_image_enum_s*
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %37, i32 0, i32 11
  %arrayidx = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes, i32 0, i64 %idxprom
  %source = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx, i32 0, i32 2
  %38 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %34(%struct.gs_const_string_s* %source, %struct.gc_state_s* %38) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.12, %for.end
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %eptr, align 8, !tbaa !1
  %num_planes6 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %41, i32 0, i32 3
  %42 = load i32, i32* %num_planes6, align 4, !tbaa !90
  %cmp7 = icmp slt i32 %40, %42
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.5
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gc_state_s* %43 to %struct.gc_procs_common_s**
  %45 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %44, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %45, i32 0, i32 1
  %46 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !138
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %47 to i64
  %48 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to %struct.gs_image_enum_s*
  %planes10 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %49, i32 0, i32 11
  %arrayidx11 = getelementptr inbounds [65 x %struct.image_enum_plane_s], [65 x %struct.image_enum_plane_s]* %planes10, i32 0, i64 %idxprom9
  %row = getelementptr inbounds %struct.image_enum_plane_s, %struct.image_enum_plane_s* %arrayidx11, i32 0, i32 0
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %46(%struct.gs_string_s* %row, %struct.gc_state_s* %50) #6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.8
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %51, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_image_enum_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  ret void
}

declare i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 16}
!8 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!10, !2, i64 1872}
!10 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 128, !15, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !18, i64 216, !3, i64 220, !19, i64 224, !19, i64 228, !20, i64 232, !21, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !22, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !23, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !24, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !24, i64 1336, !2, i64 1616, !13, i64 1624, !6, i64 1648, !13, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !21, i64 1712, !21, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !15, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !25, i64 1888}
!11 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !13, i64 40, !14, i64 64}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!14 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!15 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gs_transparency_source_s", !12, i64 0}
!20 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!21 = !{!"long", !3, i64 0}
!22 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!23 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!24 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !21, i64 16, !3, i64 24}
!25 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!27, !2, i64 1688}
!27 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !28, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !29, i64 96, !31, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !21, i64 928, !21, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !21, i64 968, !21, i64 976, !32, i64 984, !6, i64 1052, !6, i64 1056, !33, i64 1064, !2, i64 1104, !3, i64 1112, !35, i64 1120, !36, i64 1144}
!28 = !{!"rc_header_s", !21, i64 0, !2, i64 8, !2, i64 16}
!29 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !21, i64 704, !6, i64 712}
!30 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!31 = !{!"gx_device_cached_colors_s", !21, i64 0, !21, i64 8}
!32 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!33 = !{!"gdev_space_params_s", !21, i64 0, !21, i64 8, !34, i64 16, !6, i64 32, !3, i64 36}
!34 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !21, i64 8}
!35 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!36 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!37 = !{!38, !2, i64 0}
!38 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !39, i64 352, !6, i64 360, !40, i64 368, !42, i64 632}
!39 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!40 = !{!"gs_client_color_s", !2, i64 0, !41, i64 8}
!41 = !{!"gs_paint_color_s", !3, i64 0}
!42 = !{!"_mask", !43, i64 0, !21, i64 8, !2, i64 16}
!43 = !{!"mp_", !6, i64 0, !6, i64 4}
!44 = !{!45, !2, i64 32}
!45 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!46 = !{!47, !2, i64 0}
!47 = !{!"gs_image_common_s", !2, i64 0, !13, i64 8}
!48 = !{!49, !2, i64 8}
!49 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48}
!50 = !{!51, !6, i64 584}
!51 = !{!"gs_image1_s", !2, i64 0, !13, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!52 = !{!10, !2, i64 8}
!53 = !{!21, !21, i64 0}
!54 = !{!38, !6, i64 360}
!55 = !{!27, !2, i64 1440}
!56 = !{!57, !6, i64 40}
!57 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !21, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!58 = !{!51, !6, i64 32}
!59 = !{!60, !17, i64 16}
!60 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!61 = !{!51, !6, i64 36}
!62 = !{!60, !17, i64 24}
!63 = !{!47, !12, i64 8}
!64 = !{!13, !12, i64 0}
!65 = !{!47, !12, i64 12}
!66 = !{!13, !12, i64 4}
!67 = !{!47, !12, i64 16}
!68 = !{!13, !12, i64 8}
!69 = !{!47, !12, i64 20}
!70 = !{!13, !12, i64 12}
!71 = !{!13, !12, i64 16}
!72 = !{!47, !12, i64 24}
!73 = !{!13, !12, i64 20}
!74 = !{!47, !12, i64 28}
!75 = !{!60, !17, i64 0}
!76 = !{!77, !6, i64 0}
!77 = !{!"gs_int_rect_s", !39, i64 0, !39, i64 8}
!78 = !{!60, !17, i64 8}
!79 = !{!77, !6, i64 4}
!80 = !{!77, !6, i64 8}
!81 = !{!77, !6, i64 12}
!82 = !{!83, !2, i64 72}
!83 = !{!"gs_memory_s", !2, i64 0, !84, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!84 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!85 = !{!86, !2, i64 0}
!86 = !{!"gs_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 113, !3, i64 184, !3, i64 2784}
!87 = !{!86, !2, i64 16}
!88 = !{!86, !2, i64 8}
!89 = !{!86, !6, i64 36}
!90 = !{!86, !6, i64 24}
!91 = !{i64 0, i64 8, !1, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 520, !93, i64 564, i64 4, !5, i64 568, i64 4, !93, i64 572, i64 4, !5, i64 576, i64 8, !1, i64 584, i64 4, !5, i64 588, i64 4, !5, i64 592, i64 4, !93, i64 596, i64 4, !93}
!92 = !{!12, !12, i64 0}
!93 = !{!3, !3, i64 0}
!94 = !{!51, !2, i64 576}
!95 = !{!10, !3, i64 1848}
!96 = !{!51, !6, i64 588}
!97 = !{!51, !6, i64 572}
!98 = !{!27, !6, i64 984}
!99 = !{!10, !3, i64 1852}
!100 = !{!101, !6, i64 32}
!101 = !{!"gs_data_image_s", !2, i64 0, !13, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564}
!102 = !{!101, !6, i64 36}
!103 = !{!57, !6, i64 44}
!104 = !{!86, !6, i64 28}
!105 = !{!106, !6, i64 16}
!106 = !{!"image_enum_plane_s", !107, i64 0, !6, i64 16, !108, i64 24}
!107 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!108 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!109 = !{!106, !6, i64 32}
!110 = !{!106, !2, i64 24}
!111 = !{!106, !2, i64 0}
!112 = !{!106, !6, i64 8}
!113 = !{!114, !6, i64 8}
!114 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!115 = !{!86, !6, i64 40}
!116 = !{!86, !6, i64 44}
!117 = !{!86, !6, i64 32}
!118 = !{!114, !6, i64 12}
!119 = !{!108, !6, i64 8}
!120 = !{!108, !2, i64 0}
!121 = !{!83, !2, i64 136}
!122 = !{!83, !2, i64 152}
!123 = !{!114, !2, i64 0}
!124 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!125 = !{!83, !2, i64 32}
!126 = !{!83, !2, i64 160}
!127 = !{!57, !2, i64 16}
!128 = !{!27, !2, i64 1664}
!129 = !{!83, !2, i64 24}
!130 = !{!131, !2, i64 0}
!131 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!132 = !{!131, !6, i64 8}
!133 = !{!107, !2, i64 0}
!134 = !{!107, !6, i64 8}
!135 = !{!136, !2, i64 0}
!136 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!137 = !{!136, !2, i64 16}
!138 = !{!136, !2, i64 8}
