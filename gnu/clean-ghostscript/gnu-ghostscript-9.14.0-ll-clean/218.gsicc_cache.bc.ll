; ModuleID = './gsicc_cache.bc'
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
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
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
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
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.gsicc_namedcolor_s = type { i8*, i32, [3 x i16] }
%struct.gsicc_namedcolortable_s = type { %struct.gsicc_namedcolor_s*, i32 }

@st_icc_linkcache = internal constant %struct.gs_memory_struct_type_s { i32 72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @icc_linkcache_finalize, i8* bitcast (%struct.gc_struct_data_s* @icc_linkcache_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"gsicc_cache_new\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gsicc_link_free\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gray_to_k.icc\00", align 1
@gsicc_transform_named_color.white_lab = private unnamed_addr constant [3 x i16] [i16 -1, i16 32767, i16 32767], align 2
@.str.3 = private unnamed_addr constant [28 x i8] c"gsicc_transform_named_color\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"gsiccmanage_linkcache\00", align 1
@icc_linkcache_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @icc_linkcache_enum_ptrs, i32 0, i32 0) }, align 8
@icc_linkcache_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 48 }, %struct.gc_ptr_element_s { i16 0, i16 56 }], align 2
@.str.8 = private unnamed_addr constant [25 x i8] c"rc_gsicc_link_cache_free\00", align 1
@st_icc_link = internal constant %struct.gs_memory_struct_type_s { i32 176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @icc_link_finalize, i8* bitcast (%struct.gc_struct_data_s* @icc_link_reloc_ptrs to i8*) }, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"gsicc_alloc_link\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gsicc_alloc_link(wait)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gsiccmanage_link\00", align 1
@icc_link_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @icc_link_enum_ptrs, i32 0, i32 0) }, align 8
@icc_link_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 0, i16 88 }, %struct.gc_ptr_element_s { i16 0, i16 96 }], align 2

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_link_cache_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_link_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_cache_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !5
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_icc_linkcache, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gsicc_link_cache_s*
  store %struct.gsicc_link_cache_s* %6, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %7 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_link_cache_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !5
  %call3 = call %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s* %9) #5
  %10 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %10, i32 0, i32 4
  store %struct.gx_monitor_s* %call3, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory4, align 8, !tbaa !5
  %call5 = call %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %12) #5
  %13 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %13, i32 0, i32 5
  store %struct.gx_semaphore_s* %call5, %struct.gx_semaphore_s** %wait, align 8, !tbaa !14
  %14 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %lock6 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %14, i32 0, i32 4
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock6, align 8, !tbaa !9
  %cmp7 = icmp eq %struct.gx_monitor_s* %15, null
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %wait8 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %16, i32 0, i32 5
  %17 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait8, align 8, !tbaa !14
  %cmp9 = icmp eq %struct.gx_semaphore_s* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory11, align 8, !tbaa !5
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory13, align 8, !tbaa !5
  %23 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %24 = bitcast %struct.gsicc_link_cache_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false
  %25 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %25, i32 0, i32 6
  store i32 0, i32* %num_waiting, align 4, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %26 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %26, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !17
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory15, align 8, !tbaa !5
  %29 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %29, i32 0, i32 2
  %memory17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  store %struct.gs_memory_s* %28, %struct.gs_memory_s** %memory17, align 8, !tbaa !18
  %30 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %rc18 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %30, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_gsicc_link_cache_free, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !19
  br label %do.body.19

do.body.19:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %31 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %31, i32 0, i32 0
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  %32 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %num_links = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %32, i32 0, i32 1
  store i32 0, i32* %num_links, align 4, !tbaa !21
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 0
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory22, align 8, !tbaa !5
  %35 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %35, i32 0, i32 3
  store %struct.gs_memory_s* %34, %struct.gs_memory_s** %memory23, align 8, !tbaa !22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.21
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %36 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_cache_s* %36, %struct.gsicc_link_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.10, %if.then
  %37 = bitcast %struct.gsicc_link_cache_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %retval
  ret %struct.gsicc_link_cache_s* %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s*) #2

declare %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @rc_gsicc_link_cache_free(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %link_cache = alloca %struct.gsicc_link_cache_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_cache_s** %link_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gsicc_link_cache_s*
  store %struct.gsicc_link_cache_s* %2, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %3, i32 0, i32 0
  %4 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  %cmp = icmp ne %struct.gsicc_link_s* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %head1 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %5, i32 0, i32 0
  %6 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head1, align 8, !tbaa !20
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %6, %struct.gs_memory_s* %7) #5
  %8 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %num_links = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %8, i32 0, i32 1
  %9 = load i32, i32* %num_links, align 4, !tbaa !21
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %num_links, align 4, !tbaa !21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %10, i32 0, i32 5
  %11 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !14
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %11) #5
  %12 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %wait2 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %12, i32 0, i32 5
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %wait2, align 8, !tbaa !14
  %13 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %13, i32 0, i32 4
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  call void @gx_monitor_free(%struct.gx_monitor_s* %14) #5
  %15 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %lock3 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %15, i32 0, i32 4
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %lock3, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %while.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory4, align 8, !tbaa !5
  %21 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %22 = bitcast %struct.gsicc_link_cache_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #5
  %23 = bitcast %struct.gsicc_link_cache_s** %link_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @icc_linkcache_finalize(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %link_cache = alloca %struct.gsicc_link_cache_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_cache_s** %link_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gsicc_link_cache_s*
  store %struct.gsicc_link_cache_s* %2, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %3 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %3, i32 0, i32 5
  %4 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !14
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %4) #5
  %5 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %wait1 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %5, i32 0, i32 5
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %wait1, align 8, !tbaa !14
  %6 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %6, i32 0, i32 4
  %7 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  call void @gx_monitor_free(%struct.gx_monitor_s* %7) #5
  %8 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %link_cache, align 8, !tbaa !1
  %lock2 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %8, i32 0, i32 4
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %lock2, align 8, !tbaa !9
  %9 = bitcast %struct.gsicc_link_cache_s** %link_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

declare void @gx_semaphore_free(%struct.gx_semaphore_s*) #2

declare void @gx_monitor_free(%struct.gx_monitor_s*) #2

; Function Attrs: nounwind uwtable
define void @gsicc_link_free(%struct.gsicc_link_s* %icc_link, %struct.gs_memory_s* %memory) #0 {
entry:
  %icc_link.addr = alloca %struct.gsicc_link_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gsicc_link_s* %icc_link, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 1
  %free_link = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gsicc_link_s*)*, void (%struct.gsicc_link_s*)** %free_link, align 8, !tbaa !23
  %2 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  call void %1(%struct.gsicc_link_s* %2) #5
  %3 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %3, i32 0, i32 6
  %4 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !27
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %4) #5
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %wait1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %5, i32 0, i32 6
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %wait1, align 8, !tbaa !27
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory3, align 8, !tbaa !5
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gsicc_link_s* %11 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @icc_link_finalize(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gsicc_link_s*
  store %struct.gsicc_link_s* %2, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %3 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %3, i32 0, i32 6
  %4 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !27
  call void @gx_semaphore_free(%struct.gx_semaphore_s* %4) #5
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %wait1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %5, i32 0, i32 6
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %wait1, align 8, !tbaa !27
  %6 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gsicc_get_icc_buff_hash(i8* %buffer, i64* %hash, i32 %buff_size) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %hash.addr = alloca i64*, align 8
  %buff_size.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i64* %hash, i64** %hash.addr, align 8, !tbaa !1
  store i32 %buff_size, i32* %buff_size.addr, align 4, !tbaa !28
  %0 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  %2 = load i32, i32* %buff_size.addr, align 4, !tbaa !28
  call void @gsicc_get_buff_hash(i8* %0, i64* %1, i32 %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_get_buff_hash(i8* %data, i64* %hash, i32 %num_bytes) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %hash.addr = alloca i64*, align 8
  %num_bytes.addr = alloca i32, align 4
  %md5 = alloca %struct.gs_md5_state_s, align 4
  %digest = alloca [16 x i8], align 16
  %k = alloca i32, align 4
  %word1 = alloca i64, align 8
  %word2 = alloca i64, align 8
  %shift = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64* %hash, i64** %hash.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast [16 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %word1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %word2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %shift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %num_bytes.addr, align 4, !tbaa !28
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %6, i32 %7) #5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md5, i8* %arraydecay) #5
  store i64 0, i64* %word1, align 8, !tbaa !29
  store i64 0, i64* %word2, align 8, !tbaa !29
  store i64 0, i64* %shift, align 8, !tbaa !29
  store i32 0, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %k, align 4, !tbaa !28
  %cmp = icmp slt i32 %8, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %10 to i64
  %11 = load i64, i64* %shift, align 8, !tbaa !29
  %shl = shl i64 %conv, %11
  %12 = load i64, i64* %word1, align 8, !tbaa !29
  %add = add nsw i64 %12, %shl
  store i64 %add, i64* %word1, align 8, !tbaa !29
  %13 = load i32, i32* %k, align 4, !tbaa !28
  %add1 = add nsw i32 %13, 8
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom2
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !30
  %conv4 = zext i8 %14 to i64
  %15 = load i64, i64* %shift, align 8, !tbaa !29
  %shl5 = shl i64 %conv4, %15
  %16 = load i64, i64* %word2, align 8, !tbaa !29
  %add6 = add nsw i64 %16, %shl5
  store i64 %add6, i64* %word2, align 8, !tbaa !29
  %17 = load i64, i64* %shift, align 8, !tbaa !29
  %add7 = add nsw i64 %17, 8
  store i64 %add7, i64* %shift, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !28
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %word1, align 8, !tbaa !29
  %20 = load i64, i64* %word2, align 8, !tbaa !29
  %xor = xor i64 %19, %20
  %21 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  store i64 %xor, i64* %21, align 8, !tbaa !29
  %22 = bitcast i64* %shift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64* %word2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i64* %word1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast [16 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  %27 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gsicc_link_cache_s* %icc_link_cache, i32 %includes_proof, i32 %includes_devlink) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %icc_link_cache.addr = alloca %struct.gsicc_link_cache_s*, align 8
  %includes_proof.addr = alloca i32, align 4
  %includes_devlink.addr = alloca i32, align 4
  %curr = alloca %struct.gsicc_link_s*, align 8
  %prev = alloca %struct.gsicc_link_s*, align 8
  %hashcode = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_link_cache_s* %icc_link_cache, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  store i32 %includes_proof, i32* %includes_proof.addr, align 4, !tbaa !28
  store i32 %includes_devlink, i32* %includes_devlink.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hash, i32 0, i32 0
  %3 = load i64, i64* %link_hashcode, align 8, !tbaa !31
  store i64 %3, i64* %hashcode, align 8, !tbaa !29
  %4 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %4, i32 0, i32 4
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  %6 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %6, i32 0, i32 0
  %7 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  store %struct.gsicc_link_s* %7, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %8 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_link_s* %8, null
  br i1 %cmp, label %while.body, label %while.end.31

while.body:                                       ; preds = %while.cond
  %9 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %hashcode1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %9, i32 0, i32 2
  %link_hashcode2 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode1, i32 0, i32 0
  %10 = load i64, i64* %link_hashcode2, align 8, !tbaa !32
  %11 = load i64, i64* %hashcode, align 8, !tbaa !29
  %cmp3 = icmp eq i64 %10, %11
  br i1 %cmp3, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32, i32* %includes_proof.addr, align 4, !tbaa !28
  %13 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %includes_softproof = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %13, i32 0, i32 8
  %14 = load i32, i32* %includes_softproof, align 4, !tbaa !33
  %cmp4 = icmp eq i32 %12, %14
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.29

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %includes_devlink.addr, align 4, !tbaa !28
  %16 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %includes_devlink6 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %16, i32 0, i32 9
  %17 = load i32, i32* %includes_devlink6, align 4, !tbaa !34
  %cmp7 = icmp eq i32 %15, %17
  br i1 %cmp7, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true.5
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.gsicc_link_s* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %19 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %19, i32 0, i32 5
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %next10 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %21, i32 0, i32 5
  store %struct.gsicc_link_s* %20, %struct.gsicc_link_s** %next10, align 8, !tbaa !35
  %22 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head11 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %22, i32 0, i32 0
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head11, align 8, !tbaa !20
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next12 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %24, i32 0, i32 5
  store %struct.gsicc_link_s* %23, %struct.gsicc_link_s** %next12, align 8, !tbaa !35
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %26 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head13 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %26, i32 0, i32 0
  store %struct.gsicc_link_s* %25, %struct.gsicc_link_s** %head13, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %27 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %ref_count = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %27, i32 0, i32 4
  %28 = load i32, i32* %ref_count, align 4, !tbaa !36
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %ref_count, align 4, !tbaa !36
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.16, %if.end
  %29 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %29, i32 0, i32 11
  %30 = load i32, i32* %valid, align 4, !tbaa !37
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %while.cond.14
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %31, i32 0, i32 7
  %32 = load i32, i32* %num_waiting, align 4, !tbaa !38
  %inc17 = add nsw i32 %32, 1
  store i32 %inc17, i32* %num_waiting, align 4, !tbaa !38
  %33 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock18 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %33, i32 0, i32 4
  %34 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock18, align 8, !tbaa !9
  %native19 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %34, i32 0, i32 1
  %call20 = call i32 @gp_monitor_leave(%union.gp_monitor* %native19) #5
  %35 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %35, i32 0, i32 6
  %36 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !27
  %native21 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %36, i32 0, i32 1
  %call22 = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native21) #5
  %37 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock23 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %37, i32 0, i32 4
  %38 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock23, align 8, !tbaa !9
  %native24 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %38, i32 0, i32 1
  %call25 = call i32 @gp_monitor_enter(%union.gp_monitor* %native24) #5
  br label %while.cond.14

while.end:                                        ; preds = %while.cond.14
  %39 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock26 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %39, i32 0, i32 4
  %40 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock26, align 8, !tbaa !9
  %native27 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %40, i32 0, i32 1
  %call28 = call i32 @gp_monitor_leave(%union.gp_monitor* %native27) #5
  %41 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %41, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true.5, %land.lhs.true, %while.body
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %42, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next30 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %43, i32 0, i32 5
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next30, align 8, !tbaa !35
  store %struct.gsicc_link_s* %44, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end.31:                                     ; preds = %while.cond
  %45 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock32 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %45, i32 0, i32 4
  %46 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock32, align 8, !tbaa !9
  %native33 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %46, i32 0, i32 1
  %call34 = call i32 @gp_monitor_leave(%union.gp_monitor* %native33) #5
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.31, %while.end
  %47 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %50
}

declare i32 @gp_monitor_enter(%union.gp_monitor*) #2

declare i32 @gp_monitor_leave(%union.gp_monitor*) #2

declare i32 @gp_semaphore_wait(%union.gp_semaphore*) #2

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev_in, %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s* %output_colorspace, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev_in.addr = alloca %struct.gx_device_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %output_colorspace.addr = alloca %struct.gs_color_space_s*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %gs_input_profile = alloca %struct.cmm_profile_s*, align 8
  %gs_srcgtag_profile = alloca %struct.cmm_profile_s*, align 8
  %gs_output_profile = alloca %struct.cmm_profile_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %devicegraytok = alloca i32, align 4
  %input_colorspace = alloca %struct.gs_color_space_s*, align 8
  %csi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %link = alloca %struct.gsicc_link_s*, align 8
  %index = alloca i32, align 4
  %link91 = alloca %struct.gsicc_link_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_in, %struct.gx_device_s** %dev_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %output_colorspace, %struct.gs_color_space_s** %output_colorspace.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_profile_s** %gs_input_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmm_profile_s** %gs_srcgtag_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %gs_srcgtag_profile, align 8, !tbaa !1
  %2 = bitcast %struct.cmm_profile_s** %gs_output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_color_space_s** %input_colorspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %10, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_in.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_imager_state_s* %12 to %struct.gs_state_s*
  store %struct.gs_state_s* %13, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !39
  store %struct.gx_device_s* %15, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_in.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %16, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 6
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !55
  %cmp1 = icmp eq %struct.cmm_profile_s* %18, null
  br i1 %cmp1, label %if.then.2, label %if.else.9

if.then.2:                                        ; preds = %if.end
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 4
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !57
  %cmp3 = icmp ne %struct.gs_color_space_s* %20, null
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.then.2
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %icc_equivalent5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 4
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent5, align 8, !tbaa !57
  %cmm_icc_profile_data6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data6, align 8, !tbaa !55
  store %struct.cmm_profile_s* %23, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  br label %if.end.8

