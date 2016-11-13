; ModuleID = './gsline.bc'
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
%struct.gs_font_s = type opaque
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"gx_set_dash(old pattern)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gx_set_dash(pattern)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setlinewidth(%struct.gs_state_s* %pgs, double %width) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !5
  %0 = load double, double* %width.addr, align 8, !tbaa !5
  %call = call double @fabs(double %0) #5
  %div = fdiv double %call, 2.000000e+00
  %conv = fptrunc double %div to float
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  store float %conv, float* %half_width, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define float @gs_currentlinewidth(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %1 = load float, float* %half_width, align 4, !tbaa !7
  %mul = fmul float %1, 2.000000e+00
  ret float %mul
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinecap(%struct.gs_state_s* %pgs, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !13
  %0 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 1
  store i32 %1, i32* %start_cap, align 4, !tbaa !14
  %3 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1, i32 0, i32 2
  store i32 %3, i32* %end_cap, align 4, !tbaa !15
  %5 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params2, i32 0, i32 3
  store i32 %5, i32* %dash_cap, align 4, !tbaa !16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinestartcap(%struct.gs_state_s* %pgs, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !13
  %0 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 1
  store i32 %1, i32* %start_cap, align 4, !tbaa !14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlineendcap(%struct.gs_state_s* %pgs, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !13
  %0 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 2
  store i32 %1, i32* %end_cap, align 4, !tbaa !15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinedashcap(%struct.gs_state_s* %pgs, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !13
  %0 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cap.addr, align 4, !tbaa !13
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 3
  store i32 %1, i32* %dash_cap, align 4, !tbaa !16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentlinecap(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 1
  %1 = load i32, i32* %start_cap, align 4, !tbaa !14
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinejoin(%struct.gs_state_s* %pgs, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %join.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !13
  %0 = load i32, i32* %join.addr, align 4, !tbaa !13
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %join.addr, align 4, !tbaa !13
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 3
  %join1 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 4
  store i32 %1, i32* %join1, align 4, !tbaa !17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentlinejoin(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 4
  %1 = load i32, i32* %join, align 4, !tbaa !17
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gx_set_miter_limit(%struct.gx_line_params_s* %plp, double %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %plp.addr = alloca %struct.gx_line_params_s*, align 8
  %limit.addr = alloca double, align 8
  %limit_squared = alloca double, align 8
  store %struct.gx_line_params_s* %plp, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !5
  %0 = load double, double* %limit.addr, align 8, !tbaa !5
  %cmp = fcmp olt double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %limit.addr, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  %2 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %2, i32 0, i32 6
  store float %conv, float* %miter_limit, align 4, !tbaa !18
  %3 = bitcast double* %limit_squared to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load double, double* %limit.addr, align 8, !tbaa !5
  %5 = load double, double* %limit.addr, align 8, !tbaa !5
  %mul = fmul double %4, %5
  store double %mul, double* %limit_squared, align 8, !tbaa !5
  %6 = load double, double* %limit_squared, align 8, !tbaa !5
  %cmp1 = fcmp olt double %6, 2.000100e+00
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load double, double* %limit_squared, align 8, !tbaa !5
  %cmp3 = fcmp ogt double %7, 1.999900e+00
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  %miter_check = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %8, i32 0, i32 7
  store float 1.000000e+06, float* %miter_check, align 4, !tbaa !19
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load double, double* %limit_squared, align 8, !tbaa !5
  %sub = fsub double %9, 1.000000e+00
  %call = call double @sqrt(double %sub) #6
  %mul6 = fmul double %call, 2.000000e+00
  %10 = load double, double* %limit_squared, align 8, !tbaa !5
  %sub7 = fsub double %10, 2.000000e+00
  %div = fdiv double %mul6, %sub7
  %conv8 = fptrunc double %div to float
  %11 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  %miter_check9 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %11, i32 0, i32 7
  store float %conv8, float* %miter_check9, align 4, !tbaa !19
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.5
  %12 = bitcast double* %limit_squared to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setmiterlimit(%struct.gs_state_s* %pgs, double %limit) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %limit.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %1 = load double, double* %limit.addr, align 8, !tbaa !5
  %call = call i32 @gx_set_miter_limit(%struct.gx_line_params_s* %line_params, double %1) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define float @gs_currentmiterlimit(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 6
  %1 = load float, float* %miter_limit, align 4, !tbaa !18
  ret float %1
}

; Function Attrs: nounwind uwtable
define i32 @gx_set_dash(%struct.gx_dash_params_s* %dash, float* %pattern, i32 %length, double %offset, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %dash.addr = alloca %struct.gx_dash_params_s*, align 8
  %pattern.addr = alloca float*, align 8
  %length.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %n = alloca i32, align 4
  %dfrom = alloca float*, align 8
  %ink = alloca i32, align 4
  %index = alloca i32, align 4
  %pattern_length = alloca float, align 4
  %dist_left = alloca float, align 4
  %ppat = alloca float*, align 8
  %elt = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %length2 = alloca float, align 4
  store %struct.gx_dash_params_s* %dash, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !20
  store double %offset, double* %offset.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %length.addr, align 4, !tbaa !20
  store i32 %1, i32* %n, align 4, !tbaa !20
  %2 = bitcast float** %dfrom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load float*, float** %pattern.addr, align 8, !tbaa !1
  store float* %3, float** %dfrom, align 8, !tbaa !1
  %4 = bitcast i32* %ink to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 1, i32* %ink, align 4, !tbaa !20
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %index, align 4, !tbaa !20
  %6 = bitcast float* %pattern_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store float 0.000000e+00, float* %pattern_length, align 4, !tbaa !21
  %7 = bitcast float* %dist_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast float** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %9, i32 0, i32 0
  %10 = load float*, float** %pattern1, align 8, !tbaa !22
  store float* %10, float** %ppat, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %11 = load i32, i32* %n, align 4, !tbaa !20
  %dec = add i32 %11, -1
  store i32 %dec, i32* %n, align 4, !tbaa !20
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast float* %elt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load float*, float** %dfrom, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %13, i32 1
  store float* %incdec.ptr, float** %dfrom, align 8, !tbaa !1
  %14 = load float, float* %13, align 4, !tbaa !21
  store float %14, float* %elt, align 4, !tbaa !21
  %15 = load float, float* %elt, align 4, !tbaa !21
  %cmp = fcmp olt float %15, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %16 = load float, float* %elt, align 4, !tbaa !21
  %17 = load float, float* %pattern_length, align 4, !tbaa !21
  %add = fadd float %17, %16
  store float %add, float* %pattern_length, align 4, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast float* %elt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %length.addr, align 4, !tbaa !20
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.end
  store float 0.000000e+00, float* %dist_left, align 4, !tbaa !21
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.gs_memory_s* %20, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.then.3
  %21 = load float*, float** %ppat, align 8, !tbaa !1
  %tobool5 = icmp ne float* %21, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load float*, float** %ppat, align 8, !tbaa !1
  %26 = bitcast float* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #7
  store float* null, float** %ppat, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %if.then.3
  br label %if.end.96

if.else:                                          ; preds = %while.end
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %length.addr, align 4, !tbaa !20
  %conv = zext i32 %28 to i64
  %mul = mul i64 %conv, 4
  %conv8 = trunc i64 %mul to i32
  store i32 %conv8, i32* %size, align 4, !tbaa !20
  %29 = load float, float* %pattern_length, align 4, !tbaa !21
  %cmp9 = fcmp oeq float %29, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end.12:                                        ; preds = %if.else
  %30 = load i32, i32* %length.addr, align 4, !tbaa !20
  %and = and i32 %30, 1
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.else.34

if.then.14:                                       ; preds = %if.end.12
  %31 = bitcast float* %length2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load float, float* %pattern_length, align 4, !tbaa !21
  %mul15 = fmul float %32, 2.000000e+00
  store float %mul15, float* %length2, align 4, !tbaa !21
  %33 = load double, double* %offset.addr, align 8, !tbaa !5
  %34 = load double, double* %offset.addr, align 8, !tbaa !5
  %35 = load float, float* %length2, align 4, !tbaa !21
  %conv16 = fpext float %35 to double
  %div = fdiv double %34, %conv16
  %call = call double @floor(double %div) #5
  %36 = load float, float* %length2, align 4, !tbaa !21
  %conv17 = fpext float %36 to double
  %mul18 = fmul double %call, %conv17
  %sub = fsub double %33, %mul18
  %conv19 = fptrunc double %sub to float
  store float %conv19, float* %dist_left, align 4, !tbaa !21
  %37 = load float, float* %dist_left, align 4, !tbaa !21
  %conv20 = fpext float %37 to double
  %38 = load float, float* %dist_left, align 4, !tbaa !21
  %39 = load float, float* %length2, align 4, !tbaa !21
  %div21 = fdiv float %38, %39
  %conv22 = fpext float %div21 to double
  %call23 = call double @floor(double %conv22) #5
  %40 = load float, float* %length2, align 4, !tbaa !21
  %conv24 = fpext float %40 to double
  %mul25 = fmul double %call23, %conv24
  %sub26 = fsub double %conv20, %mul25
  %conv27 = fptrunc double %sub26 to float
  store float %conv27, float* %dist_left, align 4, !tbaa !21
  %41 = load float, float* %dist_left, align 4, !tbaa !21
  %42 = load float, float* %pattern_length, align 4, !tbaa !21
  %cmp28 = fcmp oge float %41, %42
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.14
  %43 = load float, float* %pattern_length, align 4, !tbaa !21
  %44 = load float, float* %dist_left, align 4, !tbaa !21
  %sub31 = fsub float %44, %43
  store float %sub31, float* %dist_left, align 4, !tbaa !21
  %45 = load i32, i32* %ink, align 4, !tbaa !20
  %tobool32 = icmp ne i32 %45, 0
  %lnot = xor i1 %tobool32, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ink, align 4, !tbaa !20
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.14
  %46 = bitcast float* %length2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  br label %if.end.50

if.else.34:                                       ; preds = %if.end.12
  %47 = load double, double* %offset.addr, align 8, !tbaa !5
  %48 = load double, double* %offset.addr, align 8, !tbaa !5
  %49 = load float, float* %pattern_length, align 4, !tbaa !21
  %conv35 = fpext float %49 to double
  %div36 = fdiv double %48, %conv35
  %call37 = call double @floor(double %div36) #5
  %50 = load float, float* %pattern_length, align 4, !tbaa !21
  %conv38 = fpext float %50 to double
  %mul39 = fmul double %call37, %conv38
  %sub40 = fsub double %47, %mul39
  %conv41 = fptrunc double %sub40 to float
  store float %conv41, float* %dist_left, align 4, !tbaa !21
  %51 = load float, float* %dist_left, align 4, !tbaa !21
  %conv42 = fpext float %51 to double
  %52 = load float, float* %dist_left, align 4, !tbaa !21
  %53 = load float, float* %pattern_length, align 4, !tbaa !21
  %div43 = fdiv float %52, %53
  %conv44 = fpext float %div43 to double
  %call45 = call double @floor(double %conv44) #5
  %54 = load float, float* %pattern_length, align 4, !tbaa !21
  %conv46 = fpext float %54 to double
  %mul47 = fmul double %call45, %conv46
  %sub48 = fsub double %conv42, %mul47
  %conv49 = fptrunc double %sub48 to float
  store float %conv49, float* %dist_left, align 4, !tbaa !21
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.34, %if.end.33
  br label %while.cond.51

while.cond.51:                                    ; preds = %while.body.61, %if.end.50
  %55 = load i32, i32* %index, align 4, !tbaa !20
  %idxprom = sext i32 %55 to i64
  %56 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %56, i64 %idxprom
  %57 = load float, float* %arrayidx, align 4, !tbaa !21
  %58 = load float, float* %dist_left, align 4, !tbaa !21
  %sub52 = fsub float %58, %57
  store float %sub52, float* %dist_left, align 4, !tbaa !21
  %cmp53 = fcmp oge float %sub52, 0.000000e+00
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.51
  %59 = load float, float* %dist_left, align 4, !tbaa !21
  %cmp55 = fcmp ogt float %59, 0.000000e+00
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %60 = load i32, i32* %index, align 4, !tbaa !20
  %idxprom57 = sext i32 %60 to i64
  %61 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %61, i64 %idxprom57
  %62 = load float, float* %arrayidx58, align 4, !tbaa !21
  %cmp59 = fcmp une float %62, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %63 = phi i1 [ true, %land.rhs ], [ %cmp59, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.51
  %64 = phi i1 [ false, %while.cond.51 ], [ %63, %lor.end ]
  br i1 %64, label %while.body.61, label %while.end.65

while.body.61:                                    ; preds = %land.end
  %65 = load i32, i32* %ink, align 4, !tbaa !20
  %tobool62 = icmp ne i32 %65, 0
  %lnot63 = xor i1 %tobool62, true
  %lnot.ext64 = zext i1 %lnot63 to i32
  store i32 %lnot.ext64, i32* %ink, align 4, !tbaa !20
  %66 = load i32, i32* %index, align 4, !tbaa !20
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %index, align 4, !tbaa !20
  br label %while.cond.51

while.end.65:                                     ; preds = %land.end
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %tobool66 = icmp ne %struct.gs_memory_s* %67, null
  br i1 %tobool66, label %if.then.67, label %if.end.85

if.then.67:                                       ; preds = %while.end.65
  %68 = load float*, float** %ppat, align 8, !tbaa !1
  %cmp68 = icmp eq float* %68, null
  br i1 %cmp68, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.then.67
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs71, i32 0, i32 7
  %70 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !26
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %72 = load i32, i32* %size, align 4, !tbaa !20
  %call72 = call i8* %70(%struct.gs_memory_s* %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #7
  %73 = bitcast i8* %call72 to float*
  store float* %73, float** %ppat, align 8, !tbaa !1
  br label %if.end.80

if.else.73:                                       ; preds = %if.then.67
  %74 = load i32, i32* %length.addr, align 4, !tbaa !20
  %75 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %75, i32 0, i32 1
  %76 = load i32, i32* %pattern_size, align 4, !tbaa !27
  %cmp74 = icmp ne i32 %74, %76
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.else.73
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs77, i32 0, i32 1
  %78 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !28
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %80 = load float*, float** %ppat, align 8, !tbaa !1
  %81 = bitcast float* %80 to i8*
  %82 = load i32, i32* %size, align 4, !tbaa !20
  %call78 = call i8* %78(%struct.gs_memory_s* %79, i8* %81, i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #7
  %83 = bitcast i8* %call78 to float*
  store float* %83, float** %ppat, align 8, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.else.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.70
  %84 = load float*, float** %ppat, align 8, !tbaa !1
  %cmp81 = icmp eq float* %84, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end.84:                                        ; preds = %if.end.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %while.end.65
  %85 = load float*, float** %ppat, align 8, !tbaa !1
  %86 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %cmp86 = icmp ne float* %85, %86
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.end.85
  %87 = load float*, float** %ppat, align 8, !tbaa !1
  %88 = bitcast float* %87 to i8*
  %89 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %90 = bitcast float* %89 to i8*
  %91 = load i32, i32* %length.addr, align 4, !tbaa !20
  %conv89 = zext i32 %91 to i64
  %mul90 = mul i64 %conv89, 4
  %call91 = call i8* @memcpy(i8* %88, i8* %90, i64 %mul90) #6
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.end.85
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.92, %if.then.83, %if.then.11
  %92 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %cleanup.dest.94 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.94, label %cleanup.103 [
    i32 0, label %cleanup.cont.95
  ]

cleanup.cont.95:                                  ; preds = %cleanup.93
  br label %if.end.96

if.end.96:                                        ; preds = %cleanup.cont.95, %if.end.7
  %93 = load float*, float** %ppat, align 8, !tbaa !1
  %94 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern97 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %94, i32 0, i32 0
  store float* %93, float** %pattern97, align 8, !tbaa !22
  %95 = load i32, i32* %length.addr, align 4, !tbaa !20
  %96 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_size98 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %96, i32 0, i32 1
  store i32 %95, i32* %pattern_size98, align 4, !tbaa !27
  %97 = load double, double* %offset.addr, align 8, !tbaa !5
  %conv99 = fptrunc double %97 to float
  %98 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %offset100 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %98, i32 0, i32 2
  store float %conv99, float* %offset100, align 4, !tbaa !29
  %99 = load float, float* %pattern_length, align 4, !tbaa !21
  %100 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_length101 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %100, i32 0, i32 4
  store float %99, float* %pattern_length101, align 4, !tbaa !30
  %101 = load i32, i32* %ink, align 4, !tbaa !20
  %102 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_ink_on = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %102, i32 0, i32 5
  store i32 %101, i32* %init_ink_on, align 4, !tbaa !31
  %103 = load i32, i32* %index, align 4, !tbaa !20
  %104 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_index = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %104, i32 0, i32 6
  store i32 %103, i32* %init_index, align 4, !tbaa !32
  %105 = load float, float* %dist_left, align 4, !tbaa !21
  %sub102 = fsub float -0.000000e+00, %105
  %106 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_dist_left = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %106, i32 0, i32 7
  store float %sub102, float* %init_dist_left, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %if.end.96, %cleanup.93, %cleanup
  %107 = bitcast float** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast float* %dist_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast float* %pattern_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %ink to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast float** %dfrom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gs_setdash(%struct.gs_state_s* %pgs, float* %pattern, i32 %length, double %offset) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pattern.addr = alloca float*, align 8
  %length.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !20
  store double %offset, double* %offset.addr, align 8, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %1 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %2 = load i32, i32* %length.addr, align 4, !tbaa !20
  %3 = load double, double* %offset.addr, align 8, !tbaa !5
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !34
  %call = call i32 @gx_set_dash(%struct.gx_dash_params_s* %dash, float* %1, i32 %2, double %3, %struct.gs_memory_s* %5) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentdash_length(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %1 = load i32, i32* %pattern_size, align 4, !tbaa !46
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define float* @gs_currentdash_pattern(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  %1 = load float*, float** %pattern, align 8, !tbaa !47
  ret float* %1
}

; Function Attrs: nounwind uwtable
define float @gs_currentdash_offset(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 2
  %1 = load float, float* %offset, align 4, !tbaa !48
  ret float %1
}

; Function Attrs: nounwind uwtable
define %struct.gx_line_params_s* @gs_currentlineparams(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 3
  ret %struct.gx_line_params_s* %line_params
}

; Function Attrs: nounwind uwtable
define i32 @gs_imager_setflat(%struct.gs_imager_state_s* %pis, double %flat) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %flat.addr = alloca double, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store double %flat, double* %flat.addr, align 8, !tbaa !5
  %0 = load double, double* %flat.addr, align 8, !tbaa !5
  %cmp = fcmp ole double %0, 2.000000e-01
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 2.000000e-01, double* %flat.addr, align 8, !tbaa !5
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load double, double* %flat.addr, align 8, !tbaa !5
  %cmp1 = fcmp ogt double %1, 1.000000e+02
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store double 1.000000e+02, double* %flat.addr, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %2 = load double, double* %flat.addr, align 8, !tbaa !5
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 27
  store float %conv, float* %flatness, align 4, !tbaa !49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setflat(%struct.gs_state_s* %pgs, double %flat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %flat.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %flat, double* %flat.addr, align 8, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %2 = load double, double* %flat.addr, align 8, !tbaa !5
  %call = call i32 @gs_imager_setflat(%struct.gs_imager_state_s* %1, double %2) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define float @gs_currentflat(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 27
  %1 = load float, float* %flatness, align 4, !tbaa !51
  ret float %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setstrokeadjust(%struct.gs_state_s* %pgs, i32 %stroke_adjust) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %stroke_adjust.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %stroke_adjust, i32* %stroke_adjust.addr, align 4, !tbaa !20
  %0 = load i32, i32* %stroke_adjust.addr, align 4, !tbaa !20
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %stroke_adjust1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 29
  store i32 %0, i32* %stroke_adjust1, align 4, !tbaa !52
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentstrokeadjust(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %stroke_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 29
  %1 = load i32, i32* %stroke_adjust, align 4, !tbaa !52
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_setdashadapt(%struct.gs_state_s* %pgs, i32 %adapt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %adapt.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %adapt, i32* %adapt.addr, align 4, !tbaa !20
  %0 = load i32, i32* %adapt.addr, align 4, !tbaa !20
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %adapt1 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 3
  store i32 %0, i32* %adapt1, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_imager_currentdashadapt(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %adapt = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 3
  %1 = load i32, i32* %adapt, align 4, !tbaa !53
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentdashadapt(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %call = call i32 @gs_imager_currentdashadapt(%struct.gs_imager_state_s* %1) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcurvejoin(%struct.gs_state_s* %pgs, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %join.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !20
  %0 = load i32, i32* %join.addr, align 4, !tbaa !20
  %cmp = icmp slt i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %join.addr, align 4, !tbaa !20
  %cmp1 = icmp sgt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %join.addr, align 4, !tbaa !20
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 5
  store i32 %2, i32* %curve_join, align 4, !tbaa !54
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcurvejoin(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 5
  %1 = load i32, i32* %curve_join, align 4, !tbaa !54
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_setaccuratecurves(%struct.gs_state_s* %pgs, i32 %accurate) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %accurate.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %accurate, i32* %accurate.addr, align 4, !tbaa !20
  %0 = load i32, i32* %accurate.addr, align 4, !tbaa !20
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %accurate_curves = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 30
  store i32 %0, i32* %accurate_curves, align 4, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_imager_currentaccuratecurves(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 30
  %1 = load i32, i32* %accurate_curves, align 4, !tbaa !56
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentaccuratecurves(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %call = call i32 @gs_imager_currentaccuratecurves(%struct.gs_imager_state_s* %1) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_set_dot_length(%struct.gx_line_params_s* %plp, double %length, i32 %absolute) #0 {
entry:
  %retval = alloca i32, align 4
  %plp.addr = alloca %struct.gx_line_params_s*, align 8
  %length.addr = alloca double, align 8
  %absolute.addr = alloca i32, align 4
  store %struct.gx_line_params_s* %plp, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  store double %length, double* %length.addr, align 8, !tbaa !5
  store i32 %absolute, i32* %absolute.addr, align 4, !tbaa !20
  %0 = load double, double* %length.addr, align 8, !tbaa !5
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %length.addr, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  %2 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %2, i32 0, i32 8
  store float %conv, float* %dot_length, align 4, !tbaa !57
  %3 = load i32, i32* %absolute.addr, align 4, !tbaa !20
  %4 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %plp.addr, align 8, !tbaa !1
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %4, i32 0, i32 9
  store i32 %3, i32* %dot_length_absolute, align 4, !tbaa !58
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdotlength(%struct.gs_state_s* %pgs, double %length, i32 %absolute) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %length.addr = alloca double, align 8
  %absolute.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %length, double* %length.addr, align 8, !tbaa !5
  store i32 %absolute, i32* %absolute.addr, align 4, !tbaa !20
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %1 = load double, double* %length.addr, align 8, !tbaa !5
  %2 = load i32, i32* %absolute.addr, align 4, !tbaa !20
  %call = call i32 @gx_set_dot_length(%struct.gx_line_params_s* %line_params, double %1, i32 %2) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define float @gs_currentdotlength(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 8
  %1 = load float, float* %dot_length, align 4, !tbaa !57
  ret float %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentdotlength_absolute(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 3
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 9
  %1 = load i32, i32* %dot_length_absolute, align 4, !tbaa !58
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdotorientation(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !59
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !60
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !61
  %conv7 = fpext float %5 to double
  %cmp8 = fcmp oeq double %conv7, 0.000000e+00
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !62
  %conv12 = fpext float %7 to double
  %cmp13 = fcmp oeq double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 3
  %dot_orientation = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 10
  %call = call i32 @gs_currentmatrix(%struct.gs_state_s* %8, %struct.gs_matrix_s* %dot_orientation) #7
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %lor.lhs.false
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #4

; Function Attrs: nounwind uwtable
define i32 @gs_dotorientation(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 3
  %dot_orientation = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 10
  %call = call i32 @gs_setmatrix(%struct.gs_state_s* %0, %struct.gs_matrix_s* %dot_orientation) #7
  ret i32 %call
}

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readnone }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !9, i64 0}
!8 = !{!"gx_line_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !10, i64 36, !11, i64 40, !12, i64 64}
!9 = !{!"float", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!12 = !{!"gx_dash_params_s", !2, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 20, !10, i64 24, !10, i64 28, !9, i64 32}
!13 = !{!3, !3, i64 0}
!14 = !{!8, !3, i64 4}
!15 = !{!8, !3, i64 8}
!16 = !{!8, !3, i64 12}
!17 = !{!8, !3, i64 16}
!18 = !{!8, !9, i64 24}
!19 = !{!8, !9, i64 28}
!20 = !{!10, !10, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!12, !2, i64 0}
!23 = !{!24, !2, i64 24}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 64}
!27 = !{!12, !10, i64 8}
!28 = !{!24, !2, i64 16}
!29 = !{!12, !9, i64 12}
!30 = !{!12, !9, i64 20}
!31 = !{!12, !10, i64 24}
!32 = !{!12, !10, i64 28}
!33 = !{!12, !9, i64 32}
!34 = !{!35, !2, i64 8}
!35 = !{!"gs_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !10, i64 128, !36, i64 132, !10, i64 168, !37, i64 176, !37, i64 192, !10, i64 208, !10, i64 212, !38, i64 216, !3, i64 220, !39, i64 224, !39, i64 228, !40, i64 232, !41, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !9, i64 296, !42, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !9, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !43, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !44, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !44, i64 1336, !2, i64 1616, !11, i64 1624, !10, i64 1648, !11, i64 1652, !10, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !41, i64 1712, !41, i64 1720, !2, i64 1728, !10, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !36, i64 1808, !10, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !10, i64 1864, !2, i64 1872, !2, i64 1880, !45, i64 1888}
!36 = !{!"gs_matrix_fixed_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!37 = !{!"gs_point_s", !6, i64 0, !6, i64 8}
!38 = !{!"short", !3, i64 0}
!39 = !{!"gs_transparency_source_s", !9, i64 0}
!40 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!41 = !{!"long", !3, i64 0}
!42 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!43 = !{!"gx_transfer_s", !10, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !10, i64 32, !2, i64 40, !10, i64 48, !2, i64 56}
!44 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !41, i64 16, !3, i64 24}
!45 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!46 = !{!8, !10, i64 72}
!47 = !{!8, !2, i64 64}
!48 = !{!8, !9, i64 76}
!49 = !{!50, !9, i64 296}
!50 = !{!"gs_imager_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !10, i64 128, !36, i64 132, !10, i64 168, !37, i64 176, !37, i64 192, !10, i64 208, !10, i64 212, !38, i64 216, !3, i64 220, !39, i64 224, !39, i64 228, !40, i64 232, !41, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !9, i64 296, !42, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !9, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !43, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !44, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !44, i64 1336}
!51 = !{!35, !9, i64 296}
!52 = !{!35, !10, i64 308}
!53 = !{!8, !10, i64 80}
!54 = !{!8, !10, i64 20}
!55 = !{!35, !10, i64 312}
!56 = !{!50, !10, i64 312}
!57 = !{!8, !9, i64 32}
!58 = !{!8, !10, i64 36}
!59 = !{!36, !9, i64 4}
!60 = !{!36, !9, i64 8}
!61 = !{!36, !9, i64 0}
!62 = !{!36, !9, i64 12}