if.else.7:                                        ; preds = %if.then.2
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 35
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !58
  %call = call %struct.cmm_profile_s* @gsicc_get_gscs_profile(%struct.gs_color_space_s* %24, %struct.gsicc_manager_s* %26) #5
  store %struct.cmm_profile_s* %call, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.4
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %input_colorspace, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 6
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !55
  store %struct.cmm_profile_s* %28, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.end.8
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %30 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !60
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call12 = call i32 %30(%struct.gx_device_s* %31, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call12, i32* %code, align 4, !tbaa !28
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 35
  %33 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager13, align 8, !tbaa !58
  %cmp14 = icmp ne %struct.gsicc_manager_s* %33, null
  br i1 %cmp14, label %land.lhs.true, label %if.end.76

land.lhs.true:                                    ; preds = %if.end.11
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 35
  %35 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager15, align 8, !tbaa !58
  %srcgtag_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %35, i32 0, i32 9
  %36 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !70
  %cmp16 = icmp ne %struct.cmm_srcgtag_profile_s* %36, null
  br i1 %cmp16, label %if.then.17, label %if.end.76

if.then.17:                                       ; preds = %land.lhs.true
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 5
  %38 = load i32, i32* %data_cs, align 4, !tbaa !72
  %cmp18 = icmp eq i32 %38, 2
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %data_cs19 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 5
  %40 = load i32, i32* %data_cs19, align 4, !tbaa !72
  %cmp20 = icmp eq i32 %40, 3
  br i1 %cmp20, label %if.then.21, label %if.end.75

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.17
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %data_cs22 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 5
  %42 = load i32, i32* %data_cs22, align 4, !tbaa !72
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 40
  %44 = load i32, i32* %graphics_type_tag, align 4, !tbaa !76
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 35
  %46 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager23, align 8, !tbaa !58
  %srcgtag_profile24 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %46, i32 0, i32 9
  %47 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile24, align 8, !tbaa !70
  call void @gsicc_get_srcprofile(i32 %42, i32 %44, %struct.cmm_srcgtag_profile_s* %47, %struct.cmm_profile_s** %gs_srcgtag_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %48 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_srcgtag_profile, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.cmm_profile_s* %48, null
  br i1 %cmp25, label %if.then.26, label %if.else.41

if.then.26:                                       ; preds = %if.then.21
  %49 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %call27 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %50) #5
  store i32 %call27, i32* %csi, align 4, !tbaa !28
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 5
  %51 = load i32, i32* %override_icc, align 4, !tbaa !77
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.26
  %52 = load i32, i32* %csi, align 4, !tbaa !28
  %cmp29 = icmp eq i32 %52, 1
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.28
  %53 = load i32, i32* %csi, align 4, !tbaa !28
  %cmp31 = icmp eq i32 %53, 2
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.28, %if.then.26
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_srcgtag_profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %54, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %55 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gsicc_rendering_param_s* %55 to i8*
  %57 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 24, i32 4, i1 false), !tbaa.struct !78
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.30
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %isdevlink = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 3
  %59 = load i32, i32* %isdevlink, align 4, !tbaa !79
  %tobool34 = icmp ne i32 %59, 0
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.33
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 0
  %60 = load i32, i32* %rendering_intent, align 4, !tbaa !80
  %and = and i32 %60, 3
  %61 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent36 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %61, i32 0, i32 0
  store i32 %and, i32* %rendering_intent36, align 4, !tbaa !80
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 1
  %62 = load i32, i32* %black_point_comp, align 4, !tbaa !81
  %and37 = and i32 %62, 3
  %63 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp38 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %63, i32 0, i32 1
  store i32 %and37, i32* %black_point_comp38, align 4, !tbaa !81
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %67 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %67, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %68 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %69 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call39 = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %64, %struct.gx_device_s* %65, %struct.cmm_profile_s* %66, %struct.cmm_profile_s* %68, %struct.gsicc_rendering_param_s* %69, %struct.gs_memory_s* %70, i32 0) #5
  store %struct.gsicc_link_s* %call39, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.35
  %71 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.165 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.else.41:                                       ; preds = %if.then.21
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 4
  %72 = load i32, i32* %cmm, align 4, !tbaa !82
  %cmp42 = icmp eq i32 %72, 1
  br i1 %cmp42, label %if.then.43, label %if.else.65

if.then.43:                                       ; preds = %if.else.41
  %73 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %data_cs44 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %74, i32 0, i32 5
  %75 = load i32, i32* %data_cs44, align 4, !tbaa !72
  %cmp45 = icmp eq i32 %75, 2
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.then.43
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call47 = call %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %76, %struct.gx_device_s* %77, i32 3) #5
  store %struct.gsicc_link_s* %call47, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  br label %if.end.50

if.else.48:                                       ; preds = %if.then.43
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call49 = call %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %78, %struct.gx_device_s* %79, i32 4) #5
  store %struct.gsicc_link_s* %call49, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.46
  %80 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %cmp51 = icmp ne %struct.gsicc_link_s* %80, null
  br i1 %cmp51, label %if.then.52, label %if.end.61

if.then.52:                                       ; preds = %if.end.50
  %81 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %81, i32 0, i32 0
  %82 = load i8, i8* %num_comps, align 1, !tbaa !83
  %conv = zext i8 %82 to i32
  %83 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile53 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %83, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile53, i32 0, i64 0
  %84 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx54, align 8, !tbaa !1
  %num_comps55 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %84, i32 0, i32 0
  %85 = load i8, i8* %num_comps55, align 1, !tbaa !83
  %conv56 = zext i8 %85 to i32
  %cmp57 = icmp eq i32 %conv, %conv56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.52
  %86 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %86, i32 0, i32 10
  store i32 1, i32* %is_identity, align 4, !tbaa !84
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.52
  %87 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  store %struct.gsicc_link_s* %87, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.61:                                        ; preds = %if.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %if.end.60
  %88 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.165 [
    i32 0, label %cleanup.cont.64
  ]

cleanup.cont.64:                                  ; preds = %cleanup.62
  br label %if.end.73

if.else.65:                                       ; preds = %if.else.41
  %cmm66 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 4
  %89 = load i32, i32* %cmm66, align 4, !tbaa !82
  %cmp67 = icmp eq i32 %89, 2
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.else.65
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %92 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %data_cs70 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %92, i32 0, i32 5
  %93 = load i32, i32* %data_cs70, align 4, !tbaa !72
  %call71 = call %struct.gsicc_link_s* @gsicc_rcm_get_link(%struct.gs_imager_state_s* %90, %struct.gx_device_s* %91, i32 %93) #5
  store %struct.gsicc_link_s* %call71, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.end.72:                                        ; preds = %if.else.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %cleanup.cont.64
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %cleanup.cont
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %lor.lhs.false
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true, %if.end.11
  %94 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %output_colorspace.addr, align 8, !tbaa !1
  %cmp77 = icmp ne %struct.gs_color_space_s* %94, null
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.end.76
  %95 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %output_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data80 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %95, i32 0, i32 6
  %96 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data80, align 8, !tbaa !55
  store %struct.cmm_profile_s* %96, %struct.cmm_profile_s** %gs_output_profile, align 8, !tbaa !1
  store i32 0, i32* %devicegraytok, align 4, !tbaa !28
  br label %if.end.154

if.else.81:                                       ; preds = %if.end.76
  %97 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %call82 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %98) #5
  store i32 %call82, i32* %index, align 4, !tbaa !30
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 42
  %get_profile84 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs83, i32 0, i32 67
  %100 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile84, align 8, !tbaa !60
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call85 = call i32 %100(%struct.gx_device_s* %101, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call85, i32* %code, align 4, !tbaa !28
  %102 = load i32, i32* %index, align 4, !tbaa !30
  %cmp86 = icmp ult i32 %102, 3
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.113

land.lhs.true.88:                                 ; preds = %if.else.81
  %103 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %usefastcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %103, i32 0, i32 8
  %104 = load i32, i32* %usefastcolor, align 4, !tbaa !85
  %tobool89 = icmp ne i32 %104, 0
  br i1 %tobool89, label %if.then.90, label %if.end.113

if.then.90:                                       ; preds = %land.lhs.true.88
  %105 = bitcast %struct.gsicc_link_s** %link91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %108 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %num_comps92 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %108, i32 0, i32 0
  %109 = load i8, i8* %num_comps92, align 1, !tbaa !83
  %conv93 = zext i8 %109 to i32
  %call94 = call %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %106, %struct.gx_device_s* %107, i32 %conv93) #5
  store %struct.gsicc_link_s* %call94, %struct.gsicc_link_s** %link91, align 8, !tbaa !1
  %110 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link91, align 8, !tbaa !1
  %cmp95 = icmp ne %struct.gsicc_link_s* %110, null
  br i1 %cmp95, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %if.then.90
  %111 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %num_comps98 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %111, i32 0, i32 0
  %112 = load i8, i8* %num_comps98, align 1, !tbaa !83
  %conv99 = zext i8 %112 to i32
  %113 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile100 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %113, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile100, i32 0, i64 0
  %114 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx101, align 8, !tbaa !1
  %num_comps102 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %114, i32 0, i32 0
  %115 = load i8, i8* %num_comps102, align 1, !tbaa !83
  %conv103 = zext i8 %115 to i32
  %cmp104 = icmp eq i32 %conv99, %conv103
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.then.97
  %116 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link91, align 8, !tbaa !1
  %is_identity107 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %116, i32 0, i32 10
  store i32 1, i32* %is_identity107, align 4, !tbaa !84
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.97
  %117 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link91, align 8, !tbaa !1
  store %struct.gsicc_link_s* %117, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end.109:                                       ; preds = %if.then.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.110

cleanup.110:                                      ; preds = %if.end.109, %if.end.108
  %118 = bitcast %struct.gsicc_link_s** %link91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %cleanup.dest.111 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.111, label %cleanup.151 [
    i32 0, label %cleanup.cont.112
  ]

cleanup.cont.112:                                 ; preds = %cleanup.110
  br label %if.end.113

if.end.113:                                       ; preds = %cleanup.cont.112, %land.lhs.true.88, %if.else.81
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %graphics_type_tag114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 40
  %120 = load i32, i32* %graphics_type_tag114, align 4, !tbaa !76
  %121 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %120, %struct.cmm_dev_profile_s* %121, %struct.cmm_profile_s** %gs_output_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %122 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent115 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %122, i32 0, i32 0
  %123 = load i32, i32* %rendering_intent115, align 4, !tbaa !80
  %and116 = and i32 %123, 4
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.end.126, label %if.then.118

if.then.118:                                      ; preds = %if.end.113
  %rendering_intent119 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 0
  %124 = load i32, i32* %rendering_intent119, align 4, !tbaa !80
  %cmp120 = icmp ne i32 %124, 8
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %if.then.118
  %rendering_intent123 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 0
  %125 = load i32, i32* %rendering_intent123, align 4, !tbaa !80
  %126 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent124 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %126, i32 0, i32 0
  store i32 %125, i32* %rendering_intent124, align 4, !tbaa !80
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %if.then.118
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.113
  %127 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp127 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %127, i32 0, i32 1
  %128 = load i32, i32* %black_point_comp127, align 4, !tbaa !81
  %and128 = and i32 %128, 4
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.end.138, label %if.then.130

if.then.130:                                      ; preds = %if.end.126
  %black_point_comp131 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 1
  %129 = load i32, i32* %black_point_comp131, align 4, !tbaa !81
  %cmp132 = icmp ne i32 %129, 8
  br i1 %cmp132, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.then.130
  %black_point_comp135 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 1
  %130 = load i32, i32* %black_point_comp135, align 4, !tbaa !81
  %131 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp136 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %131, i32 0, i32 1
  store i32 %130, i32* %black_point_comp136, align 4, !tbaa !81
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.then.130
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.126
  %132 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %132, i32 0, i32 2
  %133 = load i32, i32* %preserve_black, align 4, !tbaa !87
  %and139 = and i32 %133, 4
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.end.149, label %if.then.141

if.then.141:                                      ; preds = %if.end.138
  %preserve_black142 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 2
  %134 = load i32, i32* %preserve_black142, align 4, !tbaa !87
  %cmp143 = icmp ne i32 %134, 8
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.141
  %preserve_black146 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %render_cond, i32 0, i32 2
  %135 = load i32, i32* %preserve_black146, align 4, !tbaa !87
  %136 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %preserve_black147 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %136, i32 0, i32 2
  store i32 %135, i32* %preserve_black147, align 4, !tbaa !87
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.then.141
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.138
  %137 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %devicegraytok150 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %137, i32 0, i32 5
  %138 = load i32, i32* %devicegraytok150, align 4, !tbaa !88
  store i32 %138, i32* %devicegraytok, align 4, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.end.149, %cleanup.110
  %139 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %cleanup.dest.152 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.152, label %cleanup.165 [
    i32 0, label %cleanup.cont.153
  ]

cleanup.cont.153:                                 ; preds = %cleanup.151
  br label %if.end.154

if.end.154:                                       ; preds = %cleanup.cont.153, %if.then.79
  %140 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent155 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %140, i32 0, i32 0
  %141 = load i32, i32* %rendering_intent155, align 4, !tbaa !80
  %and156 = and i32 %141, 3
  %142 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent157 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %142, i32 0, i32 0
  store i32 %and156, i32* %rendering_intent157, align 4, !tbaa !80
  %143 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp158 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %143, i32 0, i32 1
  %144 = load i32, i32* %black_point_comp158, align 4, !tbaa !81
  %and159 = and i32 %144, 3
  %145 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp160 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %145, i32 0, i32 1
  store i32 %and159, i32* %black_point_comp160, align 4, !tbaa !81
  %146 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %preserve_black161 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %146, i32 0, i32 2
  %147 = load i32, i32* %preserve_black161, align 4, !tbaa !87
  %and162 = and i32 %147, 3
  %148 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %preserve_black163 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %148, i32 0, i32 2
  store i32 %and162, i32* %preserve_black163, align 4, !tbaa !87
  %149 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %151 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile, align 8, !tbaa !1
  %152 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile, align 8, !tbaa !1
  %153 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %155 = load i32, i32* %devicegraytok, align 4, !tbaa !28
  %call164 = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %149, %struct.gx_device_s* %150, %struct.cmm_profile_s* %151, %struct.cmm_profile_s* %152, %struct.gsicc_rendering_param_s* %153, %struct.gs_memory_s* %154, i32 %155) #5
  store %struct.gsicc_link_s* %call164, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %if.end.154, %cleanup.151, %if.then.69, %cleanup.62, %cleanup
  %156 = bitcast %struct.gs_color_space_s** %input_colorspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %160) #1
  %161 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.cmm_profile_s** %gs_output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.cmm_profile_s** %gs_srcgtag_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.cmm_profile_s** %gs_input_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %166
}

declare %struct.cmm_profile_s* @gsicc_get_gscs_profile(%struct.gs_color_space_s*, %struct.gsicc_manager_s*) #2

declare void @gsicc_get_srcprofile(i32, i32, %struct.cmm_srcgtag_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.cmm_profile_s* %gs_input_profile, %struct.cmm_profile_s* %gs_output_profile, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %memory, i32 %devicegraytok) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gs_input_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %gs_output_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %devicegraytok.addr = alloca i32, align 4
  %hash = alloca %struct.gsicc_hashlink_s, align 8
  %link = alloca %struct.gsicc_link_s*, align 8
  %found_link = alloca %struct.gsicc_link_s*, align 8
  %link_handle = alloca i8*, align 8
  %icc_manager = alloca %struct.gsicc_manager_s*, align 8
  %icc_link_cache = alloca %struct.gsicc_link_cache_s*, align 8
  %cache_mem = alloca %struct.gs_memory_s*, align 8
  %cms_input_profile = alloca i8**, align 8
  %cms_output_profile = alloca i8**, align 8
  %cms_proof_profile = alloca i8**, align 8
  %cms_devlink_profile = alloca i8**, align 8
  %code = alloca i32, align 4
  %include_softproof = alloca i32, align 4
  %include_devicelink = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %proof_profile = alloca %struct.cmm_profile_s*, align 8
  %devlink_profile = alloca %struct.cmm_profile_s*, align 8
  %src_dev_link = alloca i32, align 4
  %pageneutralcolor = alloca i32, align 4
  %cms_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %gs_input_profile, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %gs_output_profile, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i32 %devicegraytok, i32* %devicegraytok.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_link_s** %found_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %link_handle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %link_handle, align 8, !tbaa !1
  %4 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 35
  %6 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !58
  store %struct.gsicc_manager_s* %6, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %7 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 36
  %9 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache2, align 8, !tbaa !89
  store %struct.gsicc_link_cache_s* %9, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %10 = bitcast %struct.gs_memory_s** %cache_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 36
  %12 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache3, align 8, !tbaa !89
  %memory4 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !22
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  %14 = bitcast i8*** %cms_input_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8*** %cms_output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8** null, i8*** %cms_output_profile, align 8, !tbaa !1
  %16 = bitcast i8*** %cms_proof_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8** null, i8*** %cms_proof_profile, align 8, !tbaa !1
  %17 = bitcast i8*** %cms_devlink_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8** null, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %include_softproof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %include_softproof, align 4, !tbaa !28
  %20 = bitcast i32* %include_devicelink to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %include_devicelink, align 4, !tbaa !28
  %21 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast %struct.cmm_profile_s** %proof_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %23 = bitcast %struct.cmm_profile_s** %devlink_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %24 = bitcast i32* %src_dev_link to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %isdevlink = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %25, i32 0, i32 3
  %26 = load i32, i32* %isdevlink, align 4, !tbaa !79
  store i32 %26, i32* %src_dev_link, align 4, !tbaa !28
  %27 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !28
  %28 = bitcast i32* %cms_flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %cms_flags, align 4, !tbaa !28
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %29, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %31 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !60
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %31(%struct.gx_device_s* %32, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %33 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmm_dev_profile_s* %33, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %34 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %proof_profile7 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %34, i32 0, i32 1
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile7, align 8, !tbaa !90
  store %struct.cmm_profile_s* %35, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %36 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %36, i32 0, i32 2
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !91
  store %struct.cmm_profile_s* %37, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %38 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor8 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %38, i32 0, i32 7
  %39 = load i32, i32* %pageneutralcolor8, align 4, !tbaa !92
  store i32 %39, i32* %pageneutralcolor, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.cmm_profile_s* %40, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 7
  %42 = load i64, i64* %hashcode, align 8, !tbaa !93
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %hashcode11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 7
  %44 = load i64, i64* %hashcode11, align 8, !tbaa !93
  %cmp12 = icmp eq i64 %42, %44
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  br label %if.end.14

if.else:                                          ; preds = %if.then.10
  store i32 1, i32* %include_softproof, align 4, !tbaa !28
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.cmm_profile_s* %45, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 1, i32* %include_devicelink, align 4, !tbaa !28
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %46 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %48 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %50 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  call void @gsicc_compute_linkhash(%struct.gsicc_manager_s* %46, %struct.gx_device_s* %47, %struct.cmm_profile_s* %48, %struct.cmm_profile_s* %49, %struct.gsicc_rendering_param_s* %50, %struct.gsicc_hashlink_s* %hash) #5
  %51 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %52 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %53 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %call20 = call %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gsicc_link_cache_s* %51, i32 %52, i32 %53) #5
  store %struct.gsicc_link_s* %call20, %struct.gsicc_link_s** %found_link, align 8, !tbaa !1
  %54 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %found_link, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.gsicc_link_s* %54, null
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.then.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %55 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %found_link, align 8, !tbaa !1
  store %struct.gsicc_link_s* %55, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.19
  %56 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %56, i32 0, i32 17
  %57 = load i8*, i8** %profile_handle, align 8, !tbaa !94
  %cmp30 = icmp eq i8* %57, null
  br i1 %cmp30, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.29
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 14
  %59 = load i8*, i8** %buffer, align 8, !tbaa !95
  %cmp31 = icmp eq i8* %59, null
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.71

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %dev33 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %60, i32 0, i32 15
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev33, align 8, !tbaa !96
  %cmp34 = icmp ne %struct.gx_device_s* %61, null
  br i1 %cmp34, label %if.then.35, label %if.end.71

if.then.35:                                       ; preds = %land.lhs.true.32
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 21
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !97
  %call37 = call i8* @gsicc_get_profile_handle_clist(%struct.cmm_profile_s* %62, %struct.gs_memory_s* %64) #5
  %65 = bitcast i8* %call37 to i8**
  store i8** %65, i8*** %cms_input_profile, align 8, !tbaa !1
  %66 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %67 = bitcast i8** %66 to i8*
  %68 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %profile_handle38 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %68, i32 0, i32 17
  store i8* %67, i8** %profile_handle38, align 8, !tbaa !94
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %rend_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %69, i32 0, i32 12
  %70 = load i32, i32* %rend_is_valid, align 4, !tbaa !98
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %land.lhs.true.39, label %if.else.57

land.lhs.true.39:                                 ; preds = %if.then.35
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %rend_cond = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %71, i32 0, i32 13
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rend_cond, i32 0, i32 4
  %72 = load i32, i32* %cmm, align 4, !tbaa !99
  %cmp40 = icmp eq i32 %72, 1
  br i1 %cmp40, label %if.then.41, label %if.else.57

if.then.41:                                       ; preds = %land.lhs.true.39
  %73 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %73, i32 0, i32 5
  %74 = load i32, i32* %data_cs, align 4, !tbaa !72
  %cmp42 = icmp eq i32 %74, 2
  br i1 %cmp42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.then.41
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call44 = call %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %75, %struct.gx_device_s* %76, i32 3) #5
  store %struct.gsicc_link_s* %call44, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  br label %if.end.47

if.else.45:                                       ; preds = %if.then.41
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call46 = call %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s* %77, %struct.gx_device_s* %78, i32 4) #5
  store %struct.gsicc_link_s* %call46, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  %79 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %cmp48 = icmp ne %struct.gsicc_link_s* %79, null
  br i1 %cmp48, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %if.end.47
  %80 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %80, i32 0, i32 0
  %81 = load i8, i8* %num_comps, align 1, !tbaa !83
  %conv = zext i8 %81 to i32
  %82 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %82, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %83 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %num_comps50 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %83, i32 0, i32 0
  %84 = load i8, i8* %num_comps50, align 1, !tbaa !83
  %conv51 = zext i8 %84 to i32
  %cmp52 = icmp eq i32 %conv, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.49
  %85 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %85, i32 0, i32 10
  store i32 1, i32* %is_identity, align 4, !tbaa !84
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.49
  %86 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  store %struct.gsicc_link_s* %86, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.47
  br label %if.end.69

if.else.57:                                       ; preds = %land.lhs.true.39, %if.then.35
  %87 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %rend_is_valid58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %87, i32 0, i32 12
  %88 = load i32, i32* %rend_is_valid58, align 4, !tbaa !98
  %tobool59 = icmp ne i32 %88, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.68

land.lhs.true.60:                                 ; preds = %if.else.57
  %89 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %rend_cond61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %89, i32 0, i32 13
  %cmm62 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rend_cond61, i32 0, i32 4
  %90 = load i32, i32* %cmm62, align 4, !tbaa !99
  %cmp63 = icmp eq i32 %90, 2
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true.60
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %93 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %data_cs66 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %93, i32 0, i32 5
  %94 = load i32, i32* %data_cs66, align 4, !tbaa !72
  %call67 = call %struct.gsicc_link_s* @gsicc_rcm_get_link(%struct.gs_imager_state_s* %91, %struct.gx_device_s* %92, i32 %94) #5
  store %struct.gsicc_link_s* %call67, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %land.lhs.true.60, %if.else.57
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.56
  %95 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %isdevlink70 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %95, i32 0, i32 3
  %96 = load i32, i32* %isdevlink70, align 4, !tbaa !79
  store i32 %96, i32* %src_dev_link, align 4, !tbaa !28
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.69, %land.lhs.true.32, %land.lhs.true, %if.end.29
  %97 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %98 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %99 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %call72 = call i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s* %97, %struct.gsicc_link_s** %link, %struct.gsicc_hashlink_s* byval align 8 %hash, i32 %98, i32 %99) #5
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  %100 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  store %struct.gsicc_link_s* %100, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.71
  %101 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %cmp76 = icmp eq %struct.gsicc_link_s* %101, null
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.75
  %102 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %profile_handle80 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %102, i32 0, i32 17
  %103 = load i8*, i8** %profile_handle80, align 8, !tbaa !94
  %104 = bitcast i8* %103 to i8**
  store i8** %104, i8*** %cms_input_profile, align 8, !tbaa !1
  %105 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %call81 = call i32 @gsicc_profile_from_ps(%struct.cmm_profile_s* %105) #5
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.79
  %106 = load i32, i32* %cms_flags, align 4, !tbaa !28
  %call84 = call i32 @gscms_avoid_white_fix_flag() #5
  %or = or i32 %106, %call84
  store i32 %or, i32* %cms_flags, align 4, !tbaa !28
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %107 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %cmp86 = icmp eq i8** %107, null
  br i1 %cmp86, label %if.then.88, label %if.end.111

if.then.88:                                       ; preds = %if.end.85
  %108 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %buffer89 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %108, i32 0, i32 14
  %109 = load i8*, i8** %buffer89, align 8, !tbaa !95
  %cmp90 = icmp ne i8* %109, null
  br i1 %cmp90, label %if.then.92, label %if.else.109

if.then.92:                                       ; preds = %if.then.88
  %110 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %buffer93 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %110, i32 0, i32 14
  %111 = load i8*, i8** %buffer93, align 8, !tbaa !95
  %112 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %112, i32 0, i32 11
  %113 = load i32, i32* %buffer_size, align 4, !tbaa !100
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call94 = call i8* @gsicc_get_profile_handle_buffer(i8* %111, i32 %113, %struct.gs_memory_s* %114) #5
  %115 = bitcast i8* %call94 to i8**
  store i8** %115, i8*** %cms_input_profile, align 8, !tbaa !1
  %116 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %cmp95 = icmp eq i8** %116, null
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.92
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %if.then.92
  %117 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %118 = bitcast i8** %117 to i8*
  %119 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %profile_handle99 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %119, i32 0, i32 17
  store i8* %118, i8** %profile_handle99, align 8, !tbaa !94
  %120 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %cmp100 = icmp eq i8** %120, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.98
  %121 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %call104 = call i32 @gsicc_initialize_default_profile(%struct.cmm_profile_s* %121) #5
  store i32 %call104, i32* %code, align 4, !tbaa !28
  %122 = load i32, i32* %code, align 4, !tbaa !28
  %cmp105 = icmp slt i32 %122, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %if.end.103
  br label %if.end.110

if.else.109:                                      ; preds = %if.then.88
  %123 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %123, %struct.gs_memory_s* %124) #5
  %125 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %num_links = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %125, i32 0, i32 1
  %126 = load i32, i32* %num_links, align 4, !tbaa !21
  %dec = add nsw i32 %126, -1
  store i32 %dec, i32* %num_links, align 4, !tbaa !21
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.110:                                       ; preds = %if.end.108
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.85
  %127 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool112 = icmp ne i32 %127, 0
  br i1 %tobool112, label %if.end.115, label %if.then.113

if.then.113:                                      ; preds = %if.end.111
  %128 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %profile_handle114 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %128, i32 0, i32 17
  %129 = load i8*, i8** %profile_handle114, align 8, !tbaa !94
  %130 = bitcast i8* %129 to i8**
  store i8** %130, i8*** %cms_output_profile, align 8, !tbaa !1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.end.111
  %131 = load i8**, i8*** %cms_output_profile, align 8, !tbaa !1
  %cmp116 = icmp eq i8** %131, null
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.147

land.lhs.true.118:                                ; preds = %if.end.115
  %132 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool119 = icmp ne i32 %132, 0
  br i1 %tobool119, label %if.end.147, label %if.then.120

if.then.120:                                      ; preds = %land.lhs.true.118
  %133 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %buffer121 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %133, i32 0, i32 14
  %134 = load i8*, i8** %buffer121, align 8, !tbaa !95
  %cmp122 = icmp ne i8* %134, null
  br i1 %cmp122, label %if.then.124, label %if.else.134

if.then.124:                                      ; preds = %if.then.120
  %135 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %buffer125 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %135, i32 0, i32 14
  %136 = load i8*, i8** %buffer125, align 8, !tbaa !95
  %137 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %buffer_size126 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %137, i32 0, i32 11
  %138 = load i32, i32* %buffer_size126, align 4, !tbaa !100
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call127 = call i8* @gsicc_get_profile_handle_buffer(i8* %136, i32 %138, %struct.gs_memory_s* %139) #5
  %140 = bitcast i8* %call127 to i8**
  store i8** %140, i8*** %cms_output_profile, align 8, !tbaa !1
  %141 = load i8**, i8*** %cms_output_profile, align 8, !tbaa !1
  %142 = bitcast i8** %141 to i8*
  %143 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %profile_handle128 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %143, i32 0, i32 17
  store i8* %142, i8** %profile_handle128, align 8, !tbaa !94
  %144 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %call129 = call i32 @gsicc_initialize_default_profile(%struct.cmm_profile_s* %144) #5
  store i32 %call129, i32* %code, align 4, !tbaa !28
  %145 = load i32, i32* %code, align 4, !tbaa !28
  %cmp130 = icmp slt i32 %145, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.then.124
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %if.then.124
  br label %if.end.146

if.else.134:                                      ; preds = %if.then.120
  %146 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %dev135 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %146, i32 0, i32 15
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev135, align 8, !tbaa !96
  %cmp136 = icmp ne %struct.gx_device_s* %147, null
  br i1 %cmp136, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.else.134
  %148 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %149 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %149, i32 0, i32 21
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory139, align 8, !tbaa !97
  %call140 = call i8* @gsicc_get_profile_handle_clist(%struct.cmm_profile_s* %148, %struct.gs_memory_s* %150) #5
  %151 = bitcast i8* %call140 to i8**
  store i8** %151, i8*** %cms_output_profile, align 8, !tbaa !1
  %152 = load i8**, i8*** %cms_output_profile, align 8, !tbaa !1
  %153 = bitcast i8** %152 to i8*
  %154 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %profile_handle141 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %154, i32 0, i32 17
  store i8* %153, i8** %profile_handle141, align 8, !tbaa !94
  br label %if.end.145

if.else.142:                                      ; preds = %if.else.134
  %155 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %155, %struct.gs_memory_s* %156) #5
  %157 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %num_links143 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %157, i32 0, i32 1
  %158 = load i32, i32* %num_links143, align 4, !tbaa !21
  %dec144 = add nsw i32 %158, -1
  store i32 %dec144, i32* %num_links143, align 4, !tbaa !21
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %if.then.138
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.133
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.118, %if.end.115
  %159 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %tobool148 = icmp ne i32 %159, 0
  br i1 %tobool148, label %if.then.149, label %if.end.168

if.then.149:                                      ; preds = %if.end.147
  %160 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %profile_handle150 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %160, i32 0, i32 17
  %161 = load i8*, i8** %profile_handle150, align 8, !tbaa !94
  %162 = bitcast i8* %161 to i8**
  store i8** %162, i8*** %cms_proof_profile, align 8, !tbaa !1
  %163 = load i8**, i8*** %cms_proof_profile, align 8, !tbaa !1
  %cmp151 = icmp eq i8** %163, null
  br i1 %cmp151, label %if.then.153, label %if.end.167

if.then.153:                                      ; preds = %if.then.149
  %164 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %buffer154 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %164, i32 0, i32 14
  %165 = load i8*, i8** %buffer154, align 8, !tbaa !95
  %cmp155 = icmp ne i8* %165, null
  br i1 %cmp155, label %if.then.157, label %if.else.163

if.then.157:                                      ; preds = %if.then.153
  %166 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %buffer158 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %166, i32 0, i32 14
  %167 = load i8*, i8** %buffer158, align 8, !tbaa !95
  %168 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %buffer_size159 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %168, i32 0, i32 11
  %169 = load i32, i32* %buffer_size159, align 4, !tbaa !100
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call160 = call i8* @gsicc_get_profile_handle_buffer(i8* %167, i32 %169, %struct.gs_memory_s* %170) #5
  %171 = bitcast i8* %call160 to i8**
  store i8** %171, i8*** %cms_proof_profile, align 8, !tbaa !1
  %172 = load i8**, i8*** %cms_proof_profile, align 8, !tbaa !1
  %173 = bitcast i8** %172 to i8*
  %174 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %profile_handle161 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %174, i32 0, i32 17
  store i8* %173, i8** %profile_handle161, align 8, !tbaa !94
  %175 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %175, i32 0, i32 22
  %176 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !101
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %176, i32 0, i32 1
  %call162 = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  br label %if.end.166

if.else.163:                                      ; preds = %if.then.153
  %177 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %177, %struct.gs_memory_s* %178) #5
  %179 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %num_links164 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %179, i32 0, i32 1
  %180 = load i32, i32* %num_links164, align 4, !tbaa !21
  %dec165 = add nsw i32 %180, -1
  store i32 %dec165, i32* %num_links164, align 4, !tbaa !21
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.166:                                       ; preds = %if.then.157
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.149
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.147
  %181 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %tobool169 = icmp ne i32 %181, 0
  br i1 %tobool169, label %if.then.170, label %if.end.191

if.then.170:                                      ; preds = %if.end.168
  %182 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %profile_handle171 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %182, i32 0, i32 17
  %183 = load i8*, i8** %profile_handle171, align 8, !tbaa !94
  %184 = bitcast i8* %183 to i8**
  store i8** %184, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %185 = load i8**, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %cmp172 = icmp eq i8** %185, null
  br i1 %cmp172, label %if.then.174, label %if.end.190

if.then.174:                                      ; preds = %if.then.170
  %186 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %buffer175 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %186, i32 0, i32 14
  %187 = load i8*, i8** %buffer175, align 8, !tbaa !95
  %cmp176 = icmp ne i8* %187, null
  br i1 %cmp176, label %if.then.178, label %if.else.186

if.then.178:                                      ; preds = %if.then.174
  %188 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %buffer179 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %188, i32 0, i32 14
  %189 = load i8*, i8** %buffer179, align 8, !tbaa !95
  %190 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %buffer_size180 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %190, i32 0, i32 11
  %191 = load i32, i32* %buffer_size180, align 4, !tbaa !100
  %192 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call181 = call i8* @gsicc_get_profile_handle_buffer(i8* %189, i32 %191, %struct.gs_memory_s* %192) #5
  %193 = bitcast i8* %call181 to i8**
  store i8** %193, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %194 = load i8**, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %195 = bitcast i8** %194 to i8*
  %196 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %profile_handle182 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %196, i32 0, i32 17
  store i8* %195, i8** %profile_handle182, align 8, !tbaa !94
  %197 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %lock183 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %197, i32 0, i32 22
  %198 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock183, align 8, !tbaa !101
  %native184 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %198, i32 0, i32 1
  %call185 = call i32 @gp_monitor_enter(%union.gp_monitor* %native184) #5
  br label %if.end.189

if.else.186:                                      ; preds = %if.then.174
  %199 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %199, %struct.gs_memory_s* %200) #5
  %201 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %num_links187 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %201, i32 0, i32 1
  %202 = load i32, i32* %num_links187, align 4, !tbaa !21
  %dec188 = add nsw i32 %202, -1
  store i32 %dec188, i32* %num_links187, align 4, !tbaa !21
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.189:                                       ; preds = %if.then.178
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.170
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.168
  %203 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %lock192 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %203, i32 0, i32 22
  %204 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock192, align 8, !tbaa !101
  %native193 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %204, i32 0, i32 1
  %call194 = call i32 @gp_monitor_enter(%union.gp_monitor* %native193) #5
  %205 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool195 = icmp ne i32 %205, 0
  br i1 %tobool195, label %if.end.200, label %if.then.196

if.then.196:                                      ; preds = %if.end.191
  %206 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %lock197 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %206, i32 0, i32 22
  %207 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock197, align 8, !tbaa !101
  %native198 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %207, i32 0, i32 1
  %call199 = call i32 @gp_monitor_enter(%union.gp_monitor* %native198) #5
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.196, %if.end.191
  %208 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool201 = icmp ne i32 %208, 0
  br i1 %tobool201, label %if.end.242, label %land.lhs.true.202

land.lhs.true.202:                                ; preds = %if.end.200
  %209 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %data_cs203 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %209, i32 0, i32 5
  %210 = load i32, i32* %data_cs203, align 4, !tbaa !72
  %cmp204 = icmp eq i32 %210, 3
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.242

land.lhs.true.206:                                ; preds = %land.lhs.true.202
  %211 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %data_cs207 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %211, i32 0, i32 5
  %212 = load i32, i32* %data_cs207, align 4, !tbaa !72
  %cmp208 = icmp eq i32 %212, 1
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.242

land.lhs.true.210:                                ; preds = %land.lhs.true.206
  %213 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager211 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %213, i32 0, i32 35
  %214 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager211, align 8, !tbaa !58
  %cmp212 = icmp ne %struct.gsicc_manager_s* %214, null
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.242

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %215 = load i32, i32* %devicegraytok.addr, align 4, !tbaa !28
  %tobool215 = icmp ne i32 %215, 0
  br i1 %tobool215, label %if.then.216, label %if.end.242

if.then.216:                                      ; preds = %land.lhs.true.214
  %216 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %216, i32 0, i32 5
  %217 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile, align 8, !tbaa !102
  %cmp217 = icmp eq %struct.cmm_profile_s* %217, null
  br i1 %cmp217, label %if.then.219, label %if.end.232

if.then.219:                                      ; preds = %if.then.216
  %call220 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #6
  %conv221 = trunc i64 %call220 to i32
  %218 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager222 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %218, i32 0, i32 35
  %219 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager222, align 8, !tbaa !58
  %220 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager223 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %220, i32 0, i32 35
  %221 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager223, align 8, !tbaa !58
  %memory224 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %221, i32 0, i32 10
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory224, align 8, !tbaa !103
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %222, i32 0, i32 0
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %call225 = call %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %conv221, %struct.gsicc_manager_s* %219, %struct.gs_memory_s* %223) #5
  %224 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile226 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %224, i32 0, i32 5
  store %struct.cmm_profile_s* %call225, %struct.cmm_profile_s** %graytok_profile226, align 8, !tbaa !102
  %225 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile227 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %225, i32 0, i32 5
  %226 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile227, align 8, !tbaa !102
  %cmp228 = icmp eq %struct.cmm_profile_s* %226, null
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.then.219
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.231:                                       ; preds = %if.then.219
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.216
  %227 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %227, i32 0, i32 7
  %228 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !104
  %cmp233 = icmp eq %struct.gsicc_smask_s* %228, null
  br i1 %cmp233, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.end.232
  %229 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %call236 = call i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s* %229) #5
  store i32 %call236, i32* %code, align 4, !tbaa !28
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.end.232
  %230 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles238 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %230, i32 0, i32 7
  %231 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles238, align 8, !tbaa !104
  %smask_gray = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %231, i32 0, i32 0
  %232 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray, align 8, !tbaa !105
  %profile_handle239 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %232, i32 0, i32 17
  %233 = load i8*, i8** %profile_handle239, align 8, !tbaa !94
  %234 = bitcast i8* %233 to i8**
  store i8** %234, i8*** %cms_input_profile, align 8, !tbaa !1
  %235 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile240 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %235, i32 0, i32 5
  %236 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile240, align 8, !tbaa !102
  %profile_handle241 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %236, i32 0, i32 17
  %237 = load i8*, i8** %profile_handle241, align 8, !tbaa !94
  %238 = bitcast i8* %237 to i8**
  store i8** %238, i8*** %cms_output_profile, align 8, !tbaa !1
  %239 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %239, i32 0, i32 1
  store i32 0, i32* %black_point_comp, align 4, !tbaa !81
  store i32 0, i32* %cms_flags, align 4, !tbaa !28
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.237, %land.lhs.true.214, %land.lhs.true.210, %land.lhs.true.206, %land.lhs.true.202, %if.end.200
  %240 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %tobool243 = icmp ne i32 %240, 0
  br i1 %tobool243, label %if.then.247, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.242
  %241 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %tobool244 = icmp ne i32 %241, 0
  br i1 %tobool244, label %if.then.247, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false
  %242 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool246 = icmp ne i32 %242, 0
  br i1 %tobool246, label %if.then.247, label %if.else.261

if.then.247:                                      ; preds = %lor.lhs.false.245, %lor.lhs.false, %if.end.242
  %243 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %244 = bitcast i8** %243 to i8*
  %245 = load i8**, i8*** %cms_proof_profile, align 8, !tbaa !1
  %246 = bitcast i8** %245 to i8*
  %247 = load i8**, i8*** %cms_output_profile, align 8, !tbaa !1
  %248 = bitcast i8** %247 to i8*
  %249 = load i8**, i8*** %cms_devlink_profile, align 8, !tbaa !1
  %250 = bitcast i8** %249 to i8*
  %251 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %252 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %253 = load i32, i32* %cms_flags, align 4, !tbaa !28
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !107
  %call248 = call i8* @gscms_get_link_proof_devlink(i8* %244, i8* %246, i8* %248, i8* %250, %struct.gsicc_rendering_param_s* %251, i32 %252, i32 %253, %struct.gs_memory_s* %255) #5
  store i8* %call248, i8** %link_handle, align 8, !tbaa !1
  %256 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %tobool249 = icmp ne i32 %256, 0
  br i1 %tobool249, label %if.then.250, label %if.end.254

if.then.250:                                      ; preds = %if.then.247
  %257 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !1
  %lock251 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %257, i32 0, i32 22
  %258 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock251, align 8, !tbaa !101
  %native252 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %258, i32 0, i32 1
  %call253 = call i32 @gp_monitor_leave(%union.gp_monitor* %native252) #5
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.250, %if.then.247
  %259 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %tobool255 = icmp ne i32 %259, 0
  br i1 %tobool255, label %if.then.256, label %if.end.260

if.then.256:                                      ; preds = %if.end.254
  %260 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %devlink_profile, align 8, !tbaa !1
  %lock257 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %260, i32 0, i32 22
  %261 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock257, align 8, !tbaa !101
  %native258 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %261, i32 0, i32 1
  %call259 = call i32 @gp_monitor_leave(%union.gp_monitor* %native258) #5
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.256, %if.end.254
  br label %if.end.264

if.else.261:                                      ; preds = %lor.lhs.false.245
  %262 = load i8**, i8*** %cms_input_profile, align 8, !tbaa !1
  %263 = bitcast i8** %262 to i8*
  %264 = load i8**, i8*** %cms_output_profile, align 8, !tbaa !1
  %265 = bitcast i8** %264 to i8*
  %266 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %267 = load i32, i32* %cms_flags, align 4, !tbaa !28
  %268 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  %non_gc_memory262 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %268, i32 0, i32 3
  %269 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory262, align 8, !tbaa !107
  %call263 = call i8* @gscms_get_link(i8* %263, i8* %265, %struct.gsicc_rendering_param_s* %266, i32 %267, %struct.gs_memory_s* %269) #5
  store i8* %call263, i8** %link_handle, align 8, !tbaa !1
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.261, %if.end.260
  %270 = load i32, i32* %src_dev_link, align 4, !tbaa !28
  %tobool265 = icmp ne i32 %270, 0
  br i1 %tobool265, label %if.end.270, label %if.then.266

if.then.266:                                      ; preds = %if.end.264
  %271 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %lock267 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %271, i32 0, i32 22
  %272 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock267, align 8, !tbaa !101
  %native268 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %272, i32 0, i32 1
  %call269 = call i32 @gp_monitor_leave(%union.gp_monitor* %native268) #5
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.266, %if.end.264
  %273 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %lock271 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %273, i32 0, i32 22
  %274 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock271, align 8, !tbaa !101
  %native272 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %274, i32 0, i32 1
  %call273 = call i32 @gp_monitor_leave(%union.gp_monitor* %native272) #5
  %275 = load i8*, i8** %link_handle, align 8, !tbaa !1
  %cmp274 = icmp ne i8* %275, null
  br i1 %cmp274, label %if.then.276, label %if.else.293

if.then.276:                                      ; preds = %if.end.270
  %276 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %data_cs277 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %276, i32 0, i32 5
  %277 = load i32, i32* %data_cs277, align 4, !tbaa !72
  %cmp278 = icmp eq i32 %277, 1
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.then.276
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !28
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %if.then.276
  %278 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %279 = load i8*, i8** %link_handle, align 8, !tbaa !1
  %280 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %lock282 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %280, i32 0, i32 4
  %281 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock282, align 8, !tbaa !9
  %282 = load i32, i32* %include_softproof, align 4, !tbaa !28
  %283 = load i32, i32* %include_devicelink, align 4, !tbaa !28
  %284 = load i32, i32* %pageneutralcolor, align 4, !tbaa !28
  %285 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_input_profile.addr, align 8, !tbaa !1
  %data_cs283 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %285, i32 0, i32 5
  %286 = load i32, i32* %data_cs283, align 4, !tbaa !72
  call void @gsicc_set_link_data(%struct.gsicc_link_s* %278, i8* %279, %struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gx_monitor_s* %281, i32 %282, i32 %283, i32 %284, i32 %286) #5
  br label %do.body.284

do.body.284:                                      ; preds = %if.end.281
  br label %do.cond.285

do.cond.285:                                      ; preds = %do.body.284
  br label %do.end.286

do.end.286:                                       ; preds = %do.cond.285
  br label %do.body.287

do.body.287:                                      ; preds = %do.end.286
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.body.287
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  br label %do.body.290

do.body.290:                                      ; preds = %do.end.289
  br label %do.cond.291

do.cond.291:                                      ; preds = %do.body.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  br label %if.end.296

if.else.293:                                      ; preds = %if.end.270
  %287 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %287, %struct.gs_memory_s* %288) #5
  %289 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %num_links294 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %289, i32 0, i32 1
  %290 = load i32, i32* %num_links294, align 4, !tbaa !21
  %dec295 = add nsw i32 %290, -1
  store i32 %dec295, i32* %num_links294, align 4, !tbaa !21
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.296:                                       ; preds = %do.end.292
  %291 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  store %struct.gsicc_link_s* %291, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.296, %if.else.293, %if.then.230, %if.else.186, %if.else.163, %if.else.142, %if.then.132, %if.else.109, %if.then.107, %if.then.102, %if.then.97, %if.then.78, %if.then.74, %if.then.65, %if.end.55, %do.end.28
  %292 = bitcast i32* %cms_flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %pageneutralcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %src_dev_link to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast %struct.cmm_profile_s** %devlink_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast %struct.cmm_profile_s** %proof_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i32* %include_devicelink to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %include_softproof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i8*** %cms_devlink_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast i8*** %cms_proof_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i8*** %cms_output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i8*** %cms_input_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast %struct.gs_memory_s** %cache_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i8** %link_handle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast %struct.gsicc_link_s** %found_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.gsicc_hashlink_s* %hash to i8*
  call void @llvm.lifetime.end(i64 32, i8* %311) #1
  %312 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %312
}

declare %struct.gsicc_link_s* @gsicc_nocm_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

declare %struct.gsicc_link_s* @gsicc_rcm_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsicc_alloc_link_entry(%struct.gsicc_link_cache_s* %icc_link_cache, %struct.gsicc_link_s** %ret_link, %struct.gsicc_hashlink_s* byval align 8 %hash, i32 %include_softproof, i32 %include_devlink) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_link_cache.addr = alloca %struct.gsicc_link_cache_s*, align 8
  %ret_link.addr = alloca %struct.gsicc_link_s**, align 8
  %include_softproof.addr = alloca i32, align 4
  %include_devlink.addr = alloca i32, align 4
  %cache_mem = alloca %struct.gs_memory_s*, align 8
  %link = alloca %struct.gsicc_link_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_link_cache_s* %icc_link_cache, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s** %ret_link, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  store i32 %include_softproof, i32* %include_softproof.addr, align 4, !tbaa !28
  store i32 %include_devlink, i32* %include_devlink.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gs_memory_s** %cache_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %4, i32 0, i32 4
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %6 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %num_links = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %6, i32 0, i32 1
  %7 = load i32, i32* %num_links, align 4, !tbaa !21
  %cmp = icmp sge i32 %7, 50
  br i1 %cmp, label %while.body, label %while.end.16

while.body:                                       ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %8 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %call2 = call %struct.gsicc_link_s* @gsicc_find_zeroref_cache(%struct.gsicc_link_cache_s* %8) #5
  store %struct.gsicc_link_s* %call2, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gsicc_link_s* %call2, null
  br i1 %cmp3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %9 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %9, i32 0, i32 6
  %10 = load i32, i32* %num_waiting, align 4, !tbaa !16
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %num_waiting, align 4, !tbaa !16
  %11 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock5 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %11, i32 0, i32 4
  %12 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock5, align 8, !tbaa !9
  %native6 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %12, i32 0, i32 1
  %call7 = call i32 @gp_monitor_leave(%union.gp_monitor* %native6) #5
  %13 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %13, i32 0, i32 5
  %14 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !14
  %native8 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %14, i32 0, i32 1
  %call9 = call i32 @gp_semaphore_wait(%union.gp_semaphore* %native8) #5
  %15 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %16 = load i32, i32* %include_softproof.addr, align 4, !tbaa !28
  %17 = load i32, i32* %include_devlink.addr, align 4, !tbaa !28
  %call10 = call %struct.gsicc_link_s* @gsicc_findcachelink(%struct.gsicc_hashlink_s* byval align 8 %hash, %struct.gsicc_link_cache_s* %15, i32 %16, i32 %17) #5
  %18 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %call10, %struct.gsicc_link_s** %18, align 8, !tbaa !1
  %19 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %19, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gsicc_link_s* %20, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body.4
  %21 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock12 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %21, i32 0, i32 4
  %22 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock12, align 8, !tbaa !9
  %native13 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %22, i32 0, i32 1
  %call14 = call i32 @gp_monitor_enter(%union.gp_monitor* %native13) #5
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  call void @gsicc_remove_link(%struct.gsicc_link_s* %23, %struct.gs_memory_s* %24) #5
  %25 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %num_links15 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %25, i32 0, i32 1
  %26 = load i32, i32* %num_links15, align 4, !tbaa !21
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %num_links15, align 4, !tbaa !21
  br label %while.cond

while.end.16:                                     ; preds = %while.cond
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cache_mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %call17 = call %struct.gsicc_link_s* @gsicc_alloc_link(%struct.gs_memory_s* %28, %struct.gsicc_hashlink_s* byval align 8 %hash) #5
  %29 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %call17, %struct.gsicc_link_s** %29, align 8, !tbaa !1
  %30 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %30, align 8, !tbaa !1
  %tobool = icmp ne %struct.gsicc_link_s* %31, null
  br i1 %tobool, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %while.end.16
  %32 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %33 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %33, align 8, !tbaa !1
  %icc_link_cache19 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %34, i32 0, i32 3
  store %struct.gsicc_link_cache_s* %32, %struct.gsicc_link_cache_s** %icc_link_cache19, align 8, !tbaa !108
  %35 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %35, i32 0, i32 0
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  %37 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  %38 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %37, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %38, i32 0, i32 5
  store %struct.gsicc_link_s* %36, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  %39 = load %struct.gsicc_link_s**, %struct.gsicc_link_s*** %ret_link.addr, align 8, !tbaa !1
  %40 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %39, align 8, !tbaa !1
  %41 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head20 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %41, i32 0, i32 0
  store %struct.gsicc_link_s* %40, %struct.gsicc_link_s** %head20, align 8, !tbaa !20
  %42 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %num_links21 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %42, i32 0, i32 1
  %43 = load i32, i32* %num_links21, align 4, !tbaa !21
  %inc22 = add nsw i32 %43, 1
  store i32 %inc22, i32* %num_links21, align 4, !tbaa !21
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %while.end.16
  %44 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %lock24 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %44, i32 0, i32 4
  %45 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock24, align 8, !tbaa !9
  %native25 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %45, i32 0, i32 1
  %call26 = call i32 @gp_monitor_leave(%union.gp_monitor* %native25) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %46 = bitcast %struct.gsicc_link_s** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gs_memory_s** %cache_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal %struct.gsicc_link_s* @gsicc_find_zeroref_cache(%struct.gsicc_link_cache_s* %icc_link_cache) #0 {
entry:
  %icc_link_cache.addr = alloca %struct.gsicc_link_cache_s*, align 8
  %curr = alloca %struct.gsicc_link_s*, align 8
  store %struct.gsicc_link_cache_s* %icc_link_cache, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %1 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1, i32 0, i32 0
  %2 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  store %struct.gsicc_link_s* %2, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_link_s* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %ref_count = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %4, i32 0, i32 4
  %5 = load i32, i32* %ref_count, align 4, !tbaa !36
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %ref_count2 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %6, i32 0, i32 4
  %7 = load i32, i32* %ref_count2, align 4, !tbaa !36
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ref_count2, align 4, !tbaa !36
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %8, i32 0, i32 5
  %9 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  store %struct.gsicc_link_s* %9, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %11 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.gsicc_link_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_remove_link(%struct.gsicc_link_s* %link, %struct.gs_memory_s* %memory) #0 {
entry:
  %link.addr = alloca %struct.gsicc_link_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %curr = alloca %struct.gsicc_link_s*, align 8
  %prev = alloca %struct.gsicc_link_s*, align 8
  %icc_link_cache = alloca %struct.gsicc_link_cache_s*, align 8
  store %struct.gsicc_link_s* %link, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %icc_link_cache1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %3, i32 0, i32 3
  %4 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache1, align 8, !tbaa !108
  store %struct.gsicc_link_cache_s* %4, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %5, i32 0, i32 4
  %6 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %6, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  %7 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %7, i32 0, i32 0
  %8 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  store %struct.gsicc_link_s* %8, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %do.end
  %9 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_link_s* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gsicc_link_s* %10, %11
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %12 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gsicc_link_s* %12, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %13, i32 0, i32 5
  %14 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  %15 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head5 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %15, i32 0, i32 0
  store %struct.gsicc_link_s* %14, %struct.gsicc_link_s** %head5, align 8, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %16, i32 0, i32 5
  %17 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next6, align 8, !tbaa !35
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %18, i32 0, i32 5
  store %struct.gsicc_link_s* %17, %struct.gsicc_link_s** %next7, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %while.end

if.end.8:                                         ; preds = %while.body
  %19 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %19, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %20, i32 0, i32 5
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next9, align 8, !tbaa !35
  store %struct.gsicc_link_s* %21, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.end, %while.cond
  %22 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %lock10 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %22, i32 0, i32 4
  %23 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock10, align 8, !tbaa !9
  %native11 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %23, i32 0, i32 1
  %call12 = call i32 @gp_monitor_leave(%union.gp_monitor* %native11) #5
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  call void @gsicc_link_free(%struct.gsicc_link_s* %24, %struct.gs_memory_s* %25) #5
  %26 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gsicc_link_s* @gsicc_alloc_link(%struct.gs_memory_s* %memory, %struct.gsicc_hashlink_s* byval align 8 %hashcode) #0 {
entry:
  %retval = alloca %struct.gsicc_link_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_link_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !5
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_icc_link, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gsicc_link_s*
  store %struct.gsicc_link_s* %6, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %7 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_link_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !5
  %call3 = call %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %9) #5
  %10 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %10, i32 0, i32 6
  store %struct.gx_semaphore_s* %call3, %struct.gx_semaphore_s** %wait, align 8, !tbaa !27
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %wait4 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %11, i32 0, i32 6
  %12 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait4, align 8, !tbaa !27
  %cmp5 = icmp eq %struct.gx_semaphore_s* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory7, align 8, !tbaa !5
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory9, align 8, !tbaa !5
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %19 = bitcast %struct.gsicc_link_s* %18 to i8*
  call void %15(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)) #5
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_monitored = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %20, i32 0, i32 12
  store i32 0, i32* %is_monitored, align 4, !tbaa !109
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %21, i32 0, i32 13
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %orig_procs, i32 0, i32 0
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)* null, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !110
  %22 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %orig_procs11 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %22, i32 0, i32 13
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %orig_procs11, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)* null, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !111
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %orig_procs12 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %23, i32 0, i32 13
  %free_link = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %orig_procs12, i32 0, i32 2
  store void (%struct.gsicc_link_s*)* null, void (%struct.gsicc_link_s*)** %free_link, align 8, !tbaa !112
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %24, i32 0, i32 5
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %25, i32 0, i32 0
  store i8* null, i8** %link_handle, align 8, !tbaa !113
  %26 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %26, i32 0, i32 1
  %map_buffer14 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs13, i32 0, i32 0
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)* @gscms_transform_color_buffer, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer14, align 8, !tbaa !114
  %27 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %27, i32 0, i32 1
  %map_color16 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs15, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)* @gscms_transform_color, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color16, align 8, !tbaa !115
  %28 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %28, i32 0, i32 1
  %free_link18 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs17, i32 0, i32 2
  store void (%struct.gsicc_link_s*)* @gscms_release_link, void (%struct.gsicc_link_s*)** %free_link18, align 8, !tbaa !23
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 0
  %29 = load i64, i64* %link_hashcode, align 8, !tbaa !31
  %30 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode19 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %30, i32 0, i32 2
  %link_hashcode20 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode19, i32 0, i32 0
  store i64 %29, i64* %link_hashcode20, align 8, !tbaa !32
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode21 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %31, i32 0, i32 2
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode21, i32 0, i32 2
  store i64 0, i64* %des_hash, align 8, !tbaa !116
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode22 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %32, i32 0, i32 2
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode22, i32 0, i32 1
  store i64 0, i64* %src_hash, align 8, !tbaa !117
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %hashcode23 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %33, i32 0, i32 2
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode23, i32 0, i32 3
  store i64 0, i64* %rend_hash, align 8, !tbaa !118
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %ref_count = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %34, i32 0, i32 4
  store i32 1, i32* %ref_count, align 4, !tbaa !36
  %35 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_softproof = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %35, i32 0, i32 8
  store i32 0, i32* %includes_softproof, align 4, !tbaa !33
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %includes_devlink = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %36, i32 0, i32 9
  store i32 0, i32* %includes_devlink, align 4, !tbaa !34
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %37, i32 0, i32 10
  store i32 0, i32* %is_identity, align 4, !tbaa !84
  %38 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %38, i32 0, i32 11
  store i32 0, i32* %valid, align 4, !tbaa !37
  %39 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %39, i32 0, i32 7
  store i32 0, i32* %num_waiting, align 4, !tbaa !38
  %40 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %result, align 8, !tbaa !1
  store %struct.gsicc_link_s* %40, %struct.gsicc_link_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.6, %if.then
  %41 = bitcast %struct.gsicc_link_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %retval
  ret %struct.gsicc_link_s* %42
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_compute_linkhash(%struct.gsicc_manager_s* %icc_manager, %struct.gx_device_s* %dev, %struct.cmm_profile_s* %input_profile, %struct.cmm_profile_s* %output_profile, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_hashlink_s* %hash) #0 {
entry:
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %input_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %output_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %hash.addr = alloca %struct.gsicc_hashlink_s*, align 8
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %input_profile, %struct.cmm_profile_s** %input_profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %output_profile, %struct.cmm_profile_s** %output_profile.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  store %struct.gsicc_hashlink_s* %hash, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %input_profile.addr, align 8, !tbaa !1
  %3 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %3, i32 0, i32 1
  call void @gsicc_get_cspace_hash(%struct.gsicc_manager_s* %0, %struct.gx_device_s* %1, %struct.cmm_profile_s* %2, i64* %src_hash) #5
  %4 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile.addr, align 8, !tbaa !1
  %7 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %7, i32 0, i32 2
  call void @gsicc_get_cspace_hash(%struct.gsicc_manager_s* %4, %struct.gx_device_s* %5, %struct.cmm_profile_s* %6, i64* %des_hash) #5
  %8 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %8, i32 0, i32 1
  %9 = load i32, i32* %black_point_comp, align 4, !tbaa !81
  %shl = shl i32 %9, 0
  %10 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %10, i32 0, i32 0
  %11 = load i32, i32* %rendering_intent, align 4, !tbaa !80
  %shl1 = shl i32 %11, 8
  %add = add i32 %shl, %shl1
  %12 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %12, i32 0, i32 2
  %13 = load i32, i32* %preserve_black, align 4, !tbaa !87
  %shl2 = shl i32 %13, 16
  %add3 = add i32 %add, %shl2
  %conv = zext i32 %add3 to i64
  %14 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %14, i32 0, i32 3
  store i64 %conv, i64* %rend_hash, align 8, !tbaa !119
  %15 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  call void @gsicc_mash_hash(%struct.gsicc_hashlink_s* %15) #5
  ret void
}

declare i8* @gsicc_get_profile_handle_clist(%struct.cmm_profile_s*, %struct.gs_memory_s*) #2

declare i32 @gsicc_profile_from_ps(%struct.cmm_profile_s*) #2

declare i32 @gscms_avoid_white_fix_flag() #2

declare i8* @gsicc_get_profile_handle_buffer(i8*, i32, %struct.gs_memory_s*) #2

declare i32 @gsicc_initialize_default_profile(%struct.cmm_profile_s*) #2

declare %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8*, i32, %struct.gsicc_manager_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s*) #2

declare i8* @gscms_get_link_proof_devlink(i8*, i8*, i8*, i8*, %struct.gsicc_rendering_param_s*, i32, i32, %struct.gs_memory_s*) #2

declare i8* @gscms_get_link(i8*, i8*, %struct.gsicc_rendering_param_s*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gsicc_set_link_data(%struct.gsicc_link_s* %icc_link, i8* %link_handle, %struct.gsicc_hashlink_s* byval align 8 %hashcode, %struct.gx_monitor_s* %lock, i32 %includes_softproof, i32 %includes_devlink, i32 %pageneutralcolor, i32 %data_cs) #0 {
entry:
  %icc_link.addr = alloca %struct.gsicc_link_s*, align 8
  %link_handle.addr = alloca i8*, align 8
  %lock.addr = alloca %struct.gx_monitor_s*, align 8
  %includes_softproof.addr = alloca i32, align 4
  %includes_devlink.addr = alloca i32, align 4
  %pageneutralcolor.addr = alloca i32, align 4
  %data_cs.addr = alloca i32, align 4
  store %struct.gsicc_link_s* %icc_link, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  store i8* %link_handle, i8** %link_handle.addr, align 8, !tbaa !1
  store %struct.gx_monitor_s* %lock, %struct.gx_monitor_s** %lock.addr, align 8, !tbaa !1
  store i32 %includes_softproof, i32* %includes_softproof.addr, align 4, !tbaa !28
  store i32 %includes_devlink, i32* %includes_devlink.addr, align 4, !tbaa !28
  store i32 %pageneutralcolor, i32* %pageneutralcolor.addr, align 4, !tbaa !28
  store i32 %data_cs, i32* %data_cs.addr, align 4, !tbaa !30
  %0 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock.addr, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %0, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  %1 = load i8*, i8** %link_handle.addr, align 8, !tbaa !1
  %2 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %link_handle1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %2, i32 0, i32 0
  store i8* %1, i8** %link_handle1, align 8, !tbaa !113
  %3 = load i8*, i8** %link_handle.addr, align 8, !tbaa !1
  %4 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %num_input = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %4, i32 0, i32 15
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %num_output = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %5, i32 0, i32 16
  call void @gscms_get_link_dim(i8* %3, i32* %num_input, i32* %num_output) #5
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 0
  %6 = load i64, i64* %link_hashcode, align 8, !tbaa !31
  %7 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %hashcode2 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %7, i32 0, i32 2
  %link_hashcode3 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode2, i32 0, i32 0
  store i64 %6, i64* %link_hashcode3, align 8, !tbaa !32
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 2
  %8 = load i64, i64* %des_hash, align 8, !tbaa !120
  %9 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %hashcode4 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %9, i32 0, i32 2
  %des_hash5 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode4, i32 0, i32 2
  store i64 %8, i64* %des_hash5, align 8, !tbaa !116
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 1
  %10 = load i64, i64* %src_hash, align 8, !tbaa !121
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %hashcode6 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %11, i32 0, i32 2
  %src_hash7 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode6, i32 0, i32 1
  store i64 %10, i64* %src_hash7, align 8, !tbaa !117
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 3
  %12 = load i64, i64* %rend_hash, align 8, !tbaa !119
  %13 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %hashcode8 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %13, i32 0, i32 2
  %rend_hash9 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode8, i32 0, i32 3
  store i64 %12, i64* %rend_hash9, align 8, !tbaa !118
  %14 = load i32, i32* %includes_softproof.addr, align 4, !tbaa !28
  %15 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %includes_softproof10 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %15, i32 0, i32 8
  store i32 %14, i32* %includes_softproof10, align 4, !tbaa !33
  %16 = load i32, i32* %includes_devlink.addr, align 4, !tbaa !28
  %17 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %includes_devlink11 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %17, i32 0, i32 9
  store i32 %16, i32* %includes_devlink11, align 4, !tbaa !34
  %src_hash12 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 1
  %18 = load i64, i64* %src_hash12, align 8, !tbaa !121
  %des_hash13 = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 2
  %19 = load i64, i64* %des_hash13, align 8, !tbaa !120
  %cmp = icmp eq i64 %18, %19
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %20 = load i32, i32* %includes_softproof.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.else, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %includes_devlink.addr, align 4, !tbaa !28
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.14
  %22 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %22, i32 0, i32 10
  store i32 1, i32* %is_identity, align 4, !tbaa !84
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.14, %land.lhs.true, %entry
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %is_identity16 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %23, i32 0, i32 10
  store i32 0, i32* %is_identity16, align 4, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %24, i32 0, i32 11
  store i32 1, i32* %valid, align 4, !tbaa !37
  %25 = load i32, i32* %data_cs.addr, align 4, !tbaa !30
  %26 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %data_cs17 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %26, i32 0, i32 14
  store i32 %25, i32* %data_cs17, align 4, !tbaa !122
  %27 = load i32, i32* %pageneutralcolor.addr, align 4, !tbaa !28
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %28 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  call void @gsicc_mcm_set_link(%struct.gsicc_link_s* %28) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %29 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %29, i32 0, i32 7
  %30 = load i32, i32* %num_waiting, align 4, !tbaa !38
  %cmp21 = icmp sgt i32 %30, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %31, i32 0, i32 6
  %32 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !27
  %native22 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %32, i32 0, i32 1
  %call23 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native22) #5
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link.addr, align 8, !tbaa !1
  %num_waiting24 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %33, i32 0, i32 7
  %34 = load i32, i32* %num_waiting24, align 4, !tbaa !38
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %num_waiting24, align 4, !tbaa !38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock.addr, align 8, !tbaa !1
  %native25 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %35, i32 0, i32 1
  %call26 = call i32 @gp_monitor_leave(%union.gp_monitor* %native25) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_transform_named_color(float* %tint_values, %struct.gsicc_namedcolor_s* %color_names, i32 %num_names, i16* %device_values, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.cmm_profile_s* %gs_output_profile, %struct.gsicc_rendering_param_s* %rendering_params) #0 {
entry:
  %retval = alloca i32, align 4
  %tint_values.addr = alloca float*, align 8
  %color_names.addr = alloca %struct.gsicc_namedcolor_s*, align 8
  %num_names.addr = alloca i32, align 4
  %device_values.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gs_output_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %namedcolor_data = alloca %struct.gsicc_namedcolor_s*, align 8
  %num_entries = alloca i32, align 4
  %named_profile = alloca %struct.cmm_profile_s*, align 8
  %namedcolor_table = alloca %struct.gsicc_namedcolortable_s*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %lab = alloca [3 x float], align 4
  %buffptr = alloca i8*, align 8
  %buffer_count = alloca i32, align 4
  %count = alloca i32, align 4
  %code = alloca i32, align 4
  %pch = alloca i8*, align 8
  %temp_ptr = alloca i8*, align 8
  %done = alloca i32, align 4
  %curr_name_size = alloca i32, align 4
  %found_match = alloca i32, align 4
  %psrc = alloca [64 x i16], align 16
  %psrc_cm = alloca [64 x i16], align 16
  %temp_lab = alloca [3 x i16], align 2
  %psrc_temp = alloca i16*, align 8
  %temp = alloca float, align 4
  %white_lab = alloca [3 x i16], align 2
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %curr_output_profile = alloca %struct.cmm_profile_s*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %indices = alloca [64 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store float* %tint_values, float** %tint_values.addr, align 8, !tbaa !1
  store %struct.gsicc_namedcolor_s* %color_names, %struct.gsicc_namedcolor_s** %color_names.addr, align 8, !tbaa !1
  store i32 %num_names, i32* %num_names.addr, align 4, !tbaa !28
  store i16* %device_values, i16** %device_values.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %gs_output_profile, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_namedcolor_s** %namedcolor_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmm_profile_s** %named_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gsicc_namedcolortable_s** %namedcolor_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [3 x float]* %lab to i8*
  call void @llvm.lifetime.start(i64 12, i8* %7) #1
  %8 = bitcast i8** %buffptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %buffer_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %pch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %temp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %curr_name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %found_match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %17) #1
  %18 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %18) #1
  %19 = bitcast [3 x i16]* %temp_lab to i8*
  call void @llvm.lifetime.start(i64 6, i8* %19) #1
  %20 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast [3 x i16]* %white_lab to i8*
  call void @llvm.lifetime.start(i64 6, i8* %22) #1
  %23 = bitcast [3 x i16]* %white_lab to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast ([3 x i16]* @gsicc_transform_named_color.white_lab to i8*), i64 6, i32 2, i1 false)
  %24 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast %struct.cmm_profile_s** %curr_output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %26) #1
  %27 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast [64 x i32]* %indices to i8*
  call void @llvm.lifetime.start(i64 256, i8* %28) #1
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 35
  %30 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !58
  %cmp = icmp ne %struct.gsicc_manager_s* %30, null
  br i1 %cmp, label %if.then, label %if.end.343

if.then:                                          ; preds = %entry
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 35
  %32 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !58
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %32, i32 0, i32 0
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named, align 8, !tbaa !123
  %cmp2 = icmp ne %struct.cmm_profile_s* %33, null
  br i1 %cmp2, label %if.then.3, label %if.end.342

if.then.3:                                        ; preds = %if.then
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 35
  %35 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager4, align 8, !tbaa !58
  %device_named5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %35, i32 0, i32 0
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named5, align 8, !tbaa !123
  store %struct.cmm_profile_s* %36, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 14
  %38 = load i8*, i8** %buffer, align 8, !tbaa !95
  %cmp6 = icmp ne i8* %38, null
  br i1 %cmp6, label %land.lhs.true, label %if.else.174

land.lhs.true:                                    ; preds = %if.then.3
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 17
  %40 = load i8*, i8** %profile_handle, align 8, !tbaa !94
  %cmp7 = icmp eq i8* %40, null
  br i1 %cmp7, label %if.then.8, label %if.else.174

if.then.8:                                        ; preds = %land.lhs.true
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !124
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !107
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %45 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !125
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !124
  %stable_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 0
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory10, align 8, !tbaa !5
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !107
  %call = call i8* %45(%struct.gs_memory_s* %49, i32 1, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  %50 = bitcast i8* %call to %struct.gsicc_namedcolortable_s*
  store %struct.gsicc_namedcolortable_s* %50, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %51 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gsicc_namedcolortable_s* %51, null
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.8
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %buffer14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %52, i32 0, i32 14
  %53 = load i8*, i8** %buffer14, align 8, !tbaa !95
  store i8* %53, i8** %buffptr, align 8, !tbaa !1
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 11
  %55 = load i32, i32* %buffer_size, align 4, !tbaa !100
  store i32 %55, i32* %buffer_count, align 4, !tbaa !28
  %56 = load i8*, i8** %buffptr, align 8, !tbaa !1
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %num_entries) #7
  store i32 %call15, i32* %count, align 4, !tbaa !28
  %57 = load i32, i32* %num_entries, align 4, !tbaa !28
  %cmp16 = icmp ult i32 %57, 1
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %58 = load i32, i32* %count, align 4, !tbaa !28
  %cmp17 = icmp eq i32 %58, 0
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %lor.lhs.false, %if.end
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 1
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !124
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !107
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !15
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !124
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !107
  %66 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %67 = bitcast %struct.gsicc_namedcolortable_s* %66 to i8*
  call void %62(%struct.gs_memory_s* %65, i8* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  %call25 = call i32 @get_to_next_line(i8** %buffptr, i32* %buffer_count) #5
  store i32 %call25, i32* %code, align 4, !tbaa !28
  %68 = load i32, i32* %code, align 4, !tbaa !28
  %cmp26 = icmp slt i32 %68, 0
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %if.end.24
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !124
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !107
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %free_object31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %72 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object31, align 8, !tbaa !15
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 1
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !124
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !107
  %76 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %77 = bitcast %struct.gsicc_namedcolortable_s* %76 to i8*
  call void %72(%struct.gs_memory_s* %75, i8* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.24
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 1
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !124
  %stable_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 0
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory36, align 8, !tbaa !5
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !107
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %alloc_byte_array39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 10
  %82 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array39, align 8, !tbaa !125
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %83, i32 0, i32 1
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !124
  %stable_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 0
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory41, align 8, !tbaa !5
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !107
  %87 = load i32, i32* %num_entries, align 4, !tbaa !28
  %call43 = call i8* %82(%struct.gs_memory_s* %86, i32 %87, i32 24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  %88 = bitcast i8* %call43 to %struct.gsicc_namedcolor_s*
  store %struct.gsicc_namedcolor_s* %88, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %89 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %cmp44 = icmp eq %struct.gsicc_namedcolor_s* %89, null
  br i1 %cmp44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.34
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %90, i32 0, i32 1
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !124
  %non_gc_memory47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory47, align 8, !tbaa !107
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %free_object49 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object49, align 8, !tbaa !15
  %94 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %94, i32 0, i32 1
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !124
  %non_gc_memory51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory51, align 8, !tbaa !107
  %97 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %98 = bitcast %struct.gsicc_namedcolortable_s* %97 to i8*
  call void %93(%struct.gs_memory_s* %96, i8* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.34
  %99 = load i32, i32* %num_entries, align 4, !tbaa !28
  %100 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %number_entries = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %100, i32 0, i32 1
  store i32 %99, i32* %number_entries, align 4, !tbaa !126
  %101 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %102 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %named_color = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %102, i32 0, i32 0
  store %struct.gsicc_namedcolor_s* %101, %struct.gsicc_namedcolor_s** %named_color, align 8, !tbaa !128
  store i32 0, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc.170, %if.end.52
  %103 = load i32, i32* %k, align 4, !tbaa !28
  %104 = load i32, i32* %num_entries, align 4, !tbaa !28
  %cmp53 = icmp ult i32 %103, %104
  br i1 %cmp53, label %for.body, label %for.end.172

for.body:                                         ; preds = %for.cond
  %105 = load i32, i32* %k, align 4, !tbaa !28
  %cmp54 = icmp eq i32 %105, 0
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %for.body
  %106 = load i8*, i8** %buffptr, align 8, !tbaa !1
  %call56 = call i8* @strtok(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call56, i8** %pch, align 8, !tbaa !1
  br label %if.end.58

if.else:                                          ; preds = %for.body
  %call57 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call57, i8** %pch, align 8, !tbaa !1
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.55
  %107 = load i8*, i8** %pch, align 8, !tbaa !1
  store i8* %107, i8** %temp_ptr, align 8, !tbaa !1
  store i32 0, i32* %done, align 4, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end.58
  %108 = load i32, i32* %done, align 4, !tbaa !28
  %tobool = icmp ne i32 %108, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %109 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !30
  %conv = sext i8 %110 to i32
  %cmp59 = icmp eq i32 %conv, 13
  br i1 %cmp59, label %if.then.65, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %while.body
  %111 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !30
  %conv62 = sext i8 %112 to i32
  %cmp63 = icmp eq i32 %conv62, 10
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %lor.lhs.false.61, %while.body
  %113 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr, i8** %temp_ptr, align 8, !tbaa !1
  br label %if.end.67

if.else.66:                                       ; preds = %lor.lhs.false.61
  store i32 1, i32* %done, align 4, !tbaa !28
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %114 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %call68 = call i64 @strlen(i8* %114) #6
  %conv69 = trunc i64 %call68 to i32
  store i32 %conv69, i32* %curr_name_size, align 4, !tbaa !28
  %115 = load i32, i32* %curr_name_size, align 4, !tbaa !28
  %116 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom = sext i32 %116 to i64
  %117 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %117, i64 %idxprom
  %name_size = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx, i32 0, i32 1
  store i32 %115, i32* %name_size, align 4, !tbaa !129
  %118 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %118, i32 0, i32 1
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !124
  %stable_memory71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 0
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory71, align 8, !tbaa !5
  %non_gc_memory72 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %120, i32 0, i32 3
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory72, align 8, !tbaa !107
  %procs73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 1
  %alloc_byte_array74 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs73, i32 0, i32 10
  %122 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array74, align 8, !tbaa !125
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %123, i32 0, i32 1
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !124
  %stable_memory76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 0
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory76, align 8, !tbaa !5
  %non_gc_memory77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory77, align 8, !tbaa !107
  %127 = load i32, i32* %curr_name_size, align 4, !tbaa !28
  %add = add nsw i32 %127, 1
  %call78 = call i8* %122(%struct.gs_memory_s* %126, i32 1, i32 %add, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  %128 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom79 = sext i32 %128 to i64
  %129 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %129, i64 %idxprom79
  %colorant_name = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx80, i32 0, i32 0
  store i8* %call78, i8** %colorant_name, align 8, !tbaa !131
  %130 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom81 = sext i32 %130 to i64
  %131 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %131, i64 %idxprom81
  %colorant_name83 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx82, i32 0, i32 0
  %132 = load i8*, i8** %colorant_name83, align 8, !tbaa !131
  %cmp84 = icmp eq i8* %132, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %while.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %while.end
  %133 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom88 = sext i32 %133 to i64
  %134 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %134, i64 %idxprom88
  %colorant_name90 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx89, i32 0, i32 0
  %135 = load i8*, i8** %colorant_name90, align 8, !tbaa !131
  %136 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %137 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom91 = sext i32 %137 to i64
  %138 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %138, i64 %idxprom91
  %name_size93 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx92, i32 0, i32 1
  %139 = load i32, i32* %name_size93, align 4, !tbaa !129
  %add94 = add i32 %139, 1
  %conv95 = zext i32 %add94 to i64
  %call96 = call i8* @strncpy(i8* %135, i8* %136, i64 %conv95) #7
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %if.end.87
  %140 = load i32, i32* %j, align 4, !tbaa !28
  %cmp98 = icmp slt i32 %140, 3
  br i1 %cmp98, label %for.body.100, label %for.end

for.body.100:                                     ; preds = %for.cond.97
  %call101 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call101, i8** %pch, align 8, !tbaa !1
  %141 = load i8*, i8** %pch, align 8, !tbaa !1
  %142 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom102 = sext i32 %142 to i64
  %arrayidx103 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom102
  %call104 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), float* %arrayidx103) #7
  store i32 %call104, i32* %count, align 4, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body.100
  %143 = load i32, i32* %j, align 4, !tbaa !28
  %inc = add nsw i32 %143, 1
  store i32 %inc, i32* %j, align 4, !tbaa !28
  br label %for.cond.97

for.end:                                          ; preds = %for.cond.97
  %arrayidx105 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 0
  %144 = load float, float* %arrayidx105, align 4, !tbaa !132
  %mul = fmul float %144, 6.553500e+04
  %conv106 = fpext float %mul to double
  %div = fdiv double %conv106, 1.000000e+02
  %conv107 = fptrunc double %div to float
  %arrayidx108 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 0
  store float %conv107, float* %arrayidx108, align 4, !tbaa !132
  %arrayidx109 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 1
  %145 = load float, float* %arrayidx109, align 4, !tbaa !132
  %conv110 = fpext float %145 to double
  %add111 = fadd double %conv110, 1.280000e+02
  %mul112 = fmul double %add111, 6.553500e+04
  %div113 = fdiv double %mul112, 2.550000e+02
  %conv114 = fptrunc double %div113 to float
  %arrayidx115 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 1
  store float %conv114, float* %arrayidx115, align 4, !tbaa !132
  %arrayidx116 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 2
  %146 = load float, float* %arrayidx116, align 4, !tbaa !132
  %conv117 = fpext float %146 to double
  %add118 = fadd double %conv117, 1.280000e+02
  %mul119 = fmul double %add118, 6.553500e+04
  %div120 = fdiv double %mul119, 2.550000e+02
  %conv121 = fptrunc double %div120 to float
  %arrayidx122 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 2
  store float %conv121, float* %arrayidx122, align 4, !tbaa !132
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.151, %for.end
  %147 = load i32, i32* %j, align 4, !tbaa !28
  %cmp124 = icmp slt i32 %147, 3
  br i1 %cmp124, label %for.body.126, label %for.end.153

for.body.126:                                     ; preds = %for.cond.123
  %148 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom127 = sext i32 %148 to i64
  %arrayidx128 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom127
  %149 = load float, float* %arrayidx128, align 4, !tbaa !132
  %cmp129 = fcmp ogt float %149, 6.553500e+04
  br i1 %cmp129, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %for.body.126
  %150 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom132 = sext i32 %150 to i64
  %arrayidx133 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom132
  store float 6.553500e+04, float* %arrayidx133, align 4, !tbaa !132
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %for.body.126
  %151 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom135 = sext i32 %151 to i64
  %arrayidx136 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom135
  %152 = load float, float* %arrayidx136, align 4, !tbaa !132
  %cmp137 = fcmp olt float %152, 0.000000e+00
  br i1 %cmp137, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.end.134
  %153 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom140 = sext i32 %153 to i64
  %arrayidx141 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom140
  store float 0.000000e+00, float* %arrayidx141, align 4, !tbaa !132
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.end.134
  %154 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom143 = sext i32 %154 to i64
  %arrayidx144 = getelementptr inbounds [3 x float], [3 x float]* %lab, i32 0, i64 %idxprom143
  %155 = load float, float* %arrayidx144, align 4, !tbaa !132
  %conv145 = fptoui float %155 to i16
  %156 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom146 = sext i32 %156 to i64
  %157 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom147 = sext i32 %157 to i64
  %158 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %158, i64 %idxprom147
  %lab149 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx148, i32 0, i32 2
  %arrayidx150 = getelementptr inbounds [3 x i16], [3 x i16]* %lab149, i32 0, i64 %idxprom146
  store i16 %conv145, i16* %arrayidx150, align 2, !tbaa !133
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.142
  %159 = load i32, i32* %j, align 4, !tbaa !28
  %inc152 = add nsw i32 %159, 1
  store i32 %inc152, i32* %j, align 4, !tbaa !28
  br label %for.cond.123

for.end.153:                                      ; preds = %for.cond.123
  %160 = load i32, i32* %code, align 4, !tbaa !28
  %cmp154 = icmp slt i32 %160, 0
  br i1 %cmp154, label %if.then.156, label %if.end.169

if.then.156:                                      ; preds = %for.end.153
  %161 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %161, i32 0, i32 1
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory157, align 8, !tbaa !124
  %non_gc_memory158 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 3
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory158, align 8, !tbaa !107
  %procs159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %163, i32 0, i32 1
  %free_object160 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs159, i32 0, i32 2
  %164 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object160, align 8, !tbaa !15
  %165 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %165, i32 0, i32 1
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !124
  %non_gc_memory162 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %166, i32 0, i32 3
  %167 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory162, align 8, !tbaa !107
  %168 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %169 = bitcast %struct.gsicc_namedcolortable_s* %168 to i8*
  call void %164(%struct.gs_memory_s* %167, i8* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  %170 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %170, i32 0, i32 1
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory163, align 8, !tbaa !124
  %non_gc_memory164 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 3
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory164, align 8, !tbaa !107
  %procs165 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 1
  %free_object166 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs165, i32 0, i32 2
  %173 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object166, align 8, !tbaa !15
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory167 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %174, i32 0, i32 1
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory167, align 8, !tbaa !124
  %non_gc_memory168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 3
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory168, align 8, !tbaa !107
  %177 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %namedcolor_data, align 8, !tbaa !1
  %178 = bitcast %struct.gsicc_namedcolor_s* %177 to i8*
  call void %173(%struct.gs_memory_s* %176, i8* %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %for.end.153
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %179 = load i32, i32* %k, align 4, !tbaa !28
  %inc171 = add nsw i32 %179, 1
  store i32 %inc171, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.end.172:                                      ; preds = %for.cond
  %180 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %181 = bitcast %struct.gsicc_namedcolortable_s* %180 to i8*
  %182 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %profile_handle173 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %182, i32 0, i32 17
  store i8* %181, i8** %profile_handle173, align 8, !tbaa !94
  br label %if.end.183

if.else.174:                                      ; preds = %land.lhs.true, %if.then.3
  %183 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %profile_handle175 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %183, i32 0, i32 17
  %184 = load i8*, i8** %profile_handle175, align 8, !tbaa !94
  %cmp176 = icmp ne i8* %184, null
  br i1 %cmp176, label %if.then.178, label %if.else.181

if.then.178:                                      ; preds = %if.else.174
  %185 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %named_profile, align 8, !tbaa !1
  %profile_handle179 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %185, i32 0, i32 17
  %186 = load i8*, i8** %profile_handle179, align 8, !tbaa !94
  %187 = bitcast i8* %186 to %struct.gsicc_namedcolortable_s*
  store %struct.gsicc_namedcolortable_s* %187, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %188 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %number_entries180 = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %188, i32 0, i32 1
  %189 = load i32, i32* %number_entries180, align 4, !tbaa !126
  store i32 %189, i32* %num_entries, align 4, !tbaa !28
  br label %if.end.182

if.else.181:                                      ; preds = %if.else.174
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.182:                                       ; preds = %if.then.178
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %for.end.172
  store i32 0, i32* %n, align 4, !tbaa !28
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.228, %if.end.183
  %190 = load i32, i32* %n, align 4, !tbaa !28
  %191 = load i32, i32* %num_names.addr, align 4, !tbaa !28
  %cmp185 = icmp ult i32 %190, %191
  br i1 %cmp185, label %for.body.187, label %for.end.230

for.body.187:                                     ; preds = %for.cond.184
  store i32 0, i32* %found_match, align 4, !tbaa !28
  store i32 0, i32* %k, align 4, !tbaa !28
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.219, %for.body.187
  %192 = load i32, i32* %k, align 4, !tbaa !28
  %193 = load i32, i32* %num_entries, align 4, !tbaa !28
  %cmp189 = icmp ult i32 %192, %193
  br i1 %cmp189, label %for.body.191, label %for.end.221

for.body.191:                                     ; preds = %for.cond.188
  %194 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom192 = sext i32 %194 to i64
  %195 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %color_names.addr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %195, i64 %idxprom192
  %name_size194 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx193, i32 0, i32 1
  %196 = load i32, i32* %name_size194, align 4, !tbaa !129
  %197 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom195 = sext i32 %197 to i64
  %198 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %named_color196 = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %198, i32 0, i32 0
  %199 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color196, align 8, !tbaa !128
  %arrayidx197 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %199, i64 %idxprom195
  %name_size198 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx197, i32 0, i32 1
  %200 = load i32, i32* %name_size198, align 4, !tbaa !129
  %cmp199 = icmp eq i32 %196, %200
  br i1 %cmp199, label %if.then.201, label %if.end.218

if.then.201:                                      ; preds = %for.body.191
  %201 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom202 = sext i32 %201 to i64
  %202 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %named_color203 = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %202, i32 0, i32 0
  %203 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color203, align 8, !tbaa !128
  %arrayidx204 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %203, i64 %idxprom202
  %colorant_name205 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx204, i32 0, i32 0
  %204 = load i8*, i8** %colorant_name205, align 8, !tbaa !131
  %205 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom206 = sext i32 %205 to i64
  %206 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %color_names.addr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %206, i64 %idxprom206
  %colorant_name208 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx207, i32 0, i32 0
  %207 = load i8*, i8** %colorant_name208, align 8, !tbaa !131
  %208 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom209 = sext i32 %208 to i64
  %209 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %color_names.addr, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %209, i64 %idxprom209
  %name_size211 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx210, i32 0, i32 1
  %210 = load i32, i32* %name_size211, align 4, !tbaa !129
  %conv212 = zext i32 %210 to i64
  %call213 = call i32 @strncmp(i8* %204, i8* %207, i64 %conv212) #6
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.then.201
  store i32 1, i32* %found_match, align 4, !tbaa !28
  br label %for.end.221

if.end.217:                                       ; preds = %if.then.201
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.body.191
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %211 = load i32, i32* %k, align 4, !tbaa !28
  %inc220 = add nsw i32 %211, 1
  store i32 %inc220, i32* %k, align 4, !tbaa !28
  br label %for.cond.188

for.end.221:                                      ; preds = %if.then.216, %for.cond.188
  %212 = load i32, i32* %found_match, align 4, !tbaa !28
  %tobool222 = icmp ne i32 %212, 0
  br i1 %tobool222, label %if.then.223, label %if.else.226

if.then.223:                                      ; preds = %for.end.221
  %213 = load i32, i32* %k, align 4, !tbaa !28
  %214 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom224 = sext i32 %214 to i64
  %arrayidx225 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom224
  store i32 %213, i32* %arrayidx225, align 4, !tbaa !28
  br label %if.end.227

if.else.226:                                      ; preds = %for.end.221
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.227:                                       ; preds = %if.then.223
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %215 = load i32, i32* %n, align 4, !tbaa !28
  %inc229 = add nsw i32 %215, 1
  store i32 %inc229, i32* %n, align 4, !tbaa !28
  br label %for.cond.184

for.end.230:                                      ; preds = %for.cond.184
  store i32 0, i32* %n, align 4, !tbaa !28
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.310, %for.end.230
  %216 = load i32, i32* %n, align 4, !tbaa !28
  %217 = load i32, i32* %num_names.addr, align 4, !tbaa !28
  %cmp232 = icmp ult i32 %216, %217
  br i1 %cmp232, label %for.body.234, label %for.end.312

for.body.234:                                     ; preds = %for.cond.231
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.265, %for.body.234
  %218 = load i32, i32* %j, align 4, !tbaa !28
  %cmp236 = icmp slt i32 %218, 3
  br i1 %cmp236, label %for.body.238, label %for.end.267

for.body.238:                                     ; preds = %for.cond.235
  %219 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom239 = sext i32 %219 to i64
  %220 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom240 = sext i32 %220 to i64
  %arrayidx241 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom240
  %221 = load i32, i32* %arrayidx241, align 4, !tbaa !28
  %idxprom242 = sext i32 %221 to i64
  %222 = load %struct.gsicc_namedcolortable_s*, %struct.gsicc_namedcolortable_s** %namedcolor_table, align 8, !tbaa !1
  %named_color243 = getelementptr inbounds %struct.gsicc_namedcolortable_s, %struct.gsicc_namedcolortable_s* %222, i32 0, i32 0
  %223 = load %struct.gsicc_namedcolor_s*, %struct.gsicc_namedcolor_s** %named_color243, align 8, !tbaa !128
  %arrayidx244 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %223, i64 %idxprom242
  %lab245 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %arrayidx244, i32 0, i32 2
  %arrayidx246 = getelementptr inbounds [3 x i16], [3 x i16]* %lab245, i32 0, i64 %idxprom239
  %224 = load i16, i16* %arrayidx246, align 2, !tbaa !133
  %conv247 = uitofp i16 %224 to float
  %225 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom248 = sext i32 %225 to i64
  %226 = load float*, float** %tint_values.addr, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds float, float* %226, i64 %idxprom248
  %227 = load float, float* %arrayidx249, align 4, !tbaa !132
  %mul250 = fmul float %conv247, %227
  %conv251 = fpext float %mul250 to double
  %228 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom252 = sext i32 %228 to i64
  %arrayidx253 = getelementptr inbounds [3 x i16], [3 x i16]* %white_lab, i32 0, i64 %idxprom252
  %229 = load i16, i16* %arrayidx253, align 2, !tbaa !133
  %conv254 = uitofp i16 %229 to float
  %conv255 = fpext float %conv254 to double
  %230 = load i32, i32* %n, align 4, !tbaa !28
  %idxprom256 = sext i32 %230 to i64
  %231 = load float*, float** %tint_values.addr, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds float, float* %231, i64 %idxprom256
  %232 = load float, float* %arrayidx257, align 4, !tbaa !132
  %conv258 = fpext float %232 to double
  %sub = fsub double 1.000000e+00, %conv258
  %mul259 = fmul double %conv255, %sub
  %add260 = fadd double %conv251, %mul259
  %conv261 = fptrunc double %add260 to float
  store float %conv261, float* %temp, align 4, !tbaa !132
  %233 = load float, float* %temp, align 4, !tbaa !132
  %conv262 = fptoui float %233 to i16
  %234 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom263 = sext i32 %234 to i64
  %arrayidx264 = getelementptr inbounds [3 x i16], [3 x i16]* %temp_lab, i32 0, i64 %idxprom263
  store i16 %conv262, i16* %arrayidx264, align 2, !tbaa !133
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.body.238
  %235 = load i32, i32* %j, align 4, !tbaa !28
  %inc266 = add nsw i32 %235, 1
  store i32 %inc266, i32* %j, align 4, !tbaa !28
  br label %for.cond.235

for.end.267:                                      ; preds = %for.cond.235
  %236 = load i32, i32* %n, align 4, !tbaa !28
  %cmp268 = icmp eq i32 %236, 0
  br i1 %cmp268, label %if.then.270, label %if.else.282

if.then.270:                                      ; preds = %for.end.267
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.279, %if.then.270
  %237 = load i32, i32* %j, align 4, !tbaa !28
  %cmp272 = icmp slt i32 %237, 3
  br i1 %cmp272, label %for.body.274, label %for.end.281

for.body.274:                                     ; preds = %for.cond.271
  %238 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom275 = sext i32 %238 to i64
  %arrayidx276 = getelementptr inbounds [3 x i16], [3 x i16]* %temp_lab, i32 0, i64 %idxprom275
  %239 = load i16, i16* %arrayidx276, align 2, !tbaa !133
  %240 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom277 = sext i32 %240 to i64
  %arrayidx278 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 %idxprom277
  store i16 %239, i16* %arrayidx278, align 2, !tbaa !133
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.274
  %241 = load i32, i32* %j, align 4, !tbaa !28
  %inc280 = add nsw i32 %241, 1
  store i32 %inc280, i32* %j, align 4, !tbaa !28
  br label %for.cond.271

for.end.281:                                      ; preds = %for.cond.271
  br label %if.end.309

if.else.282:                                      ; preds = %for.end.267
  %arrayidx283 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  %242 = load i16, i16* %arrayidx283, align 2, !tbaa !133
  %conv284 = zext i16 %242 to i32
  %arrayidx285 = getelementptr inbounds [3 x i16], [3 x i16]* %temp_lab, i32 0, i64 0
  %243 = load i16, i16* %arrayidx285, align 2, !tbaa !133
  %conv286 = zext i16 %243 to i32
  %mul287 = mul nsw i32 %conv284, %conv286
  %arrayidx288 = getelementptr inbounds [3 x i16], [3 x i16]* %white_lab, i32 0, i64 0
  %244 = load i16, i16* %arrayidx288, align 2, !tbaa !133
  %conv289 = zext i16 %244 to i32
  %div290 = sdiv i32 %mul287, %conv289
  %conv291 = trunc i32 %div290 to i16
  %arrayidx292 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16 %conv291, i16* %arrayidx292, align 2, !tbaa !133
  %arrayidx293 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 1
  %245 = load i16, i16* %arrayidx293, align 2, !tbaa !133
  %conv294 = zext i16 %245 to i32
  %arrayidx295 = getelementptr inbounds [3 x i16], [3 x i16]* %temp_lab, i32 0, i64 1
  %246 = load i16, i16* %arrayidx295, align 2, !tbaa !133
  %conv296 = zext i16 %246 to i32
  %add297 = add nsw i32 %conv294, %conv296
  %div298 = sdiv i32 %add297, 2
  %conv299 = trunc i32 %div298 to i16
  %arrayidx300 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 1
  store i16 %conv299, i16* %arrayidx300, align 2, !tbaa !133
  %arrayidx301 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 2
  %247 = load i16, i16* %arrayidx301, align 2, !tbaa !133
  %conv302 = zext i16 %247 to i32
  %arrayidx303 = getelementptr inbounds [3 x i16], [3 x i16]* %temp_lab, i32 0, i64 2
  %248 = load i16, i16* %arrayidx303, align 2, !tbaa !133
  %conv304 = zext i16 %248 to i32
  %add305 = add nsw i32 %conv302, %conv304
  %div306 = sdiv i32 %add305, 2
  %conv307 = trunc i32 %div306 to i16
  %arrayidx308 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 2
  store i16 %conv307, i16* %arrayidx308, align 2, !tbaa !133
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.282, %for.end.281
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %249 = load i32, i32* %n, align 4, !tbaa !28
  %inc311 = add nsw i32 %249, 1
  store i32 %inc311, i32* %n, align 4, !tbaa !28
  br label %for.cond.231

for.end.312:                                      ; preds = %for.cond.231
  %250 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  %cmp313 = icmp ne %struct.cmm_profile_s* %250, null
  br i1 %cmp313, label %if.then.315, label %if.else.316

if.then.315:                                      ; preds = %for.end.312
  %251 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %gs_output_profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %251, %struct.cmm_profile_s** %curr_output_profile, align 8, !tbaa !1
  br label %if.end.319

if.else.316:                                      ; preds = %for.end.312
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs317 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %252, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs317, i32 0, i32 67
  %253 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !60
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call318 = call i32 %253(%struct.gx_device_s* %254, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call318, i32* %code, align 4, !tbaa !28
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %255, i32 0, i32 40
  %256 = load i32, i32* %graphics_type_tag, align 4, !tbaa !76
  %257 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %256, %struct.cmm_dev_profile_s* %257, %struct.cmm_profile_s** %curr_output_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.316, %if.then.315
  %258 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %260 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager320 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %260, i32 0, i32 35
  %261 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager320, align 8, !tbaa !58
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %261, i32 0, i32 4
  %262 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !134
  %263 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_output_profile, align 8, !tbaa !1
  %264 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8, !tbaa !1
  %265 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory321 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %265, i32 0, i32 1
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory321, align 8, !tbaa !124
  %call322 = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %258, %struct.gx_device_s* %259, %struct.cmm_profile_s* %262, %struct.cmm_profile_s* %263, %struct.gsicc_rendering_param_s* %264, %struct.gs_memory_s* %266, i32 0) #5
  store %struct.gsicc_link_s* %call322, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %267 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %267, i32 0, i32 10
  %268 = load i32, i32* %is_identity, align 4, !tbaa !84
  %tobool323 = icmp ne i32 %268, 0
  br i1 %tobool323, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %if.end.319
  %arrayidx325 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i64 0
  store i16* %arrayidx325, i16** %psrc_temp, align 8, !tbaa !1
  br label %if.end.329

if.else.326:                                      ; preds = %if.end.319
  %arrayidx327 = getelementptr inbounds [64 x i16], [64 x i16]* %psrc_cm, i32 0, i64 0
  store i16* %arrayidx327, i16** %psrc_temp, align 8, !tbaa !1
  %269 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %procs328 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %269, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs328, i32 0, i32 1
  %270 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !115
  %271 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %272 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %psrc, i32 0, i32 0
  %273 = bitcast i16* %arraydecay to i8*
  %274 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %275 = bitcast i16* %274 to i8*
  call void %270(%struct.gx_device_s* %271, %struct.gsicc_link_s* %272, i8* %273, i8* %275, i32 2) #5
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.324
  %276 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !1
  call void @gsicc_release_link(%struct.gsicc_link_s* %276) #5
  store i32 0, i32* %k, align 4, !tbaa !28
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.339, %if.end.329
  %277 = load i32, i32* %k, align 4, !tbaa !28
  %278 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_output_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %278, i32 0, i32 0
  %279 = load i8, i8* %num_comps, align 1, !tbaa !83
  %conv331 = zext i8 %279 to i32
  %cmp332 = icmp slt i32 %277, %conv331
  br i1 %cmp332, label %for.body.334, label %for.end.341

for.body.334:                                     ; preds = %for.cond.330
  %280 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom335 = sext i32 %280 to i64
  %281 = load i16*, i16** %psrc_temp, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i16, i16* %281, i64 %idxprom335
  %282 = load i16, i16* %arrayidx336, align 2, !tbaa !133
  %283 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom337 = sext i32 %283 to i64
  %284 = load i16*, i16** %device_values.addr, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds i16, i16* %284, i64 %idxprom337
  store i16 %282, i16* %arrayidx338, align 2, !tbaa !133
  br label %for.inc.339

for.inc.339:                                      ; preds = %for.body.334
  %285 = load i32, i32* %k, align 4, !tbaa !28
  %inc340 = add nsw i32 %285, 1
  store i32 %inc340, i32* %k, align 4, !tbaa !28
  br label %for.cond.330

for.end.341:                                      ; preds = %for.cond.330
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.342:                                       ; preds = %if.then
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.343, %for.end.341, %if.else.226, %if.else.181, %if.then.156, %if.then.86, %if.then.45, %if.then.27, %if.then.18, %if.then.13
  %286 = bitcast [64 x i32]* %indices to i8*
  call void @llvm.lifetime.end(i64 256, i8* %286) #1
  %287 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %288) #1
  %289 = bitcast %struct.cmm_profile_s** %curr_output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast [3 x i16]* %white_lab to i8*
  call void @llvm.lifetime.end(i64 6, i8* %291) #1
  %292 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i16** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast [3 x i16]* %temp_lab to i8*
  call void @llvm.lifetime.end(i64 6, i8* %294) #1
  %295 = bitcast [64 x i16]* %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %295) #1
  %296 = bitcast [64 x i16]* %psrc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %296) #1
  %297 = bitcast i32* %found_match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %curr_name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i8** %temp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i8** %pch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %buffer_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i8** %buffptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast [3 x float]* %lab to i8*
  call void @llvm.lifetime.end(i64 12, i8* %306) #1
  %307 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast %struct.gsicc_namedcolortable_s** %namedcolor_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.cmm_profile_s** %named_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast %struct.gsicc_namedcolor_s** %namedcolor_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = load i32, i32* %retval
  ret i32 %314
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @get_to_next_line(i8** %buffptr, i32* %buffer_count) #0 {
entry:
  %retval = alloca i32, align 4
  %buffptr.addr = alloca i8**, align 8
  %buffer_count.addr = alloca i32*, align 8
  store i8** %buffptr, i8*** %buffptr.addr, align 8, !tbaa !1
  store i32* %buffer_count, i32** %buffer_count.addr, align 8, !tbaa !1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.7
  %0 = load i8**, i8*** %buffptr.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !30
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 59
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i8**, i8*** %buffptr.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %3, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8, !tbaa !1
  %5 = load i32*, i32** %buffer_count.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !28
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %5, align 4, !tbaa !28
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %7 = load i8**, i8*** %buffptr.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr2, i8** %7, align 8, !tbaa !1
  %9 = load i32*, i32** %buffer_count.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !28
  %dec3 = add nsw i32 %10, -1
  store i32 %dec3, i32* %9, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load i32*, i32** %buffer_count.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !28
  %cmp4 = icmp sle i32 %12, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %while.body

return:                                           ; preds = %if.then.6, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gsicc_release_link(%struct.gsicc_link_s* %icclink) #0 {
entry:
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %icc_link_cache = alloca %struct.gsicc_link_cache_s*, align 8
  %curr = alloca %struct.gsicc_link_s*, align 8
  %prev = alloca %struct.gsicc_link_s*, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %icc_link_cache1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 3
  %2 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache1, align 8, !tbaa !108
  store %struct.gsicc_link_cache_s* %2, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %3 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %3, i32 0, i32 4
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !9
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %ref_count = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %5, i32 0, i32 4
  %6 = load i32, i32* %ref_count, align 4, !tbaa !36
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %ref_count, align 4, !tbaa !36
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %9, i32 0, i32 0
  %10 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !20
  store %struct.gsicc_link_s* %10, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %12 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gsicc_link_s* %11, %12
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %13, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %14 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %14, i32 0, i32 5
  %15 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !35
  store %struct.gsicc_link_s* %15, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gsicc_link_s* %16, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.end
  %17 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %17, i32 0, i32 5
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next5, align 8, !tbaa !35
  %19 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head6 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %19, i32 0, i32 0
  store %struct.gsicc_link_s* %18, %struct.gsicc_link_s** %head6, align 8, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %while.end
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %20, i32 0, i32 5
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next7, align 8, !tbaa !35
  %22 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %22, i32 0, i32 5
  store %struct.gsicc_link_s* %21, %struct.gsicc_link_s** %next8, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %23 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head9 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %23, i32 0, i32 0
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head9, align 8, !tbaa !20
  store %struct.gsicc_link_s* %24, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.14, %if.end
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gsicc_link_s* %25, null
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.10
  %26 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %ref_count12 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %26, i32 0, i32 4
  %27 = load i32, i32* %ref_count12, align 4, !tbaa !36
  %cmp13 = icmp sgt i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.10
  %28 = phi i1 [ false, %while.cond.10 ], [ %cmp13, %land.rhs ]
  br i1 %28, label %while.body.14, label %while.end.16

while.body.14:                                    ; preds = %land.end
  %29 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %29, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %30 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %30, i32 0, i32 5
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next15, align 8, !tbaa !35
  store %struct.gsicc_link_s* %31, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond.10

while.end.16:                                     ; preds = %land.end
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gsicc_link_s* %32, null
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %while.end.16
  %33 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %34 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head19 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %34, i32 0, i32 0
  store %struct.gsicc_link_s* %33, %struct.gsicc_link_s** %head19, align 8, !tbaa !20
  %35 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %head20 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %35, i32 0, i32 0
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head20, align 8, !tbaa !20
  %next21 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %36, i32 0, i32 5
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next21, align 8, !tbaa !35
  %38 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %38, i32 0, i32 5
  store %struct.gsicc_link_s* %37, %struct.gsicc_link_s** %next22, align 8, !tbaa !35
  br label %if.end.26

if.else.23:                                       ; preds = %while.end.16
  %39 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %40 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %prev, align 8, !tbaa !1
  %next24 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %40, i32 0, i32 5
  store %struct.gsicc_link_s* %39, %struct.gsicc_link_s** %next24, align 8, !tbaa !35
  %41 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %next25 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %42, i32 0, i32 5
  store %struct.gsicc_link_s* %41, %struct.gsicc_link_s** %next25, align 8, !tbaa !35
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.18
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.30, %if.end.26
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %icc_link_cache28 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %43, i32 0, i32 3
  %44 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache28, align 8, !tbaa !108
  %num_waiting = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %44, i32 0, i32 6
  %45 = load i32, i32* %num_waiting, align 4, !tbaa !16
  %cmp29 = icmp sgt i32 %45, 0
  br i1 %cmp29, label %while.body.30, label %while.end.37

while.body.30:                                    ; preds = %while.cond.27
  %46 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %icc_link_cache31 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %46, i32 0, i32 3
  %47 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache31, align 8, !tbaa !108
  %wait = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %47, i32 0, i32 5
  %48 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !14
  %native32 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %48, i32 0, i32 1
  %call33 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native32) #5
  %49 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %icc_link_cache34 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %49, i32 0, i32 3
  %50 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache34, align 8, !tbaa !108
  %num_waiting35 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %50, i32 0, i32 6
  %51 = load i32, i32* %num_waiting35, align 4, !tbaa !16
  %dec36 = add nsw i32 %51, -1
  store i32 %dec36, i32* %num_waiting35, align 4, !tbaa !16
  br label %while.cond.27

while.end.37:                                     ; preds = %while.cond.27
  %52 = bitcast %struct.gsicc_link_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.37, %entry
  %54 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !1
  %lock39 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %54, i32 0, i32 4
  %55 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock39, align 8, !tbaa !9
  %native40 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %55, i32 0, i32 1
  %call41 = call i32 @gp_monitor_leave(%union.gp_monitor* %native40) #5
  %56 = bitcast %struct.gsicc_link_cache_s** %icc_link_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #2

; Function Attrs: nounwind uwtable
define void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %buffer_desc, i8 zeroext %num_chan, i8 zeroext %bytes_per_chan, i32 %has_alpha, i32 %alpha_first, i32 %is_planar, i32 %plane_stride, i32 %row_stride, i32 %num_rows, i32 %pixels_per_row) #0 {
entry:
  %buffer_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %num_chan.addr = alloca i8, align 1
  %bytes_per_chan.addr = alloca i8, align 1
  %has_alpha.addr = alloca i32, align 4
  %alpha_first.addr = alloca i32, align 4
  %is_planar.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %pixels_per_row.addr = alloca i32, align 4
  store %struct.gsicc_bufferdesc_s* %buffer_desc, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  store i8 %num_chan, i8* %num_chan.addr, align 1, !tbaa !30
  store i8 %bytes_per_chan, i8* %bytes_per_chan.addr, align 1, !tbaa !30
  store i32 %has_alpha, i32* %has_alpha.addr, align 4, !tbaa !28
  store i32 %alpha_first, i32* %alpha_first.addr, align 4, !tbaa !28
  store i32 %is_planar, i32* %is_planar.addr, align 4, !tbaa !28
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !28
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !28
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !28
  store i32 %pixels_per_row, i32* %pixels_per_row.addr, align 4, !tbaa !28
  %0 = load i8, i8* %num_chan.addr, align 1, !tbaa !30
  %1 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %num_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %1, i32 0, i32 0
  store i8 %0, i8* %num_chan1, align 1, !tbaa !135
  %2 = load i8, i8* %bytes_per_chan.addr, align 1, !tbaa !30
  %3 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %bytes_per_chan2 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %3, i32 0, i32 1
  store i8 %2, i8* %bytes_per_chan2, align 1, !tbaa !137
  %4 = load i32, i32* %has_alpha.addr, align 4, !tbaa !28
  %5 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %has_alpha3 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %5, i32 0, i32 2
  store i32 %4, i32* %has_alpha3, align 4, !tbaa !138
  %6 = load i32, i32* %alpha_first.addr, align 4, !tbaa !28
  %7 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %alpha_first4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %7, i32 0, i32 3
  store i32 %6, i32* %alpha_first4, align 4, !tbaa !139
  %8 = load i32, i32* %is_planar.addr, align 4, !tbaa !28
  %9 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %is_planar5 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %9, i32 0, i32 5
  store i32 %8, i32* %is_planar5, align 4, !tbaa !140
  %10 = load i32, i32* %plane_stride.addr, align 4, !tbaa !28
  %11 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %plane_stride6 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %11, i32 0, i32 6
  store i32 %10, i32* %plane_stride6, align 4, !tbaa !141
  %12 = load i32, i32* %row_stride.addr, align 4, !tbaa !28
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %row_stride7 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %13, i32 0, i32 7
  store i32 %12, i32* %row_stride7, align 4, !tbaa !142
  %14 = load i32, i32* %num_rows.addr, align 4, !tbaa !28
  %15 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %num_rows8 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %15, i32 0, i32 8
  store i32 %14, i32* %num_rows8, align 4, !tbaa !143
  %16 = load i32, i32* %pixels_per_row.addr, align 4, !tbaa !28
  %17 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %pixels_per_row9 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %17, i32 0, i32 9
  store i32 %16, i32* %pixels_per_row9, align 4, !tbaa !144
  %18 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %buffer_desc.addr, align 8, !tbaa !1
  %little_endian = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %18, i32 0, i32 4
  store i32 1, i32* %little_endian, align 4, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %dev_profile) #0 {
entry:
  %retval = alloca i32, align 4
  %dev_profile.addr = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.cmm_dev_profile_s* %dev_profile, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %0, i32 0, i32 2
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !91
  %cmp = icmp eq %struct.cmm_profile_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 0
  %4 = load i8, i8* %num_comps, align 1, !tbaa !83
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %link_profile1 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %5, i32 0, i32 2
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile1, align 8, !tbaa !91
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %6, i32 0, i32 1
  %7 = load i8, i8* %num_comps_out, align 1, !tbaa !146
  %conv2 = zext i8 %7 to i32
  store i32 %conv2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_md5_init(%struct.gs_md5_state_s*) #2

declare void @gs_md5_append(%struct.gs_md5_state_s*, i8*, i32) #2

declare void @gs_md5_finish(%struct.gs_md5_state_s*, i8*) #2

declare void @gscms_transform_color_buffer(%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*) #2

declare void @gscms_transform_color(%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32) #2

declare void @gscms_release_link(%struct.gsicc_link_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gsicc_get_cspace_hash(%struct.gsicc_manager_s* %icc_manager, %struct.gx_device_s* %dev, %struct.cmm_profile_s* %cmm_icc_profile_data, i64* %hash) #0 {
entry:
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cmm_icc_profile_data.addr = alloca %struct.cmm_profile_s*, align 8
  %hash.addr = alloca i64*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %cmm_icc_profile_data, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  store i64* %hash, i64** %hash.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_profile_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %6 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !60
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_s* %7, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 40
  %9 = load i32, i32* %graphics_type_tag, align 4, !tbaa !76
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %9, %struct.cmm_dev_profile_s* %10, %struct.cmm_profile_s** %icc_profile, %struct.gsicc_rendering_param_s* %render_cond) #5
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 7
  %12 = load i64, i64* %hashcode, align 8, !tbaa !93
  %13 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  store i64 %12, i64* %13, align 8, !tbaa !29
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 8
  %15 = load i32, i32* %hash_is_valid, align 4, !tbaa !147
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %16 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %hashcode2 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %16, i32 0, i32 7
  %17 = load i64, i64* %hashcode2, align 8, !tbaa !93
  %18 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  store i64 %17, i64* %18, align 8, !tbaa !29
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %19, i32 0, i32 14
  %20 = load i8*, i8** %buffer, align 8, !tbaa !95
  %21 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 11
  %23 = load i32, i32* %buffer_size, align 4, !tbaa !100
  call void @gsicc_get_icc_buff_hash(i8* %20, i64* %21, i32 %23) #5
  %24 = load i64*, i64** %hash.addr, align 8, !tbaa !1
  %25 = load i64, i64* %24, align 8, !tbaa !29
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %hashcode3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 7
  store i64 %25, i64* %hashcode3, align 8, !tbaa !93
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data.addr, align 8, !tbaa !1
  %hash_is_valid4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 8
  store i32 1, i32* %hash_is_valid4, align 4, !tbaa !147
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.1, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gsicc_rendering_param_s* %render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %30 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mash_hash(%struct.gsicc_hashlink_s* %hash) #0 {
entry:
  %hash.addr = alloca %struct.gsicc_hashlink_s*, align 8
  store %struct.gsicc_hashlink_s* %hash, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %0, i32 0, i32 2
  %1 = load i64, i64* %des_hash, align 8, !tbaa !120
  %shr = ashr i64 %1, 1
  %2 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %rend_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %2, i32 0, i32 3
  %3 = load i64, i64* %rend_hash, align 8, !tbaa !119
  %xor = xor i64 %shr, %3
  %4 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %4, i32 0, i32 1
  %5 = load i64, i64* %src_hash, align 8, !tbaa !121
  %xor1 = xor i64 %xor, %5
  %6 = load %struct.gsicc_hashlink_s*, %struct.gsicc_hashlink_s** %hash.addr, align 8, !tbaa !1
  %link_hashcode = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %6, i32 0, i32 0
  store i64 %xor1, i64* %link_hashcode, align 8, !tbaa !31
  ret void
}

declare void @gscms_get_link_dim(i8*, i32*, i32*) #2

declare void @gsicc_mcm_set_link(%struct.gsicc_link_s*) #2

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
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!6, !2, i64 72}
!9 = !{!10, !2, i64 48}
!10 = !{!"gsicc_link_cache_s", !2, i64 0, !11, i64 8, !12, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !11, i64 64}
!11 = !{!"int", !3, i64 0}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!10, !2, i64 56}
!15 = !{!6, !2, i64 24}
!16 = !{!10, !11, i64 64}
!17 = !{!10, !13, i64 16}
!18 = !{!10, !2, i64 24}
!19 = !{!10, !2, i64 32}
!20 = !{!10, !2, i64 0}
!21 = !{!10, !11, i64 8}
!22 = !{!10, !2, i64 40}
!23 = !{!24, !2, i64 24}
!24 = !{!"gsicc_link_s", !2, i64 0, !25, i64 8, !26, i64 40, !2, i64 72, !11, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !25, i64 128, !3, i64 160, !11, i64 164, !11, i64 168}
!25 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!"gsicc_hashlink_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!27 = !{!24, !2, i64 96}
!28 = !{!11, !11, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!3, !3, i64 0}
!31 = !{!26, !13, i64 0}
!32 = !{!24, !13, i64 40}
!33 = !{!24, !11, i64 108}
!34 = !{!24, !11, i64 112}
!35 = !{!24, !2, i64 88}
!36 = !{!24, !11, i64 80}
!37 = !{!24, !11, i64 120}
!38 = !{!24, !11, i64 104}
!39 = !{!40, !2, i64 1872}
!40 = !{!"gs_state_s", !11, i64 0, !2, i64 8, !2, i64 16, !41, i64 24, !11, i64 128, !45, i64 132, !11, i64 168, !46, i64 176, !46, i64 192, !11, i64 208, !11, i64 212, !48, i64 216, !3, i64 220, !49, i64 224, !49, i64 228, !50, i64 232, !13, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !2, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !42, i64 296, !51, i64 300, !11, i64 308, !11, i64 312, !11, i64 316, !42, i64 320, !11, i64 324, !11, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !11, i64 408, !2, i64 416, !2, i64 424, !52, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !53, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !53, i64 1336, !2, i64 1616, !43, i64 1624, !11, i64 1648, !43, i64 1652, !11, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !13, i64 1712, !13, i64 1720, !2, i64 1728, !11, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !45, i64 1808, !11, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !11, i64 1864, !2, i64 1872, !2, i64 1880, !54, i64 1888}
!41 = !{!"gx_line_params_s", !42, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !11, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !11, i64 36, !43, i64 40, !44, i64 64}
!42 = !{!"float", !3, i64 0}
!43 = !{!"gs_matrix_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!44 = !{!"gx_dash_params_s", !2, i64 0, !11, i64 8, !42, i64 12, !11, i64 16, !42, i64 20, !11, i64 24, !11, i64 28, !42, i64 32}
!45 = !{!"gs_matrix_fixed_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!46 = !{!"gs_point_s", !47, i64 0, !47, i64 8}
!47 = !{!"double", !3, i64 0}
!48 = !{!"short", !3, i64 0}
!49 = !{!"gs_transparency_source_s", !42, i64 0}
!50 = !{!"gs_xstate_trans_flags", !11, i64 0, !11, i64 4}
!51 = !{!"gs_fixed_point_s", !11, i64 0, !11, i64 4}
!52 = !{!"gx_transfer_s", !11, i64 0, !2, i64 8, !11, i64 16, !2, i64 24, !11, i64 32, !2, i64 40, !11, i64 48, !2, i64 56}
!53 = !{!"gs_devicen_color_map_s", !11, i64 0, !3, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !3, i64 24}
!54 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!55 = !{!56, !2, i64 64}
!56 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !13, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!57 = !{!56, !2, i64 48}
!58 = !{!59, !2, i64 336}
!59 = !{!"gs_imager_state_s", !11, i64 0, !2, i64 8, !2, i64 16, !41, i64 24, !11, i64 128, !45, i64 132, !11, i64 168, !46, i64 176, !46, i64 192, !11, i64 208, !11, i64 212, !48, i64 216, !3, i64 220, !49, i64 224, !49, i64 228, !50, i64 232, !13, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !2, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !42, i64 296, !51, i64 300, !11, i64 308, !11, i64 312, !11, i64 316, !42, i64 320, !11, i64 324, !11, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !11, i64 408, !2, i64 416, !2, i64 424, !52, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !53, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !53, i64 1336}
!60 = !{!61, !2, i64 1680}
!61 = !{!"gx_device_s", !11, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !11, i64 40, !2, i64 48, !12, i64 56, !11, i64 80, !11, i64 84, !11, i64 88, !62, i64 96, !64, i64 816, !11, i64 832, !11, i64 836, !11, i64 840, !11, i64 844, !11, i64 848, !11, i64 852, !3, i64 856, !3, i64 864, !11, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !11, i64 944, !11, i64 948, !11, i64 952, !11, i64 956, !11, i64 960, !13, i64 968, !13, i64 976, !65, i64 984, !11, i64 1052, !11, i64 1056, !66, i64 1064, !2, i64 1104, !3, i64 1112, !68, i64 1120, !69, i64 1144}
!62 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !3, i64 8, !48, i64 12, !3, i64 14, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !63, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !11, i64 712}
!63 = !{!"gx_device_anti_alias_info_s", !11, i64 0, !11, i64 4}
!64 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!65 = !{!"gx_stroked_gradient_recognizer_s", !11, i64 0, !3, i64 4, !3, i64 36}
!66 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !67, i64 16, !11, i64 32, !3, i64 36}
!67 = !{!"gx_band_params_s", !11, i64 0, !11, i64 4, !13, i64 8}
!68 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!69 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!70 = !{!71, !2, i64 72}
!71 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !11, i64 64, !2, i64 72, !2, i64 80, !12, i64 88}
!72 = !{!73, !3, i64 16}
!73 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !11, i64 4, !11, i64 8, !3, i64 12, !3, i64 16, !74, i64 20, !13, i64 144, !11, i64 152, !3, i64 156, !11, i64 216, !11, i64 220, !11, i64 224, !75, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !12, i64 288, !11, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!74 = !{!"gs_range_icc_s", !3, i64 0}
!75 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !11, i64 20}
!76 = !{!61, !3, i64 1112}
!77 = !{!75, !11, i64 20}
!78 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30, i64 20, i64 4, !28}
!79 = !{!73, !11, i64 8}
!80 = !{!75, !3, i64 0}
!81 = !{!75, !3, i64 4}
!82 = !{!75, !3, i64 16}
!83 = !{!73, !3, i64 0}
!84 = !{!24, !11, i64 116}
!85 = !{!86, !11, i64 164}
!86 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !2, i64 176, !11, i64 184, !2, i64 192, !12, i64 200}
!87 = !{!75, !3, i64 8}
!88 = !{!86, !11, i64 152}
!89 = !{!59, !2, i64 344}
!90 = !{!86, !2, i64 32}
!91 = !{!86, !2, i64 40}
!92 = !{!86, !11, i64 160}
!93 = !{!73, !13, i64 144}
!94 = !{!73, !2, i64 280}
!95 = !{!73, !2, i64 256}
!96 = !{!73, !2, i64 264}
!97 = !{!73, !2, i64 328}
!98 = !{!73, !11, i64 224}
!99 = !{!73, !3, i64 244}
!100 = !{!73, !11, i64 220}
!101 = !{!73, !2, i64 336}
!102 = !{!71, !2, i64 40}
!103 = !{!71, !2, i64 80}
!104 = !{!71, !2, i64 56}
!105 = !{!106, !2, i64 0}
!106 = !{!"gsicc_smask_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !11, i64 32}
!107 = !{!6, !2, i64 200}
!108 = !{!24, !2, i64 72}
!109 = !{!24, !11, i64 124}
!110 = !{!24, !2, i64 128}
!111 = !{!24, !2, i64 136}
!112 = !{!24, !2, i64 144}
!113 = !{!24, !2, i64 0}
!114 = !{!24, !2, i64 8}
!115 = !{!24, !2, i64 16}
!116 = !{!24, !13, i64 56}
!117 = !{!24, !13, i64 48}
!118 = !{!24, !13, i64 64}
!119 = !{!26, !13, i64 24}
!120 = !{!26, !13, i64 16}
!121 = !{!26, !13, i64 8}
!122 = !{!24, !3, i64 160}
!123 = !{!71, !2, i64 0}
!124 = !{!59, !2, i64 8}
!125 = !{!6, !2, i64 88}
!126 = !{!127, !11, i64 8}
!127 = !{!"gsicc_namedcolortable_s", !2, i64 0, !11, i64 8}
!128 = !{!127, !2, i64 0}
!129 = !{!130, !11, i64 8}
!130 = !{!"gsicc_namedcolor_s", !2, i64 0, !11, i64 8, !3, i64 12}
!131 = !{!130, !2, i64 0}
!132 = !{!42, !42, i64 0}
!133 = !{!48, !48, i64 0}
!134 = !{!71, !2, i64 32}
!135 = !{!136, !3, i64 0}
!136 = !{!"gsicc_bufferdesc_s", !3, i64 0, !3, i64 1, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!137 = !{!136, !3, i64 1}
!138 = !{!136, !11, i64 4}
!139 = !{!136, !11, i64 8}
!140 = !{!136, !11, i64 16}
!141 = !{!136, !11, i64 20}
!142 = !{!136, !11, i64 24}
!143 = !{!136, !11, i64 28}
!144 = !{!136, !11, i64 32}
!145 = !{!136, !11, i64 12}
!146 = !{!73, !3, i64 1}
!147 = !{!73, !11, i64 152}
